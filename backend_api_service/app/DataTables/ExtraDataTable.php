<?php
/**
 * File name: ExtraDataTable.php
 * Last modified: 2020.04.30 at 08:21:09
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\DataTables;

use App\Models\CustomField;
use App\Models\Extra;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Services\DataTable;

class ExtraDataTable extends DataTable
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
            ->editColumn('image', function ($extra) {
                return getMediaColumn($extra, 'image');
            })
            ->editColumn('price', function ($extra) {
                return getPriceColumn($extra, 'price');
            })
            ->editColumn('product.name', function ($extra) {
                return getLinksColumnByRouteName([$extra->product->toArray()], 'products.edit','id','name');
            })
            ->editColumn('product.store.name', function ($extra) {
                return getLinksColumnByRouteName([$extra->product->store->toArray()], 'stores.edit', 'id', 'name');
            })
            ->editColumn('updated_at', function ($extra) {
                return getDateColumn($extra, 'updated_at');
            })
            ->addColumn('action', 'extras.datatables_actions')
            ->rawColumns(array_merge($columns, ['action']));

        return $dataTable;
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
                'data' => 'name',
                'title' => trans('lang.extra_name'),

            ],
            [
                'data' => 'image',
                'title' => trans('lang.extra_image'),
                'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
            ],
            [
                'data' => 'price',
                'title' => trans('lang.extra_price'),

            ],
            [
                'data' => 'product.name',
                'title' => trans('lang.product'),

            ],
            [
                'data' => 'product.store.name',
                'title' => trans('lang.store'),

            ],
            [
                'data' => 'extra_group.name',
                'name' => 'extraGroup.name',
                'title' => trans('lang.extra_group'),

            ],
            [
                'data' => 'updated_at',
                'title' => trans('lang.extra_updated_at'),
                'searchable' => false,
            ]
        ];

        $hasCustomField = in_array(Extra::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', Extra::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $field) {
                array_splice($columns, $field->order - 1, 0, [[
                    'data' => 'custom_fields.' . $field->name . '.view',
                    'title' => trans('lang.extra_' . $field->name),
                    'orderable' => false,
                    'searchable' => false,
                ]]);
            }
        }
        return $columns;
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Post $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Extra $model)
    {
        if (auth()->user()->hasRole('admin')) {
            return $model->newQuery()->with("product")->with("extraGroup")->with('product.store');
        } else if (auth()->user()->hasRole('manager')) {
            return $model->newQuery()->with("product")->with("extraGroup")->with('product.store')
                ->join("products", "extras.product_id", "=", "products.id")
                ->join("user_stores", "products.store_id", "=", "user_stores.store_id")
                ->where('user_stores.user_id', auth()->id())
                ->groupBy("extras.id")
                ->select('extras.*');
        } else {
            return $model->newQuery()->with("product")->with("extraGroup")->with('product.store');
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
     * Export PDF using DOMPDF
     * @return mixed
     */
    public function pdf()
    {
        $data = $this->getDataForPrint();
        $pdf = PDF::loadView($this->printPreview, compact('data'));
        return $pdf->download($this->filename() . '.pdf');
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'extrasdatatable_' . time();
    }
}