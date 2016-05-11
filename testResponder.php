<?php
require_once 'db_connect.php';
use DataBase\Connect as db;

$db_connect = new db('Books');

if(isset($_GET['render'])) {
    $href = $_GET['test'];
    $test_arr = file($href);
    $Username = $_GET['name'];
    $idTest = $_GET['testId'];


    $c = trim($test_arr[2])+0;
    $b = $_GET['timer']+0;

    $renders = $_GET['render'];
    $render = split(' ', $renders);
    unset($render[count($render)-1]);
    $s = trim($test_arr[4]);
    $x = count($render);
    $a = 0;
    $z = 0;
    $k = 1;
    // перевіряємо вірність тестів
    for ($i=5, $j=0; $i<count($test_arr); $i++, $j++){
        $test = split('/:i:/',$test_arr[$i]);
        $lastid = count($test)-1;
        $last = $test[$lastid];

        if(trim($last) == trim($render[$j]))
            $a++;
    }

 if($b > $c)
        $k = abs($c / $b - 1);


$zp = ((100*$k)*$a)/$x;
$z = ($s * $zp) / 100*$k;
$z = round($z);
echo $z;
/*Записуємо результат в db*/
$value_arr = array($idTest, $z, $_GET['timer']+0, $Username, date('Y-m-d H:i:s'));
$column_arr = array('id_test', 'mark', 'time', 'name', 'date');
$db_connect->insertDataTable('results', $value_arr, $column_arr);
}
