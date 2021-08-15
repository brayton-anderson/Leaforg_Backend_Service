<?php
/**
 * File name: DriversOfUserCriteria.php
 * Last modified: 2020.08.20 at 16:23:39
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Criteria\Users;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class DriversOfUserCriteria.
 *
 * @package namespace App\Criteria\Drivers;
 */
class DriversOfUserCriteria implements CriteriaInterface
{
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
        if(auth()->user()->hasRole('admin')){
            return $model->whereHas("roles", function($q){ $q->where("name", "driver"); });
        }else if (auth()->user()->hasRole('manager')){
            // stores of this user
            $storesIds = array_column(auth()->user()->stores->toArray(), 'id');

            return $model->join('driver_stores','driver_stores.user_id','=','users.id')
                ->whereIn('driver_stores.store_id',$storesIds)
                ->distinct('driver_stores.user_id')
                ->select('users.*');
        }
    }
}
