<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function show($id)
    {
        $companies = Company::all();
        $company = Company::with('gallery')->findOrFail($id);
        return view('company-details', compact('company','companies'));
    }
}
