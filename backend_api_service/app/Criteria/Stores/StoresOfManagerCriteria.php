<?php

namespace App\Criteria\Stores;

use App\Models\User;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class StoresOfManagerCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class StoresOfManagerCriteria implements CriteriaInterface
{
    /**
     * @var User
     */
    private $userId;

    /**
     * StoresOfManagerCriteria constructor.
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
        return $model->join('user_stores','user_stores.store_id','=','stores.id')
            ->where('user_stores.user_id',$this->userId);
    }
}
