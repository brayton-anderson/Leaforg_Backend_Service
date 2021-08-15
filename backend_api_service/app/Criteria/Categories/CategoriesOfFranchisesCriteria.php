<?php
/**
 * File name: CategoriesOfFranchisesCriteria.php
 * Last modified: 2020.05.04 at 09:04:18
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\Categories;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class CategoriesOfFranchisesCriteria.
 *
 * @package namespace App\Criteria\Categories;
 */
class CategoriesOfFranchisesCriteria implements CriteriaInterface
{

    /**
     * @var array
     */
    private $request;

    /**
     * CategoriesOfFranchisesCriteria constructor.
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    /**
     * Apply criteria in query repository
     *
     * @param string $model
     * @param RepositoryInterface $repository
     *
     * @return mixed
     */
    public function apply($model, RepositoryInterface $repository)
    {
        if (!$this->request->has('franchises')) {
            return $model;
        } else {
            $franchises = $this->request->get('franchises');
            if (in_array('0', $franchises)) { // means all franchises
                return $model;
            }
            return $model->join('products', 'products.category_id', '=', 'categories.id')
                ->join('store_franchises', 'store_franchises.store_id', '=', 'products.store_id')
                ->whereIn('store_franchises.franchise_id', $this->request->get('franchises', []))->select('categories.*')->groupBy('categories.id');
        }
    }
}
