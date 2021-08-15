<?php
/**
 * File name: SubCategoriesOfStoresCriteria.php
 * Last modified: 2020.05.04 at 09:04:18
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

namespace App\Criteria\StoreCategories;

use Illuminate\Http\Request;
use Prettus\Repository\Contracts\CriteriaInterface;
use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Class SubCategoriesOfStoresCriteria.
 *
 * @package namespace App\Criteria\StoreCategories;
 */
class SubCategoriesOfStoresCriteria implements CriteriaInterface
{

    /**
     * @var array
     */
    private $request;

    /**
     * SubCategoriesOfStoresCriteria constructor.
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
        if (!$this->request->has('stores_cat_id')) {
            return $model;
        } else {
            $stores_subcategories = $this->request->get('stores_cat_id');
            if (in_array('0', $stores_subcategories)) { // means all stores_subcategories
                return $model;
            }
            return $model->join('stores_subcategories', 'stores_subcategories.category_id', '=', 'stores_categories.id')
                ->whereIn('stores_categories.id', $this->request->get('stores_cat_id', []))->select('stores_categories.*')->groupBy('stores_categories.id');
        }
    }
}
