<?php
/**
 * File name: ProductsOfFranchisesCriteria.php
 * Last modified: 2020.05.04 at 09:04:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\Products;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class ProductsOfFranchisesCriteria.
 *
 * @package namespace App\Criteria\Products;
 */
class ProductsOfFranchisesCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * ProductsOfFranchisesCriteria constructor.
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
            return $model->join('store_franchises', 'store_franchises.store_id', '=', 'products.store_id')
                ->whereIn('store_franchises.franchise_id', $this->request->get('franchises', []))->groupBy('products.id');
        }
    }
}
