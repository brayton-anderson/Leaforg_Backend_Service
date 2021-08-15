<?php
/**
 * File name: StoreController.php
 *
 */

namespace App\Http\Controllers;

use App\Criteria\Stores\StoresOfUserCriteria;
use App\Criteria\Users\AdminsCriteria;
use App\Criteria\Users\ClientsCriteria;
use App\Criteria\Users\DriversCriteria;
use App\Criteria\Users\ManagersClientsCriteria;
use App\Criteria\Users\ManagersCriteria;
use App\DataTables\StoreDataTable;
use App\DataTables\RequestedStoreDataTable;
use App\Events\StoreChangedEvent;
use App\Http\Requests\CreateStoreRequest;
use App\Http\Requests\UpdateStoreRequest;
use App\Repositories\CustomFieldRepository;
use App\Repositories\FranchiseRepository;
use App\Repositories\StoreRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class StoreController extends Controller
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
    /**
     * @var UserRepository
     */
    private $userRepository;
    /**
     * @var FranchiseRepository
     */
    private $franchiseRepository;

    public function __construct(StoreRepository $storeRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo, UserRepository $userRepo, FranchiseRepository $franchiseRepository)
    {
        parent::__construct();
        $this->storeRepository = $storeRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;
        $this->userRepository = $userRepo;
        $this->franchiseRepository = $franchiseRepository;
    }

    /**
     * Display a listing of the Store.
     *
     * @param StoreDataTable $storeDataTable
     * @return Response
     */
    public function index(StoreDataTable $storeDataTable)
    {
        return $storeDataTable->render('stores.index');
    }

    /**
     * Display a listing of the Store.
     *
     * @param StoreDataTable $storeDataTable
     * @return Response
     */
    public function requestedStores(RequestedStoreDataTable $requestedStoreDataTable)
    {
        return $requestedStoreDataTable->render('stores.requested');
    }

    /**
     * Show the form for creating a new Store.
     *
     * @return Response
     */
    public function create()
    {

        $user = $this->userRepository->getByCriteria(new ManagersCriteria())->pluck('name', 'id');
        $drivers = $this->userRepository->getByCriteria(new DriversCriteria())->pluck('name', 'id');
        $franchise = $this->franchiseRepository->pluck('name', 'id');
        $usersSelected = [];
        $driversSelected = [];
        $franchisesSelected = [];
        $hasCustomField = in_array($this->storeRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeRepository->model());
            $html = generateCustomField($customFields);
        }
        return view('stores.create')->with("customFields", isset($html) ? $html : false)->with("user", $user)->with("drivers", $drivers)->with("usersSelected", $usersSelected)->with("driversSelected", $driversSelected)->with('franchise', $franchise)->with('franchisesSelected', $franchisesSelected);
    }

    /**
     * Store a newly created Store in storage.
     *
     * @param CreateStoreRequest $request
     *
     * @return Response
     */
    public function store(CreateStoreRequest $request)
    {
        $input = $request->all();
        if (auth()->user()->hasRole(['manager','client'])) {
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
            event(new StoreChangedEvent($store, $store));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.store')]));

        return redirect(route('stores.index'));
    }

    /**
     * Display the specified Store.
     *
     * @param int $id
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function show($id)
    {
        $this->storeRepository->pushCriteria(new StoresOfUserCriteria(auth()->id()));
        $store = $this->storeRepository->findWithoutFail($id);

        if (empty($store)) {
            Flash::error('Store not found');

            return redirect(route('stores.index'));
        }

        return view('stores.show')->with('store', $store);
    }

    /**
     * Show the form for editing the specified Store.
     *
     * @param int $id
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function edit($id)
    {
        $this->storeRepository->pushCriteria(new StoresOfUserCriteria(auth()->id()));
        $store = $this->storeRepository->findWithoutFail($id);

        if (empty($store)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.store')]));
            return redirect(route('stores.index'));
        }
        if($store['active'] == 0){
            $user = $this->userRepository->getByCriteria(new ManagersClientsCriteria())->pluck('name', 'id');
        } else {
        $user = $this->userRepository->getByCriteria(new ManagersCriteria())->pluck('name', 'id');
        }
        $drivers = $this->userRepository->getByCriteria(new DriversCriteria())->pluck('name', 'id');
        $franchise = $this->franchiseRepository->pluck('name', 'id');


        $usersSelected = $store->users()->pluck('users.id')->toArray();
        $driversSelected = $store->drivers()->pluck('users.id')->toArray();
        $franchisesSelected = $store->franchises()->pluck('franchises.id')->toArray();

        $customFieldsValues = $store->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeRepository->model());
        $hasCustomField = in_array($this->storeRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('stores.edit')->with('store', $store)->with("customFields", isset($html) ? $html : false)->with("user", $user)->with("drivers", $drivers)->with("usersSelected", $usersSelected)->with("driversSelected", $driversSelected)->with('franchise', $franchise)->with('franchisesSelected', $franchisesSelected);
    }

    /**
     * Update the specified Store in storage.
     *
     * @param int $id
     * @param UpdateStoreRequest $request
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function update($id, UpdateStoreRequest $request)
    {
        $this->storeRepository->pushCriteria(new StoresOfUserCriteria(auth()->id()));
        $oldStore = $this->storeRepository->findWithoutFail($id);

        if (empty($oldStore)) {
            Flash::error('Store not found');
            return redirect(route('stores.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeRepository->model());
        try {

            $store = $this->storeRepository->update($input, $id);
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($store, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $store->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
            event(new StoreChangedEvent($store, $oldStore));
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully', ['operator' => __('lang.store')]));

        return redirect(route('stores.index'));
    }

    /**
     * Remove the specified Store from storage.
     *
     * @param int $id
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function destroy($id)
    {
        if (!env('APP_DEMO', false)) {
            $this->storeRepository->pushCriteria(new StoresOfUserCriteria(auth()->id()));
            $store = $this->storeRepository->findWithoutFail($id);

            if (empty($store)) {
                Flash::error('Store not found');

                return redirect(route('stores.index'));
            }

            $this->storeRepository->delete($id);

            Flash::success(__('lang.deleted_successfully', ['operator' => __('lang.store')]));
        } else {
            Flash::warning('This is only demo app you can\'t change this section ');
        }
        return redirect(route('stores.index'));
    }

    /**
     * Remove Media of Store
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $store = $this->storeRepository->findWithoutFail($input['id']);
        try {
            if ($store->hasMedia($input['collection'])) {
                $store->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
