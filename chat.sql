-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 25 2017 г., 17:38
-- Версия сервера: 5.6.34
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `message`, `time`) VALUES
(55, 'lol', 170739),
(56, 'dasdas', 170958),
(57, 'jkldsjdklas', 171251),
(58, 'dsjkldjaslda', 171254),
(59, 'HELLO', 171310),
(60, 'kfjksjfkslj jskdj kfsdjkfjsdlfjsdfjsd jklsdjf jsdjfsdjfjsdklfj sjkjkl fsjfkljsdkfjsdlkfjsdklf', 171323),
(61, 'jfklsdjlfjsdlfjsdljlsdjflsdjfdsjfdjsj j kjsldjfkdsjlfjlsdj j kjksdjfkjsdkfjk ', 171338),
(62, 'dasdas', 172316),
(63, 'das', 172336),
(64, 'das', 172435),
(65, 'dasas', 172502),
(66, 'dasad', 2147483647),
(67, 'dasda', 20170925),
(68, 'dasda', 172939);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
