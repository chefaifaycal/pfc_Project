<?php

namespace App\Controllers;

use App\Models\MessagesModel;
use App\Models\UserModel;


class Messages extends BaseController
{
	public function index($id)
	{
        $db      = \Config\Database::connect();
        $session = \Config\Services::session();
        $builder = $db->table('messages');

        $model = new UserModel();
        $messageModel = new MessagesModel();

        //$messages = $messageModel->
        
        //receiver users infos
        $infos = $model->find($id);

        //Fetch messages
        $where = "(sender_id='".$id."' AND receiver_id='".session('userid')."' ) OR (sender_id='".session('userid')."' AND receiver_id='".$id."' )";

        //$builder->where('sender_id', session('userid'));
        //$builder->where('receiver_id', $id);
        $builder->where($where);
        $result1 = $builder->get()->getResultArray();

        /* $query = $db->query('select DISTINCT(receiver_id) from messages where sender_id='.session('userid').'');


        
        

       $data = [];
        $result = $query->getResultArray();
        foreach ($result as $row){
            $ids [] = $row['receiver_id'];
        }

        $builder = $db->table('users');
        $builder->whereIn('id',$ids);
        $infos = $builder->get()->getResultArray(); */


        $data = [
            'messages' => $result1,
            'infos' => $infos,
            
        ];

		return view('messages', $data);
        //print_r($data);
        //print($id);


	}

    public function main(){
        $db      = \Config\Database::connect();
        $session = \Config\Services::session();
        $builder = $db->table('messages');

        $model = new UserModel();
        $messageModel = new MessagesModel();

        //$messages = $messageModel->
        
        //receiver users infos
        

        $where = "sender_id='".session('userid')."' OR receiver_id='".session('userid')."' ";

        //$builder->where('sender_id', session('userid'));
        //$builder->where('receiver_id', $id);
        $builder->where($where);
        $result1 = $builder->get()->getResultArray();

        $query = $db->query('select DISTINCT(receiver_id) from messages where sender_id='.session('userid').'');


        
        

       $data = [];
        $result = $query->getResultArray();
        foreach ($result as $row){
            $ids [] = $row['receiver_id'];
        }

        $builder = $db->table('users');
        $builder->whereIn('id',$ids);
        $infos = $builder->get()->getResultArray();


        $data = [
            'messages' => $result1,
            'infos' => $infos,
            
        ];

		return view('mainMessages', $data);
        //print_r($data);
        //print($id);

    }

    
    public function envoyer($id){
        $model = new MessagesModel();
        //$model1 = new UserModel();
        helper(['form']);
        //$uri = service('uri');

        //$data1 = $model1->find(session('userid'));


        

        if ($this->request->getMethod() == 'post') {
            if($this->request->getVar('message') == null){
                $path = '/Messages/index/'.$id;
                return redirect()->to($path);
            }else {
                $data = [
                    'sender_id' => session('userid'),
                    'receiver_id' => $id,
                    'msg_content' => $this->request->getVar('message'),
                    
                ];
                
                $model->save($data);
    
                $path = '/Messages/index/'.$id;
                return redirect()->to($path);
            }
            
        }

        

       // echo view('messages');
        
    }
}
