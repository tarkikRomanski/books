<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Адміністративна панель</title>
  <link rel="stylesheet" href="/style/default/wbbtheme.css" />
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <link rel="stylesheet" href="style/main.css">
  <script src="/js/jquery.wysibb.min.js"></script>
  <script src="/js/ua.js"></script>
  <script>
            var wbbOpt = {
                lang: "ua"
            }
            $(function() {
                $(".bbEditor").wysibb(wbbOpt);
            })
  </script>
</head>
<body>

  <button class="btn" id="showAddingType">Добавити новий тип</button>
  <button  class="btn"id="showAddingBook">Добавити нову книгу</button>
  <button class="btn" id="showAddingChapter">Добавити новий розділ</button>
  <a href="creator.php" class="btn" id="showAddingTest">Добавити тест</a>

  <div class="adding card" id="addType">
    <div>
      <label for="newType">Введіть назву нового типу:</label>
      <input id="newType" placeholder="Релігійні посібники">
    </div>
    <button class="btn" id="addNewType">Добавити новий тип</button>
  </div>

  <div class="adding card" id="addBook">
    <div>
      <label>Виберіть тип підручника</label>
      <select id="allTypes"></select>
    </div>
    <div>
      <label for="newBook">Введіть назву нового підручника:</label>
      <input type="text" id="newBook">
    </div>
    <button class="btn" id="addNewBook">Добавити книгу</button>
  </div>

  <div class="adding card" id="addChapter">
    <div>
      <label for="allBooks">Книга:</label>
      <select id="allBooks"></select>
    </div>
    <div>
      <label for="newChapterName">Назва роділу:</label>
      <input type="text" id="newChapterName">
    </div>
    <p>Текст розділу:</p>
      <p><textarea name="bb" id="newChapter" class="bbEditor" style="width:100%; height:800px"></textarea></p>
    <button class="btn" id="addNewChapter">Добавити розділ</button>
  </div>


<script>
//подія на клік по кнопці "Добавити новий тип"
  $('#showAddingType').click(function(){
    //приховування всіх непотрібних блоків
    $('.adding').each(function(index, el) {
      $(this).animate({'opacity':'hide'}, 0);
    });
    //відображення потрібного нам блоку
    $('#addType').animate({'opacity':'show'}, 500);
  });

//подія на клік по кнопці "Добавити нову книгу"
  $('#showAddingBook').click(function(){
    $.post('api.php',{status:'getOptionType'}, function(data) {
      $('#allTypes').html(data);
    });
    //приховування всіх непотрібних блоків
    $('.adding').each(function(index, el) {
      $(this).animate({'opacity':'hide'}, 0);
    });
    //відображення потрібного нам блоку
    $('#addBook').animate({'opacity':'show'}, 500);
  });

//подія на клік по кнопці "Добавити новий розділ"
  $('#showAddingChapter').click(function(){
    $.post('api.php',{status:'getOptionBook'}, function(data) {
      $('#allBooks').html(data);
    });
    //приховування всіх непотрібних блоків
    $('.adding').each(function(index, el) {
      $(this).animate({'opacity':'hide'}, 0);
    });
    //відображення потрібного нам блоку
    $('#addChapter').animate({'opacity':'show'}, 500);
  });


  $('#addNewType').click(function(){
    $.post('api.php', {status:'setType', newType:$('#newType').val()} , function(data) {
      if(data == 1){
        alert('Тип успішно додано');
      } else {
        alert('Невдалось добавити новий тип');
      }
    });
  });

  $('#addNewBook').click(function(){
    $.post('api.php',{status:'setBook', type:$('#allTypes').val(), name:$('#newBook').val()}, function(data) {
      if(data == 1){
        alert('Тип успішно додано');
      } else {
        alert('Невдалось добавити новий тип');
      }
    });
  });

  $('#addNewChapter').click(function(){
    $.post('api.php', {status:'setChapter', book:$('#allBooks').val() , title:$('#newChapterName').val(), content:$('.wysibb-text-editor').html()}, function(data, textStatus, xhr) {
      if(data == 1){
        alert('Тип успішно додано');
      } else {
        alert('Невдалось добавити новий тип');
      }
    });
  });

</script>
</body>
</html>
