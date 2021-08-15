<?php

namespace App\Http\Controllers\API;

use App\Models\Degradable;
use App\Repositories\DegradableRepository;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Illuminate\Support\Facades\Response;
use Prettus\Repository\Exceptions\RepositoryException;
use Flash;

/**
 * Class DegradableController
 * @package App\Http\Controllers\API
 */

class DegradableAPIController extends Controller
{
    /** @var  DegradableRepository */
    private $degradableRepository;

    public function __construct(DegradableRepository $degradableRepo)
    {
        $this->degradableRepository = $degradableRepo;
    }

    /**
     * Display a listing of the Degradable.
     * GET|HEAD /degradable
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try{
            $this->degradableRepository->pushCriteria(new RequestCriteria($request));
            $this->degradableRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $degradable = $this->degradableRepository->all();

        return $this->sendResponse($degradable->toArray(), 'Degradable retrieved successfully');
    }

    /**
     * Display the specified Degradable.
     * GET|HEAD /degradable/{id}
     *
     * @param  int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var Degradable $degradable */
        if (!empty($this->degradableRepository)) {
            $degradable = $this->degradableRepository->findWithoutFail($id);
        }

        if (empty($degradable)) {
            return $this->sendError('Degradable not found');
        }

        return $this->sendResponse($degradable->toArray(), 'Degradable retrieved successfully');
    }
}
