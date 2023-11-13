<?php

namespace App\Http\Controllers;

use App\Models\About;
use App\Models\Category;
use App\Models\Client;
use App\Models\Gallery;
use App\Models\Newpage;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Team;
use App\Models\Testimonial;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    // index 
    public function index()
    {
        $teams = Team::orderBy('priority', 'asc')->get();
        $testimonials = Testimonial::orderBy('priority', 'asc')->get();
        $services = Service::latest()->get()->take(4);
        $clients = Client::latest()->get()->take(6);
        $categories = Category::all();
        $portfolios = Portfolio::latest()->get();
        $about = About::first();
        return view('welcome', compact('teams', 'testimonials', 'services', 'clients', 'categories', 'portfolios', 'about'));
    }

    // service
    public function service()
    {
        $services = Service::latest()->get();
        return view('pages.service', compact('services'));
    }
    
    public function singleService($slug) 
    {
        $service = Service::where('slug', $slug)->first();
        return view('pages.single-service', compact('service'));
    }

    // Team member
    public function teamMember()
    {
        $teams = Team::orderBy('priority', 'asc')->get();
        return view('pages.team', compact('teams'));
    }

    // portfolio
    public function portfolio()
    {
        $categories = Category::all();
        $portfolios = Portfolio::latest()->get();
        return view('pages.portfolio', compact('categories', 'portfolios'));
    }

    // gallery
    public function gallery()
    {
        $galleries = Gallery::latest()->get();
        return view('pages.gallery', compact('galleries'));
    }

    // newPage 
    public function newPages($slug)
    {
        $page = Newpage::where('slug', $slug)->first();
        return view('pages.newPage', compact('page'));
    } 
}
