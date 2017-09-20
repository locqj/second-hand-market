<?php

namespace App\Api\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RegisterController extends Controller
{
    public function test(Request $request)
    {	
    	if ($request->hasFile('photo')) {
	    	return '$request->all()';
		}
    }
}
