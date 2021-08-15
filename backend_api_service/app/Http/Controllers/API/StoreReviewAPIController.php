<?php

namespace App\Http\Controllers\API;


use App\Http\Requests\CreateStoreReviewRequest;
use App\Models\StoreReview;
use App\Repositories\StoreReviewRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Illuminate\Support\Facades\Response;
use Prettus\Repository\Exceptions\RepositoryException;
use Flash;
use Prettus\Validator\Exceptions\ValidatorException;

/**
 * Class StoreReviewController
 * @package App\Http\Controllers\API
 */

class StoreReviewAPIController extends Controller
{
    /** @var  StoreReviewRepository */
    private $storeReviewRepository;

    public function __construct(StoreReviewRepository $storeReviewRepo)
    {
        $this->storeReviewRepository = $storeReviewRepo;
    }

    /**
     * Display a listing of the StoreReview.
     * GET|HEAD /storeReviews
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try{
            $this->storeReviewRepository->pushCriteria(new RequestCriteria($request));
            $this->storeReviewRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $storeReviews = $this->storeReviewRepository->all();

        return $this->sendResponse($storeReviews->toArray(), 'Store Reviews retrieved successfully');
    }

    /**
     * Display the specified StoreReview.
     * GET|HEAD /storeReviews/{id}
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var StoreReview $storeReview */
        if (!empty($this->storeReviewRepository)) {
            $storeReview = $this->storeReviewRepository->findWithoutFail($id);
        }

        if (empty($storeReview)) {
            return $this->sendError('Store Review not found');
        }

        return $this->sendResponse($storeReview->toArray(), 'Store Review retrieved successfully');
    }

    /**
     * Store a newly created StoreReview in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        $uniqueInput = $request->only("user_id","store_id");
        $otherInput = $request->except("user_id","store_id");
        try {
            $storeReview = $this->storeReviewRepository->updateOrCreate($uniqueInput,$otherInput);
        } catch (ValidatorException $e) {
            return $this->sendError('Store Review not found');
        }

        return $this->sendResponse($storeReview->toArray(),__('lang.saved_successfully',['operator' => __('lang.store_review')]));
    }
}
