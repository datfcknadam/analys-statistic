<?php 
require ("conn.php");
//windows
$result = $link->query("SELECT `price` FROM `platform_price` WHERE `platform` = 'windows'");
$win = mysqli_fetch_assoc($result);



$result = $link->query("SELECT `windows` FROM `table_sale`");
unset($sum_win);
while($row = mysqli_fetch_assoc($result)){
    $sum_win = $sum_win + $row["windows"];
}

$total_win = $sum_win * $win["price"]; 
unset($row);
mysqli_free_result($result);

//iphone
$result = $link->query("SELECT `price` FROM `platform_price` WHERE `platform` = 'iphone'");
$iph = mysqli_fetch_assoc($result);

$result = $link->query("SELECT `iphone` FROM `table_sale`");
unset($sum_iph);
while($row = mysqli_fetch_assoc($result)){
    $sum_iph = $sum_iph + $row["iphone"];
}

$total_iph = $sum_iph * $iph["price"];
unset($row); 
mysqli_free_result($result);

//macos
$result = $link->query("SELECT `price` FROM `platform_price` WHERE `platform` = 'macos'");
$mac = mysqli_fetch_assoc($result);



$result = $link->query("SELECT `macos` FROM `table_sale`");
unset($sum_mac);
while($row = mysqli_fetch_assoc($result)){
    $sum_mac = $sum_mac + $row["macos"];
}

$total_mac = $sum_mac * $mac["price"];
unset($row); 
mysqli_free_result($result);

//android
$result = $link->query("SELECT `price` FROM `platform_price` WHERE `platform` = 'android'");
$and = mysqli_fetch_assoc($result);



$result = $link->query("SELECT `android` FROM `table_sale`");
unset($sum_and);
while($row = mysqli_fetch_assoc($result)){
    $sum_and = $sum_and + $row["android"];
}

$total_and = $sum_and * $and["price"]; 
mysqli_free_result($result);
unset($row);

//server
$result = $link->query("SELECT `price` FROM `platform_price` WHERE `platform` = 'server'");
$ser = mysqli_fetch_assoc($result);



$result = $link->query("SELECT `server` FROM `table_sale`");
unset($sum_ser);
while($row = mysqli_fetch_assoc($result)){
    $sum_ser = $sum_ser + $row["server"];
}

$total_ser = $sum_ser * $ser["price"]; 
mysqli_free_result($result);
unset($row);

$total_total = $total_and + $total_iph + $total_mac + $total_ser + $total_win;
?>