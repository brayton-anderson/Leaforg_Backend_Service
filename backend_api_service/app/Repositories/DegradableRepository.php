<?php

namespace App\Repositories;

use App\Models\Degradable;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class DegradableRepository
 * @package App\Repositories
 * @version July 11, 2021, 1:57 pm UTC
 *
 * @method Degradable findWithoutFail($id, $columns = ['*'])
 * @method Degradable find($id, $columns = ['*'])
 * @method Degradable first($columns = ['*'])
*/
class DegradableRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $degradableSearchable = [
        'name',
        'description'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Degradable::class;
    }
}
