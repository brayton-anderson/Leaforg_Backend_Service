<?php

namespace App\Events;

use App\Models\Store;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class StoreChangedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $newStore;

    public $oldStore;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(Store $newStore, Store $oldStore)
    {
        //
        $this->newStore = $newStore;
        $this->oldStore = $oldStore;
    }

}
