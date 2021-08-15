<?php
/**
 * File name: FranchiseDataTable.php
 * Last modified: 2020.05.04 at 09:04:18
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\DataTables;

use App\Models\CustomField;
use App\Models\Franchise;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Services\DataTable;

class FranchiseDataTable extends DataTable
{
    /**
     * custom franchises columns
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
            ->editColumn('image', function ($franchise) {
                return getMediaColumn($franchise, 'image');
            })
            ->editColumn('updated_at', function ($franchise) {
                return getDateColumn($franchise, 'updated_at');
            })
            ->editColumn('stores', function ($franchise) {
                return getLinksColumnByRouteName($franchise->stores, 'stores.edit', 'id', 'name');
            })
            ->addColumn('action', 'franchises.datatables_actions')
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
                'title' => trans('lang.franchise_name'),

            ],
            [
                'data' => 'image',
                'title' => trans('lang.franchise_image'),
                'searchable' => false, 'orderable' => false, 'exportable' => false, 'printable' => false,
            ],
            (auth()->check() && auth()->user()->hasAnyRole(['admin', 'manager'])) ? [
                'data' => 'stores',
                'title' => trans('lang.franchise_stores'),
                'searchable' => false,

            ] : null,
            [
                'data' => 'updated_at',
                'title' => trans('lang.franchise_updated_at'),
                'searchable' => false,
            ]
        ];
        $columns = array_filter($columns);

        $hasCustomField = in_array(Franchise::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', Franchise::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $franchise) {
                array_splice($columns, $franchise->order - 1, 0, [[
                    'data' => 'custom_fields.' . $franchise->name . '.view',
                    'title' => trans('lang.franchise_' . $franchise->name),
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
    public function query(Franchise $model)
    {
        return $model->newQuery();
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
        return 'franchisesdatatable_' . time();
    }
}