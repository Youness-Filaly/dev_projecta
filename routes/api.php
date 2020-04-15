<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Add new City to our database
Route::post("cities","CitiesController@create");

//Add new Delivery Time
Route::post("delivery_time","DeliveryTimesController@create");

// Attache cities to delivery times
Route::post("cities/{city_id}/delivery_times","DeliveryTimesCitiesController@create");

/* Exclude a date from the delivery Times 

    1-delivery Times accept two value .
        1-1- All : excluding ALL delivery time spans.
        1-2- Delivery time spans (e.g: "9->12") 
        1-3- input date (e.g "2020-04-15")
*/
Route::post('exclude/{city_id}','ExcludingDeliveryTimesController@create');

// show date_time of partners
Route::get('cities/{city_id}/delivery_dates_times/{number_of_days}','DeliveryTimesController@index');