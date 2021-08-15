<?php
/**
 * File name: ExtrasOfUserCriteria.php
 * Last modified: 2020.04.30 at 08:24:08
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\Extras;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class ExtrasOfUserCriteria.
 *
 * @package namespace App\Criteria\Extras;
 */
class ExtrasOfUserCriteria implements CriteriaInterface
{

    /**
     * @var User
     */
    private $userId;

    /**
     * ExtrasOfUserCriteria constructor.
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
            return $model->join('products', 'extras.product_id', '=', 'products.id')
                ->join('user_stores', 'user_stores.store_id', '=', 'products.store_id')
                ->groupBy('extras.id')
                ->select('extras.*')
                ->where('user_stores.user_id', $this->userId);
        } elseif (auth()->user()->hasRole('driver')) {
            return $model->join('products', 'extras.product_id', '=', 'products.id')
                ->join('driver_stores', 'driver_stores.store_id', '=', 'products.store_id')
                ->groupBy('extras.id')
                ->select('extras.*')
                ->where('driver_stores.user_id', $this->userId);
        } else {
            return $model;
        }
    }
}
