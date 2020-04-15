<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeignKeyForDeliveryTimesCitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('delivery_times_cities', function (Blueprint $table) {
            $table->foreign("deliveryTime_id")->references("id")->on("delivery_times")->onDelete('cascade');
            $table->foreign("city_id")->references("id")->on("cities")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('delivery_times_cities', function (Blueprint $table) {
            $table->dropForeign('delivery_times_cities_deliveryTime_id_foreign');
            $table->dropForeign('delivery_times_cities_city_id_foreign');

        });
    }
}
