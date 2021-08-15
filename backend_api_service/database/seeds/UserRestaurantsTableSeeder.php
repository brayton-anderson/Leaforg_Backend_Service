<?php

use Illuminate\Database\Seeder;

class UserStoresTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     * @throws Exception
     */
    public function run()
    {


        \DB::table('user_stores')->delete();

        \DB::table('user_stores')->insert(array(
            0 =>
                array(
                    'user_id' => 1,
                    'store_id' => 2,
                ),
            1 =>
                array(
                    'user_id' => 1,
                    'store_id' => 5,
                ),
            2 =>
                array(
                    'user_id' => 2,
                    'store_id' => 3,
                ),
            3 =>
                array(
                    'user_id' => 2,
                    'store_id' => 4,
                ),
            5 =>
                array(
                    'user_id' => 1,
                    'store_id' => 6,
                ),
            6 =>
                array(
                    'user_id' => 1,
                    'store_id' => 3,
                ),
        ));


    }
}