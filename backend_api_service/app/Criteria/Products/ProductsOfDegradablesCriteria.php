<?php

namespace App\Criteria\Products;


use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class ProductsOfDegradablesCriteria.
 *
 * @package namespace App\Criteria\Products;
 */
class ProductsOfDegradablesCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * ProductsOfDegradablesCriteria constructor.
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
        if(!$this->request->has('degradable')) {
            return $model;
        } else {
            $degradable = $this->request->get('degradable');
            if (in_array('0',$degradable)) {
                return $model;
            }
            return $model->join('product_degradale', 'product_degradale.product_id', '=', 'products.id')
                ->whereIn('product_degradale.degradable_id', $this->request->get('degradable'))->groupBy('products.id');
        }
    }
}