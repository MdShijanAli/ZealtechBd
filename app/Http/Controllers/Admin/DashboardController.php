<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Contact;
use App\Models\Portfolio;
use App\Models\Service;
use App\Models\Team;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    // index
    public function index()
    {
        $services = Service::count();
        $contact = Contact::count();
        $portfolio = Portfolio::count();
        $team = Team::count();
        return view('layouts.home', compact('services', 'contact', 'portfolio', 'team'));
    }
}
