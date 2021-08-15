<?php
/**
 * File name: CouponsOfUserCriteria.php
 * Last modified: 2020.08.27 at 22:18:49
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Criteria\Coupons;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class CouponsOfUserCriteria.
 *
 * @package namespace App\Criteria\Coupons;
 */
class CouponsOfUserCriteria implements CriteriaInterface
{
    /**
     * @var int
     */
    private $userId;

    /**
     * CouponsOfUserCriteria constructor.
     */
    public function __construct($userId)
    {
        $this->userId = $userId;
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
        if (auth()->user()->hasRole('admin')) {
            return $model;
        }elseif (auth()->user()->hasRole('manager')){
            $stores = $model->join("discountables", "discountables.coupon_id", "=", "coupons.id")
                ->join("user_stores", "user_stores.store_id", "=", "discountables.discountable_id")
                ->where('discountable_type','App\\Models\\Store')
                ->where("user_stores.user_id",$this->userId)
                ->select("coupons.*");

            $products = $model->join("discountables", "discountables.coupon_id", "=", "coupons.id")
                ->join("products", "products.id", "=", "discountables.discountable_id")
                ->where('discountable_type','App\\Models\\Product')
                ->join("user_stores", "user_stores.store_id", "=", "products.store_id")
                ->where("user_stores.user_id",$this->userId)
                ->select("coupons.*")
                ->union($stores);
            return $products;
        }else{
            return $model;
        }

    }
}
