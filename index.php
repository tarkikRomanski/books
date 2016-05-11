<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Електроні підручники</title>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <link rel="stylesheet" href="style/main.css">
</head>
<body>
<div id="header"></div>
<div id="content"></div>

<script>
  $.post('api.php', {status: 'getListType'}, function(data, textStatus, xhr) {
    $('#header').html(data);

      $('.headerType').click(function(){
        $('.headerType').each(function(index, el){
            $(this).removeClass('active');
          });
        $(this).addClass('active');
        $.post('api.php', {status: 'getListBook', type:$(this).attr('value')}, function(data, textStatus, xhr) {
        $('#content').html(data);
    });
  });


  });
</script>
</body>
</html>
