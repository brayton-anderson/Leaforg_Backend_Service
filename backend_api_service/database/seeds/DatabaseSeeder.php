<?php
/**
 * File name: DatabaseSeeder.php
 * Last modified: 2020.05.03 at 13:40:04
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UsersTableSeeder::class);
        $this->call(CustomFieldsTableSeeder::class);
        $this->call(CustomFieldValuesTableSeeder::class);
        $this->call(AppSettingsTableSeeder::class);
        $this->call(FranchisesTableSeeder::class);
        $this->call(StoresTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(FaqCategoriesTableSeeder::class);
        $this->call(OrderStatusesTableSeeder::class);
        $this->call(CurrenciesTableSeeder::class);
        $this->call(ExtraGroupsTableSeeder::class);

        $this->call(ProductsTableSeeder::class);
        $this->call(GalleriesTableSeeder::class);
        $this->call(ProductReviewsTableSeeder::class);
        $this->call(StoreReviewsTableSeeder::class);
        $this->call(PaymentsTableSeeder::class);
        $this->call(DeliveryAddressesTableSeeder::class);
        $this->call(OrdersTableSeeder::class);
        $this->call(CartsTableSeeder::class);
        $this->call(NutritionTableSeeder::class);
        $this->call(ExtrasTableSeeder::class);
        $this->call(NotificationsTableSeeder::class);
        $this->call(FaqsTableSeeder::class);
        $this->call(FavoritesTableSeeder::class);

        $this->call(ProductOrdersTableSeeder::class);
        $this->call(CartExtrasTableSeeder::class);
        $this->call(UserStoresTableSeeder::class);
        $this->call(DriverStoresTableSeeder::class);
        $this->call(ProductOrderExtrasTableSeeder::class);
        $this->call(FavoriteExtrasTableSeeder::class);
        $this->call(StoreFranchisesTableSeeder::class);

        $this->call(RolesTableSeeder::class);
        $this->call(DemoPermissionsPermissionsTableSeeder::class);
        $this->call(ModelHasPermissionsTableSeeder::class);
        $this->call(ModelHasRolesTableSeeder::class);
        $this->call(RoleHasPermissionsTableSeeder::class);

        $this->call(MediaTableSeeder::class);
        $this->call(UploadsTableSeeder::class);
        $this->call(DriversTableSeeder::class);
        $this->call(EarningsTableSeeder::class);
        $this->call(DriversPayoutsTableSeeder::class);
        $this->call(StoresPayoutsTableSeeder::class);

        $this->call(CouponPermission::class);
        $this->call(SlidesSeeder::class);
    }

}
