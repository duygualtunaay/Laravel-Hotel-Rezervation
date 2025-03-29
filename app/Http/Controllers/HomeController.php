<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Faq;
use App\Models\Hotel;
use App\Models\Image;
use App\Models\Message;
use App\Models\Review;
use App\Models\Rezerve;
use App\Models\Room;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use function PHPUnit\Framework\exactly;

class HomeController extends Controller
{
    public static function categorylist()
    {
        return Category::where('parent_id', '=', 0)->with('children')->get();
    }
    public static function dateDifference($checkin, $checkout)
    {
        // calulating the difference in timestamps
        $days = strtotime($checkin) - strtotime($checkout);

        // 1 day = 24 hours
        // 24 * 60 * 60 = 86400 seconds
        return ceil(abs($days / 86400));
    }
    public static function getsetting()
    {
        return Setting::first();
    }

    public function index()
    {
        $slider = Hotel::select('id','title', 'image','category_id','city','slug')->limit(4)->get();
        $setting = Setting::first();
        $firsat = Hotel::select('id','title', 'image','category_id','city','slug','address','country')->limit(3)->inRandomOrder()->get();
        $last= Hotel::select('id','title', 'image','category_id','city','slug','address','country')->limit(3)->orderByDesc('id')->get();
        $picked = Hotel::select('id','title', 'image','category_id','city','slug','address','country')->limit(3)->inRandomOrder()->get();
#print_r($picked);
#exit();
        $data = [
            'setting' => $setting,
            'slider'=>$slider,
            'firsat'=>$firsat,
            'last'=>$last,
            'picked'=>$picked,
            'page' => 'home'
        ];
        return view('home.index', $data);
    }

    public function gethotel(Request $request)
    {
        $search=$request->input('search');
        $count=Hotel::where('title','like','%'.$search.'%')->get()->count();
        if($count==1)
        {
            $data=Hotel::where('title','like','%'.$search.'%')->first();
            return redirect()->route('hotel',['id'=>$data->id,'slug'=>$data->slug]);
        }
        else
        {
            return redirect()->route('hotellist',['search'=>$search]);
        }


    }
    public function search_page(){
        $setting=Setting::first();
        return view('home.search_page',['setting'=>$setting,'page'=>'home']);
    }

    public function hotellist($search){
        $setting=Setting::first();
        $datalist=Hotel::where('title','like','%'.$search.'%')->get();

        return view('home.search_hotels',['search'=>$search,'datalist'=>$datalist,'setting'=>$setting]);

    }

    public function hotel($id,$slug)
    {
        $setting=Setting::first();
        $data=Hotel::find($id);
        $rooms=Room::where('hotel_id',$id)->get();
        $reviews=Review::where('hotel_id',$id)->get();
        $datalist=Image::where('hotel_id',$id)->get();
        return view('home.hotel_detail',['setting'=>$setting,'data'=>$data,'datalist'=>$datalist,'rooms'=>$rooms,'reviews'=>$reviews]);
    }

    public function categoryhotels($id,$slug)
    {
        $datalist=Hotel::where('category_id',$id)->get();
        $data=Category::find($id);

        return view('home.category_hotels',['data'=>$data,'datalist'=>$datalist]);
    }

    public function aboutus()
    {

        $setting = Setting::first();
        return view('home.about', ['setting' => $setting]);
    }

    public function references()
    {
        $setting = Setting::first();
        return view('home.references', ['setting' => $setting]);
    }

    public function faq()
    {
        $setting=Setting::first();
        $datalist=Faq::all()->sortBy('position');
        return view('home.faq',['datalist'=>$datalist,'setting'=>$setting]);
    }
    public function review()
    {
        $setting = Review::first();
        return view('home.review', ['setting' => $setting]);
    }
    public function rezerve($id)
    {
        $room = Room::find($id);
        $data=Rezerve::where('room_id',$id)->get();
        return view('home.rezerve', ['room' => $room,'data'=>$data]);
    }
    public function contact()
    {
        $setting = Setting::first();
        return view('home.contact', ['setting' => $setting]);
    }
    public function sendreview(Request $request,$id)
    {
        $data = new Review;

        $data->user_id = Auth::id();
        $hotel = Hotel::find($id);
        $data->hotel_id=$id;
        $data->subject = $request->input('subject');
        $data->review = $request->input('review');
        $data->IP = $_SERVER['REMOTE_ADDR'];
        $data->rate = $request->input('rate');

        $data->save();

        return redirect()->route('hotel',['id'=>$hotel->id,'slug'=>$hotel->slug])->with('success','Yourumunuz kaydedilmiştir');
    }
    public function sendrezerve(Request $request,$id)
    {
        $data = new Rezerve;
        $data->room_id =$id;
        $data->user_id = Auth::id();
        $data->hotel_id = $id;

        $data->name = $request->input('name');
        $data->surname = $request->input('surname');
        $data->email = $request->input('email');
        $data->phone = $request->input('phone');
        $data->checkin = $request->input('checkin');
        $data->checkout = $request->input('checkout');
        $data->days = $request->input('days');
        $data->note = $request->input('note');
        $data->IP = $_SERVER['REMOTE_ADDR'];

        $data->save();

        return redirect()->route('user_rezerve');
    }

    public function sendmessage(Request $request)
    {
        $data = new Message();
        $data->name = $request->input('name');
        $data->email = $request->input('email');
        $data->phone = $request->input('phone');
        $data->subject = $request->input('subject');
        $data->message = $request->input('message');
        $data->save();

        return redirect()->route('contact')->with('success', 'Mesajınız başarılı bir şekilde kaydedilmiştir!');
    }

    public function login()
    {
        return view('admin.login');
    }

    public function logincheck(Request $request)
    {
        if ($request->isMethod('post')) {
            $credentials = $request->only('email', 'password');
            if (Auth::attempt($credentials)) {
                $request->session()->regenerate();

                return redirect()->intended('admin');

            }
            return back()->withErrors([
                    'email' => 'The provided credentials do not match our records.',]
            );

        } else {
            return view('admin.login');
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}
