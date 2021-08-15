<?php

namespace App\Criteria\Stores;


use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class StoresOfFranchisesCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class StoresOfFranchisesCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * StoresOfFranchisesCriteria constructor.
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
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
        if(!$this->request->has('franchises')) {
            return $model;
        } else {
            $franchises = $this->request->get('franchises');
            if (in_array('0',$franchises)) {
                return $model;
            }
            return $model->join('store_franchises', 'store_franchises.store_id', '=', 'stores.id')
                ->whereIn('store_franchises.franchise_id', $this->request->get('franchises'))->groupBy('stores.id');
        }
    }
}
