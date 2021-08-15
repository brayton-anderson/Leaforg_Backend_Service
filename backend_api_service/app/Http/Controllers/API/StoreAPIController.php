<?php
/**
 * File name: StoreAPIController.php
 *
 */

namespace App\Http\Controllers\API;


use App\Criteria\Stores\ActiveCriteria;
use App\Criteria\Stores\StoresOfFranchisesCriteria;
use App\Criteria\Stores\StoresOfCategoriesCriteria;
use App\Criteria\Stores\StoresOfDegradablesCriteria;
use App\Criteria\Stores\NearCriteria;
use App\Criteria\Stores\PopularCriteria;
use App\Http\Controllers\Controller;
use App\Models\Store;
use App\Repositories\CustomFieldRepository;
use App\Repositories\StoreRepository;
use App\Repositories\UploadRepository;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use Prettus\Validator\Exceptions\ValidatorException;

/**
 * Class StoreController
 * @package App\Http\Controllers\API
 */
class StoreAPIController extends Controller
{
    /** @var  StoreRepository */
    private $storeRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    /**
     * @var UploadRepository
     */
    private $uploadRepository;


    public function __construct(StoreRepository $storeRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo)
    {
        parent::__construct();
        $this->storeRepository = $storeRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;

    }

    /**
     * Display a listing of the Store.
     * GET|HEAD /stores
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try {
            $this->storeRepository->pushCriteria(new RequestCriteria($request));
            $this->storeRepository->pushCriteria(new LimitOffsetCriteria($request));
            $this->storeRepository->pushCriteria(new StoresOfFranchisesCriteria($request));
            $this->storeRepository->pushCriteria(new StoresOfDegradablesCriteria($request));
            if ($request->has('popular')) {
                $this->storeRepository->pushCriteria(new PopularCriteria($request));
            } else {
                $this->storeRepository->pushCriteria(new NearCriteria($request));
            }
            $this->storeRepository->pushCriteria(new ActiveCriteria());
            $stores = $this->storeRepository->all();

        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($stores->toArray(), 'Stores retrieved successfully');
    }
    
    /**
     * Display a listing of the Store.
     * GET|HEAD /stores/categories
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function categories(Request $request)
    {
        try{
            $this->storeRepository->pushCriteria(new RequestCriteria($request));
            $this->storeRepository->pushCriteria(new LimitOffsetCriteria($request));
            $this->storeRepository->pushCriteria(new StoresOfFranchisesCriteria($request));
            $this->storeRepository->pushCriteria(new StoresOfCategoriesCriteria($request));
            $this->storeRepository->pushCriteria(new StoresOfDegradablesCriteria($request));

            $stores = $this->storeRepository->all();

        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($stores->toArray(), 'Stores retrieved successfully');
    }

    /**
     * Display the specified Store.
     * GET|HEAD /stores/{id}
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Request $request, $id)
    {
        /** @var Store $store */
        if (!empty($this->storeRepository)) {
            try {
                $this->storeRepository->pushCriteria(new RequestCriteria($request));
                $this->storeRepository->pushCriteria(new LimitOffsetCriteria($request));
                if ($request->has(['myLon', 'myLat', 'areaLon', 'areaLat'])) {
                    $this->storeRepository->pushCriteria(new NearCriteria($request));
                }
            } catch (RepositoryException $e) {
                return $this->sendError($e->getMessage());
            }
            $store = $this->storeRepository->findWithoutFail($id);
        }

        if (empty($store)) {
            return $this->sendError('Store not found');
        }

        return $this->sendResponse($store->toArray(), 'Store retrieved successfully');
    }

    /**
     * Store a newly created Store in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $input = $request->all();
        if (auth()->user()->hasRole('manager')) {
            $input['users'] = [auth()->id()];
        }
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeRepository->model());
        try {
            $store = $this->storeRepository->create($input);
            $store->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($store, 'image');
            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($store->toArray(), __('lang.saved_successfully', ['operator' => __('lang.store')]));
    }

    /**
     * Update the specified Store in storage.
     *
     * @param int $id
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {
        $store = $this->storeRepository->findWithoutFail($id);

        if (empty($store)) {
            return $this->sendError('Store not found');
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeRepository->model());
        try {
            $store = $this->storeRepository->update($input, $id);
            $input['users'] = isset($input['users']) ? $input['users'] : [];
            $input['drivers'] = isset($input['drivers']) ? $input['drivers'] : [];
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($store, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $store->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($store->toArray(), __('lang.updated_successfully', ['operator' => __('lang.store')]));
    }

    /**
     * Remove the specified Store from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $store = $this->storeRepository->findWithoutFail($id);

        if (empty($store)) {
            return $this->sendError('Store not found');
        }

        $store = $this->storeRepository->delete($id);

        return $this->sendResponse($store, __('lang.deleted_successfully', ['operator' => __('lang.store')]));
    }
}
