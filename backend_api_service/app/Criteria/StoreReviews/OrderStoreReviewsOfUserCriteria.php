<?php
/**
 * File name: OrderStoreReviewsOfUserCriteria.php
 * Last modified: 2020.05.04 at 09:04:19
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\StoreReviews;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class OrderStoreReviewsOfUserCriteria.
 *
 * @package namespace App\Criteria\StoreReviews;
 */
class OrderStoreReviewsOfUserCriteria implements CriteriaInterface
{
    /**
     * @var int
     */
    private $userId;

    /**
     * OrderStoreReviewsOfUserCriteria constructor.
     */
    public function __construct($userId)
    {
        $this->userId = $userId;
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
        if (auth()->user()->hasRole('admin')) {
            return $model->select('store_reviews.*');
        } else if (auth()->user()->hasRole('manager')) {
            return $model->join("user_stores", "user_stores.store_id", "=", "store_reviews.store_id")
                ->where('user_stores.user_id', $this->userId)
                ->groupBy('store_reviews.id')
                ->select('store_reviews.*');
        } else if (auth()->user()->hasRole('driver')) {
            return $model->join("driver_stores", "driver_stores.store_id", "=", "store_reviews.store_id")
                ->where('driver_stores.user_id', $this->userId)
                ->groupBy('store_reviews.id')
                ->select('store_reviews.*');
        } else if (auth()->user()->hasRole('client')) {
            return $model->newQuery()->join("products", "products.store_id", "=", "store_reviews.store_id")
                ->join("product_orders", "products.id", "=", "product_orders.product_id")
                ->join("orders", "orders.id", "=", "product_orders.order_id")
                ->where('orders.user_id', $this->userId)
                ->groupBy("store_reviews.id")
                ->select("store_reviews.*");
        }
    }
}
