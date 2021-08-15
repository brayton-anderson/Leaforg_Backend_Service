<?php
/**
 * File name: NearCriteria.php
 * Last modified: 2020.06.11 at 16:10:52
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Criteria\Products;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class NearCriteria.
 *
 * @package namespace App\Criteria\Products;
 */
class NearCriteria implements CriteriaInterface
{
    /**
     * @var array
     */
    private $request;

    /**
     * NearCriteria constructor.
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

            return $model->join('stores', 'stores.id', '=', 'products.store_id')->select(DB::raw("SQRT(
            POW(69.1 * (stores.latitude - $myLat), 2) +
            POW(69.1 * ($myLon - stores.longitude) * COS(stores.latitude / 57.3), 2)) AS distance, SQRT(
            POW(69.1 * (stores.latitude - $areaLat), 2) +
            POW(69.1 * ($areaLon - stores.longitude) * COS(stores.latitude / 57.3), 2)) AS area"), "products.*")
                ->groupBy("products.id")
                ->where('stores.active','1')
                ->orderBy('stores.closed')
                ->orderBy('area');
        } else {
            return $model->join('stores', 'stores.id', '=', 'products.store_id')
                ->groupBy("products.id")
                ->where('stores.active','1')
                ->select("products.*")
                ->orderBy('stores.closed');
        }
    }
}
