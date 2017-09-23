<?php

namespace App\Api\Controllers;

use App\Model\UserDetail;
use Illuminate\Http\Request;
use App\Api\Traits\Responder;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use DB;

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
			'birthday' => $birthday[0],
			'user_code' => $request->get('code'),
			'school_code' => $this->getSchoolCode($request->get('school')),
			'department_code' => $this->getDepartmentCode($request->get('department')),
		];
		$dist = $this->storeSchoolDepartment($user_info['school_code'], $user_info['department_code']);
		if ($dist) {
			$dist_code = UserDetail::where('user_code', $user_info['user_code'])->exists();
			if ($dist_code) {
				UserDetail::where('user_code', $user_info['user_code'])->update($user_info);
			} else {
				UserDetail::create($user_info);
			}
			return response()->json($this->responseSuccess());
		}
	}


	/**
	 * [uploadHeadImg 上传]
	 * @param  Request $request [description]
	 * @param  $status          [1-头像上传,2-身份证正,3-身份证反,4-学生证正,5-学生证反]
	 * @return [type]           [description]
	 */
    public function uploadHeadImg(Request $request, $status)
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
				$status_side = $status == 2 || $status == 4 ? 1 : 0; //1--图片正面,0--图片反面
				$status_type = $status == 2 || $status == 3 ? 1 : 2; //1--身份证, 2--学生证
				$dist_verity = DB::table('user_verity')
					->where('user_code', $user_info['user_code'])
					->where('status_type', $status_type)
					->where('status_side', $status_side)
					->exists();
	    		if ($status == 1) {
		    		$dist_code = UserDetail::where('user_code', $user_info['user_code'])
		    			->exists();
		    		if ($dist_code) {
				        return response()->json($this->responseFailed('请勿重复上头像'));
		    		}
			        $user = UserDetail::create($user_info);
			        return response()->json($this->responseSuccess('上传成功!'));
	    		} else {
    				if ($dist_verity) {
    					DB::table('user_verity')->where('status_type', $status_type)
    						->where('user_code', $user_info['user_code'])
							->where('status_side', $status_side)->update(['img' => $filename]);
    				} else {
    					DB::table('user_verity')->insert([
    						'user_code' => $user_info['user_code'],
    						'img' => $filename,
    						'status_side' => $status_side,
    						'status_type' => $status_type
    						]);
    				}
			        return response()->json($this->responseSuccess('上传成功!'));
	    		}
	    	}
    	}
    }
    /**
     * [getSchool 获取school_code]
     * @param  [type] $school_name [description]
     * @return [type]              [description]
     */
    protected function getSchoolCode($name)
    {
    	$dist = DB::table('school')->where('name', $name)->first();
    	if ($dist) {
    		return $dist->code;
    	} else {
			$count = DB::table('school')->count();
			$code = 'S'.$count;
    		$insert = DB::table('school')->insert(['name' => $name, 'code' => $code]);
    		if ($insert) {
	    		return $code;
    		}
    	}
    }
    /**
     * [getSchool 获取department_code]
     * @param  [type] $school_name [description]
     * @return [type]              [description]
     */
    protected function getDepartmentCode($name)
    {	
    	$dist = DB::table('department')->where('name', $name)->first();
    	if ($dist) {
    		return $dist->code;
    	} else {
    		$count = DB::table('department')->count();
    		$code = 'D'.$count;
    		$insert = DB::table('department')->insert(['name' => $name, 'code' => $code]);
    		if ($insert) {
	    		return $code;
    		}
    	}
    }

    protected function storeSchoolDepartment($school_code, $department_code)
    {
    	$dist = DB::table('school_department')
    		->where('school_code', $school_code)
    		->where('department_code', $department_code)
    		->exists();
    	if(!$dist) {
    		DB::table('school_department')->insert(
    			[
    				'school_code' => $school_code,
    				'department_code' => $department_code
    			]);
    	}
    	return 1;
    }
}
