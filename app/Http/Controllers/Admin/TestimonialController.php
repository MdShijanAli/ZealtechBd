<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Testimonial;
use Illuminate\Http\Request;

class TestimonialController extends Controller
{
    //index
    public function index()
    {
        $testimonials = Testimonial::all();
        return view('adminpages.testimonial.index',compact('testimonials'));
    }

    //create
    public function create()
    {
        return view('adminpages.testimonial.create');
    }

    //store
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required|string|min:3',
            'image' => 'required|mimes:jpg,png,bmp,jpeg',
            'priority' => 'required',
        ]);
        $testimonial = new Testimonial();
        $testimonial->name = $request->name;
        $testimonial->designation = $request->designation;
        $testimonial->priority = $request->priority;
        $testimonial->quote = $request->quote;
        $testimonial->image = $this->imageUpload($request, 'image', 'uploads/testimonial') ?? '';
        $testimonial->save();
        if($testimonial)
        {
            return redirect()->route('testimonial.index');
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit(Testimonial $testimonial)
    {
        return view('adminpages.testimonial.edit',compact('testimonial'));
    }

    //update
    public function update(Request $request, Testimonial $testimonial)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'image' => 'mimes:jpg,png,bmp,jpeg',
            'priority' => 'required',
        ]);
        // image upload
        $testimonialImage = '';
        if ($request->hasFile('image')) {
            if (!empty($testimonial->image) && file_exists($testimonial->image)) {
                unlink($testimonial->image);
            }
            $testimonialImage = $this->imageUpload($request, 'image', 'uploads/team');
        }else{
            $testimonialImage = $testimonial->image;
        }
        $testimonial->name = $request->name;
        $testimonial->designation = $request->designation;
        $testimonial->priority = $request->priority;
        $testimonial->quote = $request->quote;
        $testimonial->image = $testimonialImage;
        $testimonial->save();
        if($testimonial)
        {
            return redirect()->route('testimonial.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Testimonial $testimonial)
    {
        if (!empty($testimonial->image) && file_exists($testimonial->image)) {
            unlink($testimonial->image);
        }
        $testimonial->delete();
        return redirect()->back();
    }
}
