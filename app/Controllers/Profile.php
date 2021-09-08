<?php

namespace App\Controllers;

use App\Models\UserModel;

class Profile extends BaseController
{
	public function index()
	{
		$data =[];
		$model = new UserModel();
		$data = $model->find(session('userid'));


		
		
		
		
		
		return view('profile', $data);
	}
}
