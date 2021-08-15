<?php
/**
 * File name: StoreDataTable.php
 * Last modified: 2020.04.30 at 08:21:09
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\DataTables;

use App\Models\CustomField;
use App\Models\Store;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Services\DataTable;

class StoreDataTable extends DataTable
{
    /**
     * custom fields columns
     * @var array
     */
    public static $customFields = [];

    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        $dataTable = new EloquentDataTable($query);
        $columns = array_column($this->getColumns(), 'data');
        $dataTable = $dataTable
            ->editColumn('image', function ($store) {
                return getMediaColumn($store, 'image');
            })
            ->editColumn('updated_at', function ($store) {
                return getDateColumn($store, 'updated_at');
            })
            ->editColumn('closed', function ($product) {
                return getNotBooleanColumn($product, 'closed');
            })
            ->editColumn('available_for_delivery', function ($product) {
                return getBooleanColumn($product, 'available_for_delivery');
            })
            ->editColumn('active', function ($store) {
                return getBooleanColumn($store, 'active');
            })
            ->addColumn('action', 'stores.datatables_actions')
            ->rawColumns(array_merge($columns, ['action']));

        return $dataTable;
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Post $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Store $model)
    {
        if (auth()->user()->hasRole('admin')) {
            return $model->newQuery();
        } else if (auth()->user()->hasRole('manager')){
            return $model->newQuery()
                ->join("user_stores", "store_id", "=", "stores.id")
                ->where('user_stores.user_id', auth()->id())
                ->groupBy("stores.id")
                ->select("stores.*");
        }else if(auth()->user()->hasRole('driver')){
            return $model->newQuery()
                ->join("driver_stores", "store_id", "=", "stores.id")
                ->where('driver_stores.user_id', auth()->id())
                ->groupBy("stores.id")
                ->select("stores.*");
        } else if (auth()->user()->hasRole('client')) {
            return $model->newQuery()
                ->join("products", "products.store_id", "=", "stores.id")
                ->join("product_orders", "products.id", "=", "product_orders.product_id")
                ->join("orders", "orders.id", "=", "product_orders.order_id")
                ->where('orders.user_id', auth()->id())
                ->groupBy("stores.id")
                ->select("stores.*");
        } else {
            return $model->newQuery();
        }
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
            ->addAction(['title'=>trans('lang.actions'),'width' => '80px', 'printable' => false, 'responsivePriority' => '100'])
            ->parameters(array_merge(
                config('datatables-buttons.parameters'), [
                    'language' => json_decode(
                        file_get_contents(base_path('resources/lang/' . app()->getLocale() . '/datatable.json')
                        ), true)
                ]
            ));
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        $columns = [
            [
                'data' => 'image',
                'title' => trans('lang.store_image'),
                'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
            ],
            [
                'data' => 'name',
                'title' => trans('lang.store_name'),

            ],
            [
                'data' => 'address',
                'title' => trans('lang.store_address'),

            ],
            [
                'data' => 'phone',
                'title' => trans('lang.store_phone'),

            ],
            [
                'data' => 'mobile',
                'title' => trans('lang.store_mobile'),

            ],
            [
                'data' => 'available_for_delivery',
                'title' => trans('lang.store_available_for_delivery'),

            ],
            [
                'data' => 'closed',
                'title' => trans('lang.store_closed'),

            ],
            [
                'data' => 'active',
                'title' => trans('lang.store_active'),

            ],
            [
                'data' => 'updated_at',
                'title' => trans('lang.store_updated_at'),
                'searchable' => false,
            ]
        ];

        $hasCustomField = in_array(Store::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', Store::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $field) {
                array_splice($columns, $field->order - 1, 0, [[
                    'data' => 'custom_fields.' . $field->name . '.view',
                    'title' => trans('lang.store_' . $field->name),
                    'orderable' => false,
                    'searchable' => false,
                ]]);
            }
        }
        return $columns;
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'storesdatatable_' . time();
    }

    /**
     * Export PDF using DOMPDF
     * @return mixed
     */
    public function pdf()
    {
        $data = $this->getDataForPrint();
        $pdf = PDF::loadView($this->printPreview, compact('data'));
        return $pdf->download($this->filename() . '.pdf');
    }
}