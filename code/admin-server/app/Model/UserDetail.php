<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class UserDetail extends Model
{
    protected $table = 'user_detail';
    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     * 白名单
     * @var array
     */
    protected $fillable = [
        'user_code', 'img_head'
    ];
    protected $hidden = [
        'id'
    ];
    
    public function userInfo($code) {
        return $this->where('user_code', $code)->with('users', 'department', 'school')->first();
    }

    public function users() {
        return $this->hasOne('App\User', 'code', 'user_code');
    }

    public function department() {
        return $this->hasOne('App\Model\Department', 'code', 'department_code');
    }

    public function school() {
        return $this->hasOne('App\Model\School', 'code', 'school_code');
    }

}
