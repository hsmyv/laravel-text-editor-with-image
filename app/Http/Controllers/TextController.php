<?php

namespace App\Http\Controllers;

use App\Models\Language;
use Illuminate\Http\Request;

class TextController extends Controller
{
    public function create()
    {
        $languages = Language::all();
         return view("text-editor", compact('languages'));
    }
}
