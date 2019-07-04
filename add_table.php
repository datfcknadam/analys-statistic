<?php
require ("conn.php");


 
// выполняем операции с базой данных
$platform_win = $_POST['platform_win'];
$platform_ser = $_POST['platform_ser'];
$platform_and = $_POST['platform_and'];
$platform_mac = $_POST['platform_mac'];
$platform_ip = $_POST['platform_ip'];
$total = $_POST['total'];
$date = $_POST['date'];


$result = $link->query("UPDATE `table_sale`  SET `windows` = '$platform_win', `macos` = '$platform_mac', `android` = '$platform_and', 
`iphone` = '$platform_ip', `server` = '$platform_ser', `total` = '$total'
WHERE `date` = '$date'");


echo'
<tr class="f-tr">
                   
                  
                    <td>Номер месяца</td>
                    <td>Windows</td>
                    <td>Android</td>
                    <td>IPhone</td>
                    <td>MacOS</td>
                    <td>Server</td>
                   
                </tr> 
        </div>';       
    // Вывод таблицы
  

    $sql = $link->query("SELECT * FROM `table_sale` ORDER BY `date`");

        while($row = mysqli_fetch_assoc($sql))
        {
        echo '<tr id="line-'.$row["id"].'">
                
                <td class="main-td">'.$row["date"].'</td>
                <td class="main-td">'.$row["windows"].'</td>
                <td class="main-td">'.$row["android"].'</td>
                <td class="main-td">'.$row["iphone"].'</td>
                <td class="main-td">'.$row["macos"].'</td>
                <td class="main-td">'.$row["server"].'</td>
                
                
            </tr>';
        }
        unset($row);
        mysqli_free_result($sql);
    

$price_win = $_POST['price_win'];
$price_ser = $_POST['price_ser'];
$price_and = $_POST['price_and'];
$price_mac = $_POST['price_mac'];
$price_ip = $_POST['price_ip'];

$result = $link->query("UPDATE `platform_price` SET `price` = '$price_win' WHERE `platform` = 'windows'");
mysqli_free_result($result);
$result = $link->query("UPDATE `platform_price` SET `price` = '$price_ser' WHERE `platform` = 'server'");
mysqli_free_result($result);
$result = $link->query("UPDATE `platform_price` SET `price` = '$price_and' WHERE `platform` = 'android'");
mysqli_free_result($result);
$result = $link->query("UPDATE `platform_price` SET `price` = '$price_mac' WHERE `platform` = 'macos'");
mysqli_free_result($result);
$result = $link->query("UPDATE `platform_price` SET `price` = '$price_ip' WHERE `platform` = 'iphone'");
mysqli_free_result($result);
?>