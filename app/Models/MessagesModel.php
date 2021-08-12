<?php namespace App\Models;

use CodeIgniter\Model;

class MessagesModel extends Model{
  protected $table = 'Messages';
  protected $primaryKey = 'id';
  protected $allowedFields = [ 'client_id','fournisseur_id','service_id','statut_commande']; 


}