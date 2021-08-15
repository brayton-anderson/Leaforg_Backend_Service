<?php

namespace App\Repositories;

use App\Models\StoreReview;
use InfyOm\Generator\Common\BaseRepository;

/**
 * Class StoreReviewRepository
 * @package App\Repositories
 * @version August 29, 2019, 9:39 pm UTC
 *
 * @method StoreReview findWithoutFail($id, $columns = ['*'])
 * @method StoreReview find($id, $columns = ['*'])
 * @method StoreReview first($columns = ['*'])
*/
class StoreReviewRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'review',
        'rate',
        'user_id',
        'store_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return StoreReview::class;
    }
}
