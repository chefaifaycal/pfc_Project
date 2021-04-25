
<div class="container">
  <div class="row">
  <div>
  
  </div>
    <div class="col-12">
      <h1>Bienvenue, <?= session()->get('firstname','lastname') ?></h1>
    </div>
  </div>
</div>


<img src="<?= $profile_img_url ?>" alt=""> <br>
<?= $nom ?><br>
<?= $prenom ?><br>
<?= $date_naissance ?><br>
<?= $num_telephone_perso ?><br>
<?= $num_telephone_pro ?><br>
<?= $email ?><br>

<button><a href="/AjoutServiceController">Ajouter un service</a></button>
<div>
  <h3><?= session()->getFlashdata('success')?></h3>
</div>





        <button class='logout-btn'><a href="http://localhost/dashboard/logout"> Déconnexion</a></button>

  




