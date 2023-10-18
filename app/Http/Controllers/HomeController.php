<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\MainSlider;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $main_sliders = MainSlider::all();
        $companies = Company::all();
        return view('index', compact('main_sliders','companies'));
    }
}
