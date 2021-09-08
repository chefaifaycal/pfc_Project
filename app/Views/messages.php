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
  <div class="flex justify-center h-screen">
    

    <!-- Liste des messages -->
    <div id="msg-popup" class="flex flex-col  min-h-screen w-2/3 mr-5">
      <div class="flex bg-gray-950 w-full h-14 justify-end items-center mr-5">
          <img src="<?= $infos['profile_image_url']?>" alt="" class="h-10 w-10 object-center rounded-full m-3 "> 
          <h3><?= $infos['username']?></h3>

          
      </div>

      <div class="flex flex-col overflow-y-auto h-4/5  border-2 border-black">
        <?php foreach($messages as $msg):?>
          <?php if($msg['sender_id'] == session('userid')) :?>
            <div class="flex flex-col items-end m-2">
              <p class="rounded-full bg-gray-600 text-white font-semibold px-3 py-2 mx-2 "><?= $msg['msg_content'] ?></p>
              <p class="font-light text-xs"><?= $msg['created_at'] ?></p>
              
            </div>
          <?php endif;?>

          <?php if($msg['receiver_id'] == session('userid')) :?>
            <div class="flex flex-col items-start m-2">
              <p class="rounded-full bg-blue-600 text-white font-semibold px-3 py-2 mx-2 "><?= $msg['msg_content'] ?></p>
              <p class="font-light text-xs"><?= $msg['created_at'] ?></p>
              
            </div>
          <?php endif;?>
            

          
        <?php endforeach;?>
      </div>

      
        <form class="flex border-black border-2 h-15" action="/Messages/envoyer/<?= $infos['id']?>" method="post">
          <input type="text" name="message" class="w-full h-auto"> 
            
          </input>
          <button type="submit" class="bg-blue-500 text-white font-semibold p-3 m-2 rounded-md shadow-sm">Envoyer</button>
        </form>
      
    </div>

    <script>
      window.addEventListener('DOMContentLoaded', () =>{
            const click = document.querySelector('#click-btn')
            const popup = document.querySelector('#msg-popup')
            
            const toggleModal = () => {
                popup.classList.toggle('hidden')
                popup.classList.toggle('flex')
            }

            click.addEventListener('click', toggleModal)
        })
    </script>
  </div>
</body>
</html>