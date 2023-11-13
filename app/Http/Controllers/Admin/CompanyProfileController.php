<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\CompanyProfile;
use App\Http\Controllers\Controller;

class CompanyProfileController extends Controller
{
    // Edit
    public function edit()
    {
        $company = CompanyProfile::first();
        return view('adminpages.company.edit', compact('company'));
    }

    // Company profile Update 
    public function update(Request $request, CompanyProfile $company)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required|string',
            'logo' => 'mimes:jpg,jpeg,png,bmp',
        ]);

        // Image Update 
        $companyLogo = '';
        if($request->hasFile('logo'))
        {
            if(!empty($company->logo) && file_exists($company->logo))
            {
                unlink($company->logo);
            }
            $companyLogo = $this->imageUpload($request, 'logo', 'uploads');
        }
        else{
            $companyLogo = $company->logo;
        }
        $company->name = $request->name;
        $company->email = $request->email;
        $company->phone = $request->phone;
        $company->address = $request->address;
        $company->about = $request->about;
        $company->slogan = $request->slogan;
        $company->facebook = $request->facebook;
        $company->instagram = $request->instagram;
        $company->twitter = $request->twitter;
        $company->linkedin = $request->linkedin;
        $company->logo = $companyLogo;
        $company->save();
        if($company){
            return redirect()->back();
        }
        return redirect()->back()->withInput();
    }
}
