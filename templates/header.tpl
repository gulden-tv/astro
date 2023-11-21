<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>Карта астрономических явлений</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <!--
    Укажите свой API-ключ. Тестовый ключ НЕ БУДЕТ работать на других сайтах.
    Получить ключ можно в Кабинете разработчика: https://developer.tech.yandex.ru/keys/
-->
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU&apikey=43b5c1a9-d40c-4957-8b18-522508db9bbf" type="text/javascript"></script>
    <script src="https://yandex.st/jquery/2.2.3/jquery.min.js" type="text/javascript"></script>
    <script src="/groups" type="text/javascript"></script>

    <script src="js/object_list.js" type="text/javascript"></script>
    <style type="text/css">
        html, body{
            width: 100%; padding: 0; margin: 0;
            font-family: Arial;
        }

        #map {
            width: 95%;
            height: 450px;
        }
        /* Оформление меню (начало)*/
        .menu {
            list-style: none;
            padding: 5px;

            margin: 0;
        }
        .submenu {
            list-style: none;

            margin: 0 0 0 20px;
            padding: 0;
        }
        .submenu li {
            font-size: 90%;
        }
        /* Оформление меню (конец)*/
    </style>
</head>