-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.3.9-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных laba5
CREATE DATABASE IF NOT EXISTS `laba5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `laba5`;

-- Дамп структуры для таблица laba5.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id_post` int(11) DEFAULT NULL,
  `message` text COLLATE utf8mb4_bin DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  `id_topic` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Дамп данных таблицы laba5.posts: 0 rows
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id_post`, `message`, `id_author`, `id_topic`) VALUES
	(1, 'думаю, надо сделать так', 1, 1),
	(2, 'согласен', 2, 4),
	(3, 'а еще можно сделать так', 3, 1),
	(4, 'согласен', 2, 1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Дамп структуры для таблица laba5.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `id_topic` int(11) DEFAULT NULL,
  `topic_name` text COLLATE utf8mb4_bin DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Дамп данных таблицы laba5.topics: 0 rows
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
REPLACE INTO `topics` (`id_topic`, `topic_name`, `id_author`) VALUES
	(1, 'о рыбалке', 1),
	(2, 'велосипеды', 2),
	(3, 'ночные клубы', 1),
	(4, 'о рыбалке', 4);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

-- Дамп структуры для таблица laba5.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_bin DEFAULT NULL,
  `email` text COLLATE utf8mb4_bin DEFAULT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Дамп данных таблицы laba5.users: 0 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id_user`, `name`, `email`, `password`) VALUES
	(1, 'sergey', 'sergey@mail.ru', 1111),
	(2, 'valera', 'valera@mail.ru', 2222),
	(3, 'katy', 'katy@gmail.ru', 3333),
	(4, 'sveta', 'sveta@rambler.ru', 4444),
	(5, 'oleg', 'oleg@yandex.ru', 55555);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
