<?php
session_start(); //Запускаем сессию.
require_once("conn.php"); //Подсоединяем файл с аргументами базы
if($_POST['login'] == "" OR $_POST['pass'] == ""){
    echo'<script>alert("Введите данные в поля авторизации!"); window.location.href="login.html"; </script>';
}else { //Если все-же ввел, то..
 
$pass = $_POST['pass']; //Определение для пароля.
$login = $_POST['login']; //Определение для входа.
$pro = $link->query("SELECT * FROM `user` WHERE `login` = '$login' AND `pass` = '$pass'"); //Запрашиваем список пользователей с полученными данными.
$res = mysqli_fetch_assoc($pro); //Сокращаем.
if(mysqli_num_rows($pro) == '0'){
    echo'<script>alert("Такого пользователя нет!"); window.location.href="login.html"; </script>';
}else{ //Если все-же найдены пользователи с таким же логином и паролем, то..
$_SESSION['username'] = $res['login']; //Ставим инфу сессии.
$_SESSION['pass'] = $res['pass']; //Ставим инфу сессии.
$_SESSION['rus_name'] = $res['rus_name'];
    echo'<script>alert("Добро пожаловать, '.$res["rus_name"].'!"); window.location.href="index.php"; </script>';
}
}
?>