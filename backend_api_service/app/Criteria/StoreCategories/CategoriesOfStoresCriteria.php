<?php

namespace App\Criteria\StoreCategories;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class CategoriesOfStoresCriteria.
 *
 * @package namespace App\Criteria\StoreCategories;
 */
class CategoriesOfStoresCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * CategoriesOfStoresCriteria constructor.
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
        if (!$this->request->has('stores_sub_id')) {
            return $model;
        } else {
            $stores_sub_id = $this->request->get('stores_sub_id');
            return $model->join('stores', 'stores.store_cat_id', '=', 'stores_subcategories.id')
                ->where('stores_subcategories.category_id', $stores_sub_id)
                ->select('stores_subcategories.*')
                ->groupBy('stores_subcategories.id');
        }
    }
}
