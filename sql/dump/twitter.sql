-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 22 2021 г., 11:12
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `twitter`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(280) NOT NULL,
  `user_id` int(11) NOT NULL,
  `twit_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `twit_id`, `create_time`) VALUES
(1, 'cool!', 2, 1, '2021-01-28 23:15:06'),
(2, 'No way!', 1, 1, '2021-02-20 08:13:06'),
(3, 'Amazing)', 3, 3, '2021-03-02 09:15:06'),
(4, 'Woooooow', 4, 4, '2021-01-23 18:10:06'),
(5, 'Oh!', 6, 10, '2021-03-12 18:13:06'),
(6, 'Thanks!', 10, 5, '2021-02-14 16:20:06'),
(7, 'No way!', 11, 1, '2021-02-13 01:13:06'),
(8, '...', 2, 3, '2021-02-15 16:13:06'),
(10, 'Hey) ', 5, 7, '2021-03-04 23:13:01'),
(11, 'Wow!', 10, 8, '2021-02-18 15:13:07'),
(12, 'What???????', 2, 6, '2021-01-26 00:13:34'),
(13, '!!!!', 3, 4, '2021-03-08 18:22:06'),
(14, 'I see...', 4, 10, '2021-03-15 01:10:02'),
(15, 'What is this?', 6, 1, '2021-02-27 23:30:14'),
(16, 'Bamonos!', 8, 6, '2021-02-12 06:13:06'),
(17, 'Yeah!', 8, 5, '2021-01-22 07:25:10'),
(18, 'Come on!', 1, 3, '2021-03-22 03:10:01');

-- --------------------------------------------------------

--
-- Структура таблицы `follower`
--

CREATE TABLE `follower` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `follower`
--

INSERT INTO `follower` (`user_id`, `follower_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(3, 7),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `new_view`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `new_view` (
);

-- --------------------------------------------------------

--
-- Структура таблицы `twit`
--

CREATE TABLE `twit` (
  `twit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(280) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twit`
--

INSERT INTO `twit` (`twit_id`, `user_id`, `content`, `create_time`) VALUES
(1, 1, 'Just Just Just Just Just Just Just Just Just Just Just Just Just Just Just ', '2021-01-28 14:18:20'),
(2, 1, 'test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 test 1 ', '2021-01-01 14:18:20'),
(3, 4, 'Test 4 Test 4 Test 4 Test 4 Test 4 Test 4 Test 4 ', '2021-03-09 22:01:00'),
(4, 5, 'Test 5 Test 5 Test 5 Test 5 Test 5 Test 5 Test 5 Test 5 ', '2021-02-28 14:18:20'),
(5, 7, 'test 7 test 7 test 7 test 7 test 7 test 7 test 7 test 7 ', '2021-03-02 03:10:20'),
(6, 3, 'test 3 test 3 test 3 test 3 test 3 test 3 test 3 test 3 ', '2021-03-12 13:20:00'),
(7, 10, 'test 10 test 10 test 10 test 10 test 10 test 10 test 10 test 10 test 10 ', '2021-02-20 15:35:10'),
(8, 6, 'test 6 test 6 test 6 test 6 test 6 test 6 test 6 test 6 test 6 test 6 ', '2021-03-01 08:05:06'),
(9, 2, 'test 2 test 2 test 2 test 2 test 2 test 2 test 2 test 2 ', '2021-03-15 09:30:45'),
(10, 12, 'test 12 test 12 test 12 test 12 test 12 test 12 test 12 test 12 ', '2021-02-28 12:30:25');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `username`, `birthday`) VALUES
(1, 'test1', '1983-04-10'),
(2, 'test2', '1981-07-13'),
(3, 'test3', '2010-01-08'),
(4, 'test4', '1961-07-02'),
(5, 'test5', '1987-03-30'),
(6, 'test6', '1981-11-09'),
(7, 'test7', '1989-03-27'),
(8, 'test8', '2011-08-30'),
(9, 'test9', '2005-01-10'),
(10, 'test10', '2007-05-15'),
(11, 'test11', '1966-03-22'),
(12, 'test12', '2007-01-01');

-- --------------------------------------------------------

--
-- Структура для представления `new_view`
--
DROP TABLE IF EXISTS `new_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `new_view`  AS  select `tw`.`tweet_id` AS `tweet_id`,`tw`.`body` AS `body`,`c`.`comment` AS `comment` from (`tweet` `tw` join `comment` `c` on(`c`.`tweet_id` = `tw`.`tweet_id`)) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_comment_user1_idx` (`user_id`),
  ADD KEY `fk_comment_tweet1_idx` (`twit_id`);

--
-- Индексы таблицы `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`user_id`,`follower_id`),
  ADD KEY `fk_follower_user2_idx` (`follower_id`);

--
-- Индексы таблицы `twit`
--
ALTER TABLE `twit`
  ADD PRIMARY KEY (`twit_id`),
  ADD KEY `fk_twit_user1_idx` (`user_id`) USING BTREE;

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `twit`
--
ALTER TABLE `twit`
  MODIFY `twit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_tweet` FOREIGN KEY (`twit_id`) REFERENCES `twit` (`twit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `follower`
--
ALTER TABLE `follower`
  ADD CONSTRAINT `fk_follower_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_follower_user2` FOREIGN KEY (`follower_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `twit`
--
ALTER TABLE `twit`
  ADD CONSTRAINT `fk_tweet_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
