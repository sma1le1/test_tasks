<?php
session_start();
if (!$_SESSION['user']) {
    header('Location: /');
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="assets/css/main.css">
    <script src="task4.js"></script>
</head>
<body>

    <form>
        <img src="<?= $_SESSION['user']['avatar'] ?>" width="200" alt="">
        <h2 style="margin: 10px 0;">Добрый день, <?= $_SESSION['user']['full_name'] ?></h2>
        <a href="#"><?= $_SESSION['user']['email'] ?></a>
        <a href="vendor/logout.php" class="logout">Выход</a>
    </form>

    <hr>
    <p><b>Введите число:</b><br>
    <input id="mynum">
    <button id="say">Перевести!</button>
    <hr>
    <div id="result"></div>
    <script>
        function say_hi() {
            var fname = document.getElementById('mynum').value;
            number_to_text(fname);

            var html = 'Переведенное число =  <b>' + number_to_text(fname); + '</b> ';

            document.getElementById('result').innerHTML = html;
        }

        document.getElementById('say').addEventListener('click', say_hi);
    </script>
</body>
</html>