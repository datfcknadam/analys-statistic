<?php
require ("conn.php");
$reg_email = $_POST['reg_email'];
$reg_date = $_POST['reg_date'];

$sql = $link->query("INSERT INTO `reg_people` (`email_reg`, `date_reg`) VALUES ('$reg_email','$reg_date')");



$sql = $link->query("SELECT * FROM `reg_people`");
echo'
            <tr>
                <td>id</td>
                <td>email</td>
                <td>date</td>
            </tr>
            <div id="php-new">
       ';
          
while($row = mysqli_fetch_assoc($sql)){
    echo '<tr><td class="main-td" >'.$row["id_reg"].'</td>
              <td class="main-td">'.$row["email_reg"].'</td>
              <td class="main-td">'.$row["date_reg"].'</td></tr>';  
}
echo '</div>
</table>';
unset($row);
mysqli_close($link);
?>