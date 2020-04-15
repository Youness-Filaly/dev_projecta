<?php

use App\Cities;
use App\Partners;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PartnersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Partners::truncate();
        DB::table('cities_partners')->truncate();

        $rabat=Partners::create([
            'name_partner'=>'Mohamed'
            ]);
        
        $casa=Partners::create([
            'name_partner'=>'Hassan'
            ]);
        $tangier=Partners::create([
            'name_partner'=>'Nada'
            ]);

        $MohamedCity=Cities::where('name','Rabat')->first();
        $HassanCity=Cities::where('name','Casa')->first();
        $NadaCity=Cities::where('name','Tangier')->first();
        
        $rabat->cities()->attach($MohamedCity);
        $casa->cities()->attach($HassanCity);
        $tangier->cities()->attach($NadaCity);
    }
}
