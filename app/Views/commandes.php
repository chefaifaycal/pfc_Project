<?= $this->extend('layouts/clientdashboard.php') ?>
<?= $this->section('content')?>

        <!-- main content -->
    <div class="grid grid-cols-3 gap-4 justify-center m-5 divide-y-2 divide-black">
        <?php if(isset($data)) : ?>
            <?php foreach($data as $row) : ?>
                <div class="flex flex-col rounded-md bg-gray-200 shadow-lg justify-center items-center">
                    <h1><?= print_r($row) ?></h1>
                </div>    
                
            <?php endforeach; ?>
        <?php endif;?>
    


            
        
        
            
           

        
    </div>
    <!-- end of the main section -->








    <?= $this->endSection() ?>