
<div class="container">
  <div class="row">
  <div>
  <?php if(session()->get('isLoggedIn')):    ?>
        <button class='logout-btn'><a href="http://localhost/dashboard/logout"> Déconnexion</a></button>

  <?php endif; ?>
  </div>
    <div class="col-12">
      <h1>Hello, <?= session()->get('firstname','lastname') ?></h1>
    </div>
  </div>
</div>

<?= $username ?><br>
<?= $nom ?><br>
<?= $prenom ?><br>
<?= $email ?><br>

