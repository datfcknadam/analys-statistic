<?php
require_once("conn.php");
$req_email = $_POST['req_email'];
$req_date = $_POST['req_date'];

$sql = $link->query("INSERT INTO `req_people` (`email_req`, `date_req`) VALUES ('$req_email','$req_date')");



$sql = $link->query("SELECT * FROM `req_people`");
echo'
            <tr>
                <td>id</td>
                <td>email</td>
                <td>date</td>
            </tr>
            <div id="php-new">
       ';
          
while($row = mysqli_fetch_assoc($sql)){
    echo '<tr><td class="main-td" >'.$row["id_req"].'</td>
              <td class="main-td">'.$row["email_req"].'</td>
              <td class="main-td">'.$row["date_req"].'</td></tr>';  
}
echo '</div>
</table>';
unset($row);
mysqli_close($link);
?>