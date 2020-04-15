<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeingForPartnersCitiesTable extends Migration
{
     /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('cities_partners', function (Blueprint $table) {
            $table->foreign('partners_id')->references('id')->on('partners')->onDelete('cascade');
            $table->foreign('cities_id')->references('id')->on('cities')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('cities_partners', function (Blueprint $table) { 
            $table->dropForeign('partners_partners_id_foreign');
            $table->dropForeign('partners_cities_id_foreign');
        });
    }
}
