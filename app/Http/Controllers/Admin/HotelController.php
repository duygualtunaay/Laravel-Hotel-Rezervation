<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Hotel;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HotelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datalist=Hotel::all();
        return view('admin.hotel',['datalist'=>$datalist]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $datalist = Category::with('children')->get();
        return view('admin.hotel_add',['datalist'=>$datalist]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new Hotel;
        $data->title= $request->input('title');
        $data->keywords= $request->input('keywords');
        $data->description=$request->input('description');
        $data->slug=$request->input('slug');
        $data->status=$request->input('status');
        $data->category_id=$request->input('category_id');
        $data->user_id=Auth::id();
        $data->detail=$request->input('detail');
        $data->star=$request->input('star');
        $data->price=$request->input('price');
        $data->address=$request->input('address');
        $data->phone=$request->input('phone');
        $data->city=$request->input('city');
        $data->country=$request->input('country');
        $data->image = Storage::putFile('images', $request->file('image'));
        $data->save();
        return redirect()->route('admin_hotels');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function show(Hotel $hotel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function edit(Hotel $hotel,$id)
    {
        $data = Hotel::find($id);

        //$datalist = Category::all();
        $datalist = Category::with('children')->get();
        return view('admin.hotel_edit',['data' => $data,'datalist' => $datalist]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Hotel $hotel,$id)
    {
        $data = Hotel::find($id);

        $data->title= $request->input('title');
        $data->keywords= $request->input('keywords');
        $data->description=$request->input('description');
        $data->slug=$request->input('slug');
        $data->status=$request->input('status');
        $data->category_id=$request->input('category_id');
        $data->user_id=Auth::id();
        $data->detail=$request->input('detail');
        $data->star=$request->input('star');
        $data->price=$request->input('price');
        $data->address=$request->input('address');
        $data->phone=$request->input('phone');
        $data->city=$request->input('city');
        $data->country=$request->input('country');
        if($data->image){
             $data->image = Storage::putFile('images', $request->file('image'));
        }
        $data->save();
        return redirect()->route('admin_hotels');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hotel  $hotel
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hotel $hotel,$id)
    {
        $data = Hotel::find($id);
        $data->delete();

        return redirect()->route('admin_hotels');

    }
}
