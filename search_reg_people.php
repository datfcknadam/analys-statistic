<?php
require_once("conn.php");

$date_start = $_POST["date_start"]; 
$date_end = $_POST["date_end"];

$sql = $link->query("SELECT COUNT(*) FROM `reg_people` WHERE `date_reg` BETWEEN '$date_start' AND '$date_end'");
$all_reg = mysqli_fetch_array($sql);


$sql_EMAIL = $link->query("SELECT COUNT( * ) 
FROM `req_people`, `reg_people`
WHERE `email_reg` = `email_req` AND `date_reg` BETWEEN '$date_start' AND '$date_end'");
$BUY = mysqli_fetch_array($sql_EMAIL);

$sql_BUY = $link->query("SELECT COUNT( * ) 
FROM `req_people`, `reg_people` WHERE `email_reg` = `email_req`
AND `date_req` = `date_reg` 
AND `email_reg` = `email_req` AND `date_reg` BETWEEN '$date_start' AND '$date_end'");
$FIRST_DAY = mysqli_fetch_array($sql_BUY);

$sql_SECOND  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req` 
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` 
BETWEEN  `date_reg` + INTERVAL 1 
DAY AND  `date_reg` + INTERVAL 6 
DAY");
$SECOND_DAY = mysqli_fetch_array($sql_SECOND);

$sql_eight  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req` 
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` 
BETWEEN  `date_reg` + INTERVAL 6 
DAY AND  `date_reg` + INTERVAL 13 
DAY");
$EIGHT_DAY = mysqli_fetch_array($sql_eight);

$sql_fiveteen  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req`
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` 
BETWEEN  `date_reg` + INTERVAL 13 
DAY AND  `date_reg` + INTERVAL 20 
DAY");
$FIVETEEN_DAY = mysqli_fetch_array($sql_fiveteen);

$sql_twenty  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req`
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` 
BETWEEN  `date_reg` + INTERVAL 20 
DAY AND  `date_reg` + INTERVAL 59
DAY");
$TWENTY_DAY = mysqli_fetch_array($sql_twenty);

$sql_sixty  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req`
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` >  `date_reg` + INTERVAL 59 DAY
");
$SIXTY_DAY = mysqli_fetch_array($sql_sixty);

$sql_trouble  = $link->query("SELECT COUNT( * ) 
FROM  `req_people` ,  `reg_people` WHERE `email_reg` = `email_req`
AND  `date_reg` 
BETWEEN  '$date_start'
AND  '$date_end'
AND  `date_req` >  `date_reg`
");
$TROUBLE_DAY = mysqli_fetch_array($sql_trouble);

$percent_trouble = $TROUBLE_DAY[0] * 100 / $all_reg[0];
$percent_sixty = $SIXTY_DAY[0] * 100 / $all_reg[0];
$percent_fiveteen = $FIVETEEN_DAY[0] * 100 / $all_reg[0];
$percent_twenty = $TWENTY_DAY[0] * 100 / $all_reg[0];
$percent_eight = $EIGHT_DAY[0] * 100 / $all_reg[0];
$percent_second = $SECOND_DAY[0] * 100 / $all_reg[0];
$percent_buy = $BUY[0] * 100 / $all_reg[0];
$percent_f_day = $FIRST_DAY[0] * 100 / $all_reg[0];

echo "$all_reg[0]";
echo "<p>Всего совершили покупку: $BUY[0](";
echo round($percent_buy, 2);
echo "%)</p>";
echo "<p>Из них в день регистрации: $FIRST_DAY[0](";
echo round($percent_f_day, 2);
echo "%)</p>";
echo "<p>Из них c 2 по 7 день: $SECOND_DAY[0](";
echo round($percent_second, 2);
echo "%)</p>";
echo "<p>Из них c 7 по 14 день: $EIGHT_DAY[0](";
echo round($percent_eight, 2);
echo "%)</p>";
echo "<p>Из них c 14 по 21 день: $FIVETEEN_DAY[0](";
echo round($percent_fiveteen, 2);
echo "%)</p>";
echo "<p>Из них c 21 по 60 день: $TWENTY_DAY[0](";
echo round($percent_twenty, 2);
echo "%)</p>";
echo "<p>Из них позже чем на 60 день: $SIXTY_DAY[0](";
echo round($percent_sixty, 2);
echo "%)</p>";
echo "<p>Сделали заявку раньше чем зарегистрировались: $TROUBLE_DAY[0](";
echo round($percent_trouble, 2);
echo "%)</p>";
unset($BUY);
unset($FIRST_DAY);
mysqli_free_result($sql_BUY);
mysqli_free_result($sql_SECOND);
mysqli_free_result($sql_EMAIL);
mysqli_free_result($sql_eight);
mysqli_free_result($sql_sixty);
mysqli_free_result($sql_trouble);
mysqli_free_result($sql_twenty);

mysqli_free_result($sql);

mysqli_close($link);

?>