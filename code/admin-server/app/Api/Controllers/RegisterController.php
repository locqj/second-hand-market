<?php

namespace App\Api\Controllers;

use App\Model\UserDetail;
use Illuminate\Http\Request;
use App\Api\Traits\Responder;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;

class RegisterController extends Controller
{	
	/**
	 * [userDetail 补全上传信息]
	 * @param  Request $request [description]
	 * @return [type]           [description]
	 */
	public function userDetail(Request $request)
	{	
		$birthday = explode('T', $request->get('birthday'));
		$user_info = [
			'sex' => $request->get('sex'),
			'phone' => $request->get('phone'),
			'entry_year' => $request->get('entry_year'),
			'birthday' => $birthday[0]
		];
		return response()->json($user_info);
	}


	/**
	 * [uploadHeadImg 上传头像]
	 * @param  Request $request [description]
	 * @return [type]           [description]
	 */
    public function uploadHeadImg(Request $request)
    {	
        if ($request->isMethod('POST')) {
	    	$file = $request->file('photo');
	    	if ($file->isValid()) {
	    		$originalName = $file->getClientOriginalName(); //原文件名
	    		$ext = $file->getClientOriginalExtension(); //扩展名
	    		$type = $file->getClientMimeType(); //MimeType
	    		$realPath = $file->getRealPath(); //临时绝对路径
	    		$filename = date('Y-m-d-H-i-s').'-'.uniqid().'.'.$ext;
	    		$bool = Storage::disk('public')
	    			->put($filename, file_get_contents($realPath));
	    		$user_info = [
	    			'user_code' => $request->input('user_code'),
	    			'img_head' => $filename
	    		];
	    		$dist_code = UserDetail::where('user_code', $user_info['user_code'])
	    			->exists();
	    		if ($dist_code) {
			        return response()->json($this->responseFailed('请勿重复上头像'));
	    		}
		        $user = UserDetail::create($user_info);
		        return response()-json($this->responseSuccess('上传成功!'));

	    	}
    	}
    }
}
