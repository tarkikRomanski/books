<?php
require_once 'db_connect.php';
use DataBase\Connect as conn;

$connect = new conn('Books');
$book = $connect->getRowTable('books', 'id='.$_GET['id']);
$chapters = $connect->getRowTable('chapters', 'id_book='.$_GET['id']);
?>
<!DOCTYPE html>
  <html>
  <head>
    <title><?php echo $book[0]['name'] ?></title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <link rel="stylesheet" href="style/main.css">
  </head>
  <body>
    <a href="index.php" id="selectBook">Обрати підручник</a>
    <h1><?php echo $book[0]['name'] ?></h1>
    <p>Розділи:</p>
    <ul>
      <?php
        foreach ($chapters as $key => $value) {
          echo "<li value='".$value['id']."'>".$value['title']."</li>";
        }
      ?>
    </ul>
    <div class="card" id="chapterContent">

    </div>

  <script>
      $('li').click(function(){
        $('li').each(function(){
          $(this).removeClass('active');
        });
        $('li[value='+$(this).attr('value')+']').addClass('active');
        $.post('api.php', {status: 'getContent', id:$(this).attr('value')}, function(data, textStatus, xhr) {
            showChapterContent(data);
        });
      });

    var showChapterContent = function(data){
      $('#chapterContent').animate({opacity:'hide'}, 0);
      $('#chapterContent').animate({opacity:'show'}, 500);
      $('#chapterContent').html(data);
      $('.chapterNavigation').click(function(){
        $('li').each(function(){
          $(this).removeClass('active');
        });
        $('li[value='+$(this).attr('value')+']').addClass('active');
        $.post('api.php', {status: 'getContent', id:$(this).attr('value')}, function(data, textStatus, xhr) {
          showChapterContent(data);
          scroolToTop();
        });
      });
    }

    var scroolToTop = function(){
      var body = $("html, body");
      body.stop().animate({scrollTop:0}, '500', 'swing', function() {});
    }

    $('li').first().click();

  </script>
  </body>
  </html>
