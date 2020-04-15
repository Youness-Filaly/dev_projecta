<?php

namespace App\Http\Controllers;

use App\ExcludingDeliveryTimes;
use App\DeliveryTimes;
use Carbon\Carbon;
use Carbon\CarbonPeriod;
use Illuminate\Http\Request;

class DeliveryTimesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($city_id ,$number_of_days)
    {
        $deliveries = [];
        $days = [];
        $user_demande = [];
        $delivery_times = DeliveryTimes::join("delivery_times_cities","delivery_times_cities.id","delivery_times.id")
                                        ->where('delivery_times_cities.city_id',$city_id)
                                        ->select('delivery_times.*')
                                        ->get();
        
     
        for($i=0;$i<$number_of_days;$i++)
        {
            $carbon=Carbon::now();
            $date_number_of_days =$carbon->addDays($i); 
            $date = explode(' ',$date_number_of_days);
            $day = $date[0];
            $name=$date_number_of_days->isoFormat('dddd ');
            
        

         $user_result[] = [
            "day_name"=>$name,
            "date"=> $day, 
            'delivery_times'=> $delivery_times,  
        ];

        
        }

        $user_demande[] = [
           
            'dates'=> $user_result,  
        ];
            
        return response()->json($user_demande);


        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $deliveryTime = new DeliveryTimes;
        $deliveryTime->delivery_time = $request->input("delivery_at");
        $deliveryTime->save();
        return response()->json($deliveryTime);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store()
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
