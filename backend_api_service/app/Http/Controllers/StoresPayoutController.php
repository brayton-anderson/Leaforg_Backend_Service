<?php

namespace App\Http\Controllers;

use App\Criteria\Earnings\EarningOfStoreCriteria;
use App\Criteria\Stores\StoresOfManagerCriteria;
use App\DataTables\StoresPayoutDataTable;
use App\Http\Requests\CreateStoresPayoutRequest;
use App\Http\Requests\UpdateStoresPayoutRequest;
use App\Repositories\CustomFieldRepository;
use App\Repositories\EarningRepository;
use App\Repositories\StoreRepository;
use App\Repositories\StoresPayoutRepository;
use Carbon\Carbon;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class StoresPayoutController extends Controller
{
    /** @var  StoresPayoutRepository */
    private $storesPayoutRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    /**
     * @var StoreRepository
     */
    private $storeRepository;
    /**
     * @var EarningRepository
     */
    private $earningRepository;

    public function __construct(StoresPayoutRepository $storesPayoutRepo, CustomFieldRepository $customFieldRepo, StoreRepository $storeRepo, EarningRepository $earningRepository)
    {
        parent::__construct();
        $this->storesPayoutRepository = $storesPayoutRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->storeRepository = $storeRepo;
        $this->earningRepository = $earningRepository;
    }

    /**
     * Display a listing of the StoresPayout.
     *
     * @param StoresPayoutDataTable $storesPayoutDataTable
     * @return Response
     */
    public function index(StoresPayoutDataTable $storesPayoutDataTable)
    {
        return $storesPayoutDataTable->render('stores_payouts.index');
    }

    /**
     * Show the form for creating a new StoresPayout.
     *
     * @return Response
     */
    public function create()
    {
        if(auth()->user()->hasRole('manager')){
            $this->storeRepository->pushCriteria(new StoresOfManagerCriteria(auth()->id()));
        }
        $store = $this->storeRepository->pluck('name', 'id');

        $hasCustomField = in_array($this->storesPayoutRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storesPayoutRepository->model());
            $html = generateCustomField($customFields);
        }
        return view('stores_payouts.create')->with("customFields", isset($html) ? $html : false)->with("store", $store);
    }

    /**
     * Store a newly created StoresPayout in storage.
     *
     * @param CreateStoresPayoutRequest $request
     *
     * @return Response
     */
    public function store(CreateStoresPayoutRequest $request)
    {
        $input = $request->all();
        $earning = $this->earningRepository->findByField('store_id',$input['store_id'])->first();
        if($input['amount'] > $earning->store_earning){
            Flash::error('The payout amount must be less than store earning');
            return redirect(route('storesPayouts.create'))->withInput($input);
        }
        $input['paid_date'] = Carbon::now();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storesPayoutRepository->model());
        try {
            $this->earningRepository->update(['store_earning'=>$earning->store_earning - $input['amount']], $earning->id);
            $storesPayout = $this->storesPayoutRepository->create($input);
            $storesPayout->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));

        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.stores_payout')]));

        return redirect(route('storesPayouts.index'));
    }

    /**
     * Display the specified StoresPayout.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $storesPayout = $this->storesPayoutRepository->findWithoutFail($id);

        if (empty($storesPayout)) {
            Flash::error('Stores Payout not found');

            return redirect(route('storesPayouts.index'));
        }

        return view('stores_payouts.show')->with('storesPayout', $storesPayout);
    }

    /**
     * Show the form for editing the specified StoresPayout.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $storesPayout = $this->storesPayoutRepository->findWithoutFail($id);
        $store = $this->storeRepository->pluck('name', 'id');


        if (empty($storesPayout)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.stores_payout')]));

            return redirect(route('storesPayouts.index'));
        }
        $customFieldsValues = $storesPayout->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storesPayoutRepository->model());
        $hasCustomField = in_array($this->storesPayoutRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('stores_payouts.edit')->with('storesPayout', $storesPayout)->with("customFields", isset($html) ? $html : false)->with("store", $store);
    }

    /**
     * Update the specified StoresPayout in storage.
     *
     * @param int $id
     * @param UpdateStoresPayoutRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateStoresPayoutRequest $request)
    {
        $storesPayout = $this->storesPayoutRepository->findWithoutFail($id);

        if (empty($storesPayout)) {
            Flash::error('Stores Payout not found');
            return redirect(route('storesPayouts.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storesPayoutRepository->model());
        try {
            $storesPayout = $this->storesPayoutRepository->update($input, $id);


            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $storesPayout->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully', ['operator' => __('lang.stores_payout')]));

        return redirect(route('storesPayouts.index'));
    }

    /**
     * Remove the specified StoresPayout from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $storesPayout = $this->storesPayoutRepository->findWithoutFail($id);

        if (empty($storesPayout)) {
            Flash::error('Stores Payout not found');

            return redirect(route('storesPayouts.index'));
        }

        $this->storesPayoutRepository->delete($id);

        Flash::success(__('lang.deleted_successfully', ['operator' => __('lang.stores_payout')]));

        return redirect(route('storesPayouts.index'));
    }

    /**
     * Remove Media of StoresPayout
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $storesPayout = $this->storesPayoutRepository->findWithoutFail($input['id']);
        try {
            if ($storesPayout->hasMedia($input['collection'])) {
                $storesPayout->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
