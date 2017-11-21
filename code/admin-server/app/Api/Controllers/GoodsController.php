<?php

namespace App\Api\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Api\Traits\Responder;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use DB;
class GoodsController extends Controller
{	
	/**
	 * [add 添加物品]
	 * @param [type] $user_code [description]
	 */
    public function add($user_code)
    {
    	return 'ok';
    }
}
