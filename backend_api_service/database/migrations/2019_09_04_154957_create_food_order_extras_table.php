<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProductOrderExtrasTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_order_extras', function (Blueprint $table) {
            $table->integer('product_order_id')->unsigned();
            $table->integer('extra_id')->unsigned();
            $table->double('price', 8, 2)->default(0);
            $table->primary([ 'product_order_id','extra_id']);
            $table->foreign('product_order_id')->references('id')->on('product_orders')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('extra_id')->references('id')->on('extras')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('product_order_extras');
    }
}
