<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExcludingDeliveryTimesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('excluding_delivery_times', function (Blueprint $table) {
            $table->id();
            $table->date('day');
            $table->string('Time_Off');
            $table->integer('city_id')->unsigned();
            $table->foreign("city_id")->references("id")->on("cities")->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('excluding_delivery_times');
    }
}
