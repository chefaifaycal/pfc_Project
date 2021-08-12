<?php

namespace App\Controllers;

use App\Models\MessagesModel;
use App\Models\UserModel;


class Messages extends BaseController
{
	public function index()
	{
        $model = new UserModel();

        $data = $model->find(session('userid'));

		return view('messages', $data);
	}

    public function new($id){
        
    }
}
