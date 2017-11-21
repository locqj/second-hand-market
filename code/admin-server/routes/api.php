<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

/*'middleware' => ['jwt.api.auth']*/
$api = app('Dingo\Api\Routing\Router');
$api->version('v1', function ($api) {
    $api->group(['namespace' => 'App\Api\Controllers'], function ($api) {
        $api->post('user/login','AuthController@authenticate');
        $api->post('user/register','AuthController@register');
        $api->post('user/userdetail', 'RegisterController@userDetail');
		$api->post('uploadheadimg/{status}','RegisterController@uploadHeadImg');
        $api->post('user/addgoods/{user_code}', 'GoodsController@add');
    });

    $api->group(['namespace' => 'App\Api\Controllers', 'middleware'=>'jwt.auth'],function ($api){
       $api->get('lessons','LessonsController@index');
       $api->get('lessons/{id}','LessonsController@show');
    });
});
