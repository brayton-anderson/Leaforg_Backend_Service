<?php

namespace App\Repositories;

use App\Models\Franchise;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class FranchiseRepository
 * @package App\Repositories
 * @version April 11, 2020, 1:57 pm UTC
 *
 * @method Franchise findWithoutFail($id, $columns = ['*'])
 * @method Franchise find($id, $columns = ['*'])
 * @method Franchise first($columns = ['*'])
*/
class FranchiseRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $franchiseSearchable = [
        'name',
        'description'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Franchise::class;
    }
}
