<?php

namespace App\Criteria\Stores;


use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class StoresOfCategoriesCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class StoresOfCategoriesCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * StoresOfCategoriesCriteria constructor.
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
    }


    /**
     * Apply criteria in query repository
     *
     * @param string              $model
     * @param RepositoryInterface $repository
     *
     * @return mixed
     */
    public function apply($model, RepositoryInterface $repository)
    {
        if (!$this->request->has('stores_categories')) {
            return $model;
        } else {
            $stores_categories = $this->request->get('stores_categories');
            if (in_array('0', $stores_categories)) { // means all fields
                return $model;
            }
            return $model->whereIn('store_cat_id', $this->request->get('stores_categories', []));
        }
    }
}
