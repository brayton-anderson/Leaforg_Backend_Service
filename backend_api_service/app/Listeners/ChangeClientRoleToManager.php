<?php
/**
 * File name: ChangeClientRoleToManager.php
 */

namespace App\Listeners;

use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class ChangeClientRoleToManager
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        if ($event->newStore->active && !$event->oldStore->active){
            foreach ($event->newStore->users as $user){
                $user->syncRoles(['manager']);
            }
        }
    }
}
