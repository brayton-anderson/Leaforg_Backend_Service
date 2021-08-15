<?php

namespace App\Repositories;

use App\Models\Store;
use InfyOm\Generator\Common\BaseRepository;
use Prettus\Repository\Contracts\CacheableInterface;
use Prettus\Repository\Traits\CacheableRepository;

/**
 * Class StoreRepository
 * @package App\Repositories
 * @version August 29, 2019, 9:38 pm UTC
 *
 * @method Store findWithoutFail($id, $columns = ['*'])
 * @method Store find($id, $columns = ['*'])
 * @method Store first($columns = ['*'])
 */
class StoreRepository extends BaseRepository implements CacheableInterface
{

    use CacheableRepository;
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'name',
        'description',
        'store_cat_id',
        'address',
        'latitude',
        'longitude',
        'phone',
        'mobile',
        'information',
        'delivery_fee',
        'default_tax',
        'delivery_range',
        'available_for_delivery',
        'closed',
        'admin_commission',
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Store::class;
    }

    /**
     * get my stores
     */

    public function myStores()
    {
        return Store::join("user_stores", "store_id", "=", "stores.id")
            ->where('user_stores.user_id', auth()->id())->get();
    }

    public function myActiveStores()
    {
        return Store::join("user_stores", "store_id", "=", "stores.id")
            ->where('user_stores.user_id', auth()->id())
            ->where('stores.active','=','1')->get();
    }

}
