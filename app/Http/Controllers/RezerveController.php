<?php

namespace App\Http\Controllers;

use App\Models\Hotel;
use App\Models\Rezerve;
use App\Models\Room;
use App\Models\User;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RezerveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datalist=Rezerve::where('user_id',Auth::id())->get();
        return view('home.user_rezerve',['datalist'=>$datalist]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $datalist = Hotel::with('hotel_id')->get();
        return view('home.user_rezerve_add', ['datalist' => $datalist]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,$id)
    {
        $data = new Rezerve();

        $data->user_id = Auth::id();
        $data = User::find($id);
        $data = Hotel::find($id);
        $data = Room::find($id);
        $data->name = $request->input('name');
        $data->surname = $request->input('surname');
        $data->email = $request->input('email');
        $data->phone = $request->input('phone');
        $data->total = $request->input('total');
        $data->checkin = $request->input('checkin');
        $data->checkout = $request->input('checkout');
        $data->days = $request->input('days');
        $data->note = $request->input('note');
        $data->IP = $_SERVER['REMOTE_ADDR'];
        $data->status = $request->input('status');

        $data->save();

        return redirect()->route('user_rezerve')->with('success','Rezervasyonunuz kaydedilmiştir');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Rezerve  $rezerve
     * @return \Illuminate\Http\Response
     */
    public function show(Rezerve $rezerve,$id)
    {
        $data=Rezerve::find($id);
        return view('home.user_rezerve_edit',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Rezerve  $rezerve
     * @return \Illuminate\Http\Response
     */
    public function edit(Rezerve $rezerve)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Rezerve  $rezerve
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rezerve $rezerve,$id)
    {
        $data=Rezerve::find($id);
        $data->status=$request->input('status');
        $data->save();
        return back()->with('success','Rezervation Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Rezerve  $rezerve
     * @return \Illuminate\Http\Response
     */
    public function destroy(Rezerve $rezerve,$id)
    {
        $data=Rezerve::find($id);
        $data->delete();
        return redirect()->back()->with('success','Rezervation Deleted!');
    }
}

