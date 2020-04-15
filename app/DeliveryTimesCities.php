<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryTimesCities extends Model
{
    protected $table = "delivery_times_cities";
    protected $fillable = [
        'deliveryTime_id',
        'city_id',
        
    ];
}
