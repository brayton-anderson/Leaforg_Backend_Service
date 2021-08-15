<?php

use Illuminate\Database\Seeder;

class StoreFranchisesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('store_franchises')->delete();
        \DB::table('store_franchises')->insert(
            [
                array(
                    'store_id' => 1,
                    'franchise_id' => 2,
                ),
                array(
                    'store_id' => 3,
                    'franchise_id' => 4,
                ),
                array(
                    'store_id' => 2,
                    'franchise_id' => 3,
                ),
                array(
                    'store_id' => 5,
                    'franchise_id' => 6,
                ),
                array(
                    'store_id' => 2,
                    'franchise_id' => 2,
                ),
                array(
                    'store_id' => 6,
                    'franchise_id' => 3,
                ),
                array(
                    'store_id' => 7,
                    'franchise_id' => 1,
                ),
                array(
                    'store_id' => 8,
                    'franchise_id' => 5,
                ),
                array(
                    'store_id' => 7,
                    'franchise_id' => 2,
                ),
                array(
                    'store_id' => 9,
                    'franchise_id' => 1,
                ),
                array(
                    'store_id' => 1,
                    'franchise_id' => 4,
                ),
                array(
                    'store_id' => 10,
                    'franchise_id' => 5,
                )
            ]
        );
    }
}
