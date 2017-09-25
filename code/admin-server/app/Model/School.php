<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    protected $table = 'school';
    protected $hidden = [ 'id', 'code', 'status_del'];
    
}
