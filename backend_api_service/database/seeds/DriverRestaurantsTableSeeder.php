<?php

use Illuminate\Database\Seeder;

class DriverStoresTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {


        \DB::table('driver_stores')->delete();

        \DB::table('driver_stores')->insert(array(
            0 =>
                array(
                    'user_id' => 5,
                    'store_id' => 1,
                ),
            1 =>
                array(
                    'user_id' => 5,
                    'store_id' => 2,
                ),
            2 =>
                array(
                    'user_id' => 5,
                    'store_id' => 4,
                ),
            3 =>
                array(
                    'user_id' => 6,
                    'store_id' => 2,
                ),
            4 =>
                array(
                    'user_id' => 6,
                    'store_id' => 3,
                ),
            5 =>
                array(
                    'user_id' => 6,
                    'store_id' => 4,
                ),
        ));


    }
}