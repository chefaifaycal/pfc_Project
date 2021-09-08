<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/assets/style.css">
  <title>Document</title>
</head>
<body>
  <div class="flex h-screen items-center justify-center">
    <div class="flex flex-col w-1/3 min-h-screen bg-gray-100 shadow-md rounded-md m-3">
      <div class="flex  w-full h-14 justify-center items-center">
        <img src="<?= session('profile_img')?>" alt="" class="h-10 w-10 object-center rounded-full m-3 "> 
        <h3><?= session('username') ?></h3>
      </div>

      <div class="flex flex-col ">
        <?php foreach($infos as $info) : ?>
          <a href="/Messages/index/<?= $info['id'] ?>">
            <button id="click-btn" class="flex items-center p-3 bg-gray-50 rounded-md shadow-md m-2  text-gray-900 w-27 font-semibold">
              <img class="h-10 w-10 rounded-full mx-2" src="<?= $info['profile_image_url'] ?>" alt="">
              <?= $info['username'] ?>
            </button>
          </a>
          
        <?php endforeach;?>
      </div>

      
    </div>

    

    
  </div>
</body>
</html>