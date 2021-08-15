<?php

namespace App\Http\Controllers\API;


use App\Models\StoresPayout;
use App\Repositories\StoresPayoutRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Illuminate\Support\Facades\Response;
use Prettus\Repository\Exceptions\RepositoryException;
use Flash;

/**
 * Class StoresPayoutController
 * @package App\Http\Controllers\API
 */

class StoresPayoutAPIController extends Controller
{
    /** @var  StoresPayoutRepository */
    private $storesPayoutRepository;

    public function __construct(StoresPayoutRepository $storesPayoutRepo)
    {
        $this->storesPayoutRepository = $storesPayoutRepo;
    }

    /**
     * Display a listing of the StoresPayout.
     * GET|HEAD /storesPayouts
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try{
            $this->storesPayoutRepository->pushCriteria(new RequestCriteria($request));
            $this->storesPayoutRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $storesPayouts = $this->storesPayoutRepository->all();

        return $this->sendResponse($storesPayouts->toArray(), 'Stores Payouts retrieved successfully');
    }

    /**
     * Display the specified StoresPayout.
     * GET|HEAD /storesPayouts/{id}
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var StoresPayout $storesPayout */
        if (!empty($this->storesPayoutRepository)) {
            $storesPayout = $this->storesPayoutRepository->findWithoutFail($id);
        }

        if (empty($storesPayout)) {
            return $this->sendError('Stores Payout not found');
        }

        return $this->sendResponse($storesPayout->toArray(), 'Stores Payout retrieved successfully');
    }
}
