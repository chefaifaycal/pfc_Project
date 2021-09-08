<?= $this->extend('layouts/clientdashboard.php') ?>
<?= $this->section('content')?>

        <!-- main content -->
    <div class="flex flex-col justify-center m-5 divide-y-2 divide-black">
        <h3>Bienvenue sur ton profile <?= session('username')?></h3>
        
        <div class="flex flex-col justify-between">
            <h2>Nom : <?= session('username')?></h2>
            <h2>Prénom: <?= session('username')?></h2>
            <h2>Nom d'utilisateur : <?= session('username')?></h2>
            <h2>Adresse Email : <?= session('username')?></h2>
            <h2>Adresse Postale : <?= session('username')?></h2>
            <h2>Numéro de téléphone : <?= session('username')?></h2>
            <h2>Photo de Profile: <?= session('username')?></h2>
            
            

        </div>


        
        
            
           

        
    </div>
    <!-- end of the main section -->








    <?= $this->endSection() ?>