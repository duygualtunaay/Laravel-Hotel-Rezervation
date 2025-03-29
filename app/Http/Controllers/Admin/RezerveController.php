<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Rezerve;
use Illuminate\Http\Request;

class RezerveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datalist=Rezerve::all();
        return view('admin.rezerve',['datalist'=>$datalist]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        return view('admin.rezerve_edit',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Rezerve  $rezerve
     * @return \Illuminate\Http\Response
     */
    public function edit(Rezerve $rezerve,$id)
    {
        $data = Rezerve::find($id);
        $data->save();
        return view('admin.rezerve_edit',['data'=> $data]);
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
        $data=rezerve::find($id);
        $data->status=$request->input('status');
        $data->save();
        return back()->with('success','Rezerve Updated');
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
        return redirect()->back()->with('success','Rezerve Deleted!');
    }
}
