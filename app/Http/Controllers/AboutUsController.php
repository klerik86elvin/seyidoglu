<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function index()
    {
        $companies = Company::all();
        return view('about-us',compact('companies'));
    }
}
