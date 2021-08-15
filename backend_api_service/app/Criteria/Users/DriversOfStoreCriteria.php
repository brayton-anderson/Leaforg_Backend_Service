<?php
/**
 * File name: DriversOfStoreCriteria.php
 * Last modified: 2020.05.09 at 14:02:59
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Criteria\Users;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class DriversOfStoreCriteria.
 *
 * @package namespace App\Criteria\Users;
 */
class DriversOfStoreCriteria implements CriteriaInterface
{
    /**
     * @var int
     */
    private $storeId;

    /**
     * DriversOfStoreCriteria constructor.
     */
    public function __construct(int $storeId)
    {
        $this->storeId = $storeId;
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
        return $model->join('driver_stores','users.id','=','driver_stores.user_id')
            ->where('driver_stores.store_id',$this->storeId);
    }
}
