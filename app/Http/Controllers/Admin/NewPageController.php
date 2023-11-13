<?php

namespace App\Http\Controllers\Admin;

use App\Models\Newpage;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewPageController extends Controller
{
    
    //index
    public function index()
    {
        $newPages = Newpage::all();
        return view('adminpages.newPage.index',compact('newPages'));
    }

    //create
    public function create()
    {
        return view('adminpages.newPage.create');
    }

    //store
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required|string|min:3',
        ]);

        $slug = Str::slug($request->name);
        $newPage = new Newpage();
        $newPage->name = $request->name;
        $newPage->slug = $slug;
        $newPage->title = $request->title;
        $newPage->sub_title = $request->sub_title;
        $newPage->content = $request->content;
        $newPage->save();
        if($newPage)
        {
            return redirect()->route('pages.index');
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit($id)
    {
        $page = Newpage::find($id);
        return view('adminpages.newPage.edit', compact('page'));
    }

    //update
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|min:3',
        ]);
        $page = Newpage::find($id);
        $slug = Str::slug($request->name);
        $page->name = $request->name;
        $page->slug = $slug;
        $page->title = $request->title;
        $page->sub_title = $request->sub_title;
        $page->content = $request->content;
        $page->save();
        if($page)
        {
            return redirect()->route('pages.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Newpage $page)
    {
       
        $page->delete();
        return redirect()->back();
    }
}
