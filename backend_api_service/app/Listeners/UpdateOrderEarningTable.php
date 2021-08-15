<?php
/**
 * File name: UpdateOrderEarningTable.php
 *
 */

namespace App\Listeners;

use App\Criteria\Earnings\EarningOfStoreCriteria;
use App\Repositories\EarningRepository;

class UpdateOrderEarningTable
{
    /**
     * @var EarningRepository
     */
    private $earningRepository;

    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct(EarningRepository $earningRepository)
    {
        //
        $this->earningRepository = $earningRepository;
    }

    /**
     * Handle the event.
     *oldOrder
     * updatedOrder
     * @param object $event
     * @return void
     */
    public function handle($event)
    {
        if ($event->oldStatus != $event->updatedOrder->payment->status) {
            $this->earningRepository->pushCriteria(new EarningOfStoreCriteria($event->updatedOrder->productOrders[0]->product->store->id));
            $store = $this->earningRepository->first();
//            dd($store);
            $amount = 0;

            // test if order delivered to client
            if (!empty($store)) {
                foreach ($event->updatedOrder->productOrders as $productOrder) {
                    $amount += $productOrder['price'] * $productOrder['quantity'];
                }
                if ($event->updatedOrder->payment->status == 'Paid') {
                    $store->total_orders++;
                    $store->total_earning += $amount;
                    $store->admin_earning += ($store->store->admin_commission / 100) * $amount;
                    $store->store_earning += ($amount - $store->admin_earning);
                    $store->delivery_fee += $event->updatedOrder->delivery_fee;
                    $store->tax += $amount * $event->updatedOrder->tax / 100;
                    $store->save();
                } elseif ($event->oldStatus == 'Paid') {
                    $store->total_orders--;
                    $store->total_earning -= $amount;
                    $store->admin_earning -= ($store->store->admin_commission / 100) * $amount;
                    $store->store_earning -= $amount - (($store->store->admin_commission / 100) * $amount);
                    $store->delivery_fee -= $event->updatedOrder->delivery_fee;
                    $store->tax -= $amount * $event->updatedOrder->tax / 100;
                    $store->save();
                }
            }

        }
    }
}
