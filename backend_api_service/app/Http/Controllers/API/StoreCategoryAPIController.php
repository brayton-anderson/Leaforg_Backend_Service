<?php
/**
 * File name: StoreCategoryAPIController.php
 *
 */

namespace App\Http\Controllers\API;


use App\Criteria\StoreCategories\CategoriesOfStoresCriteria;
use App\Criteria\StoreCategories\SubCategoriesOfStoresCriteria;
use App\Http\Controllers\Controller;
use App\Models\StoreCategory;
use App\Repositories\StoreCategoryRepository;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;

/**
 * Class StoreCategoryAPIController
 * @package App\Http\Controllers\API
 */
class StoreCategoryAPIController extends Controller
{
    /** @var  StoreCategoryRepository */
    private $storecategoryRepository;

    public function __construct(StoreCategoryRepository $storecategoryRepo)
    {
        $this->storecategoryRepository = $storecategoryRepo;
    }

    /**
     * Display a listing of the StoreCategory.
     * GET|HEAD /storecategories
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try {
            $this->storecategoryRepository->pushCriteria(new RequestCriteria($request));
            $this->storecategoryRepository->pushCriteria(new LimitOffsetCriteria($request));
            $this->storecategoryRepository->pushCriteria(new CategoriesOfStoresCriteria($request));
            $this->storecategoryRepository->pushCriteria(new SubCategoriesOfStoresCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $categories = $this->storecategoryRepository->all();

        return $this->sendResponse($categories->toArray(), 'Categories retrieved successfully');
    }

    /**
     * Display the specified Category.
     * GET|HEAD /categories/{id}
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var Category $category */
        if (!empty($this->storecategoryRepository)) {
            $category = $this->storecategoryRepository->findWithoutFail($id);
        }

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        return $this->sendResponse($category->toArray(), 'Category retrieved successfully');
    }

    /**
     * Store a newly created Category in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storecategoryRepository->model());
        try {
            $category = $this->storecategoryRepository->create($input);
            $category->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($category, 'image');
            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($category->toArray(), __('lang.saved_successfully', ['operator' => __('lang.category')]));
    }

    /**
     * Update the specified Category in storage.
     *
     * @param int $id
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {
        $category = $this->storecategoryRepository->findWithoutFail($id);

        if (empty($category)) {
            return $this->sendError('Category not found');
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storecategoryRepository->model());
        try {
            $category = $this->storecategoryRepository->update($input, $id);

            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($category, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $category->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($category->toArray(), __('lang.updated_successfully', ['operator' => __('lang.category')]));

    }

    /**
     * Remove the specified Category from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $category = $this->storecategoryRepository->findWithoutFail($id);

        if (empty($category)) {
            return $this->sendError('Category not found');
        }

        $category = $this->storecategoryRepository->delete($id);

        return $this->sendResponse($category, __('lang.deleted_successfully', ['operator' => __('lang.category')]));
    }
}
