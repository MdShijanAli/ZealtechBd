<?php

namespace App\Http\Controllers\Admin;

use App\Models\About;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
// use Brian2694\Toastr\Facades\Toastr;

class AboutController extends Controller
{
    // Edit
    public function edit()
    {
        $about = About::first();
        return view('adminpages.company.about', compact('about'));
    }

    // Company profile Update 
    public function update(Request $request, About $about)
    {
        $request->validate([
            'description' => 'required',
            'image' => 'mimes:jpg,jpeg,png,bmp',
        ]);

        // Image Update 
        $aboutImage = '';
        if($request->hasFile('image'))
        {
            if(!empty($about->image) && file_exists($about->image))
            {
                unlink($about->image);
            }
            $aboutImage = $this->imageUpload($request, 'image', 'uploads');
        }
        else{
            $aboutImage = $about->image;
        }
        $about->description = $request->description;
        $about->image = $aboutImage;
        $about->save();
        if($about){
            // Toastr::success('Company About Successfully Update!', 'success');
            return redirect()->back();
        }
        return redirect()->back()->withInput();
    }
}
