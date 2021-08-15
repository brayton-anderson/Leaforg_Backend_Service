<?php
/**
 * File name: ProductsOfStoreCriteria.php
 * Last modified: 2020.04.30 at 08:24:08
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\Products;


use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class ProductsOfStoreCriteria.
 *
 * @package namespace App\Criteria\Products;
 */
class ProductsOfStoreCriteria implements CriteriaInterface
{
    /**
     * @var int
     */
    private $storeId;

    /**
     * ProductsOfStoreCriteria constructor.
     */
    public function __construct($storeId)
    {
        $this->storeId = $storeId;
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
        return $model->where('store_id', '=', $this->storeId);
    }
}
