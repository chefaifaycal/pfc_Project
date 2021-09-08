<?php

namespace App\Controllers;

use App\Models\CommandeModel;

class Commandes extends BaseController
{
	public function index()
	{
		$db      = \Config\Database::connect();
		$builder = $db->table('commande');

		$builder->where('client_id', session('userid'));

		$results = $builder->get()->getResultArray();

		$id_services = $builder->select('service_id')->distinct()->get()->getResultArray();
		$data = [];

		foreach($id_services as $row){
			$builder = $db->table('services');
			$data[] = $builder->where('id_service', $row['service_id'])->get()->getResultArray();
				
		}
		
		
		
		

		/* echo '<pre>'; print_r($results); echo '</pre>'; */
		
		echo '<pre>'; print_r($data); echo '</pre>';
		return view('commandes', $data);


		
	}
}
