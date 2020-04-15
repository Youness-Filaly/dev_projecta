<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cities extends Model
{
    protected $table = "cities";
    protected $fillable = [
        'name',
    ];

    public function partner(){
        
        return $this->belongsToMany('App\Partners');
        
    }

}
