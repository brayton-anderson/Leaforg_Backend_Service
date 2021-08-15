<?php
/**
 * File name: StoresOfDegradablesCriteria.php
 *
 */

namespace App\Criteria\Stores;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class StoresOfDegradablesCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class StoresOfDegradablesCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * StoresOfDegradablesCriteria constructor.
     */
    public function __construct(Request $request)
    {
        $this->request = $request;
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
        if (!$this->request->has('degradable')) {
            return $model;
        } else {
            $degradable = $this->request->get('degradable');
            if (in_array('0', $degradable)) { // means all degradable
                return $model;
            }
            return $model->join('products', 'products.store_id', '=', 'stores.id')
                ->whereIn('product_degradale.product_id', $this->request->get('degradable', []))->groupBy('stores.id');
        }
    }
}
