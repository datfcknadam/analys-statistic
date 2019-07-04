<?php
require_once("conn.php");
if(!empty($_POST["referal"])){ 

$referal = trim(strip_tags(stripcslashes(htmlspecialchars($_POST["referal"]))));

$db_referal = $link -> query("SELECT * from `reg_people` WHERE `email_reg` LIKE '%$referal%'")
or die('Ошибка №'.__LINE__.'<br>Обратитесь к администратору сайта пожалуйста, сообщив номер ошибки.');

while ($row = $db_referal -> fetch_array()) {
    echo "\n<li>".$row["email_reg"]."</li>"; 
}

}
?>