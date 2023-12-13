-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2023 г., 01:21
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `image`, `name`, `author`, `description`) VALUES
(1, 'https://s1.livelib.ru/boocover/1007018884/200x305/abd9/Grem_Maknill__Yarost_Magnusa.jpg', 'Ярость Магнуса', 'Грэм Макнилл', 'Печальная история Красного примарха'),
(2, 'https://s1.livelib.ru/boocover/1002065101/200x305/db42/boocover.jpg', 'Возвышение Хоруса', 'Дэн Абнетт', 'Семена Ереси посеяны'),
(3, 'https://s1.livelib.ru/boocover/1006102387/200x305/fb2f/Gaj_Hejli__Zabludshie_i_proklyatye.jpg', 'Заблудшие и проклятые', 'Гай Хейли', 'Ангел на страже дворца'),
(4, 'https://s1.livelib.ru/boocover/1007286721/200x305/839e/boocover.jpg', 'Ангел милосердия', 'Гай Хейли', 'Капеллан сынов Сангвиния'),
(5, 'https://s1.livelib.ru/boocover/1006066423/200/c0d0/boocover.jpg', 'Первая стена', 'Гэв Торп', 'Начало осады');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
