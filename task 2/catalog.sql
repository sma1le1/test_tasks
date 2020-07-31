-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 31 2020 г., 19:04
-- Версия сервера: 5.6.43
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `catalog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Фильмы', 0),
(2, 'Мультики', 0),
(3, 'Комедия', 1),
(4, 'Драма', 1),
(5, 'Фентези', 1),
(6, 'Боевик', 1),
(7, 'Триллер', 1),
(8, 'Фантастика', 1),
(9, 'Семейный', 1),
(10, 'Аниме', 2),
(11, 'Детские', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`) VALUES
(1, 'Мстители:Финал', '133'),
(2, 'Иллюзия обмана', '159'),
(3, 'Время', '68'),
(4, 'Том и Джерри', '129'),
(5, 'Такси 4', '77'),
(6, 'Форсаж 8', '94'),
(7, 'Призрак в доспехах', '235'),
(8, 'Хенкок', '203'),
(9, 'Колибри', '141'),
(10, 'Джентельмены', '91'),
(11, 'Аквамен', '188');

-- --------------------------------------------------------

--
-- Структура таблицы `product_to_categories`
--

CREATE TABLE `product_to_categories` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `categ_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_to_categories`
--

INSERT INTO `product_to_categories` (`product_id`, `categ_id`) VALUES
(1, 5),
(2, 8),
(3, 4),
(4, 11),
(5, 9),
(6, 6),
(7, 10),
(8, 5),
(9, 6),
(10, 3),
(11, 6),
(11, 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
