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
    
}
