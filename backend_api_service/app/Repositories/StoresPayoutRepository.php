<?php

namespace App\Repositories;

use App\Models\StoresPayout;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class StoresPayoutRepository
 * @package App\Repositories
 * @version March 25, 2020, 9:48 am UTC
 *
 * @method StoresPayout findWithoutFail($id, $columns = ['*'])
 * @method StoresPayout find($id, $columns = ['*'])
 * @method StoresPayout first($columns = ['*'])
*/
class StoresPayoutRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'store_id',
        'method',
        'amount',
        'paid_date',
        'note'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return StoresPayout::class;
    }
}
