-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 13 2020 г., 20:19
-- Версия сервера: 5.7.30-0ubuntu0.18.04.1
-- Версия PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_06_05_110710_create_products_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `availability` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `availability`, `created_at`, `updated_at`) VALUES
(1, 'namea', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto assumenda commodi corporis debitis dignissimos dolorum ea eius harum incidunt, iste laudantium nam neque non obcaecati odio odit omnis placeat porro praesentium quas qui quia quo rem repellat sint tempore, ullam vel veniam voluptate voluptatum. Amet dolor dolorum libero molestiae necessitatibus perferendis, perspiciatis possimus qui quos repellendus sint sunt vel voluptatum? Expedita harum magni perferendis? Ab accusantium amet atque aut consequuntur dignissimos ducimus expedita explicabo id illo iusto libero nemo, nobis numquam optio porro quas quasi reiciendis, repellendus temporibus unde vel voluptate voluptatum! Amet dolore dolores earum modi perspiciatis quae sed?\r\n', NULL, 2000, 0, NULL, NULL),
(2, 'nameb', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto assumenda commodi corporis debitis dignissimos dolorum ea eius harum incidunt, iste laudantium nam neque non obcaecati odio odit omnis placeat porro praesentium quas qui quia quo rem repellat sint tempore, ullam vel veniam voluptate voluptatum. Amet dolor dolorum libero molestiae necessitatibus perferendis, perspiciatis possimus qui quos repellendus sint sunt vel voluptatum? Expedita harum magni perferendis? Ab accusantium amet atque aut consequuntur dignissimos ducimus expedita explicabo id illo iusto libero nemo, nobis numquam optio porro quas quasi reiciendis, repellendus temporibus unde vel voluptate voluptatum! Amet dolore dolores earum modi perspiciatis quae sed?\r\n', NULL, 5000, 1, '2020-06-06 10:47:15', '2020-06-06 10:47:15'),
(3, 'namec', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto assumenda commodi corporis debitis dignissimos dolorum ea eius harum incidunt, iste laudantium nam neque non obcaecati odio odit omnis placeat porro praesentium quas qui quia quo rem repellat sint tempore, ullam vel veniam voluptate voluptatum. Amet dolor dolorum libero molestiae necessitatibus perferendis, perspiciatis possimus qui quos repellendus sint sunt vel voluptatum? Expedita harum magni perferendis? Ab accusantium amet atque aut consequuntur dignissimos ducimus expedita explicabo id illo iusto libero nemo, nobis numquam optio porro quas quasi reiciendis, repellendus', NULL, 500, 1, '2020-06-06 13:19:32', '2020-06-06 13:19:32'),
(4, 'named', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto assumenda commodi corporis debitis dignissimos dolorum ea eius harum incidunt, iste laudantium nam neque non obcaecati odio odit omnis placeat porro praesentium quas qui quia quo rem repellat sint tempore, ullam vel veniam voluptate voluptatum. Amet dolor dolorum libero molestiae necessitatibus perferendis, perspiciatis possimus qui quos repellendus sint sunt vel voluptatum? Expedita harum magni perferendis? Ab accusantium amet atque aut consequuntur', NULL, 8000, 1, '2020-06-06 13:20:03', '2020-06-06 13:20:03'),
(5, 'namee', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto assumenda commodi corporis debitis dignissimos dolorum ea eius harum incidunt, iste laudantium nam neque non obcaecati odio odit omnis placeat porro praesentium quas qui quia quo rem repellat sint tempore, ullam vel veniam voluptate voluptatum. Amet dolor dolorum libero molestiae necessitatibus perferendis, perspiciatis possimus qui quos repellendus sint sunt vel voluptatum? Expedita harum magni perferendis? Ab accusantium amet atque aut consequuntur dignissimos ducimus expedita explicabo id', NULL, 7000, 1, '2020-06-09 10:32:50', '2020-06-09 10:32:50'),
(6, 'namef', 'desc6', NULL, 500, 1, NULL, NULL),
(7, 'nameg', 'desc7', NULL, 15000, 0, NULL, NULL),
(8, 'nameh', 'desc8', NULL, 2500, 1, NULL, NULL),
(9, 'namei', 'desc9', NULL, 1250, 0, NULL, NULL),
(10, 'namej', 'desc10', NULL, 4300, 1, NULL, NULL),
(11, 'namek', 'desc11', NULL, 300, 1, NULL, NULL),
(12, 'namel', 'desc12', NULL, 6000, 0, NULL, NULL),
(13, 'namem', 'desc13', NULL, 150000, 1, NULL, NULL),
(14, 'namen', 'desc14', NULL, 9500, 1, NULL, NULL),
(15, 'nameo', 'desc15', NULL, 14750, 1, NULL, NULL),
(16, 'namep', 'desc16', NULL, 450, 1, NULL, NULL),
(17, 'nameq', 'desc17', NULL, 80000, 1, NULL, NULL),
(18, 'namer', 'desc18', NULL, 9634, 1, NULL, NULL),
(19, 'names', 'desc19', NULL, 321, 1, NULL, NULL),
(20, 'namet', 'desc20', NULL, 4687, 1, NULL, NULL),
(21, 'namey', 'desc21', NULL, 5000, 1, NULL, NULL),
(22, 'namew', 'desc22', NULL, 5000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
