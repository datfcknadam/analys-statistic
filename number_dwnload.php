<?php
require ("conn.php");

$result = $link->query("SELECT `windows`, `macos`,`server`,`iphone`, `android` FROM `table_sale`");
unset($sum);
//Посчет суммы
while($row = mysqli_fetch_assoc($result)){
$sum = $sum + $row["windows"] + + $row["macos"] + $row["server"] + $row["iphone"] + $row["android"];

}

unset($row);
mysqli_free_result($result);

unset($sum_windows);
unset($sum_macos);
unset($sum_android);
unset($sum_server);
unset($sum_iphone);
$result = $link->query("SELECT `windows`, `macos`,`server`,`iphone`, `android` FROM `table_sale`");
while($row = mysqli_fetch_assoc($result)){
    $sum_windows = $sum_windows + $row["windows"];
    $sum_macos = $sum_macos + $row["macos"];
    $sum_server = $sum_server + $row["server"];
    $sum_iphone = $sum_iphone + $row["iphone"];
    $sum_android = $sum_android + $row["android"];
    }
if($sum_windows > $sum_android && $sum_windows > $sum_iphone && $sum_windows > $sum_server && $sum_windows > $sum_macos){
    $max = "Windows(".$sum_windows.")";
}
elseif( $sum_android > $sum_windows && $sum_android > $sum_iphone && $sum_android > $sum_server && $sum_android > $sum_macos){

    $max = "Android(".$sum_android.")";
}
    elseif( $sum_macos > $sum_android && $sum_macos > $sum_iphone && $sum_macos > $sum_server && $sum_macos > $sum_windows){
    $max = "macOs(".$sum_macos.")";
}
elseif( $sum_server > $sum_android && $sum_server > $sum_iphone && $sum_server > $sum_windows && $sum_server > $sum_macos){
    $max = "Server(".$sum_server.")";
}
else{
    $max = "iPhone(".$sum_iphone.")";
}



if($sum_windows < $sum_android && $sum_windows < $sum_iphone && $sum_windows < $sum_server && $sum_windows < $sum_macos){
    $min = "Windows(".$sum_windows.")";
}
elseif( $sum_android < $sum_windows && $sum_android < $sum_iphone && $sum_android < $sum_server && $sum_android < $sum_macos){

    $min = "Android(".$sum_android.")";
}
    elseif( $sum_macos < $sum_android && $sum_macos < $sum_iphone && $sum_macos < $sum_server && $sum_macos < $sum_windows){
    $min = "macOs(".$sum_macos.")";
}
elseif( $sum_server < $sum_android && $sum_server < $sum_iphone && $sum_server < $sum_windows && $sum_server < $sum_macos){
    $min = "Server(".$sum_server.")";
}
else{
    $min = "iPhone(".$sum_iphone.")";
}

unset($row);
mysqli_free_result($result);

?>