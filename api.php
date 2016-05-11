<?php

require_once 'db_connect.php';
use DataBase\Connect as conn;

$connect = new conn('Books');

if(isset($_POST['status'])){
  switch ($_POST['status']) {
    case 'setType':
      $result = $connect->insertDataTable('types', $_POST['newType'], 'name');
      echo $result;
      break;
    case 'getOptionType':
      $result = $connect->getColumnTable('types');
      $html = '';
      $last = count($result);
      for($i=0;$i<$last;$i++)
        $html .= '<option value=' . $result[$i]['id'] . '> '.trim($result[$i]['name']) . '</option>';
      echo $html;
      break;
    case 'getListType':
      $result = $connect->getColumnTable('types');
      $html = '';
      $last = count($result);
      $colors = array('#f44336','#E91E63','#9C27B0','#673AB7','#3F51B5','#009688','#4CAF50','#FF9800');
      for($i=0;$i<$last;$i++){
        $color = array_rand($colors);
        $html .= '<div class="headerType" style="background:'.$colors[$color].'; color:#fff"  value=' . $result[$i]['id'] . '> '.trim($result[$i]['name']) . '</div>';
      }
      echo $html;
      break;
    case 'setBook':
      $values = array($_POST['type'], $_POST['name']);
      $columns = array('id_types', 'name');
      $result = $connect->insertDataTable('books', $values,  $columns);
      echo $result;
      break;
    case 'getOptionBook':
      $result = $connect->getColumnTable('books');
      $html = '';
      $last = count($result);
      for($i=0;$i<$last;$i++)
        $html .= '<option value=' . $result[$i]['id'] . '> '.trim($result[$i]['name']) . '</option>';
      echo $html;
      break;
      case 'getListBook':
      $result = $connect->getRowTable('books', 'id_types='.$_POST['type']);
      $html = '';
      $last = count($result);
      $colors = array('#f44336','#E91E63','#9C27B0','#673AB7','#3F51B5','#009688','#4CAF50','#FF9800');
      for($i=0;$i<$last;$i++){
        $color = array_rand($colors);
        $html .= '<a class="booksFlat" style="background:'.$colors[$color].'"  href="book.php?id=' . $result[$i]['id'] . '""> '.trim($result[$i]['name']) . '</a>';
      }
      echo $html;
      break;
    case 'setChapter':
      $values = array($_POST['book'], $_POST['title'], $_POST['content']);
      $columns = array('id_book', 'title', 'bb_content');
      $result = $connect->insertDataTable('chapters', $values,  $columns);
      echo $result;
      break;
    case 'getOptionChapters':
      $result = $connect->getRowTable('chapters', 'id_book='.$_POST['id']);
      $html = '';
      if($result != null){
        $last = count($result);
        for($i=0;$i<$last;$i++)
          $html .= '<option value=' . $result[$i]['id'] . '> '.trim($result[$i]['title']) . '</option>';
        echo $html;
      }
      break;
    case 'getContent':
      $result = $connect->getRowTable('chapters', 'id='.$_POST['id']);
      $nextChapter = $connect->getRowTable('chapters', 'id='.($_POST['id']+1));
      $prevChapter = $connect->getRowTable('chapters', 'id='.($_POST['id']-1));
      echo '<h2>' . $result[0]['title'] . '</h2>';
      echo '<br>';
      echo $result[0]['bb_content'];

      $testId = $connect->getRowTable('tests', 'id_chapter='.$result[0]['id']);

      if($testId != null){
        echo '<a href="test.php?id='.$testId[0]['id'].'">Скласти тест по даному розділі</a>';
      }

      if($result[0]['id_book'] == $prevChapter[0]['id_book'])
        echo '<p value="'. $prevChapter[0]['id'] .'" class="chapterNavigation prev" id="prevChapter">Попередній. '.$prevChapter[0]['title'].'</p>';

      if($result[0]['id_book'] == $nextChapter[0]['id_book'])
        echo '<p value="'. $nextChapter[0]['id'] .'" class="chapterNavigation next" id="nextChapter">Наступний. '.$nextChapter[0]['title'].'</p>';
      break;

    default:
      # code...
      break;
  }
}
