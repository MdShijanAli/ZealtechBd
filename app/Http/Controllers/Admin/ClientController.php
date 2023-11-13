<?php

namespace App\Http\Controllers\Admin;

use App\Models\Client;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ClientController extends Controller
{

    //index
    public function index()
    {
        $clients = Client::all();
        return view('adminpages.client.index', compact('clients'));
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
        $client = new Client();
        $client->name = $request->name;
        $client->slug = $slug;
        $client->image = $this->imageUpload($request, 'image', 'uploads/client') ?? '';
        $client->save();
        if($client)
        {
            return redirect()->route('client.index');
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit(Client $client)
    {
        return view('adminpages.client.edit', compact('client'));
    }

    //update
    public function update(Request $request, Client $client)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'image' => 'mimes:jpg,png,bmp,jpeg',
        ]);
        // image upload
        $clientImage = '';
        if ($request->hasFile('image')) {
            if (!empty($client->image) && file_exists($client->image)) {
                unlink($client->image);
            }
            $clientImage = $this->imageUpload($request, 'image', 'uploads/service');
        }else{
            $clientImage = $client->image;
        }

        $slug = Str::slug($request->name);
        $client->name = $request->name;
        $client->slug = $slug;
        $client->image = $clientImage;
        $client->save();
        if($client)
        {
            return redirect()->route('client.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Client $client)
    {
        if (!empty($client->image) && file_exists($client->image)) {
            unlink($client->image);
        }
        $client->delete();
        return redirect()->back();
    }
}
