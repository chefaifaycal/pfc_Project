<div class="container">
  <div class="row">
    <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
      <div class="container">
        <h3>Inscription</h3>
        <hr>
        <form class="" action="/register" method="post">
          <div class="row">
            <div class="col-12 ">
              <div class="form-group">
               <label for="type">Type</label>
               <select name="type" id="type">
                    <option value="fournisseur">Fournisseur</option>
                    <option value="client">Client</option>
                    
                </select>
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="nom">Nom</label>
               <input type="text" class="form-control" name="nom" id="nom" value="<?= set_value('nom') ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="prenom">Prénom</label>
               <input type="text" class="form-control" name="prenom" id="prenom" value="<?= set_value('prenom') ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="username">Nom d'utilisateur</label>
               <input type="text" class="form-control" name="username" id="username" value="<?= set_value('username') ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="email">Adresse email</label>
               <input type="text" class="form-control" name="email" id="email" value="<?= set_value('email') ?>">
              </div>
            </div>
            <div class="col-12 ">
              <div class="form-group">
               <label for="dateNaissance">Date de naissance</label>
               <input type="date" class="form-control" name="dateNaissance" id="dateNaissance"   value="<?= set_value('dateNaissance') ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="proNumb">Numéro Téléphone Personnel</label>
               <input type="tel" class="form-control"  name="persoNumb" id="persoNumb" value="<?= set_value('persoNumb') ?>" >
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="persoNumb">Numéro Téléphone Professionnel </label>
               <input type="tel" class="form-control"  name="proNumb" id="proNumb" value="<?= set_value('proNum') ?>" >
              </div>
            </div>
            <div class="col-12 ">
              <div class="form-group">
               <label for="dateMetier">Date début métier</label>
               <input type="date" class="form-control" name="dateMetier" id="dateMetier"   value="<?= set_value('dateMetier') ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="password">Mot de passe</label>
               <input type="password" class="form-control" name="password" id="password" value="">
             </div>
           </div>
           
           <div class="col-12 col-sm-6">
             <div class="form-group">
              <label for="password_confirm">Confirmer le mot de passe</label>
              <input type="password" class="form-control" name="password_confirm" id="password_confirm" value="">
            </div>
            
          </div>
          <?php if (isset($validation)): ?>
            <div class="col-12">
              <div class="alert alert-danger" role="alert">
                <?= $validation->listErrors() ?>
              </div>
            </div>
          <?php endif; ?>
          </div>
          

          

          <div class="row">
            <div class="col-12 col-sm-4">
              <button type="submit" class="btn btn-primary">Inscription</button>
            </div>
            <div class="col-12 col-sm-8 text-right">
              <a href="/">J'ai déja un compte</a>
            </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</div>