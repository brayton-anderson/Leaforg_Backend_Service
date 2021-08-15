<?php

namespace App\Http\Controllers\API;

use App\Criteria\Earnings\EarningOfUserCriteria;
use App\Criteria\Products\ProductsOfUserCriteria;
use App\Criteria\Orders\OrdersOfUserCriteria;
use App\Criteria\Stores\StoresOfManagerCriteria;
use App\Http\Controllers\Controller;
use App\Repositories\EarningRepository;
use App\Repositories\ProductRepository;
use App\Repositories\OrderRepository;
use App\Repositories\StoreRepository;
use Illuminate\Http\Request;
use Prettus\Repository\Exceptions\RepositoryException;

class DashboardAPIController extends Controller
{
    /** @var  OrderRepository */
    private $orderRepository;

    /** @var  StoreRepository */
    private $storeRepository;
    /**
     * @var ProductRepository
     */
    private $productRepository;
    /**
     * @var EarningRepository
     */
    private $earningRepository;

    public function __construct(OrderRepository $orderRepo, EarningRepository $earningRepository, StoreRepository $storeRepo, ProductRepository $productRepository)
    {
        parent::__construct();
        $this->orderRepository = $orderRepo;
        $this->storeRepository = $storeRepo;
        $this->productRepository = $productRepository;
        $this->earningRepository = $earningRepository;
    }

    /**
     * Display a listing of the Faq.
     * GET|HEAD /faqs
     * @param  int $id
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function manager($id, Request $request)
    {
        $statistics = [];
        try{

            $this->earningRepository->pushCriteria(new EarningOfUserCriteria(auth()->id()));
            $earning['description'] = 'total_earning';
            $earning['value'] = $this->earningRepository->all()->sum('store_earning');
            $statistics[] = $earning;

            $this->orderRepository->pushCriteria(new OrdersOfUserCriteria(auth()->id()));
            $ordersCount['description'] = "total_orders";
            $ordersCount['value'] = $this->orderRepository->all('orders.id')->count();
            $statistics[] = $ordersCount;

            $this->storeRepository->pushCriteria(new StoresOfManagerCriteria(auth()->id()));
            $storesCount['description'] = "total_stores";
            $storesCount['value'] = $this->storeRepository->all('stores.id')->count();
            $statistics[] = $storesCount;

            $this->productRepository->pushCriteria(new ProductsOfUserCriteria(auth()->id()));
            $productsCount['description'] = "total_products";
            $productsCount['value'] = $this->productRepository->all('products.id')->count();
            $statistics[] = $productsCount;


        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($statistics, 'Statistics retrieved successfully');
    }
}
