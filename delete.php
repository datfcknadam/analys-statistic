<?php
require_once("conn.php");

if(isset($_POST["id"])){



    $idToDelete = $_POST["id"];

    
$queryy = ("DELETE FROM `table_sale` WHERE `id`=".$idToDelete);
$resultt = mysqli_query($link, $queryy) or die("Ошибка " . mysqli_error($link)); 
    mysql_close($link);

}
else{
    echo 'ID пуст';
}
?>