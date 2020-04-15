<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryTimes extends Model
{
    protected $table = "delivery_times";
    protected $fillable = [
        'delivery_time',
    ];
}
