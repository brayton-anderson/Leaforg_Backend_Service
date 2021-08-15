<?php
/**
 * File name: StoreReviewDataTable.php
 * Last modified: 2020.05.04 at 09:04:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\DataTables;

use App\Criteria\StoreReviews\StoreReviewsOfUserCriteria;
use App\Criteria\StoreReviews\OrderStoreReviewsOfUserCriteria;
use App\Models\CustomField;
use App\Models\StoreReview;
use App\Repositories\StoreReviewRepository;
use Barryvdh\DomPDF\Facade as PDF;
use Yajra\DataTables\EloquentDataTable;
use Yajra\DataTables\Services\DataTable;

/**
 * Class StoreReviewDataTable
 * @package App\DataTables
 */
class StoreReviewDataTable extends DataTable
{
    /**
     * custom fields columns
     * @var array
     */
    public static $customFields = [];

    /**
     * @var StoreReviewRepository
     */
    private $storeReviewRepo;

    private $myReviews;


    /**
     * StoreReviewDataTable constructor.
     * @param StoreReviewRepository $storeReviewRepo
     */
    public function __construct(StoreReviewRepository $storeReviewRepo)
    {
        $this->storeReviewRepo = $storeReviewRepo;
        $this->myReviews = $this->storeReviewRepo->getByCriteria(new StoreReviewsOfUserCriteria(auth()->id()))->pluck('id')->toArray();
    }

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
            ->editColumn('updated_at', function ($store_review) {
                return getDateColumn($store_review, 'updated_at');
            })->addColumn('action', function ($store_review) {
                return view('store_reviews.datatables_actions', ['id' => $store_review->id, 'myReviews' => $this->myReviews])->render();
            })
            ->rawColumns(array_merge($columns, ['action']));

        return $dataTable;
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\StoreReview $model
     * @return \Illuminate\Database\Eloquent\Builder
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function query(StoreReview $model)
    {
        $this->storeReviewRepo->pushCriteria(new OrderStoreReviewsOfUserCriteria(auth()->id()));
        return $this->storeReviewRepo->with("user")->with("store")->newQuery();

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
                'data' => 'review',
                'title' => trans('lang.store_review_review'),

            ],
            [
                'data' => 'rate',
                'title' => trans('lang.store_review_rate'),

            ],
            [
                'data' => 'user.name',
                'title' => trans('lang.store_review_user_id'),

            ],
            [
                'data' => 'store.name',
                'title' => trans('lang.store_review_store_id'),

            ],
            [
                'data' => 'updated_at',
                'title' => trans('lang.store_review_updated_at'),
                'searchable' => false,
            ]
        ];

        $hasCustomField = in_array(StoreReview::class, setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFieldsCollection = CustomField::where('custom_field_model', StoreReview::class)->where('in_table', '=', true)->get();
            foreach ($customFieldsCollection as $key => $field) {
                array_splice($columns, $field->order - 1, 0, [[
                    'data' => 'custom_fields.' . $field->name . '.view',
                    'title' => trans('lang.store_review_' . $field->name),
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
        return 'store_reviewsdatatable_' . time();
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