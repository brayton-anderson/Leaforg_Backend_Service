<?php

namespace App\Criteria\Earnings;

use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class EarningOfStoreCriteriaCriteria.
 *
 * @package namespace App\Criteria\Earnings;
 */
class EarningOfStoreCriteria implements CriteriaInterface
{
    private $storeId;

    /**
     * EarningOfStoreCriteriaCriteria constructor.
     */
    public function __construct($storeId)
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
        return $model->where("store_id",$this->storeId);
    }
}
