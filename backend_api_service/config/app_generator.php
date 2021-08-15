<?php
return [

    /*
    |--------------------------------------------------------------------------
    | Authentication Defaults
    |--------------------------------------------------------------------------
    |
    | This option controls the default authentication "guard" and password
    | reset options for your application. You may change these defaults
    | as required, but they're a perfect start for most applications.
    |
    */
    // $ php artisan infyom:app
    // $ php artisan infyom:app.rollback

    'schema' => [
        // Parents Tables
        /*[
            'model' => 'Store',
            'fieldsFile' => 'schema/stores.json',
            'api' => true,
        ],
        [
            'model' => 'Category',
            'fieldsFile' => 'schema/categories.json',
            'api' => true,
        ],
        [
            'model' => 'FaqCategory',
            'fieldsFile' => 'schema/faq_categories.json',
            'api' => true,
        ],
        [
            'model' => 'OrderStatus',
            'fieldsFile' => 'schema/order_statuses.json',
            'api' => true,
        ],
        [
            'model' => 'Currency',
            'fieldsFile' => 'schema/currencies.json',
            'api' => true,
        ],
         [
            'model' => 'DeliveryAddress',
            'fieldsFile' => 'schema/delivery_addresses.json',
            'api' => true,
        ],

        // Child Tables
*/
        [
            'model' => 'Driver',
            'fieldsFile' => 'schema/drivers.json',
            'api' => true,
        ],
        [
            'model' => 'Earning',
            'fieldsFile' => 'schema/earnings.json',
            'api' => true,
        ],
        [
            'model' => 'DriversPayout',
            'fieldsFile' => 'schema/drivers_payouts.json',
            'api' => true,
        ],
        [
            'model' => 'StoresPayout',
            'fieldsFile' => 'schema/stores_payouts.json',
            'api' => true,
        ],
        /*
        [
            'model' => 'Product',
            'fieldsFile' => 'schema/products.json',
            'api' => true,
        ],
        [
            'model' => 'Gallery',
            'fieldsFile' => 'schema/galleries.json',
            'api' => true,
        ],

        [
            'model' => 'ProductReview',
            'fieldsFile' => 'schema/product_reviews.json',
            'api' => true,
        ],
        [
            'model' => 'StoreReview',
            'fieldsFile' => 'schema/store_reviews.json',
            'api' => true,
        ],

        [
            'model' => 'Order',
            'fieldsFile' => 'schema/orders.json',
            'api' => true,
        ],
        [
            'model' => 'Cart',
            'fieldsFile' => 'schema/carts.json',
            'api' => true,
        ],
        [
            'model' => 'Nutrition',
            'fieldsFile' => 'schema/nutritions.json',
            'api' => true,
        ],
        [
            'model' => 'Extra',
            'fieldsFile' => 'schema/extras.json',
            'api' => true,
        ],
        [
            'model' => 'NotificationType',
            'fieldsFile' => 'schema/notification_types.json',
            'api' => true,
        ],
        [
            'model' => 'Notification',
            'fieldsFile' => 'schema/notifications.json',
            'api' => true,
        ],

        [
            'model' => 'Payment',
            'fieldsFile' => 'schema/payments.json',
            'api' => true,
        ],
        [
            'model' => 'Faq',
            'fieldsFile' => 'schema/faqs.json',
            'api' => true,
        ],

        // Pivot Table

        [
            'model' => 'Favorite',
            'fieldsFile' => 'schema/favorites.json',
            'api' => true,
        ],

        [
            'model' => 'ProductOrder',
            'fieldsFile' => 'schema/product_orders.json',
            'api' => true,
        ],
        [
            'model' => 'CartExtra',
            'fieldsFile' => 'schema/cart_extras.json',
            'skip' => true,
        ],

        [
            'model' => 'UserStore',
            'fieldsFile' => 'schema/user_stores.json',
            'skip' => true,
        ],

         [
            'model' => 'DriverStore',
            'fieldsFile' => 'schema/driver_stores.json',
            'skip' => true,
        ],

        [
            'model' => 'ProductOrderExtra',
            'fieldsFile' => 'schema/product_order_extras.json',
            'skip' => true,
        ],
        [
            'model' => 'FavoriteExtra',
            'fieldsFile' => 'schema/favorite_extras.json',
            'skip' => true,
        ],*/

    ],

//    'fields' => [
//        'boolean' => 'Boolean',
//        'checkbox' => 'Checkbox',
//        'date' => 'Date',
//        'email' => 'Email',
//        'number' => 'Number',
//        'password' => 'Password',
//        'radio' => 'Radio',
//        'select' => 'Select',
//        'selects' => 'Multi Selects',
//        'text' => 'Text',
//        'textarea' => 'Textarea'
//    ],

    'fields' => [
        'boolean',
        'checkbox',
        'date',
        'email',
        'number',
        'password',
        'radio',
        'select',
        'selects',
        'text',
        'textarea'
    ],
];
