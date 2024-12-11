<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Support\Facades\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Redirect;

class SettingController extends Controller
{
    public function index(){
        return Inertia::render('Settings/Index');
    }
    public function show($module)
    {
        return Inertia::render('Settings/Pages/'.$module,[
            'setting' => Setting::first()
        ]);
    }

    public function update($module){
        // dd($module);
        $settings = Setting::first();
        if($module =='general'){
            $validatedData = Request::validate([
                'email' => ['required'],
                'address' => ['required'],
                'contact' => ['required'],
                'logo' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
            ]);
            $validatedData['logo'] = isset( $settings) ? $settings->logo : null;
            if (Request::hasFile('logo')) {
    
                if (!empty($settings->logo) && File::exists($settings->logo)) {
                    File::delete($settings->logo);
                }
                $image = Request::file('logo');
    
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $imagePath = public_path('uploads/images/logo');
    
    
                $image->move($imagePath, $imageName);
    
                $validatedData['logo'] = 'uploads/images/logo/' . $imageName;
            }
    
             isset($settings) ? $settings->update($validatedData) : Setting::create($validatedData);
    
        }else if($module == 'social_media'){
            $validatedData = Request::validate([
                "facebook" => ['required'],
                "instagram" => ['required'],
                "twitter" => ['required'],
            ]);
            $settings->update([$module => $validatedData]);
        }else if($module =='statistics'){
            $validatedData = Request::validate([
                "total_school" => ['required'],
                "total_student" => ['required'],
                "total_teacher" => ['required'],
                "total_staff" => ['required']
            ]);
            $settings->update([$module => $validatedData]);
        }else if($module == 'about'){
            $validatedData = Request::validate([
                "about" => ['required']
            ]);
            if (Request::hasFile('image')) {
                // dd($settings->mission_vision['image']);
                if (!empty($settings->about['image']) && File::exists($settings->about['image'])) {
                    File::delete(paths: $settings->about['image']);
                }
                $image = Request::file('image');
    
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $imagePath = public_path('uploads/images/about');
    
    
                $image->move($imagePath, $imageName);
    
                $validatedData['image'] = 'uploads/images/about/' . $imageName;
            }
            $settings->update([$module => $validatedData]);
        }
        else if($module == 'mission_vision'){
            $validatedData = Request::validate([
                "mission" => ['required'],
                "vision" => ['required'],
                'image' => ['nullable', 'image', 'mimes:jpg,png,jpeg'],
            ]);
            if (Request::hasFile('image')) {
                // dd($settings->mission_vision['image']);
                if (!empty($settings->mission_vision['image']) && File::exists($settings->mission_vision['image'])) {
                    File::delete(paths: $settings->mission_vision['image']);
                }
                $image = Request::file('image');
    
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $imagePath = public_path('uploads/images/mission_vision');
    
    
                $image->move($imagePath, $imageName);
    
                $validatedData['image'] = 'uploads/images/mission_vision/' . $imageName;
            }
            $settings->update([$module => $validatedData]);

        }
        return Redirect::back()->with('success', 'Settings updated.');

    }
}
