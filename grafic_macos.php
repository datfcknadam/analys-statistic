<?php 
        require ("conn.php");
                     
                        $res = $link->query("SELECT  `macos` 
                                    
                                        
                                    
                        FROM  `table_sale` 
                        
                        
                        ORDER BY  `date`");
                      
                          if (!$res) {
                              echo "Could not successfully run query ($sql) from DB: " . mysqli_error();
                             exit;
                                        }
                                        
                        if (mysqli_num_rows($res) == 0) {
                            echo "<b>Таблица пуста, добавьте данные!</b>";
                            exit;
                        } 
                        
                       
                        while($row = mysqli_fetch_assoc($res)){
                            
                         

                          
                          echo $row["macos"].',';
                        }
                        mysqli_free_result($res);
                        unset($row);

                   

                        




                     ?>