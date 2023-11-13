<?php

namespace App\Http\Controllers\Admin;

use App\Models\Service;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ServiceController extends Controller
{
    //index
    public function index()
    {
        $services = Service::all();
        return view('adminpages.service.index',compact('services'));
    }

    public function getServiceId($id) 
    {
        return Service::findOrFail($id);
    }

    //create
    public function create()
    {
        return view('adminpages.service.create');
    }

    //store
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required|string|min:3',
            'image' => 'required|mimes:jpg,png,bmp,jpeg',
        ]);

        $slug = Str::slug($request->name);
        $service = new Service();
        $service->name = $request->name;
        $service->slug = $slug;
        $service->details = $request->details;
        $service->image = $this->imageUpload($request, 'image', 'uploads/service') ?? '';
        $service->icon = $this->imageUpload($request, 'icon', 'uploads/service') ?? '';
        $service->save();
        if($service)
        {
            return redirect()->route('services.index');
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit(Service $service)
    {
        return view('adminpages.service.edit',compact('service'));
    }

    //update
    public function update(Request $request, Service $service)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'image' => 'mimes:jpg,png,bmp,jpeg',
        ]);
        // image upload
        $serviceImage = '';
        $serviceIcon = '';
        if ($request->hasFile('image')) {
            if (!empty($service->image) && file_exists($service->image)) {
                unlink($service->image);
            }
            $serviceImage = $this->imageUpload($request, 'image', 'uploads/service');
        }else{
            $serviceImage = $service->image;
        }
        
        if ($request->hasFile('icon')) {
            if (!empty($service->icon) && file_exists($service->icon)) {
                unlink($service->icon);
            }
            $serviceIcon = $this->imageUpload($request, 'icon', 'uploads/service');
        }else{
            $serviceIcon = $service->icon;
        }

        $slug = Str::slug($request->name);
        $service->name = $request->name;
        $service->slug = $slug;
        $service->details = $request->details;
        $service->image = $serviceImage;
        $service->icon = $serviceIcon;
        $service->save();
        if($service)
        {
            return redirect()->route('services.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Service $service)
    {
        if (!empty($service->image) && file_exists($service->image)) {
            unlink($service->image);
        }
        $service->delete();
        return redirect()->back();
    }
}
