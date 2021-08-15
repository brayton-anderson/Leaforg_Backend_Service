<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Slide;
use Faker\Generator as Faker;

$factory->define(Slide::class, function (Faker $faker) {
    $product = $faker->boolean;
    $array = [
        'order' => $faker->numberBetween(0, 5),
        'text' => $faker->sentence(4),
        'button' => $faker->randomElement(['Discover It', 'Order Now', 'Get Discount']),
        'text_position' => $faker->randomElement(['start', 'end', 'center']),
        'text_color' => '#ea5c44',
        'button_color' => '#ea5c44',
        'background_color' => '#ccccdd',
        'indicator_color' => '#ea5c44',
        'image_fit' => 'cover',
        'product_id' => $product ? $faker->numberBetween(1, 15) : null,
        'store_id' => !$product ? $faker->numberBetween(1, 4) : null,
        'enabled' => $faker->boolean,
    ];

    return $array;
});
