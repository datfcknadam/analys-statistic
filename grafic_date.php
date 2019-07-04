<?php
require ("conn.php");


    $res = $link->query("SELECT `date` from `table_sale`");
    while($row = mysqli_fetch_assoc($res)){
        echo $row['date'].',';
    }
    mysqli_free_result($res);
    unset($row);
mysqli_close($link);
?>    
