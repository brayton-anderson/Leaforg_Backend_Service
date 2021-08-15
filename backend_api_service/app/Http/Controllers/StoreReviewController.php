<?php
/**
 * File name: StoreReviewController.php
 *
 */

namespace App\Http\Controllers;

use App\Criteria\StoreReviews\StoreReviewsOfUserCriteria;
use App\DataTables\StoreReviewDataTable;
use App\Http\Requests\CreateStoreReviewRequest;
use App\Http\Requests\UpdateStoreReviewRequest;
use App\Repositories\CustomFieldRepository;
use App\Repositories\StoreReviewRepository;
use App\Repositories\StoreRepository;
use App\Repositories\UserRepository;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class StoreReviewController extends Controller
{
    /** @var  StoreReviewRepository */
    private $storeReviewRepository;

    /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    /**
     * @var UserRepository
     */
    private $userRepository;
    /**
     * @var StoreRepository
     */
    private $storeRepository;

    public function __construct(StoreReviewRepository $storeReviewRepo, CustomFieldRepository $customFieldRepo, UserRepository $userRepo
        , StoreRepository $storeRepo)
    {
        parent::__construct();
        $this->storeReviewRepository = $storeReviewRepo;
        $this->customFieldRepository = $customFieldRepo;
        $this->userRepository = $userRepo;
        $this->storeRepository = $storeRepo;
    }

    /**
     * Display a listing of the StoreReview.
     *
     * @param StoreReviewDataTable $storeReviewDataTable
     * @return Response
     */
    public function index(StoreReviewDataTable $storeReviewDataTable)
    {
        return $storeReviewDataTable->render('store_reviews.index');
    }

    /**
     * Show the form for creating a new StoreReview.
     *
     * @return Response
     */
    public function create()
    {
        $user = $this->userRepository->pluck('name', 'id');
        $store = $this->storeRepository->pluck('name', 'id');

        $hasCustomField = in_array($this->storeReviewRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeReviewRepository->model());
            $html = generateCustomField($customFields);
        }
        return view('store_reviews.create')->with("customFields", isset($html) ? $html : false)->with("user", $user)->with("store", $store);
    }

    /**
     * Store a newly created StoreReview in storage.
     *
     * @param CreateStoreReviewRequest $request
     *
     * @return Response
     */
    public function store(CreateStoreReviewRequest $request)
    {
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeReviewRepository->model());
        try {
            $storeReview = $this->storeReviewRepository->create($input);
            $storeReview->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));

        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.store_review')]));

        return redirect(route('storeReviews.index'));
    }

    /**
     * Display the specified StoreReview.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $storeReview = $this->storeReviewRepository->findWithoutFail($id);

        if (empty($storeReview)) {
            Flash::error('Store Review not found');

            return redirect(route('storeReviews.index'));
        }

        return view('store_reviews.show')->with('storeReview', $storeReview);
    }

    /**
     * Show the form for editing the specified StoreReview.
     *
     * @param int $id
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function edit($id)
    {
        $this->storeReviewRepository->pushCriteria(new StoreReviewsOfUserCriteria(auth()->id()));
        $storeReview = $this->storeReviewRepository->findWithoutFail($id);
        if (empty($storeReview)) {
            Flash::error(__('lang.not_found', ['operator' => __('lang.store_review')]));

            return redirect(route('storeReviews.index'));
        }
        $user = $this->userRepository->pluck('name', 'id');
        $store = $this->storeRepository->pluck('name', 'id');


        $customFieldsValues = $storeReview->customFieldsValues()->with('customField')->get();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeReviewRepository->model());
        $hasCustomField = in_array($this->storeReviewRepository->model(), setting('custom_field_models', []));
        if ($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('store_reviews.edit')->with('storeReview', $storeReview)->with("customFields", isset($html) ? $html : false)->with("user", $user)->with("store", $store);
    }

    /**
     * Update the specified StoreReview in storage.
     *
     * @param int $id
     * @param UpdateStoreReviewRequest $request
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function update($id, UpdateStoreReviewRequest $request)
    {
        $this->storeReviewRepository->pushCriteria(new StoreReviewsOfUserCriteria(auth()->id()));
        $storeReview = $this->storeReviewRepository->findWithoutFail($id);

        if (empty($storeReview)) {
            Flash::error('Store Review not found');
            return redirect(route('storeReviews.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->storeReviewRepository->model());
        try {
            $storeReview = $this->storeReviewRepository->update($input, $id);


            foreach (getCustomFieldsValues($customFields, $request) as $value) {
                $storeReview->customFieldsValues()
                    ->updateOrCreate(['custom_field_id' => $value['custom_field_id']], $value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully', ['operator' => __('lang.store_review')]));

        return redirect(route('storeReviews.index'));
    }

    /**
     * Remove the specified StoreReview from storage.
     *
     * @param int $id
     *
     * @return Response
     * @throws \Prettus\Repository\Exceptions\RepositoryException
     */
    public function destroy($id)
    {
        $this->storeReviewRepository->pushCriteria(new StoreReviewsOfUserCriteria(auth()->id()));
        $storeReview = $this->storeReviewRepository->findWithoutFail($id);

        if (empty($storeReview)) {
            Flash::error('Store Review not found');

            return redirect(route('storeReviews.index'));
        }

        $this->storeReviewRepository->delete($id);

        Flash::success(__('lang.deleted_successfully', ['operator' => __('lang.store_review')]));

        return redirect(route('storeReviews.index'));
    }

    /**
     * Remove Media of StoreReview
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $storeReview = $this->storeReviewRepository->findWithoutFail($input['id']);
        try {
            if ($storeReview->hasMedia($input['collection'])) {
                $storeReview->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
