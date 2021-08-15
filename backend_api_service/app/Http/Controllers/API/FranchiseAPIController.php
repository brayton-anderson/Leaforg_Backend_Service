<?php

namespace App\Http\Controllers\API;


use App\Models\Franchise;
use App\Repositories\FranchiseRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Illuminate\Support\Facades\Response;
use Prettus\Repository\Exceptions\RepositoryException;
use Flash;

/**
 * Class FranchiseController
 * @package App\Http\Controllers\API
 */

class FranchiseAPIController extends Controller
{
    /** @var  FranchiseRepository */
    private $franchiseRepository;

    public function __construct(FranchiseRepository $franchiseRepo)
    {
        $this->franchiseRepository = $franchiseRepo;
    }

    /**
     * Display a listing of the Franchise.
     * GET|HEAD /franchises
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try{
            $this->franchiseRepository->pushCriteria(new RequestCriteria($request));
            $this->franchiseRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $franchises = $this->franchiseRepository->all();

        return $this->sendResponse($franchises->toArray(), 'Franchises retrieved successfully');
    }

    /**
     * Display the specified Franchise.
     * GET|HEAD /franchises/{id}
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var Franchise $franchise */
        if (!empty($this->franchiseRepository)) {
            $franchise = $this->franchiseRepository->findWithoutFail($id);
        }

        if (empty($franchise)) {
            return $this->sendError('Franchise not found');
        }

        return $this->sendResponse($franchise->toArray(), 'Franchise retrieved successfully');
    }
}
