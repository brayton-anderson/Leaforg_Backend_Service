<?php
/**
 * File name: StoreFactory.php
 * Last modified: 2020.04.30 at 08:21:08
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Store;
use Faker\Generator as Faker;

$factory->define(Store::class, function (Faker $faker) {
    return [
        'name' => $faker->randomElement(['Producty', 'Pizza', 'Burger', 'Store','Meal']) . " " . $faker->company,
        'description' => $faker->text,
        'address' => $faker->address,
        'latitude' => $faker->randomFloat(6, 55, 37),
        'longitude' => $faker->randomFloat(6, 12, 7),
        'phone' => $faker->phoneNumber,
        'mobile' => $faker->phoneNumber,
        'information' => $faker->sentences(3, true),
        'admin_commission' => $faker->randomFloat(2, 10, 50),
        'delivery_fee' => $faker->randomFloat(2, 1, 10),
        'delivery_range' => $faker->randomFloat(2, 5, 100),
        'default_tax' => $faker->randomFloat(2, 5, 30), //added
        'closed' => $faker->boolean,
        'active' => 1,
        'available_for_delivery' => $faker->boolean,
    ];
});
