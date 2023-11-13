<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Team;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    //index
    public function index()
    {
        $teams = Team::all();
        return view('adminpages.team.index',compact('teams'));
    }

    //create
    public function create()
    {
        return view('adminpages.team.create');
    }

    //store
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required|string|min:3',
            'designation' => 'required',
            'image' => 'required|mimes:jpg,png,bmp,jpeg',
        ]);
        $team = new Team();
        $team->name = $request->name;
        $team->designation = $request->designation;
        $team->priority = $request->priority;
        $team->facebook = $request->facebook;
        $team->twitter = $request->twitter;
        $team->instagram = $request->instagram;
        $team->linkedin = $request->linkedin;
        $team->image = $this->imageUpload($request, 'image', 'uploads/team') ?? '';
        $team->save();
        if($team)
        {
            return redirect()->route('teams.index');
        }
        return redirect()->back()->withInput();
    }

    //edit
    public function edit(Team $team)
    {
        return view('adminpages.team.edit',compact('team'));
    }

    //update
    public function update(Request $request, Team $team)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'designation' => 'required',
            'image' => 'mimes:jpg,png,bmp,jpeg',
        ]);
        // image upload
        $teamImage = '';
        if ($request->hasFile('image')) {
            if (!empty($team->image) && file_exists($team->image)) {
                unlink($team->image);
            }
            $teamImage = $this->imageUpload($request, 'image', 'uploads/team');
        }else{
            $teamImage = $team->image;
        }
        $team->name = $request->name;
        $team->designation = $request->designation;
        $team->priority = $request->priority;
        $team->facebook = $request->facebook;
        $team->twitter = $request->twitter;
        $team->linkedin = $request->linkedin;
        $team->instagram = $request->instagram;
        $team->image = $teamImage;
        $team->save();
        if($team)
        {
            return redirect()->route('teams.index');
        }
        return redirect()->back()->withInput();
    }

    // destroy
    public function destroy(Team $team)
    {
        if (!empty($team->image) && file_exists($team->image)) {
            unlink($team->image);
        }
        $team->delete();
        return redirect()->back();
    }
}
