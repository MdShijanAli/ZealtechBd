<?php

namespace App\Http\Controllers\Admin;

use App\Models\Gallery;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GalleryController extends Controller
{

    //index
    public function index()
    {
        $galleries = Gallery::all();
        return view('adminpages.gallery.index', compact('galleries'));
    }

    //store
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|min:3',
            'image' => 'required|mimes:jpg,png,bmp,jpeg',
        ]);

        $slug = Str::slug($request->title);
        $gallery = new Gallery();
        $gallery->title = $request->title;
        $gallery->slug = $slug;
        $gallery->image = $this->imageUpload($request, 'image', 'uploads/gallery') ?? '';
        $gallery->save();

        if($gallery)
        {
            return back();
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit(Gallery $gallery)
    {
        return view('adminpages.gallery.edit', compact('gallery'));
    }

    //update
    public function update(Request $request, Gallery $gallery)
    {
        $request->validate([
            'title' => 'required|string|min:3',
            'image' => 'mimes:jpg,png,bmp,jpeg',
        ]);

        // image Update
        $galleryImage = '';
        if ($request->hasFile('image')) {
            if (!empty($gallery->image) && file_exists($gallery->image)) {
                unlink($gallery->image);
            }
            $galleryImage = $this->imageUpload($request, 'image', 'uploads/gallery');
        }else{
            $galleryImage = $gallery->image;
        }

        $slug = Str::slug($request->title);
        $gallery->title = $request->title;
        $gallery->slug = $slug;
        $gallery->image = $galleryImage;
        $gallery->save();

        if($gallery)
        {
            return redirect()->route('galleries.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Gallery $gallery)
    {
        if (!empty($gallery->image) && file_exists($gallery->image)) {
            unlink($gallery->image);
        }
        $gallery->delete();
        return back();
    }

}
