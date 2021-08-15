<?php
/**
 * File name: StoresOfUserCriteria.php
 *
 */

namespace App\Criteria\Stores;

use App\Models\User;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class StoresOfUserCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class StoresOfUserCriteria implements CriteriaInterface
{

    /**
     * @var User
     */
    private $userId;

    /**
     * StoresOfUserCriteria constructor.
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
            return $model->join('user_stores', 'user_stores.store_id', '=', 'stores.id')
                ->select('stores.*')
                ->where('user_stores.user_id', $this->userId);
        } elseif (auth()->user()->hasRole('driver')) {
            return $model->join('driver_stores', 'driver_stores.store_id', '=', 'stores.id')
                ->select('stores.*')
                ->where('driver_stores.user_id', $this->userId);
        } else {
            return $model;
        }
    }
}
