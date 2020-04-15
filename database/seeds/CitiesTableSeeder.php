<?php


use App\Cities;
use Illuminate\Database\Seeder;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Cities::truncate();

        Cities::create(['name'=>'Rabat']);
        Cities::create(['name'=>'Casa']);
        Cities::create(['name'=>'Tangier']);
    }
}
