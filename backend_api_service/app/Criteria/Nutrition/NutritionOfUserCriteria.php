<?php

namespace App\Criteria\Nutrition;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class NutritionOfUserCriteria.
 *
 * @package namespace App\Criteria\Nutrition;
 */
class NutritionOfUserCriteria implements CriteriaInterface
{
    /**
     * @var int
     */
    private $userId;

    /**
     * NutritionOfUserCriteria constructor.
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
            return $model;
        } elseif (auth()->user()->hasRole('manager')) {
            return $model->join('products', 'nutrition.product_id', '=', 'products.id')
                ->join('user_stores', 'user_stores.store_id', '=', 'products.store_id')
                ->groupBy('nutrition.id')
                ->select('nutrition.*')
                ->where('user_stores.user_id', $this->userId);
        } elseif (auth()->user()->hasRole('driver')) {
            return $model->join('products', 'nutrition.product_id', '=', 'products.id')
                ->join('driver_stores', 'driver_stores.store_id', '=', 'products.store_id')
                ->groupBy('nutrition.id')
                ->select('nutrition.*')
                ->where('driver_stores.user_id', $this->userId);
        } else {
            return $model;
        }
    }
}
