<?php

namespace App\Controllers;
use App\Models\Ajoutservice;
use App\Model\UserModel;

class AjoutServiceController extends BaseController
{
    public function index()
    {
        
        $data = [];
		helper(['form']);
		
		if($this->request->getMethod() == 'post'){
			
				$model = new Ajoutservice();
                $fournisseur = new UserModel();

				$newData = [
                    'titre' => $this->request->getVar('titre'),
					'description' => $this->request->getVar('description'),
					'tarif' => $this->request->getVar('tarif'),
					'duree_delivration' => $this->request->getVar('duree'),
					'duree_validite' => $this->request->getVar('dureevalidite'),
                    'id_fournisseur' => session('id'),
					'categorie' => $this->request->getVar('categorie'),
					
					
					
				];
				$model->save($newData);

                
				
				session()->setFlashdata('success', 'Service ajouter avec succés !');
				return redirect()->to('/dashboard');

			
            
		}
        echo view('ajoutservice');



		
		
    }
}