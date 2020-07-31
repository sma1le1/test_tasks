<?php

    $connect = mysqli_connect('localhost', 'root', 'qwerty', 'test');

    if (!$connect) {
        die('Error connect to DataBase');
    }