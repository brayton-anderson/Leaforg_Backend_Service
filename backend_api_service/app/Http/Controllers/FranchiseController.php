<?php

namespace App\Http\Controllers;

use App\DataTables\FranchiseDataTable;
use App\Http\Requests;
use App\Http\Requests\CreateFranchiseRequest;
use App\Http\Requests\UpdateFranchiseRequest;
use App\Repositories\FranchiseRepository;
use App\Repositories\CustomFieldRepository;
use App\Repositories\UploadRepository;
use App\Repositories\StoreRepository;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class FranchiseController extends Controller
{
    /** @var  FranchiseRepository */
    private $franchiseRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    /**
     * @var UploadRepository
     */
    private $uploadRepository;
    /**
     * @var StoreRepository
     */
    private $storeRepository;

    public function __construct(FranchiseRepository $franchiseRepo, CustomFieldRepository $customFieldRepo, UploadRepository $uploadRepo
        , StoreRepository $storeRepo)
    {
        parent::__construct();
        $this->franchiseRepository = $franchiseRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->uploadRepository = $uploadRepo;
        $this->storeRepository = $storeRepo;
    }

    /**
     * Display a listing of the Franchise.
     *
     * @param FranchiseDataTable $franchiseDataTable
     * @return Response
     */
    public function index(FranchiseDataTable $franchiseDataTable)
    {
        return $franchiseDataTable->render('franchises.index');
    }

    /**
     * Show the form for creating a new Franchise.
     *
     * @return Response
     */
    public function create()
    {
        $store = $this->storeRepository->pluck('name', 'id');
        $storesSelected = [];
        $hasCustomField = in_array($this->franchiseRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->franchiseRepository->model());
            $html = generateCustomField($customFields);
        }
        return view('franchises.create')->with("customFields", isset($html) ? $html : false)->with("store", $store)->with("storesSelected", $storesSelected);
    }

    /**
     * Store a newly created Franchise in storage.
     *
     * @param CreateFranchiseRequest $request
     *
     * @return Response
     */
    public function store(CreateFranchiseRequest $request)
    {
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->franchiseRepository->model());
        try {
            $franchise = $this->franchiseRepository->create($input);
            $franchise->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($franchise, 'image');
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.franchise')]));

        return redirect(route('franchises.index'));
    }

    /**
     * Display the specified Franchise.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $franchise = $this->franchiseRepository->findWithoutFail($id);

        if (empty($franchise)) {
            Flash::error('Franchise not found');

            return redirect(route('franchises.index'));
        }

        return view('franchises.show')->with('franchise', $franchise);
    }

    /**
     * Show the form for editing the specified Franchise.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $franchise = $this->franchiseRepository->findWithoutFail($id);
        $store = $this->storeRepository->pluck('name', 'id');
        $storesSelected = $franchise->stores()->pluck('stores.id')->toArray();

        if (empty($franchise)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.franchise')]));

            return redirect(route('franchises.index'));
        }
        $customFieldsValues = $franchise->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->franchiseRepository->model());
        $hasCustomField = in_array($this->franchiseRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('franchises.edit')->with('franchise', $franchise)->with("customFields", isset($html) ? $html : false)->with("store", $store)->with("storesSelected", $storesSelected);
    }

    /**
     * Update the specified Franchise in storage.
     *
     * @param int $id
     * @param UpdateFranchiseRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateFranchiseRequest $request)
    {
        $franchise = $this->franchiseRepository->findWithoutFail($id);

        if (empty($franchise)) {
            Flash::error('Franchise not found');
            return redirect(route('franchises.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->franchiseRepository->model());
        try {
            $franchise = $this->franchiseRepository->update($input, $id);
            $input['stores'] = isset($input['stores']) ? $input['stores'] : [];
            if (isset($input['image']) && $input['image']) {
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('image')->first();
                $mediaItem->copy($franchise, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $franchise->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully', ['operator' => __('lang.franchise')]));

        return redirect(route('franchises.index'));
    }

    /**
     * Remove the specified Franchise from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $franchise = $this->franchiseRepository->findWithoutFail($id);

        if (empty($franchise)) {
            Flash::error('Franchise not found');

            return redirect(route('franchises.index'));
        }

        $this->franchiseRepository->delete($id);

        Flash::success(__('lang.deleted_successfully', ['operator' => __('lang.franchise')]));

        return redirect(route('franchises.index'));
    }

    /**
     * Remove Media of Franchise
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $franchise = $this->franchiseRepository->findWithoutFail($input['id']);
        try {
            if ($franchise->hasMedia($input['collection'])) {
                $franchise->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
