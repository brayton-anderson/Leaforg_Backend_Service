<?php

namespace App\Criteria\Categories;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class CategoriesOfStoreCriteria.
 *
 * @package namespace App\Criteria\Categories;
 */
class CategoriesOfStoreCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * CategoriesOfStoreCriteria constructor.
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
        if (!$this->request->has('store_id')) {
            return $model;
        } else {
            $id = $this->request->get('store_id');
            return $model->join('products', 'products.category_id', '=', 'categories.id')
                ->where('products.store_id', $id)
                ->select('categories.*')
                ->groupBy('categories.id');
        }
    }
}
