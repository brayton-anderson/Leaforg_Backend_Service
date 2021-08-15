<?php
/**
 * File name: PopularCriteria.php
 *
 */

namespace App\Criteria\Stores;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class PopularCriteria.
 *
 * @package namespace App\Criteria\Stores;
 */
class PopularCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * PopularCriteria constructor.
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
        if ($this->request->has(['myLon', 'myLat', 'areaLon', 'areaLat'])) {

            $myLat = $this->request->get('myLat');
            $myLon = $this->request->get('myLon');
            $areaLat = $this->request->get('areaLat');
            $areaLon = $this->request->get('areaLon');

            return $model->select(DB::raw("SQRT(
                POW(69.1 * (latitude - $myLat), 2) +
                POW(69.1 * ($myLon - longitude) * COS(latitude / 57.3), 2)) AS distance, SQRT(
                POW(69.1 * (latitude - $areaLat), 2) +
                POW(69.1 * ($areaLon - longitude) * COS(latitude / 57.3), 2))  AS area count(stores.id) as store_count"), "stores.*")
                ->join('products', 'products.store_id', '=', 'stores.id')
                ->join('product_orders', 'products.id', '=', 'product_orders.product_id')
                ->orderBy('store_count', 'desc')
                ->orderBy('area')
                ->groupBy('stores.id');
        } else {
            return $model->select(DB::raw("count(stores.id) as store_count"), "stores.*")
                ->join('products', 'products.store_id', '=', 'stores.id')
                ->join('product_orders', 'products.id', '=', 'product_orders.product_id')
                ->orderBy('store_count', 'desc')
                ->groupBy('stores.id');
        }
    }
}
