<?php

use Illuminate\Database\Seeder;

class StoresPayoutsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('stores_payouts')->delete();
        
    }
}