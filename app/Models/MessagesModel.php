<?php namespace App\Models;

use CodeIgniter\Model;

class MessagesModel extends Model{
  protected $table = 'messages';
  protected $primaryKey = 'id';
  protected $allowedFields = [ 'sender_id','receiver_id','msg_content','datetime','statut']; 

  protected $useTimestamps = true;
  


}