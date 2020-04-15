<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partners extends Model
{
    public function cities(){
        
        return $this->belongsToMany('App\Cities');
        
    }
}
