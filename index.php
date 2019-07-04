<?php
session_start();
if(empty($_SESSION['username'])){
    echo'<script>alert("Пожалуйста авторизуйтесь!"); window.location.href="login.html"; </script>';}

?>
<html>
<head>
    <link rel="stylesheet" href="style/style.css"/>
    <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap-datetimepicker.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="bootstrap-4.3.1/js/jquery.min.js"></script>
    <script src="bootstrap-4.3.1/js/moment-with-locales.min.js"></script>
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <script src="bootstrap-4.3.1/js/bootstrap-datetimepicker.min.js"></script>
    <script src="js/search.js"></script>
    <script src="js/btn-confirm-price.js"></script>

    <script src="js/btn-reg-req.js"></script>
    <script src="js/search-reg-people.js"></script>
    <script src="js/print.js"></script>
    <script>
        $(document).ready(function(){

            var ctx2 = document.getElementById('chart-area2').getContext('2d');
            var chart2 = new Chart(ctx2, {
// The type of chart we want to create
                type: 'pie',

// The data for our dataset
                data: {
                    labels: ['Windows', 'iPhone', 'Android', 'macOS', 'Server'],
                    datasets: [{
                        label: 'datesets12',

                        backgroundColor: [
                            'rgba(240, 84, 84, 1)', 'rgba(92, 82, 235, 1)', 'rgba(52, 172, 247, 1)', 'rgba(52, 247, 185, 1)', 'rgba(93, 255, 71, 1)'
                        ],

                        data: [


                            <?php require_once("sale_dwnload.php");
                            echo $total_win.','.$total_iph.','.$total_and.','.$total_mac.','.$total_ser;
                            ?>
                        ]
                    }]
                },

// Configuration options go here
                options: {}
            });



            var ctx1 = document.getElementById('chart-area').getContext('2d');
            var chart1 = new Chart(ctx1, {
                // The type of chart we want to create
                type: 'pie',

                // The data for our dataset
                data: {
                    labels: ['Windows', 'iPhone', 'Android', 'macOS', 'Server'],
                    datasets: [{
                        label: 'datesets1',

                        backgroundColor: [
                            'rgba(240, 84, 84, 1)', 'rgba(92, 82, 235, 1)', 'rgba(52, 172, 247, 1)', 'rgba(52, 247, 185, 1)', 'rgba(93, 255, 71, 1)'
                        ],

                        data: [


                            <?php require_once ("number_dwnload.php");
                            echo $sum_windows.','.$sum_iphone.','.$sum_android.','.$sum_macos.','.$sum_server;
                            ?>
                        ]
                    }]
                },

                // Configuration options go here
                options: {}
            });

            $("body").on("click", "input#addData", function(e) {
                e.preventDefault();
                var date = $("#date-sale").val();
                var platform_win = $("#sale-number-windows").val();
                var platform_ip = $("#sale-number-iphone").val();
                var platform_mac = $("#sale-number-macos").val();
                var platform_ser = $("#sale-number-server").val();
                var platform_and = $("#sale-number-android").val();
                var total = +platform_and + +platform_ip + +platform_mac + +platform_ser + +platform_win;

                jQuery.ajax({
                    type: "POST", // HTTP метод  POST или GET
                    url: "add_table.php", //url-адрес, по которому будет отправлен запрос
                    dataType:"text", // Тип данных
                    data:{"date": date, "platform_win": platform_win, "platform_ip": platform_ip, "platform_mac": platform_mac,
                        "platform_ser": platform_ser, "platform_and": platform_and, "total": total}, //post переменные
                    success:function(response){

                        alert("Данные успешно обновлены");
                        console.log(date, platform_win, platform_mac, platform_ser, platform_and, platform_ip);
                        $("#date-sale").val("");
                        $("#sale-number-windows").val("");
                        $("#sale-number-iphone").val("");
                        $("#sale-number-macos").val("");
                        $("#sale-number-server").val("");
                        $("#sale-number-android").val("");
                        $("table.data-table#about-table").html(response);

                    },
                    error:function (xhr, ajaxOptions, thrownError){
                        //выводим ошибку
                        alert(thrownError);
                    }
                });
            });
            var ctx = document.getElementById('myChart').getContext('2d');
            var chart = new Chart(ctx, {
                // The type of chart we want to create
                type: 'line',

                // The data for our dataset
                data: {
                    labels: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
                    datasets: [{
                        label: 'Windows',

                        borderColor: 'rgb(255, 99, 132)',

                        data: [


                            <?php require_once ("grafic_windows.php");
                            ?>
                        ]
                    },{label: 'IPhone',

                        borderColor: 'rgb(209, 99, 255)',

                        data: [


                            <?php require_once ("grafic_iphone.php");
                            ?>
                        ]},{label: 'Android',

                        borderColor: 'rgb(89, 79, 245)',

                        data: [


                            <?php require_once ("grafic_android.php");
                            ?>
                        ]},{label: 'macOS',

                        borderColor: 'rgb(69, 169, 255)',

                        data: [


                            <?php require_once ("grafic_macos.php");
                            ?>
                        ]},{label: 'Сервер',

                        borderColor: 'rgb(212, 182, 37)',

                        data: [


                            <?php require_once ("grafic_server.php");
                            ?>
                        ]} ]
                },

                // Configuration options go here
                options: {}
            });
            $("button#logout-btn").on("click", function() {
                console.log("click");

                answer = confirm('Вы уверенны, что хотите выйти?');

                if(answer){
                    window.location.href="logout.php";
                }

            });

        });
    </script>

</head>
<body>
<header>

    <button type="submit" id="logout-btn">Выйти</button>
    <div class="container" id="head">
        <a class="header-logo" href="">
            <img src="img/financial-growth-analysis.png" class="img">
            Analysis
            &
            Statistics
        </a>
        <a class="info-user">Вы зашли как <?php echo $_SESSION['rus_name']; ?></a>
    </div>
</header>
<main>
    <div class="container">
        <div class="tabs">
            <input id="tab1" type="radio" name="tabs" checked>
            <label for="tab1" title="Download">Скачивания</label>
            <input id="tab2" type="radio" name="tabs">
            <label for="tab2" title="Profit">Прибыль</label>
            <input id="tab4" type="radio" name="tabs">
            <label for="tab4" title="HTML5">Регистрация</label>
            <input id="tab5" type="radio" name="tabs">
            <label for="tab5" title="HTML5">Заявки</label>
            <div class="print" id="prt-downl" onclick="PrintElem('#print-downl')">
                Печать отчета
            </div>
        <section id="content-tab1">
            <?php
            require_once("conn.php");
              $user_name = $_SESSION["rus_name"];
            $sql = $link->query("SELECT `rus_name` FROM `user` WHERE `rus_name` = '$user_name'");
            $res = mysqli_fetch_assoc($sql);
            mysqli_free_result($sql);

            ?>

            <div name="<?= $user_name ?>" >
                <a class="info" name="add"> Обновить данные </a>
                <div class="about"   id="functional">
                    <div class="function">
                        <div class="addSale" href="">
                            <a class="full-info">Заполните данные о продажах: </a>
                        </div>

                        <div class="add">
                            <!-- Кнопка пуска модальное окно -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                Добавить данные
                            </button>

                            <!-- Модальное окно -->

                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel"></h4>
                                        </div>
                                        <div class="modal-body">

                                            <span>Выберите месяц: </span>
                                            <select id="date-sale" class="form-control" name="month" required>
                                                <option value="1">Январь - 1</option>
                                                <option value="2">Февраль - 2</option>
                                                <option value="3">Март - 3</option>
                                                <option value="4">Апрель - 4</option>
                                                <option value="5">Май - 5</option>
                                                <option value="6">Июнь - 6</option>
                                                <option value="7">Июль - 7</option>
                                                <option value="8">Август - 8</option>
                                                <option value="9">Сентябрь - 9</option>
                                                <option value="10">Октябрь - 10</option>
                                                <option value="11">Ноябрь - 11</option>
                                                <option value="12">Декабрь - 12</option>
                                            </select>
                                            <span>Количество продаж: </span>

                                            <p>IPhone: </p> <input name="number" type="number" id="sale-number-iphone" class="number-sale" required>
                                            <p>Server: </p> <input name="number" type="number" id="sale-number-server" class="number-sale" required>
                                            <p>Android: </p> <input name="number" type="number" id="sale-number-android" class="number-sale" required>
                                            <p>macOS: </p> <input name="number" type="number" id="sale-number-macos" class="number-sale" required>
                                            <p>Windows: </p> <input name="number" type="number" id="sale-number-windows" class="number-sale" required>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <input type="submit" id="addData" class="btn btn-primary" value="Добавить">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <div id="print-downl">
                <a class="info"> Таблица данных </a>
                <div class="about" id="table">
                    <table class="data-table" id="about-table">

                        <tr class="f-tr">


                            <td>Номер месяца</td>
                            <td>Windows</td>
                            <td>Android</td>
                            <td>IPhone</td>
                            <td>MacOS</td>
                            <td>Server</td>

                        </tr>
                </div>
                <?php
                // Вывод таблицы
                require_once("conn.php");

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

                ?>
                </table>
        </div>
        <a class="info">График</a>
        <div class="about" name="grafic" id="grafic">
            <canvas id="myChart"></canvas>

        </div>
        <a class="info" name="static">Статистика</a>
        <div class="about"  id="statistic">
            <p class="stat-row-1">Общее количество продаж: <?php require("number_dwnload.php"); echo $sum;  ?> </p>
            <p class="stat-row-2">Больше всего продаж по платформе: <?php  echo $max; ?> </p>
            <p class="stat-row-2">Меньше всего продаж по платформе:  <?php echo $min; ?> </p>
        </div>

        <a class="info" >Круговая диаграмма</a>
        <div class="about" name="diagram" id="diagram">
            <canvas id="chart-area" style="display: block; width: 540px; height: 270px;" width="540" height="270" class="chartjs-render-monitor"></canvas>
        </div>
        </div>
        </section>
        <div class="print" id="prt-price" onclick="PrintElem('#print-price')">
            Печать отчета
        </div>
        <section id="content-tab2">
            <a class="info" name="add"> Cтоимость </a>
            <div class="about-money"  id="functional">
                <div class="function">
                    <div class="addSale" href="">
                        <a class="full-info">Цена на каждую платформу (в рублях):</a>
                    </div>

                    <div class="add-money">
                        <?php require("conn.php");

                        $sql=$link->query("SELECT * FROM `platform_price`");

                        while($row = mysqli_fetch_assoc($sql)){



                            echo '<p>'.$row["platform"].': <a class="php-price" id="'.$row["platform"].'">'.$row["price"].'₽</a></p> <input placeholder="₽" value="'.$row["price"].'" type="number" id="price-'.$row["platform"].'" class="number-price" required>';

                        }
                        unset($row);
                        mysqli_free_result($sql);

                        ?>
                        <div name="<?= $user_name ?>" >
                        <button class="price-btn" id="edit-price-btn"> Изменить </button>
                        <button class="price-btn" id="confirm-price-btn"> Принять </button>
                        </div>
                    </div>

                </div>
            </div>
            <div id="print-price">
            <a class="info"> Статистика </a>
            <div class="about-money" id="">

                <div class="addSale" href="">
                    <p>Всего заработано по платформе Windows за год: <a class="stat-row" id = "win"> <?php require_once("sale_dwnload.php"); echo $total_win; ?></a>₽</p>
                    <p>Всего заработано по платформе Server за год: <a class="stat-row" id = "ser"> <?php echo $total_ser;?></a>₽</p>
                    <p>Всего заработано по платформе Android за год: <a class="stat-row" id = "and"> <?php  echo $total_and;?></a>₽ </p>
                    <p>Всего заработано по платформе macOs за год: <a class="stat-row" id = "mac"> <?php echo $total_mac;?></a>₽</p>
                    <p>Всего заработано по платформе iPhone за год: <a class="stat-row" id = "iph"><?php echo $total_iph;?></a>₽</p>
                    <p>Всего заработано за год: <a class="stat-row" id = "total"> <?php echo $total_total;?></a>₽</p>
                </div>
            </div>
            </div>
            <div class = "total-number">
                <input id="win" value='<?php echo $sum_win; ?>'>
                <input id="and" value='<?php echo $sum_and; ?>'>
                <input id="mac" value='<?php echo $sum_mac; ?>'>
                <input id="iph" value='<?php echo $sum_iph; ?>'>
                <input id="ser" value='<?php echo $sum_ser; ?>'>
            </div>
            <a class="info"> Диаграмма </a>
            <div class="about-money" id="">
                <canvas id="chart-area2" style="display: block; width: 540px; height: 270px;" width="540" height="270" class="chartjs-render-monitor"></canvas>
            </div>


        </section>
        <div class="print" id="prt-reg" onclick="PrintElem('#print-reg')">
            Печать отчета
        </div>
        <section id="content-tab4">
            <div name="<?= $user_name ?>" >
            <a class="info">Регистрация</a>
            <div class="about-reg" id="">
                <form>
                    <label class="label" for="reg-date">Дата регистрации: </label><br>
                    <a class="warning-reg" style="color: red">Заполните это поле.</a>
                    <input required id="reg-date" class="form-control" type="date"><br>

                    <label class="label" for="reg-email">Email: </label><br>
                    <a class="warning-reg" style="color: red">Заполните это поле.</a>
                    <input placeholder="example@example.com" required id="reg-email" type="email" class="form-control">

                    <button id="reg-btn">Создать</button>
                </form>
            </div>
            </div>

            <div id="print-reg">
            <a class="info"> Таблица</a>
            <div class="about-reg" id="table">
                <table class="data-table" id="reg-table">
                    <tr>
                        <td>id</td>
                        <td>email</td>
                        <td>date</td>
                    </tr>
                    <div id="php-new">
                        <?php
                        require_once("conn.php");
                        $sql1 = $link->query("SELECT * FROM `reg_people`");
                        while($row = mysqli_fetch_assoc($sql1)){
                            echo '<tr><td class="main-td" >'.$row["id_reg"].'</td>
                            <td class="main-td">'.$row["email_reg"].'</td>
                            <td class="main-td">'.$row["date_reg"].'</td></tr>';
                        }
                        ?>
                    </div>
                </table>
            </div>
            </div>
            <a class="info">Статистика</a>
            <div class="about-reg" id="">
                <a class="help" style="color: #9a9a9a;">Выберите нужный вам промежуток времени, чтобы узнать количество зарегистрированых пользователелей за этот период</a><br>
                <label class="label" for="date-start">Начало: </label><br>
                <a class="warning-data" style="color: red">Заполните это поле.</a>
                <input id="date-start" type="date" class="form-control">

                <label class="label" for="date-end">Конец: </label><br>
                <a class="warning-data" style="color: red">Заполните это поле.</a>
                <input id="date-end" type="date" class="form-control">

                <button id="upload-info">Показать результат</button>
                <div id="data-upload">
                    <p>Зарегистрировалось с <a id="info-date-start"> </a> по <a id="info-date-end"> </a>: <a id="total-reg"> </a> </p>

                </div>
            </div>
        </section>
        <div class="print" id="prt-req" onclick="PrintElem('#print-req')">
            Печать отчета
        </div>
        <section id="content-tab5">
            <div name="<?= $user_name ?>" >
            <a class="info">Создание заявки</a>
            <div class="about-req" id="">

                <form>
                    <label class="label" for="req-date">Дата заявки: </label><br>
                    <a class="warning-req" style="color: red">Заполните это поле.</a>
                    <input required id="req-date" class="form-control" type="date"><br>

                    <label class="label" for="req-email">Email: </label><br>
                    <a class="warning-req" style="color: red">Заполните это поле.</a>

                    <input placeholder="example@example.com" name="referal" required id="req-email" type="email" class="form-control">
                    <ul class="search_result"></ul>

                    <button id="req-btn">Создать</button>
                </form>

            </div>
            </div>

            <div id="print-req">
            <a class="info"> Таблица</a>
            <div class="about-req" id="table">
                <table class="data-table" id="req-table">
                    <tr>
                        <td>id</td>
                        <td>email</td>
                        <td>date</td>
                    </tr>
                    <div id="php-new">
                        <?php
                        require_once("conn.php");
                        $sql = $link->query("SELECT * FROM `req_people`");
                        while($row = mysqli_fetch_assoc($sql)){
                            echo '<tr><td class="main-td" >'.$row["id_req"].'</td>
                            <td class="main-td">'.$row["email_req"].'</td>
                            <td class="main-td">'.$row["date_req"].'</td></tr>';
                        }
                        ?>
                    </div>
                </table>
            </div>
            </div>
        </section>
    </div>
    </div>
</main>
</body>
</html>