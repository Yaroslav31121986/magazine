-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 06 2019 г., 11:45
-- Версия сервера: 5.7.17-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mybd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'verified', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-24 12:25:46', '2019-05-24 09:25:46', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'Joker', 'vlasjaro3@gmail.com', '', '::1', '2019-05-25 21:29:39', '2019-05-25 18:29:39', 'чамчапвкпач', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 0, 1),
(3, 1, 'Joker', 'vlasjaro3@gmail.com', '', '::1', '2019-05-25 21:29:50', '2019-05-25 18:29:50', 'папренав', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 1, 1),
(4, 1, 'Joker', 'vlasjaro3@gmail.com', '', '::1', '2019-05-25 21:29:58', '2019-05-25 18:29:58', 'віеіеіеауке', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 2, 1),
(5, 249, 'Joker', 'vlasjaro3@gmail.com', '', '::1', '2019-05-27 18:24:10', '2019-05-27 15:24:10', 'Просто супер', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '', 0, 1),
(9, 420, 'WooCommerce', '', '', '', '2019-06-16 18:12:08', '2019-06-16 15:12:08', 'Ожидание зачисления безналичного платежа Статус заказа изменен с В ожидании оплаты на На удержании.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 421, 'WooCommerce', '', '', '', '2019-06-16 18:42:25', '2019-06-16 15:42:25', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 422, 'WooCommerce', '', '', '', '2019-06-16 19:16:44', '2019-06-16 16:16:44', 'Ожидание зачисления безналичного платежа Статус заказа изменен с В ожидании оплаты на На удержании.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 423, 'WooCommerce', '', '', '', '2019-06-16 19:19:01', '2019-06-16 16:19:01', 'Ожидание зачисления безналичного платежа Статус заказа изменен с В ожидании оплаты на На удержании.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 424, 'WooCommerce', '', '', '', '2019-06-16 19:22:41', '2019-06-16 16:22:41', 'Ожидание зачисления безналичного платежа Статус заказа изменен с В ожидании оплаты на На удержании.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 425, 'WooCommerce', '', '', '', '2019-06-16 19:40:05', '2019-06-16 16:40:05', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 426, 'WooCommerce', '', '', '', '2019-06-16 20:21:50', '2019-06-16 17:21:50', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/magazine', 'yes'),
(2, 'home', 'http://localhost/magazine', 'yes'),
(3, 'blogname', 'SOSedushka', 'yes'),
(4, 'blogdescription', 'Интернет магазин сантехники', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vlasjaro3@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:23:\"cyrlitera/cyrlitera.php\";i:2;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:3;s:19:\"jetpack/jetpack.php\";i:4;s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";i:5;s:53:\"saphali-woocommerce-lite/saphali-woocommerce-lite.php\";i:6;s:25:\"tablepress/tablepress.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:69:\"C:\\AppServ\\www\\magazine/wp-content/themes/storefront/content-none.php\";i:1;s:62:\"C:\\AppServ\\www\\magazine/wp-content/themes/storefront/style.css\";i:2;s:91:\"C:\\AppServ\\www\\magazine/wp-content/themes/storefront/assets/css/woocommerce/woocommerce.css\";i:3;s:66:\"C:\\AppServ\\www\\magazine/wp-content/themes/storefront/style-rtl.css\";i:4;s:62:\"C:\\AppServ\\www\\magazine/wp-content/plugins/akismet/akismet.php\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:4:{s:5:\"title\";s:16:\"веенкпвп\";s:4:\"text\";s:182:\"<ul>\r\n 	<li>укеупвапукеівкпаівпіеукпаіквкеуевікпаукеукеіквауікеукеаіваеуцкеуікаіукеуцкеківа</li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '120', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:126:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;s:29:\"tablepress_import_tables_wptr\";b:1;s:23:\"tablepress_edit_options\";b:1;s:14:\"manage_widgets\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:43:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:19:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"tablepress_edit_tables\";b:1;s:24:\"tablepress_delete_tables\";b:1;s:22:\"tablepress_list_tables\";b:1;s:21:\"tablepress_add_tables\";b:1;s:22:\"tablepress_copy_tables\";b:1;s:24:\"tablepress_import_tables\";b:1;s:24:\"tablepress_export_tables\";b:1;s:32:\"tablepress_access_options_screen\";b:1;s:30:\"tablepress_access_about_screen\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"calendar-3\";i:1;s:10:\"archives-2\";i:2;s:6:\"meta-2\";i:3;s:8:\"search-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:4:{i:0;s:40:\"premmerce_filter_active_filters_widget-4\";i:1;s:32:\"premmerce_filter_filter_widget-3\";i:2;s:26:\"woocommerce_price_filter-3\";i:3;s:25:\"woocommerce_widget_cart-3\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:15:{i:1566824407;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1566825683;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566825948;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566827974;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1566844126;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566844137;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566853200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566854748;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566854926;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566865727;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566897947;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566897978;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566897980;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567296000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(105, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:8:\"nav_menu\";i:20;}i:4;a:1:{s:8:\"nav_menu\";i:20;}i:5;a:1:{s:8:\"nav_menu\";i:20;}}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1558705562;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'storefront_nux_fresh_site', '1', 'yes'),
(166, 'storefront_nux_guided_tour', '1', 'yes'),
(167, 'theme_mods_storefront', 'a:15:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:20;s:8:\"handheld\";i:20;}s:12:\"header_image\";s:21:\"random-uploaded-image\";s:34:\"storefront_header_background_color\";s:7:\"#ffffff\";s:11:\"custom_logo\";i:106;s:28:\"storefront_header_link_color\";s:7:\"#161616\";s:23:\"storefront_accent_color\";s:7:\"#dd8500\";s:24:\"storefront_heading_color\";s:7:\"#000000\";s:32:\"storefront_button_alt_text_color\";s:7:\"#545454\";s:34:\"storefront_button_background_color\";s:7:\"#498fc1\";s:28:\"storefront_button_text_color\";s:7:\"#f9f9f9\";s:38:\"storefront_button_alt_background_color\";s:7:\"#dd9933\";s:17:\"storefront_layout\";s:5:\"right\";s:29:\"storefront_product_pagination\";b:0;s:29:\"storefront_sticky_add_to_cart\";b:1;}', 'yes'),
(172, 'current_theme', 'Storefront', 'yes'),
(173, 'theme_switched', '', 'yes'),
(185, 'woocommerce_store_address', 'Украина, г. Киев, ул. Менделеева 12', 'yes'),
(186, 'woocommerce_store_address_2', '', 'yes'),
(187, 'woocommerce_store_city', 'Киев', 'yes'),
(188, 'woocommerce_default_country', 'UA', 'yes'),
(189, 'woocommerce_store_postcode', '01103', 'yes'),
(190, 'woocommerce_allowed_countries', 'specific', 'yes'),
(191, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(192, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"UA\";}', 'yes'),
(193, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(194, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"UA\";}', 'yes'),
(195, 'woocommerce_default_customer_address', '', 'yes'),
(196, 'woocommerce_calc_taxes', 'no', 'yes'),
(197, 'woocommerce_enable_coupons', 'yes', 'yes'),
(198, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(199, 'woocommerce_currency', 'UAH', 'yes'),
(200, 'woocommerce_currency_pos', 'left', 'yes'),
(201, 'woocommerce_price_thousand_sep', ',', 'yes'),
(202, 'woocommerce_price_decimal_sep', '.', 'yes'),
(203, 'woocommerce_price_num_decimals', '2', 'yes'),
(204, 'woocommerce_shop_page_id', '10', 'yes'),
(205, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(206, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(207, 'woocommerce_placeholder_image', '347', 'yes'),
(208, 'woocommerce_weight_unit', 'kg', 'yes'),
(209, 'woocommerce_dimension_unit', 'cm', 'yes'),
(210, 'woocommerce_enable_reviews', 'yes', 'yes'),
(211, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(212, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(213, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(214, 'woocommerce_review_rating_required', 'yes', 'no'),
(215, 'woocommerce_manage_stock', 'yes', 'yes'),
(216, 'woocommerce_hold_stock_minutes', '60', 'no'),
(217, 'woocommerce_notify_low_stock', 'yes', 'no'),
(218, 'woocommerce_notify_no_stock', 'yes', 'no'),
(219, 'woocommerce_stock_email_recipient', 'vlasjaro3@gmail.com', 'no'),
(220, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(221, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(222, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(223, 'woocommerce_stock_format', '', 'yes'),
(224, 'woocommerce_file_download_method', 'force', 'no'),
(225, 'woocommerce_downloads_require_login', 'no', 'no'),
(226, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(227, 'woocommerce_prices_include_tax', 'no', 'yes'),
(228, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(229, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(230, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(231, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(232, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(233, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(234, 'woocommerce_price_display_suffix', '', 'yes'),
(235, 'woocommerce_tax_total_display', 'itemized', 'no'),
(236, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(237, 'woocommerce_shipping_cost_requires_address', 'yes', 'yes'),
(238, 'woocommerce_ship_to_destination', 'billing_only', 'no'),
(239, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(240, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(241, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(242, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(243, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(244, 'woocommerce_registration_generate_username', 'yes', 'no'),
(245, 'woocommerce_registration_generate_password', 'yes', 'no'),
(246, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(247, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(248, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(249, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(250, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(251, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(252, 'woocommerce_trash_pending_orders', '', 'no'),
(253, 'woocommerce_trash_failed_orders', '', 'no'),
(254, 'woocommerce_trash_cancelled_orders', '', 'no'),
(255, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(256, 'woocommerce_email_from_name', 'magazine', 'no'),
(257, 'woocommerce_email_from_address', 'vlasjaro3@gmail.com', 'no'),
(258, 'woocommerce_email_header_image', '', 'no'),
(259, 'woocommerce_email_footer_text', '{site_title}<br />Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(260, 'woocommerce_email_base_color', '#96588a', 'no'),
(261, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(262, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(263, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(264, 'woocommerce_cart_page_id', '12', 'yes'),
(265, 'woocommerce_checkout_page_id', '12', 'yes'),
(266, 'woocommerce_myaccount_page_id', '13', 'yes'),
(267, 'woocommerce_terms_page_id', '', 'no'),
(268, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(269, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(270, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(271, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(272, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(273, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(274, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(275, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(276, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(277, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(278, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(279, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(280, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(281, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(282, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(283, 'woocommerce_api_enabled', 'no', 'yes'),
(284, 'woocommerce_allow_tracking', 'yes', 'no'),
(285, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(286, 'woocommerce_single_image_width', '600', 'yes'),
(287, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(288, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(289, 'woocommerce_demo_store', 'no', 'no'),
(290, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(291, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(292, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(295, 'default_product_cat', '21', 'yes'),
(300, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(301, 'storefront_cleared_widgets', '1', 'yes'),
(302, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(303, 'widget_woocommerce_widget_cart', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:14:\"Корзина\";s:13:\"hide_if_empty\";i:0;}}', 'yes'),
(304, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_woocommerce_price_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(307, 'widget_woocommerce_product_categories', 'a:3:{i:5;a:0:{}i:7;a:8:{s:5:\"title\";s:33:\"Категории товаров\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_products', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:7:{s:5:\"title\";s:12:\"Товары\";s:6:\"number\";i:4;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}i:4;a:0:{}}', 'yes'),
(311, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(328, 'woocommerce_obw_last_completed_step', 'activate', 'yes'),
(329, 'woocommerce_product_type', 'both', 'yes'),
(330, 'woocommerce_sell_in_person', '1', 'yes'),
(333, 'woocommerce_tracker_last_send', '1566824376', 'yes'),
(337, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(338, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(339, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(341, '_transient_shipping-transient-version', '1560702768', 'yes'),
(342, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"80\";}', 'yes'),
(344, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(347, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp для WooCommerce установлено но не активировано. <a href=\"http://localhost/magazine/wp-admin/plugins.php\">Пожалуйста активируйте вручную нажав сюда.</a>', 'yes'),
(357, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(360, 'jetpack_activated', '1', 'yes'),
(363, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(364, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"7.3.1:1558707684\";s:11:\"old_version\";s:16:\"7.3.1:1558707684\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:2;}', 'yes'),
(365, 'jetpack_tos_agreed', '1', 'yes'),
(366, 'jetpack_secrets', 'a:1:{s:18:\"jetpack_register_1\";a:3:{s:8:\"secret_1\";s:32:\"6KHFPmtY0IIALheJZneAHgMCFv0RX1JC\";s:8:\"secret_2\";s:32:\"w4BGmJ1izEnHBoTE3lKLt99aUl8qRcsY\";s:3:\"exp\";i:1558708284;}}', 'no'),
(367, 'jetpack_sync_settings_disable', '0', 'yes'),
(369, 'jetpack_testimonial', '0', 'yes'),
(371, 'do_activate', '0', 'yes'),
(379, 'storefront_nux_dismissed', '1', 'yes'),
(381, '_transient_product_query-transient-version', '1566127415', 'yes'),
(386, '_transient_product-transient-version', '1561204447', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(395, 'jetpack_available_modules', 'a:1:{s:5:\"7.3.1\";a:43:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(396, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(397, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(445, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(643, 'jetpack_restapi_stats_cache', 'a:1:{s:32:\"14e08890ae4b54cf21808409a44ca140\";a:1:{i:1559417269;O:13:\"Jetpack_Error\":2:{s:6:\"errors\";a:1:{s:13:\"missing_token\";a:1:{i:0;s:0:\"\";}}s:10:\"error_data\";a:0:{}}}}', 'no'),
(721, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(807, 'category_children', 'a:0:{}', 'yes'),
(995, 'page_for_posts', '128', 'yes'),
(1559, 'acf_version', '5.8.0', 'yes'),
(1576, 'woocommerce_custom_product_tabs_lite_db_version', '1.6.3', 'yes'),
(1605, 'custom_product_tabs_onesixone_data_update', '1', 'yes'),
(1606, 'yikes_woo_reusable_products_tabs', 'a:0:{}', 'yes'),
(1607, 'yikes_woo_reusable_products_tabs_applied', 'a:0:{}', 'yes'),
(1634, '_transient_orders-transient-version', '1560705712', 'yes'),
(1691, 'tablepress_plugin_options', '{\"plugin_options_db_version\":38,\"table_scheme_db_version\":3,\"prev_tablepress_version\":\"0\",\"tablepress_version\":\"1.9.2\",\"first_activation\":1558983111,\"message_plugin_update\":false,\"message_donation_nag\":true,\"use_custom_css\":true,\"use_custom_css_file\":true,\"custom_css\":\"\",\"custom_css_minified\":\"\",\"custom_css_version\":0}', 'yes'),
(1697, 'tablepress_tables', '{\"last_id\":12,\"table_post\":{\"6\":275,\"7\":278,\"8\":287,\"9\":291,\"10\":320,\"11\":321,\"12\":436}}', 'yes'),
(1809, 'yit_recently_activated', 'a:1:{i:0;s:41:\"yith-woocommerce-ajax-navigation/init.php\";}', 'yes'),
(1810, 'widget_yith-woo-ajax-navigation', 'a:10:{i:2;a:10:{s:5:\"title\";s:25:\"Место монтажа\";s:9:\"attribute\";s:25:\"место-монтажа\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";s:6:\"rw_opt\";a:2:{s:9:\"pageid_10\";b:1;s:13:\"widget_select\";b:1;}}i:3;a:10:{s:5:\"title\";s:22:\"Мощность, Вт\";s:9:\"attribute\";s:21:\"мощность-вт\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:6:\"parent\";s:11:\"extra_class\";s:0:\"\";s:6:\"rw_opt\";a:2:{s:13:\"widget_select\";b:0;s:11:\"cpt_product\";b:1;}}i:4;a:10:{s:5:\"title\";s:19:\"Объемов, л.\";s:9:\"attribute\";s:13:\"объем-л\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";s:6:\"rw_opt\";a:2:{s:9:\"pageid_10\";b:1;s:13:\"widget_select\";b:0;}}i:5;a:9:{s:5:\"title\";s:26:\"Производитель\";s:9:\"attribute\";s:26:\"производитель\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:6;a:9:{s:5:\"title\";s:17:\"Тип (ТЭНа)\";s:9:\"attribute\";s:15:\"тип-тэна\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:7;a:9:{s:5:\"title\";s:27:\"Тип управления\";s:9:\"attribute\";s:27:\"тип-управления\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:8;a:9:{s:5:\"title\";s:18:\"Установка\";s:9:\"attribute\";s:18:\"установка\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:9;a:9:{s:5:\"title\";s:10:\"Форма\";s:9:\"attribute\";s:10:\"форма\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}i:10;a:9:{s:5:\"title\";s:20:\"Назначение\";s:9:\"attribute\";s:20:\"назначение\";s:10:\"query_type\";s:3:\"and\";s:4:\"type\";s:4:\"list\";s:6:\"colors\";a:0:{}s:10:\"multicolor\";a:0:{}s:6:\"labels\";a:0:{}s:7:\"display\";s:3:\"all\";s:11:\"extra_class\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1811, 'widget_yith-woo-ajax-reset-navigation', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1812, 'yit_wcan_options', 'a:7:{s:29:\"yith_wcan_ajax_shop_container\";s:9:\".products\";s:30:\"yith_wcan_ajax_shop_pagination\";s:26:\"nav.woocommerce-pagination\";s:36:\"yith_wcan_ajax_shop_result_container\";s:25:\".woocommerce-result-count\";s:31:\"yith_wcan_ajax_scroll_top_class\";s:19:\".yit-wcan-container\";s:31:\"yith_wcan_ajax_shop_terms_order\";s:12:\"alphabetical\";s:22:\"yith_wcan_custom_style\";s:0:\"\";s:30:\"yith_wcan_frontend_description\";b:0;}', 'yes'),
(2274, 'new_admin_email', 'vlasjaro3@gmail.com', 'yes'),
(2454, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(2789, 'woocommerce_thumbnail_cropping_custom_width', '3', 'yes'),
(2790, 'woocommerce_thumbnail_cropping_custom_height', '1', 'yes'),
(2915, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(2916, 'woocommerce_category_archive_display', '', 'yes'),
(3966, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:45:\"premmerce-woocommerce-product-filter/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.2.4\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1559486970;s:11:\"plugin_path\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";}}s:7:\"abspath\";s:24:\"C:\\AppServ\\www\\magazine/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";s:8:\"sdk_path\";s:45:\"premmerce-woocommerce-product-filter/freemius\";s:7:\"version\";s:5:\"2.2.4\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1559486970;}}', 'yes'),
(3967, 'fs_debug_mode', '', 'yes'),
(3968, 'fs_accounts', 'a:15:{s:21:\"id_slug_type_path_map\";a:1:{i:1519;a:3:{s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";}}s:11:\"plugin_data\";a:1:{s:36:\"premmerce-woocommerce-product-filter\";a:22:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";}s:17:\"install_timestamp\";i:1559408013;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.2.4\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.2.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1559408013;s:7:\"version\";s:5:\"3.2.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:1;s:22:\"install_sync_timestamp\";i:1559492223;s:19:\"keepalive_timestamp\";i:1559492223;s:20:\"activation_timestamp\";i:1559408042;s:14:\"sync_timestamp\";i:1559492222;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"2\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}s:17:\"install_sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:5:\"3.2.3\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.2.4\";s:9:\"timestamp\";i:1559492220;s:2:\"on\";b:1;}s:21:\"trial_promotion_shown\";i:1565276916;}}s:13:\"file_slug_map\";a:1:{s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";s:36:\"premmerce-woocommerce-product-filter\";}s:7:\"plugins\";a:1:{s:36:\"premmerce-woocommerce-product-filter\";O:9:\"FS_Plugin\":20:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:40:\"Premmerce Product Filter for WooCommerce\";s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";s:12:\"premium_slug\";s:44:\"premmerce-woocommerce-product-filter-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";s:7:\"version\";s:5:\"3.2.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_20f16471b14ab029cbbc55d432950\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1519\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"33424f877fecdb4bb9744239d35da0c0\";s:5:\"plans\";a:1:{s:36:\"premmerce-woocommerce-product-filter\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTUxOQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MjE5MA==\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAxNy0xMS0wMiAxMzowMTowMw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTUxOQ==\";s:4:\"name\";s:12:\"cHJlbWl1bQ==\";s:5:\"title\";s:12:\"UHJlbWl1bQ==\";s:11:\"description\";s:0:\"\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";s:4:\"Nw==\";s:23:\"is_require_subscription\";s:4:\"MQ==\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:24:\"aW5mb0BwcmVtbWVyY2UuY29t\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"MzIxNQ==\";s:7:\"updated\";s:28:\"MjAxOC0wOC0yOSAxMjoxNDoxNw==\";s:7:\"created\";s:28:\"MjAxOC0wNi0wMSAxMzo0NDowOA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1559492222;s:3:\"md5\";s:32:\"e1944675ff3cca0ce61ab413db0cdeff\";s:7:\"plugins\";a:9:{s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";a:5:{s:4:\"slug\";s:46:\"yikes-inc-easy-custom-woocommerce-product-tabs\";s:7:\"version\";s:6:\"1.6.10\";s:5:\"title\";s:35:\"Custom Product Tabs for WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";a:5:{s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:6:\"1.9.12\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:19:\"jetpack/jetpack.php\";a:5:{s:4:\"slug\";s:7:\"jetpack\";s:7:\"version\";s:5:\"7.3.1\";s:5:\"title\";s:24:\"Jetpack by WordPress.com\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:53:\"saphali-woocommerce-lite/saphali-woocommerce-lite.php\";a:5:{s:4:\"slug\";s:24:\"saphali-woocommerce-lite\";s:7:\"version\";s:5:\"1.8.5\";s:5:\"title\";s:27:\"Saphali Woocommerce Russian\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:25:\"tablepress/tablepress.php\";a:5:{s:4:\"slug\";s:10:\"tablepress\";s:7:\"version\";s:5:\"1.9.2\";s:5:\"title\";s:10:\"TablePress\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:5:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"3.6.3\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:41:\"yith-woocommerce-ajax-navigation/init.php\";a:5:{s:4:\"slug\";s:32:\"yith-woocommerce-ajax-navigation\";s:7:\"version\";s:5:\"3.6.3\";s:5:\"title\";s:36:\"YITH WooCommerce Ajax Product Filter\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";a:16:{s:20:\"WC requires at least\";s:5:\"3.0.0\";s:15:\"WC tested up to\";s:3:\"3.6\";s:3:\"Woo\";s:0:\"\";s:4:\"Name\";s:40:\"Premmerce Product Filter for WooCommerce\";s:9:\"PluginURI\";s:49:\"https://premmerce.com/woocommerce-product-filter/\";s:7:\"Version\";s:5:\"3.2.3\";s:11:\"Description\";s:128:\"Premmerce Product Filter for WooCommerce plugin is a convenient and flexible tool for managing filters for WooCommerce products.\";s:6:\"Author\";s:9:\"premmerce\";s:9:\"AuthorURI\";s:21:\"https://premmerce.com\";s:10:\"TextDomain\";s:16:\"premmerce-filter\";s:10:\"DomainPath\";s:10:\"/languages\";s:7:\"Network\";b:0;s:5:\"Title\";s:40:\"Premmerce Product Filter for WooCommerce\";s:10:\"AuthorName\";s:9:\"premmerce\";s:9:\"is_active\";b:1;s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1559492222;s:3:\"md5\";s:32:\"a3ddd0ebf5ec0c7d745148f4f99476df\";s:7:\"plugins\";a:12:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.2\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";a:5:{s:4:\"slug\";s:46:\"yikes-inc-easy-custom-woocommerce-product-tabs\";s:7:\"version\";s:6:\"1.6.10\";s:5:\"title\";s:35:\"Custom Product Tabs for WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";a:5:{s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:7:\"version\";s:6:\"1.9.12\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"jetpack/jetpack.php\";a:5:{s:4:\"slug\";s:7:\"jetpack\";s:7:\"version\";s:5:\"7.3.1\";s:5:\"title\";s:24:\"Jetpack by WordPress.com\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";a:5:{s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";s:7:\"version\";s:5:\"3.2.3\";s:5:\"title\";s:40:\"Premmerce Product Filter for WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:53:\"saphali-woocommerce-lite/saphali-woocommerce-lite.php\";a:5:{s:4:\"slug\";s:24:\"saphali-woocommerce-lite\";s:7:\"version\";s:5:\"1.8.5\";s:5:\"title\";s:27:\"Saphali Woocommerce Russian\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:25:\"tablepress/tablepress.php\";a:5:{s:4:\"slug\";s:10:\"tablepress\";s:7:\"version\";s:5:\"1.9.2\";s:5:\"title\";s:10:\"TablePress\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:6:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"3.6.3\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:5:\"3.6.4\";}s:41:\"yith-woocommerce-ajax-navigation/init.php\";a:5:{s:4:\"slug\";s:32:\"yith-woocommerce-ajax-navigation\";s:7:\"version\";s:5:\"3.6.3\";s:5:\"title\";s:36:\"YITH WooCommerce Ajax Product Filter\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:37:\"restrict-widgets/restrict-widgets.php\";a:5:{s:4:\"slug\";s:16:\"restrict-widgets\";s:7:\"version\";s:5:\"1.3.1\";s:5:\"title\";s:16:\"Restrict Widgets\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:25:\"widget-options/plugin.php\";a:5:{s:4:\"slug\";s:14:\"widget-options\";s:7:\"version\";s:5:\"3.7.3\";s:5:\"title\";s:14:\"Widget Options\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1559492223;s:3:\"md5\";s:32:\"1f2f4b90340f09259f7d60628e25c7e2\";s:6:\"themes\";a:4:{s:10:\"storefront\";a:5:{s:4:\"slug\";s:10:\"storefront\";s:7:\"version\";s:5:\"2.5.0\";s:5:\"title\";s:10:\"Storefront\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.2\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:36:\"premmerce-woocommerce-product-filter\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"10005694\";s:9:\"plugin_id\";s:4:\"1519\";s:7:\"user_id\";s:7:\"1935424\";s:5:\"title\";s:10:\"SOSedushka\";s:3:\"url\";s:25:\"http://localhost/magazine\";s:7:\"version\";s:5:\"3.2.3\";s:8:\"language\";s:5:\"ru-RU\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.2.1\";s:11:\"sdk_version\";s:5:\"2.2.4\";s:28:\"programming_language_version\";s:6:\"5.6.30\";s:7:\"plan_id\";s:4:\"2190\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:1;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_03268934e216927b2afddce399fb4\";s:10:\"secret_key\";s:32:\"sk_dh:@Q[vZn-$ft~icI$+(LYmh2TG$o\";s:2:\"id\";s:7:\"2698590\";s:7:\"updated\";s:19:\"2019-06-01 17:29:35\";s:7:\"created\";s:19:\"2019-06-01 16:54:02\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:1935424;O:7:\"FS_User\":12:{s:5:\"email\";s:19:\"vlasjaro3@gmail.com\";s:5:\"first\";s:5:\"joker\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_e36192418eb1ee2a503bbc1cf1d5b\";s:10:\"secret_key\";s:32:\"sk_#zo{omh.?@<}&?5iOkK)bGj.q{^Gy\";s:2:\"id\";s:7:\"1935424\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2019-06-01 16:54:01\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:23:\"user_id_license_ids_map\";a:1:{i:1519;a:1:{i:1935424;a:0:{}}}s:12:\"all_licenses\";a:1:{i:1519;a:0:{}}s:7:\"updates\";a:1:{i:1519;N;}s:13:\"admin_notices\";a:1:{s:36:\"premmerce-woocommerce-product-filter\";a:1:{s:15:\"trial_promotion\";a:8:{s:7:\"message\";s:692:\"Привет!! Тебе нравится пользоваться <b>Premmerce Product Filter for WooCommerce</b>? Воспользуйся всеми нашими премиум возможностями на протяжении 0 - дневного тестового периода.  Бесплатное пользование на протяжении 7 дней. Отмена в любое время.   <a style=\"margin-left: 10px; vertical-align: super;\" href=\"http://localhost/magazine/wp-admin/admin.php?billing_cycle=annual&trial=true&page=premmerce-filter-admin-pricing\"><button class=\"button button-primary\">Начни тестовый период! &nbsp;&#10140;</button></a>\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:9:\"promotion\";s:6:\"sticky\";b:1;s:2:\"id\";s:15:\"trial_promotion\";s:10:\"manager_id\";s:36:\"premmerce-woocommerce-product-filter\";s:6:\"plugin\";s:40:\"Premmerce Product Filter for WooCommerce\";s:10:\"wp_user_id\";N;}}}}', 'yes'),
(3971, 'fs_api_cache', 'a:2:{s:73:\"get:/v1/installs/2698590/updates/latest.json?is_premium=false&readme=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":17:{s:9:\"plugin_id\";s:4:\"1519\";s:12:\"developer_id\";s:4:\"1539\";s:4:\"slug\";N;s:12:\"premium_slug\";s:44:\"premmerce-woocommerce-product-filter-premium\";s:7:\"version\";s:5:\"3.2.3\";s:11:\"sdk_version\";s:5:\"2.2.4\";s:25:\"requires_platform_version\";s:3:\"4.8\";s:20:\"tested_up_to_version\";s:3:\"5.1\";s:8:\"has_free\";b:1;s:11:\"has_premium\";b:1;s:12:\"release_mode\";s:8:\"released\";s:2:\"id\";s:4:\"8101\";s:7:\"created\";s:19:\"2019-04-25 11:51:07\";s:7:\"updated\";s:19:\"2019-06-01 07:06:15\";s:11:\"is_released\";b:1;s:3:\"url\";s:386:\"https://api.freemius.com/v1/installs/2698590/updates/8101.zip?is_premium=false&authorization=FSLA+2698590%3A8VgZ11HT-gNvH01elCwZO1cgGChv4Li7IHdbQgDgmkgpp2_tbME8a4b111g8HAcUOt_7v45mDPU6XlwN26thtAXIJ9ukpTz_LMg1vmm89qb9nVc-OCFWvqQHp7OECJ1VU6hx4R5u-kXGgAHDlIUiDprIhfbDvvDNYEm1h7N82CNrKJYD1j_wp_DgfCEx6TsbyY7cukhxhuBxaSgVxgc0NEy7GARGpmhCJZX5WfOMF1ET2td3z3DPJGGcx1tICgArcMXeidaU9Diva9wJMMBeAw\";s:6:\"readme\";O:8:\"stdClass\":10:{s:4:\"name\";s:40:\"Premmerce Product Filter for WooCommerce\";s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";s:4:\"tags\";O:8:\"stdClass\":5:{s:14:\"product filter\";s:14:\"product filter\";s:26:\"WooCommerce product filter\";s:26:\"WooCommerce product filter\";s:18:\"WooCommerce filter\";s:18:\"WooCommerce filter\";s:9:\"Premmerce\";s:9:\"Premmerce\";s:17:\"attributes filter\";s:17:\"attributes filter\";}s:8:\"requires\";s:3:\"4.8\";s:6:\"tested\";s:3:\"5.1\";s:10:\"stable_tag\";s:5:\"3.2.3\";s:8:\"sections\";O:8:\"stdClass\":4:{s:11:\"description\";s:510:\"<p>The Premmerce Product Filter for WooCommerce plugin is a convenient and flexible tool for managing filters for WooCommerce products. Among the main features of this plugin there is a single widget that manages the display of all available filters, perfect Ajax, working with all popular themes and unique SEO features.</p>\n\n<p>Also, comparing to the standard WooCommerce filters, the Premmerce Product Filter for WooCommerce has a well-thought-out caching system for the load speed improvement.</p>\n\n<p></p>\";s:3:\"faq\";s:636:\"<h4>Documentation</h4>\n\n<p>Full documentation is available here: <a href=\"https://premmerce.com/woocommerce-product-filter/\">Premmerce Product Filter for WooCommerce</a></p>\n\n<h4>Installation Instructions</h4>\n\n<p>Go to Plugins -> Add New section from your admin account and search for Premmerce Product Filter for WooCommerce.</p>\n\n<p>You can also install this plugin manually:</p>\n\n<ul>\n<li>Download the plugin’s ZIP archive and unzip it.</li>\n<li>Copy the unzipped premmerce-woocommerce-product-filter folder to the /wp-content/plugins/ directory.</li>\n<li>Activate the plugin through the ‘Plugins’ menu in WordPress</li>\n</ul>\";s:9:\"changelog\";s:3715:\"<h4>1.0</h4>\n\n<p>Release Date: Oct 19, 2017</p>\n\n<ul>\n<li>Initial release</li>\n</ul>\n\n<h4>1.0.1</h4>\n\n<p>Release Date: Nov 20, 2017</p>\n\n<ul>\n<li>Added WordPress 4.9 support</li>\n<li>Added WooCommerce 3.2.4 support</li>\n</ul>\n\n<h4>1.0.2</h4>\n\n<p>Release Date: Dec 06, 2017</p>\n\n<ul>\n<li>Added Premmerce icon to menu</li>\n<li>Added Premmerce version check</li>\n<li>Added WordPress 4.9.1 support</li>\n<li>Added WooCommerce 3.2.5 support</li>\n</ul>\n\n<h4>1.0.3</h4>\n\n<p>Release Date: Jan 24, 2018</p>\n\n<ul>\n<li>Updated freemius sdk</li>\n<li>Fixed the dependency check on multisite</li>\n<li>Fixed \"Clear cache\" button</li>\n</ul>\n\n<h4>1.0.4</h4>\n\n<p>Release Date: Feb 02, 2018</p>\n\n<ul>\n<li>Added WooCommerce 3.3.0 support</li>\n<li>Updated translations</li>\n</ul>\n\n<h4>1.1</h4>\n\n<p>Release Date: Apr 19, 2018</p>\n\n<ul>\n<li>Added Active Filters widget</li>\n<li>Added Price filter</li>\n<li>Added Scroll and Dropdown views</li>\n<li>Fixed search query</li>\n<li>Fixed filters nested category products</li>\n<li>Improved performance</li>\n</ul>\n\n<h4>1.1.1</h4>\n\n<p>Release Date: Apr 23, 2018</p>\n\n<ul>\n<li>Updated markup and styles for better themes compatibility</li>\n</ul>\n\n<h4>2.0</h4>\n\n<p>Release Date: Jun 7, 2018</p>\n\n<ul>\n<li>Added permalinks to premium version</li>\n<li>Added seo settings to premium version</li>\n<li>Added filter type color to premium version</li>\n<li>Added filter type label to premium version</li>\n<li>Added filter widget to attribute archive page</li>\n</ul>\n\n<h4>2.1</h4>\n\n<p>Release Date: Jun 21, 2018</p>\n\n<ul>\n<li>Fixed properties with value 0</li>\n<li>Fixed active filters</li>\n<li>Fixed price filter form action in multisite environment</li>\n<li>Fixed attributes parsing</li>\n<li>Removed freemius menu subitems</li>\n</ul>\n\n<h4>3.0</h4>\n\n<p>Release Date: Aug 2, 2018</p>\n\n<ul>\n<li>Added slider to premium version</li>\n<li>Added category filter</li>\n<li>Added product tag filter</li>\n<li>Added WPML multicurrency support</li>\n<li>Fixed same filter item as queried object is no longer visible</li>\n<li>Fixed seo rules translations with WPML</li>\n<li>Fixed attribute settings with WPML</li>\n<li>Fixed min and max price variables in seo rule</li>\n<li>Improved plugin architecture</li>\n</ul>\n\n<h4>3.0.1</h4>\n\n<p>Release Date: Aug 7, 2018</p>\n\n<ul>\n<li>Fixed display_type notice</li>\n</ul>\n\n<h4>3.1</h4>\n\n<p>Release Date: Oct 19, 2018</p>\n\n<ul>\n<li>Added styles configuration</li>\n<li>Added deferred loading</li>\n<li>Added ajax results loading</li>\n<li>Added custom taxonomies to premium version</li>\n<li>Updated themes support</li>\n<li>Improved performance by caching price query results</li>\n</ul>\n\n<h4>3.1.1</h4>\n\n<p>Release Date: Oct 22, 2018</p>\n\n<ul>\n<li>Fixed Seo Sitemap namespace</li>\n</ul>\n\n<h4>3.1.2</h4>\n\n<p>Release Date: Nov 29, 2018</p>\n\n<ul>\n<li>Added WooCommerce 3.5 support</li>\n<li>Added Reset all button</li>\n<li>Fixed prices in filter when currency(Premmerce Woocommerce Multi-currency) switched</li>\n</ul>\n\n<h4>3.2</h4>\n\n<p>Release Date: Mar 1, 2019</p>\n\n<ul>\n<li>Added attributes pagination</li>\n<li>Added OceanWP compatibility</li>\n<li>Updated drag-and-drop logic</li>\n<li>Updated freemius to 2.2.4</li>\n<li>Fixed filter loading on pages without filter</li>\n<li>Security fix</li>\n</ul>\n\n<h4>3.2.1</h4>\n\n<p>Release Date: Mar 12, 2019</p>\n\n<ul>\n<li>Fixed custom taxonomies priority issue</li>\n</ul>\n\n<h4>3.2.2</h4>\n\n<p>Release Date: Mar 14, 2019</p>\n\n<ul>\n<li>Fixed running without woocommerce issue</li>\n<li>Fixed uninstall issues</li>\n</ul>\n\n<h4>3.2.3</h4>\n\n<p>Release Date: Apr 25, 2019</p>\n\n<ul>\n<li>Updated WooCommerce compatibility version to 3.6</li>\n<li>Fixed trailing slash in sitemap</li>\n<li>Fixed sitemap pagination</li>\n<li>Fixed deferred filter widget title</li>\n</ul>\";s:11:\"screenshots\";s:0:\"\";}s:14:\"upgrade_notice\";b:0;s:7:\"version\";s:5:\"3.2.3\";s:13:\"download_link\";s:386:\"https://api.freemius.com/v1/installs/2698590/updates/8101.zip?is_premium=false&authorization=FSLA+2698590%3A8VgZ11HT-gNvH01elCwZO1cgGChv4Li7IHdbQgDgmkgpp2_tbME8a4b111g8HAcUOt_7v45mDPU6XlwN26thtAXIJ9ukpTz_LMg1vmm89qb9nVc-OCFWvqQHp7OECJ1VU6hx4R5u-kXGgAHDlIUiDprIhfbDvvDNYEm1h7N82CNrKJYD1j_wp_DgfCEx6TsbyY7cukhxhuBxaSgVxgc0NEy7GARGpmhCJZX5WfOMF1ET2td3z3DPJGGcx1tICgArcMXeidaU9Diva9wJMMBeAw\";}}s:7:\"created\";i:1559493431;s:9:\"timestamp\";i:1559497031;}s:68:\"get:/v1/users/1935424/plugins/1519/payments.json?include_addons=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"payments\";a:0:{}}s:7:\"created\";i:1559493431;s:9:\"timestamp\";i:1559579831;}}', 'yes'),
(3972, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(3975, 'widget_premmerce_filter_filter_widget', 'a:2:{i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(3976, 'widget_premmerce_filter_active_filters_widget', 'a:2:{i:4;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(3977, '_site_transient_timeout_locked_1', '1874768045', 'no'),
(3978, '_site_transient_locked_1', '1', 'no'),
(3988, 'premmerce_filter_tax_product_cat_options', 'a:3:{i:21;a:1:{s:6:\"active\";i:1;}i:26;a:1:{s:6:\"active\";i:1;}i:22;a:1:{s:6:\"active\";i:1;}}', 'yes'),
(3989, 'premmerce_filter_tax_product_tag_options', 'a:10:{i:23;a:1:{s:6:\"active\";i:1;}i:28;a:1:{s:6:\"active\";i:1;}i:30;a:1:{s:6:\"active\";i:1;}i:29;a:1:{s:6:\"active\";i:1;}i:34;a:1:{s:6:\"active\";i:1;}i:33;a:1:{s:6:\"active\";i:1;}i:24;a:1:{s:6:\"active\";i:1;}i:27;a:1:{s:6:\"active\";i:1;}i:31;a:1:{s:6:\"active\";i:1;}i:32;a:1:{s:6:\"active\";i:1;}}', 'yes'),
(4089, 'woocommerce_version', '3.6.4', 'yes'),
(4090, 'woocommerce_db_version', '3.6.4', 'yes'),
(4193, 'recovery_mode_email_last_sent', '1559486725', 'yes'),
(4211, 'rw_widgets_options', 'a:6:{s:6:\"groups\";b:0;s:7:\"sidebar\";b:0;s:12:\"deactivation\";b:0;s:9:\"available\";a:0:{}s:9:\"selection\";a:0:{}s:8:\"sidebars\";a:0:{}}', 'no'),
(4234, 'widgetopts_global_all_pages', 'a:10:{i:0;O:8:\"stdClass\":3:{s:2:\"ID\";s:3:\"130\";s:10:\"post_title\";s:32:\"Доставка и оплата\";s:11:\"post_parent\";s:1:\"0\";}i:1;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"10\";s:10:\"post_title\";s:29:\"Каталог товаров\";s:11:\"post_parent\";s:1:\"0\";}i:2;O:8:\"stdClass\":3:{s:2:\"ID\";s:3:\"266\";s:10:\"post_title\";s:16:\"Контакты\";s:11:\"post_parent\";s:1:\"0\";}i:3;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"11\";s:10:\"post_title\";s:14:\"Корзина\";s:11:\"post_parent\";s:1:\"0\";}i:4;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"13\";s:10:\"post_title\";s:21:\"Мой аккаунт\";s:11:\"post_parent\";s:1:\"0\";}i:5;O:8:\"stdClass\":3:{s:2:\"ID\";s:1:\"2\";s:10:\"post_title\";s:9:\"О нас\";s:11:\"post_parent\";s:1:\"0\";}i:6;O:8:\"stdClass\":3:{s:2:\"ID\";s:2:\"12\";s:10:\"post_title\";s:33:\"Оформление заказа\";s:11:\"post_parent\";s:1:\"0\";}i:7;O:8:\"stdClass\":3:{s:2:\"ID\";s:1:\"3\";s:10:\"post_title\";s:53:\"Политика конфиденциальности\";s:11:\"post_parent\";s:1:\"0\";}i:8;O:8:\"stdClass\":3:{s:2:\"ID\";s:3:\"269\";s:10:\"post_title\";s:19:\"Прайс лист\";s:11:\"post_parent\";s:1:\"0\";}i:9;O:8:\"stdClass\":3:{s:2:\"ID\";s:3:\"128\";s:10:\"post_title\";s:12:\"Статьи\";s:11:\"post_parent\";s:1:\"0\";}}', 'yes'),
(4235, 'widgetopts_installDate', '2019-06-02 03:09:01', 'yes'),
(4236, 'widgetopts_tabmodule-visibility', 'activate', 'yes'),
(4237, 'widgetopts_tabmodule-devices', 'activate', 'yes'),
(4238, 'widgetopts_tabmodule-alignment', 'activate', 'yes'),
(4239, 'widgetopts_tabmodule-hide_title', 'activate', 'yes'),
(4240, 'widgetopts_tabmodule-classes', 'activate', 'yes'),
(4241, 'widgetopts_tabmodule-logic', 'activate', 'yes'),
(4242, 'widgetopts_tabmodule-state', 'activate', 'yes'),
(4243, 'widgetopts_tabmodule-settings', 's:158:\"a:2:{s:10:\"visibility\";a:3:{s:9:\"post_type\";s:1:\"1\";s:10:\"taxonomies\";s:1:\"1\";s:4:\"misc\";s:1:\"1\";}s:7:\"classes\";a:2:{s:2:\"id\";s:1:\"1\";s:4:\"type\";s:4:\"both\";}}\";', 'yes'),
(4244, '_widgetopts_default_registered_', '1', 'yes'),
(4245, 'widgetopts_removed_global_pages', '1', 'yes'),
(4246, 'widgetopts_settings', 'a:16:{s:8:\"settings\";a:2:{s:10:\"visibility\";a:3:{s:9:\"post_type\";s:1:\"1\";s:10:\"taxonomies\";s:1:\"1\";s:4:\"misc\";s:1:\"1\";}s:7:\"classes\";a:2:{s:2:\"id\";s:1:\"1\";s:4:\"type\";s:4:\"both\";}}s:10:\"visibility\";s:8:\"activate\";s:7:\"devices\";s:8:\"activate\";s:9:\"alignment\";s:8:\"activate\";s:10:\"hide_title\";s:8:\"activate\";s:7:\"classes\";s:8:\"activate\";s:5:\"logic\";s:8:\"activate\";s:10:\"siteorigin\";b:0;s:6:\"search\";b:0;s:4:\"move\";b:0;s:9:\"elementor\";b:0;s:11:\"widget_area\";b:0;s:13:\"import_export\";b:0;s:6:\"beaver\";b:0;s:3:\"acf\";b:0;s:5:\"state\";s:8:\"activate\";}', 'yes'),
(4247, 'widgetopts_global_taxonomies', 'a:5:{s:8:\"category\";O:11:\"WP_Taxonomy\":24:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:14:\"Рубрики\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:14:\"Рубрики\";s:13:\"singular_name\";s:14:\"Рубрика\";s:12:\"search_items\";s:23:\"Поиск рубрик\";s:13:\"popular_items\";N;s:9:\"all_items\";s:21:\"Все рубрики\";s:11:\"parent_item\";s:39:\"Родительская рубрика\";s:17:\"parent_item_colon\";s:40:\"Родительская рубрика:\";s:9:\"edit_item\";s:31:\"Изменить рубрику\";s:9:\"view_item\";s:37:\"Просмотреть рубрику\";s:11:\"update_item\";s:31:\"Обновить рубрику\";s:12:\"add_new_item\";s:42:\"Добавить новую рубрику\";s:13:\"new_item_name\";s:42:\"Название новой рубрики\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:33:\"Рубрик не найдено.\";s:8:\"no_terms\";s:19:\"Рубрик нет\";s:21:\"items_list_navigation\";s:49:\"Навигация по списку рубрик\";s:10:\"items_list\";s:25:\"Список рубрик\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:37:\"&larr; Назад к рубрикам\";s:9:\"menu_name\";s:14:\"Рубрики\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:20:\"meta_box_sanitize_cb\";s:40:\"taxonomy_meta_box_sanitize_cb_checkboxes\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"category\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:8:\"post_tag\";O:11:\"WP_Taxonomy\":24:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:10:\"Метки\";s:6:\"labels\";O:8:\"stdClass\":23:{s:4:\"name\";s:10:\"Метки\";s:13:\"singular_name\";s:10:\"Метка\";s:12:\"search_items\";s:21:\"Поиск меток\";s:13:\"popular_items\";s:31:\"Популярные метки\";s:9:\"all_items\";s:17:\"Все метки\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:27:\"Изменить метку\";s:9:\"view_item\";s:33:\"Просмотреть метку\";s:11:\"update_item\";s:27:\"Обновить метку\";s:12:\"add_new_item\";s:38:\"Добавить новую метку\";s:13:\"new_item_name\";s:38:\"Название новой метки\";s:26:\"separate_items_with_commas\";s:50:\"Метки разделяются запятыми\";s:19:\"add_or_remove_items\";s:49:\"Добавить или удалить метки\";s:21:\"choose_from_most_used\";s:66:\"Выбрать из часто используемых меток\";s:9:\"not_found\";s:31:\"Меток не найдено.\";s:8:\"no_terms\";s:17:\"Меток нет\";s:21:\"items_list_navigation\";s:47:\"Навигация по списку меток\";s:10:\"items_list\";s:23:\"Список меток\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:33:\"&larr; Назад к меткам\";s:9:\"menu_name\";s:10:\"Метки\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:20:\"meta_box_sanitize_cb\";s:35:\"taxonomy_meta_box_sanitize_cb_input\";s:11:\"object_type\";a:1:{i:0;s:4:\"post\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;}s:11:\"product_cat\";O:11:\"WP_Taxonomy\":24:{s:4:\"name\";s:11:\"product_cat\";s:5:\"label\";s:33:\"Категории товаров\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:33:\"Категории товаров\";s:13:\"singular_name\";s:18:\"Категория\";s:12:\"search_items\";s:36:\"Поиск по категориям\";s:13:\"popular_items\";N;s:9:\"all_items\";s:25:\"Все категории\";s:11:\"parent_item\";s:43:\"Родительская категория\";s:17:\"parent_item_colon\";s:44:\"Родительская категория:\";s:9:\"edit_item\";s:35:\"Изменить категорию\";s:9:\"view_item\";s:37:\"Просмотреть рубрику\";s:11:\"update_item\";s:35:\"Обновить категорию\";s:12:\"add_new_item\";s:46:\"Добавить новую категорию\";s:13:\"new_item_name\";s:46:\"Название новой категории\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:32:\"Рубрик не найдено\";s:8:\"no_terms\";s:19:\"Рубрик нет\";s:21:\"items_list_navigation\";s:49:\"Навигация по списку рубрик\";s:10:\"items_list\";s:25:\"Список рубрик\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:37:\"&larr; Назад к рубрикам\";s:9:\"menu_name\";s:18:\"Категории\";s:14:\"name_admin_bar\";s:18:\"Категория\";s:8:\"archives\";s:25:\"Все категории\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:20:\"meta_box_sanitize_cb\";s:40:\"taxonomy_meta_box_sanitize_cb_checkboxes\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:0;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:16:\"product-category\";}s:9:\"query_var\";s:11:\"product_cat\";s:21:\"update_count_callback\";s:16:\"_wc_term_recount\";s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;s:8:\"_builtin\";b:0;}s:11:\"product_tag\";O:11:\"WP_Taxonomy\":24:{s:4:\"name\";s:11:\"product_tag\";s:5:\"label\";s:25:\"Метки товаров\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:25:\"Метки товаров\";s:13:\"singular_name\";s:10:\"Метка\";s:12:\"search_items\";s:28:\"Поиск по меткам\";s:13:\"popular_items\";s:31:\"Популярные метки\";s:9:\"all_items\";s:17:\"Все метки\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:27:\"Изменить метку\";s:9:\"view_item\";s:33:\"Просмотреть метку\";s:11:\"update_item\";s:27:\"Обновить метку\";s:12:\"add_new_item\";s:38:\"Добавить новую метку\";s:13:\"new_item_name\";s:28:\"Имя новой метки\";s:26:\"separate_items_with_commas\";s:48:\"Разделяйте метки запятыми\";s:19:\"add_or_remove_items\";s:49:\"Добавить или удалить метки\";s:21:\"choose_from_most_used\";s:66:\"Выбрать из часто используемых меток\";s:9:\"not_found\";s:30:\"Метки не найдены\";s:8:\"no_terms\";s:17:\"Меток нет\";s:21:\"items_list_navigation\";s:47:\"Навигация по списку меток\";s:10:\"items_list\";s:23:\"Список меток\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:33:\"&larr; Назад к меткам\";s:9:\"menu_name\";s:10:\"Метки\";s:14:\"name_admin_bar\";s:10:\"Метка\";s:8:\"archives\";s:17:\"Все метки\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:20:\"meta_box_sanitize_cb\";s:35:\"taxonomy_meta_box_sanitize_cb_input\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:0;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:0;s:4:\"slug\";s:11:\"product-tag\";}s:9:\"query_var\";s:11:\"product_tag\";s:21:\"update_count_callback\";s:16:\"_wc_term_recount\";s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;s:8:\"_builtin\";b:0;}s:22:\"product_shipping_class\";O:11:\"WP_Taxonomy\":24:{s:4:\"name\";s:22:\"product_shipping_class\";s:5:\"label\";s:44:\"Классы доставки товаров\";s:6:\"labels\";O:8:\"stdClass\":24:{s:4:\"name\";s:44:\"Классы доставки товаров\";s:13:\"singular_name\";s:27:\"Класс доставки\";s:12:\"search_items\";s:47:\"Поиск по классам доставки\";s:13:\"popular_items\";s:31:\"Популярные метки\";s:9:\"all_items\";s:36:\"Все классы доставки\";s:11:\"parent_item\";s:52:\"Родительский класс доставки\";s:17:\"parent_item_colon\";s:53:\"Родительский класс доставки:\";s:9:\"edit_item\";s:44:\"Изменить класс доставки\";s:9:\"view_item\";s:33:\"Просмотреть метку\";s:11:\"update_item\";s:44:\"Обновить класс доставки\";s:12:\"add_new_item\";s:55:\"Добавить новый класс доставки\";s:13:\"new_item_name\";s:49:\"Имя нового класса доставки\";s:26:\"separate_items_with_commas\";s:50:\"Метки разделяются запятыми\";s:19:\"add_or_remove_items\";s:49:\"Добавить или удалить метки\";s:21:\"choose_from_most_used\";s:66:\"Выбрать из часто используемых меток\";s:9:\"not_found\";s:31:\"Меток не найдено.\";s:8:\"no_terms\";s:17:\"Меток нет\";s:21:\"items_list_navigation\";s:47:\"Навигация по списку меток\";s:10:\"items_list\";s:23:\"Список меток\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:33:\"&larr; Назад к меткам\";s:9:\"menu_name\";s:29:\"Классы доставки\";s:14:\"name_admin_bar\";s:27:\"Класс доставки\";s:8:\"archives\";s:36:\"Все классы доставки\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:0;s:12:\"show_in_menu\";b:0;s:17:\"show_in_nav_menus\";b:0;s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";b:0;s:17:\"show_admin_column\";b:0;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:20:\"meta_box_sanitize_cb\";s:35:\"taxonomy_meta_box_sanitize_cb_input\";s:11:\"object_type\";a:2:{i:0;s:7:\"product\";i:1;s:17:\"product_variation\";}s:3:\"cap\";O:8:\"stdClass\":4:{s:12:\"manage_terms\";s:20:\"manage_product_terms\";s:10:\"edit_terms\";s:18:\"edit_product_terms\";s:12:\"delete_terms\";s:20:\"delete_product_terms\";s:12:\"assign_terms\";s:20:\"assign_product_terms\";}s:7:\"rewrite\";b:0;s:9:\"query_var\";s:22:\"product_shipping_class\";s:21:\"update_count_callback\";s:23:\"_update_post_term_count\";s:12:\"show_in_rest\";b:0;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;s:8:\"_builtin\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4248, 'widgetopts_global_types', 'a:4:{s:4:\"post\";O:12:\"WP_Post_Type\":29:{s:4:\"name\";s:4:\"post\";s:5:\"label\";s:12:\"Записи\";s:6:\"labels\";O:8:\"stdClass\":31:{s:4:\"name\";s:12:\"Записи\";s:13:\"singular_name\";s:12:\"Запись\";s:7:\"add_new\";s:27:\"Добавить новую\";s:12:\"add_new_item\";s:29:\"Добавить запись\";s:9:\"edit_item\";s:39:\"Редактировать запись\";s:8:\"new_item\";s:23:\"Новая запись\";s:9:\"view_item\";s:35:\"Просмотреть запись\";s:10:\"view_items\";s:31:\"Просмотр записей\";s:12:\"search_items\";s:25:\"Поиск записей\";s:9:\"not_found\";s:35:\"Записей не найдено.\";s:18:\"not_found_in_trash\";s:53:\"Записей в корзине не найдено.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:19:\"Все записи\";s:8:\"archives\";s:27:\"Архивы записей\";s:10:\"attributes\";s:29:\"Свойства записи\";s:16:\"insert_into_item\";s:32:\"Вставить в запись\";s:21:\"uploaded_to_this_item\";s:51:\"Загруженные для этой записи\";s:14:\"featured_image\";s:35:\"Изображение записи\";s:18:\"set_featured_image\";s:56:\"Установить изображение записи\";s:21:\"remove_featured_image\";s:50:\"Удалить изображение записи\";s:18:\"use_featured_image\";s:67:\"Использовать как изображение записи\";s:17:\"filter_items_list\";s:50:\"Фильтровать список записей\";s:21:\"items_list_navigation\";s:51:\"Навигация по списку записей\";s:10:\"items_list\";s:27:\"Список записей\";s:14:\"item_published\";s:38:\"Запись опубликована.\";s:24:\"item_published_privately\";s:58:\"Запись опубликована как личная.\";s:22:\"item_reverted_to_draft\";s:56:\"Запись возвращена в черновики.\";s:14:\"item_scheduled\";s:64:\"Запись запланирована к публикации.\";s:12:\"item_updated\";s:32:\"Запись обновлена.\";s:9:\"menu_name\";s:12:\"Записи\";s:14:\"name_admin_bar\";s:12:\"Запись\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:5;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:10:\"edit_posts\";}s:7:\"rewrite\";b:0;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"posts\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";}s:4:\"page\";O:12:\"WP_Post_Type\":29:{s:4:\"name\";s:4:\"page\";s:5:\"label\";s:16:\"Страницы\";s:6:\"labels\";O:8:\"stdClass\":31:{s:4:\"name\";s:16:\"Страницы\";s:13:\"singular_name\";s:16:\"Страница\";s:7:\"add_new\";s:27:\"Добавить новую\";s:12:\"add_new_item\";s:33:\"Добавить страницу\";s:9:\"edit_item\";s:43:\"Редактировать страницу\";s:8:\"new_item\";s:27:\"Новая страница\";s:9:\"view_item\";s:39:\"Просмотреть страницу\";s:10:\"view_items\";s:31:\"Просмотр страниц\";s:12:\"search_items\";s:25:\"Поиск страниц\";s:9:\"not_found\";s:35:\"Страниц не найдено.\";s:18:\"not_found_in_trash\";s:53:\"Страниц в корзине не найдено.\";s:17:\"parent_item_colon\";s:42:\"Родительская страница:\";s:9:\"all_items\";s:23:\"Все страницы\";s:8:\"archives\";s:27:\"Архивы страниц\";s:10:\"attributes\";s:33:\"Атрибуты страницы\";s:16:\"insert_into_item\";s:36:\"Вставить в страницу\";s:21:\"uploaded_to_this_item\";s:55:\"Загруженные для этой страницы\";s:14:\"featured_image\";s:39:\"Изображение страницы\";s:18:\"set_featured_image\";s:60:\"Установить изображение страницы\";s:21:\"remove_featured_image\";s:54:\"Удалить изображение страницы\";s:18:\"use_featured_image\";s:71:\"Использовать как изображение страницы\";s:17:\"filter_items_list\";s:50:\"Фильтровать список страниц\";s:21:\"items_list_navigation\";s:51:\"Навигация по списку страниц\";s:10:\"items_list\";s:27:\"Список страниц\";s:14:\"item_published\";s:42:\"Страница опубликована.\";s:24:\"item_published_privately\";s:62:\"Страница опубликована как личная.\";s:22:\"item_reverted_to_draft\";s:60:\"Страница возвращена в черновики.\";s:14:\"item_scheduled\";s:68:\"Страница запланирована к публикации.\";s:12:\"item_updated\";s:36:\"Страница обновлена.\";s:9:\"menu_name\";s:16:\"Страницы\";s:14:\"name_admin_bar\";s:16:\"Страницу\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";i:20;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"page\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_page\";s:9:\"read_post\";s:9:\"read_page\";s:11:\"delete_post\";s:11:\"delete_page\";s:10:\"edit_posts\";s:10:\"edit_pages\";s:17:\"edit_others_posts\";s:17:\"edit_others_pages\";s:13:\"publish_posts\";s:13:\"publish_pages\";s:18:\"read_private_posts\";s:18:\"read_private_pages\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_pages\";s:20:\"delete_private_posts\";s:20:\"delete_private_pages\";s:22:\"delete_published_posts\";s:22:\"delete_published_pages\";s:19:\"delete_others_posts\";s:19:\"delete_others_pages\";s:18:\"edit_private_posts\";s:18:\"edit_private_pages\";s:20:\"edit_published_posts\";s:20:\"edit_published_pages\";s:12:\"create_posts\";s:10:\"edit_pages\";}s:7:\"rewrite\";b:0;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"pages\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";}s:10:\"attachment\";O:12:\"WP_Post_Type\":29:{s:4:\"name\";s:10:\"attachment\";s:5:\"label\";s:20:\"Медиафайлы\";s:6:\"labels\";O:8:\"stdClass\":31:{s:4:\"name\";s:20:\"Медиафайлы\";s:13:\"singular_name\";s:20:\"Медиафайлы\";s:7:\"add_new\";s:27:\"Добавить новый\";s:12:\"add_new_item\";s:29:\"Добавить запись\";s:9:\"edit_item\";s:35:\"Изменить медиафайл\";s:8:\"new_item\";s:23:\"Новая запись\";s:9:\"view_item\";s:56:\"Просмотреть страницу вложения\";s:10:\"view_items\";s:31:\"Просмотр записей\";s:12:\"search_items\";s:25:\"Поиск записей\";s:9:\"not_found\";s:35:\"Записей не найдено.\";s:18:\"not_found_in_trash\";s:53:\"Записей в корзине не найдено.\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:20:\"Медиафайлы\";s:8:\"archives\";s:20:\"Медиафайлы\";s:10:\"attributes\";s:33:\"Свойства вложения\";s:16:\"insert_into_item\";s:32:\"Вставить в запись\";s:21:\"uploaded_to_this_item\";s:51:\"Загруженные для этой записи\";s:14:\"featured_image\";s:35:\"Изображение записи\";s:18:\"set_featured_image\";s:56:\"Установить изображение записи\";s:21:\"remove_featured_image\";s:50:\"Удалить изображение записи\";s:18:\"use_featured_image\";s:67:\"Использовать как изображение записи\";s:17:\"filter_items_list\";s:50:\"Фильтровать список записей\";s:21:\"items_list_navigation\";s:51:\"Навигация по списку записей\";s:10:\"items_list\";s:27:\"Список записей\";s:14:\"item_published\";s:38:\"Запись опубликована.\";s:24:\"item_published_privately\";s:58:\"Запись опубликована как личная.\";s:22:\"item_reverted_to_draft\";s:56:\"Запись возвращена в черновики.\";s:14:\"item_scheduled\";s:64:\"Запись запланирована к публикации.\";s:12:\"item_updated\";s:32:\"Запись обновлена.\";s:9:\"menu_name\";s:20:\"Медиафайлы\";s:14:\"name_admin_bar\";s:18:\"Медиафайл\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:0;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";N;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:4:\"post\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";b:0;s:9:\"query_var\";b:0;s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:1;s:8:\"_builtin\";b:1;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:9:\"edit_post\";s:9:\"read_post\";s:9:\"read_post\";s:11:\"delete_post\";s:11:\"delete_post\";s:10:\"edit_posts\";s:10:\"edit_posts\";s:17:\"edit_others_posts\";s:17:\"edit_others_posts\";s:13:\"publish_posts\";s:13:\"publish_posts\";s:18:\"read_private_posts\";s:18:\"read_private_posts\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:12:\"delete_posts\";s:20:\"delete_private_posts\";s:20:\"delete_private_posts\";s:22:\"delete_published_posts\";s:22:\"delete_published_posts\";s:19:\"delete_others_posts\";s:19:\"delete_others_posts\";s:18:\"edit_private_posts\";s:18:\"edit_private_posts\";s:20:\"edit_published_posts\";s:20:\"edit_published_posts\";s:12:\"create_posts\";s:12:\"upload_files\";}s:7:\"rewrite\";b:0;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:5:\"media\";s:21:\"rest_controller_class\";s:30:\"WP_REST_Attachments_Controller\";}s:7:\"product\";O:12:\"WP_Post_Type\":29:{s:4:\"name\";s:7:\"product\";s:5:\"label\";s:12:\"Товары\";s:6:\"labels\";O:8:\"stdClass\":33:{s:4:\"name\";s:12:\"Товары\";s:13:\"singular_name\";s:10:\"Товар\";s:7:\"add_new\";s:27:\"Добавить новый\";s:12:\"add_new_item\";s:38:\"Добавить новый товар\";s:9:\"edit_item\";s:27:\"Изменить товар\";s:8:\"new_item\";s:21:\"Новый товар\";s:9:\"view_item\";s:33:\"Просмотреть товар\";s:10:\"view_items\";s:29:\"Просмотр товара\";s:12:\"search_items\";s:30:\"Поиск по товарам\";s:9:\"not_found\";s:40:\"Товаров не обнаружено\";s:18:\"not_found_in_trash\";s:43:\"В удаленных нет товаров\";s:17:\"parent_item_colon\";N;s:9:\"all_items\";s:19:\"Все товары\";s:8:\"archives\";s:19:\"Все товары\";s:10:\"attributes\";s:29:\"Свойства записи\";s:16:\"insert_into_item\";s:30:\"Вставьте в товар\";s:21:\"uploaded_to_this_item\";s:32:\"Загружено в товар\";s:14:\"featured_image\";s:35:\"Изображение товара\";s:18:\"set_featured_image\";s:48:\"Задать изображение товара\";s:21:\"remove_featured_image\";s:50:\"Удалить изображение товара\";s:18:\"use_featured_image\";s:80:\"Использовать в качестве изображения товара\";s:17:\"filter_items_list\";s:35:\"Фильтровать товары\";s:21:\"items_list_navigation\";s:38:\"Навигация по товарам\";s:10:\"items_list\";s:27:\"Список товаров\";s:14:\"item_published\";s:38:\"Запись опубликована.\";s:24:\"item_published_privately\";s:58:\"Запись опубликована как личная.\";s:22:\"item_reverted_to_draft\";s:56:\"Запись возвращена в черновики.\";s:14:\"item_scheduled\";s:64:\"Запись запланирована к публикации.\";s:12:\"item_updated\";s:32:\"Запись обновлена.\";s:9:\"menu_name\";s:12:\"Товары\";s:4:\"edit\";s:17:\" Изменить\";s:6:\"parent\";s:35:\"Родительский товар\";s:14:\"name_admin_bar\";s:10:\"Товар\";}s:11:\"description\";s:97:\"Здесь вы можете добавлять новые товары в ваш магазин.\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:17:\"show_in_admin_bar\";b:1;s:13:\"menu_position\";N;s:9:\"menu_icon\";N;s:15:\"capability_type\";s:7:\"product\";s:12:\"map_meta_cap\";b:1;s:20:\"register_meta_box_cb\";N;s:10:\"taxonomies\";a:0:{}s:11:\"has_archive\";s:4:\"shop\";s:9:\"query_var\";s:7:\"product\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";N;s:8:\"_builtin\";b:0;s:10:\"_edit_link\";s:16:\"post.php?post=%d\";s:3:\"cap\";O:8:\"stdClass\":15:{s:9:\"edit_post\";s:12:\"edit_product\";s:9:\"read_post\";s:12:\"read_product\";s:11:\"delete_post\";s:14:\"delete_product\";s:10:\"edit_posts\";s:13:\"edit_products\";s:17:\"edit_others_posts\";s:20:\"edit_others_products\";s:13:\"publish_posts\";s:16:\"publish_products\";s:18:\"read_private_posts\";s:21:\"read_private_products\";s:4:\"read\";s:4:\"read\";s:12:\"delete_posts\";s:15:\"delete_products\";s:20:\"delete_private_posts\";s:23:\"delete_private_products\";s:22:\"delete_published_posts\";s:25:\"delete_published_products\";s:19:\"delete_others_posts\";s:22:\"delete_others_products\";s:18:\"edit_private_posts\";s:21:\"edit_private_products\";s:20:\"edit_published_posts\";s:23:\"edit_published_products\";s:12:\"create_posts\";s:13:\"edit_products\";}s:7:\"rewrite\";a:5:{s:4:\"slug\";s:7:\"product\";s:10:\"with_front\";b:0;s:5:\"feeds\";b:1;s:5:\"pages\";b:1;s:7:\"ep_mask\";i:1;}s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";b:0;s:21:\"rest_controller_class\";b:0;}}', 'yes'),
(4249, 'widgetopts_global_categories', 'a:1:{i:0;O:7:\"WP_Term\":16:{s:7:\"term_id\";i:1;s:4:\"name\";s:21:\"Без рубрики\";s:4:\"slug\";s:61:\"%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:1;s:8:\"taxonomy\";s:8:\"category\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:1;s:6:\"filter\";s:3:\"raw\";s:6:\"cat_ID\";i:1;s:14:\"category_count\";i:1;s:20:\"category_description\";s:0:\"\";s:8:\"cat_name\";s:21:\"Без рубрики\";s:17:\"category_nicename\";s:61:\"%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8\";s:15:\"category_parent\";i:0;}}', 'yes'),
(4282, 'premmerce_filter_db_version', '3.2.3', 'yes'),
(4283, 'premmerce_filter_settings', 'a:11:{s:11:\"product_cat\";s:2:\"on\";s:3:\"tag\";s:2:\"on\";s:13:\"product_brand\";s:2:\"on\";s:6:\"search\";s:2:\"on\";s:4:\"shop\";s:2:\"on\";s:9:\"attribute\";s:2:\"on\";s:10:\"taxonomies\";a:2:{i:0;s:11:\"product_cat\";i:1;s:11:\"product_tag\";}s:13:\"load_deferred\";s:2:\"on\";s:8:\"use_ajax\";s:2:\"on\";s:13:\"ajax_strategy\";s:19:\"woocommerce_content\";s:5:\"style\";s:7:\"default\";}', 'yes'),
(4309, 'premmerce_filter_attributes', 'a:10:{s:11:\"product_cat\";a:3:{s:6:\"active\";i:0;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}s:11:\"product_tag\";a:3:{s:6:\"active\";i:0;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:11;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:10;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:16;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:15;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:13;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:12;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:14;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}i:17;a:3:{s:6:\"active\";i:1;s:4:\"type\";s:8:\"checkbox\";s:12:\"display_type\";s:0:\"\";}}', 'yes'),
(4786, 'woocommerce_tracker_ua', 'a:2:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";i:1;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";}', 'yes'),
(4936, 'woocommerce_free_shipping_2_settings', 'a:3:{s:5:\"title\";s:37:\"Бесплатная доставка\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:4:\"3000\";}', 'yes'),
(5295, 'wbcr_cyrlitera_cache_options', 'a:9:{s:25:\"factory_dismissed_notices\";b:0;s:19:\"use_transliteration\";i:1;s:28:\"use_transliteration_filename\";i:1;s:21:\"filename_to_lowercase\";i:1;s:43:\"factory_400_plugin_activated_wbcr_cyrlitera\";i:1560352472;s:25:\"use_force_transliteration\";b:0;s:19:\"custom_symbols_pack\";b:0;s:36:\"dont_use_transliteration_on_frontend\";b:0;s:22:\"redirect_from_old_urls\";b:0;}', 'yes'),
(5296, 'wbcr_cyrlitera_use_transliteration', '1', 'yes'),
(5297, 'wbcr_cyrlitera_use_transliteration_filename', '1', 'yes'),
(5298, 'wbcr_cyrlitera_filename_to_lowercase', '1', 'yes'),
(5299, 'wbcr_cyrlitera_factory_400_plugin_activated_wbcr_cyrlitera', '1560352472', 'yes'),
(5300, 'factory_plugin_versions', 'a:1:{s:14:\"wbcr_cyrlitera\";s:10:\"free-1.0.5\";}', 'yes'),
(5324, 'product_cat_children', 'a:0:{}', 'yes'),
(5542, '_transient_wc_attribute_taxonomies', 'a:8:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"16\";s:14:\"attribute_name\";s:5:\"forma\";s:15:\"attribute_label\";s:10:\"Форма\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"15\";s:14:\"attribute_name\";s:14:\"mesto-montazha\";s:15:\"attribute_label\";s:25:\"Место монтажа\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"13\";s:14:\"attribute_name\";s:12:\"moshhnost-vt\";s:15:\"attribute_label\";s:22:\"Мощность, Вт\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"11\";s:14:\"attribute_name\";s:8:\"obemov-l\";s:15:\"attribute_label\";s:18:\"Объемов, л\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:4;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"10\";s:14:\"attribute_name\";s:12:\"proizvoditel\";s:15:\"attribute_label\";s:26:\"Производитель\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:5;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"12\";s:14:\"attribute_name\";s:9:\"tip-tjena\";s:15:\"attribute_label\";s:15:\"Тип ТЭНа\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:6;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"14\";s:14:\"attribute_name\";s:15:\"tip-upravlenija\";s:15:\"attribute_label\";s:27:\"Тип управления\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:7;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"17\";s:14:\"attribute_name\";s:9:\"ustanovka\";s:15:\"attribute_label\";s:18:\"Установка\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(5882, 'woocommerce_new_order_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:9:\"recipient\";s:19:\"vlasjaro3@gmail.com\";s:7:\"subject\";s:0:\"\";s:7:\"heading\";s:0:\"\";s:10:\"email_type\";s:4:\"html\";}', 'yes'),
(6073, 'woocommerce_saphali_filds', 'a:3:{s:5:\"order\";a:1:{s:14:\"order_comments\";a:6:{s:5:\"label\";s:36:\"Примечание к заказу\";s:11:\"placeholder\";s:131:\"Примечания к вашему заказу, например, особые пожелания отделу доставки.\";s:5:\"class\";a:1:{i:0;s:5:\"notes\";}s:4:\"type\";s:8:\"textarea\";s:6:\"public\";b:1;s:5:\"order\";s:1:\"0\";}}s:8:\"shipping\";a:6:{s:19:\"shipping_first_name\";a:8:{s:5:\"label\";s:6:\"Имя\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"0\";}s:18:\"shipping_last_name\";a:8:{s:5:\"label\";s:14:\"Фамилия\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"1\";}s:16:\"shipping_country\";a:9:{s:5:\"label\";s:12:\"Страна\";s:4:\"type\";s:7:\"country\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"2\";}s:18:\"shipping_address_1\";a:8:{s:5:\"label\";s:10:\"Адрес\";s:11:\"placeholder\";s:50:\"Номер дома и название улицы\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"3\";}s:13:\"shipping_city\";a:8:{s:5:\"label\";s:31:\"Населённый пункт\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"4\";}s:14:\"shipping_state\";a:9:{s:5:\"label\";s:27:\"Область/регион\";s:4:\"type\";s:5:\"state\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"5\";}}s:7:\"billing\";a:8:{s:18:\"billing_first_name\";a:8:{s:5:\"label\";s:6:\"Имя\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"0\";}s:17:\"billing_last_name\";a:8:{s:5:\"label\";s:14:\"Фамилия\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"1\";}s:15:\"billing_country\";a:9:{s:5:\"label\";s:12:\"Страна\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:4:\"type\";s:7:\"country\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"2\";}s:13:\"billing_state\";a:9:{s:5:\"label\";s:27:\"Область/регион\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:4:\"type\";s:5:\"state\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"3\";}s:12:\"billing_city\";a:8:{s:5:\"label\";s:31:\"Населённый пункт\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"4\";}s:17:\"billing_address_1\";a:8:{s:5:\"label\";s:10:\"Адрес\";s:11:\"placeholder\";s:50:\"Номер дома и название улицы\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"5\";}s:13:\"billing_phone\";a:9:{s:5:\"label\";s:14:\"Телефон\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:4:\"type\";s:3:\"tel\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"6\";}s:13:\"billing_email\";a:8:{s:5:\"label\";s:5:\"Email\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:4:\"type\";s:5:\"email\";s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"7\";}}}', 'yes'),
(6074, 'woocommerce_saphali_filds_filters', 'a:3:{s:5:\"order\";a:1:{s:14:\"order_comments\";a:6:{s:5:\"label\";s:36:\"Примечание к заказу\";s:11:\"placeholder\";s:131:\"Примечания к вашему заказу, например, особые пожелания отделу доставки.\";s:5:\"class\";a:1:{i:0;s:5:\"notes\";}s:4:\"type\";s:8:\"textarea\";s:6:\"public\";b:1;s:5:\"order\";s:1:\"0\";}}s:8:\"shipping\";a:6:{s:19:\"shipping_first_name\";a:8:{s:5:\"label\";s:6:\"Имя\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"0\";}s:18:\"shipping_last_name\";a:8:{s:5:\"label\";s:14:\"Фамилия\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"1\";}s:16:\"shipping_country\";a:9:{s:5:\"label\";s:12:\"Страна\";s:4:\"type\";s:7:\"country\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"2\";}s:18:\"shipping_address_1\";a:8:{s:5:\"label\";s:10:\"Адрес\";s:11:\"placeholder\";s:50:\"Номер дома и название улицы\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"3\";}s:13:\"shipping_city\";a:8:{s:5:\"label\";s:31:\"Населённый пункт\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"4\";}s:14:\"shipping_state\";a:9:{s:5:\"label\";s:27:\"Область/регион\";s:4:\"type\";s:5:\"state\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"5\";}}s:7:\"billing\";a:8:{s:18:\"billing_first_name\";a:8:{s:5:\"label\";s:6:\"Имя\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"0\";}s:17:\"billing_last_name\";a:8:{s:5:\"label\";s:14:\"Фамилия\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"1\";}s:15:\"billing_country\";a:9:{s:5:\"label\";s:12:\"Страна\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:4:\"type\";s:7:\"country\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"2\";}s:13:\"billing_state\";a:9:{s:5:\"label\";s:27:\"Область/регион\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:4:\"type\";s:5:\"state\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"3\";}s:12:\"billing_city\";a:8:{s:5:\"label\";s:31:\"Населённый пункт\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"4\";}s:17:\"billing_address_1\";a:8:{s:5:\"label\";s:10:\"Адрес\";s:11:\"placeholder\";s:50:\"Номер дома и название улицы\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"5\";}s:13:\"billing_phone\";a:9:{s:5:\"label\";s:14:\"Телефон\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:4:\"type\";s:3:\"tel\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"6\";}s:13:\"billing_email\";a:8:{s:5:\"label\";s:5:\"Email\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:4:\"type\";s:5:\"email\";s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"7\";}}}', 'yes'),
(6075, 'woocommerce_saphali_filds_locate', 'a:6:{s:10:\"first_name\";a:8:{s:5:\"label\";s:6:\"Имя\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"0\";}s:9:\"last_name\";a:8:{s:5:\"label\";s:14:\"Фамилия\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"1\";}s:7:\"country\";a:9:{s:5:\"label\";s:12:\"Страна\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:4:\"type\";s:7:\"country\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"2\";}s:5:\"state\";a:9:{s:5:\"label\";s:27:\"Область/регион\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:4:\"type\";s:5:\"state\";s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"3\";}s:4:\"city\";a:8:{s:5:\"label\";s:31:\"Населённый пункт\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"4\";}s:9:\"address_1\";a:8:{s:5:\"label\";s:10:\"Адрес\";s:11:\"placeholder\";s:50:\"Номер дома и название улицы\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-wide\";i:1;s:13:\"address-field\";}s:8:\"required\";b:1;s:6:\"public\";b:1;s:14:\"payment_method\";a:1:{i:0;s:1:\"0\";}s:15:\"shipping_method\";a:1:{i:0;s:1:\"0\";}s:5:\"order\";s:1:\"5\";}}', 'yes'),
(6506, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"vlasjaro3@gmail.com\";s:7:\"version\";s:5:\"5.2.2\";s:9:\"timestamp\";i:1561202061;}', 'no'),
(6634, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:5;s:3:\"all\";i:5;s:8:\"approved\";s:1:\"5\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(6635, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"5\";s:14:\"total_comments\";i:5;s:3:\"all\";i:5;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(6648, '_transient_timeout_wc_low_stock_count', '1567868920', 'no'),
(6649, '_transient_wc_low_stock_count', '0', 'no'),
(6650, '_transient_timeout_wc_outofstock_count', '1567868920', 'no'),
(6651, '_transient_wc_outofstock_count', '0', 'no'),
(6701, '_transient_timeout_wc_featured_products', '1568134636', 'no'),
(6702, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(6703, '_transient_timeout_wc_products_onsale', '1568134636', 'no'),
(6704, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(6705, '_transient_timeout_wc_product_loop_6147550c3f3af9236789687d89ed040c', '1568719543', 'no'),
(6706, '_transient_wc_product_loop_6147550c3f3af9236789687d89ed040c', 'a:2:{s:7:\"version\";s:10:\"1566127415\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:455;i:1;i:453;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(6707, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1568719543', 'no'),
(6708, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:\"version\";s:10:\"1566127415\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:408;i:1;i:353;i:2;i:357;i:3;i:363;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(6719, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1566824382;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(6747, '_transient_is_multi_author', '0', 'yes'),
(6749, '_transient_timeout_wc_shipping_method_count_legacy', '1568719564', 'no'),
(6750, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1560702768\";s:5:\"value\";i:2;}', 'no'),
(6753, '_transient_timeout_jetpack_idc_allowed', '1566827976', 'no'),
(6754, '_transient_jetpack_idc_allowed', '1', 'no'),
(6757, '_site_transient_timeout_theme_roots', '1566826180', 'no'),
(6758, '_site_transient_theme_roots', 'a:4:{s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(6760, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566824385;s:7:\"checked\";a:4:{s:10:\"storefront\";s:5:\"2.5.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:1:{s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.5.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(6761, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566824385;s:8:\"response\";a:5:{s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"7.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.7.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:50:\"w.org/plugins/premmerce-woocommerce-product-filter\";s:4:\"slug\";s:36:\"premmerce-woocommerce-product-filter\";s:6:\"plugin\";s:57:\"premmerce-woocommerce-product-filter/premmerce-filter.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:67:\"https://wordpress.org/plugins/premmerce-woocommerce-product-filter/\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/plugin/premmerce-woocommerce-product-filter.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/premmerce-woocommerce-product-filter/assets/icon-256x256.png?rev=1840683\";s:2:\"1x\";s:89:\"https://ps.w.org/premmerce-woocommerce-product-filter/assets/icon-128x128.png?rev=1840683\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:92:\"https://ps.w.org/premmerce-woocommerce-product-filter/assets/banner-1544x500.png?rev=2074643\";s:2:\"1x\";s:91:\"https://ps.w.org/premmerce-woocommerce-product-filter/assets/banner-772x250.png?rev=2074643\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"cyrlitera/cyrlitera.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/cyrlitera\";s:4:\"slug\";s:9:\"cyrlitera\";s:6:\"plugin\";s:23:\"cyrlitera/cyrlitera.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/cyrlitera/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/cyrlitera.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/cyrlitera/assets/icon-256x256.png?rev=1844189\";s:2:\"1x\";s:62:\"https://ps.w.org/cyrlitera/assets/icon-128x128.png?rev=1844189\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/cyrlitera/assets/banner-1544x500.jpg?rev=1844250\";s:2:\"1x\";s:64:\"https://ps.w.org/cyrlitera/assets/banner-772x250.jpg?rev=1844250\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:60:\"w.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs\";s:4:\"slug\";s:46:\"yikes-inc-easy-custom-woocommerce-product-tabs\";s:6:\"plugin\";s:97:\"yikes-inc-easy-custom-woocommerce-product-tabs/yikes-inc-easy-custom-woocommerce-product-tabs.php\";s:11:\"new_version\";s:6:\"1.6.10\";s:3:\"url\";s:77:\"https://wordpress.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/yikes-inc-easy-custom-woocommerce-product-tabs.1.6.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-256x256.png?rev=1558461\";s:2:\"1x\";s:99:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/icon-128x128.png?rev=1558461\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:102:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-1544x500.png?rev=1558461\";s:2:\"1x\";s:101:\"https://ps.w.org/yikes-inc-easy-custom-woocommerce-product-tabs/assets/banner-772x250.png?rev=1558478\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"restrict-widgets/restrict-widgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/restrict-widgets\";s:4:\"slug\";s:16:\"restrict-widgets\";s:6:\"plugin\";s:37:\"restrict-widgets/restrict-widgets.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/restrict-widgets/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/restrict-widgets.1.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/restrict-widgets/assets/icon-256x256.png?rev=1018448\";s:2:\"1x\";s:69:\"https://ps.w.org/restrict-widgets/assets/icon-128x128.png?rev=1018448\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/restrict-widgets/assets/banner-772x250.png?rev=693222\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"saphali-woocommerce-lite/saphali-woocommerce-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/saphali-woocommerce-lite\";s:4:\"slug\";s:24:\"saphali-woocommerce-lite\";s:6:\"plugin\";s:53:\"saphali-woocommerce-lite/saphali-woocommerce-lite.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/saphali-woocommerce-lite/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/saphali-woocommerce-lite.1.8.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://s.w.org/plugins/geopattern-icon/saphali-woocommerce-lite_aeb3e5.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/saphali-woocommerce-lite/assets/banner-772x250.png?rev=616091\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"tablepress/tablepress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/tablepress\";s:4:\"slug\";s:10:\"tablepress\";s:6:\"plugin\";s:25:\"tablepress/tablepress.php\";s:11:\"new_version\";s:5:\"1.9.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/tablepress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/tablepress.1.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/tablepress/assets/icon-256x256.png?rev=1064192\";s:2:\"1x\";s:63:\"https://ps.w.org/tablepress/assets/icon-128x128.png?rev=1064192\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/tablepress/assets/banner-1544x500.png?rev=1275767\";s:2:\"1x\";s:65:\"https://ps.w.org/tablepress/assets/banner-772x250.png?rev=1275767\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/tablepress/assets/banner-1544x500-rtl.png?rev=1275767\";s:2:\"1x\";s:69:\"https://ps.w.org/tablepress/assets/banner-772x250-rtl.png?rev=1275767\";}}s:25:\"widget-options/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/widget-options\";s:4:\"slug\";s:14:\"widget-options\";s:6:\"plugin\";s:25:\"widget-options/plugin.php\";s:11:\"new_version\";s:5:\"3.7.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/widget-options/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/widget-options.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/widget-options/assets/icon-256x256.png?rev=1923981\";s:2:\"1x\";s:67:\"https://ps.w.org/widget-options/assets/icon-128x128.png?rev=1923981\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/widget-options/assets/banner-1544x500.png?rev=1923981\";s:2:\"1x\";s:69:\"https://ps.w.org/widget-options/assets/banner-772x250.png?rev=1923981\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(6762, '_transient_doing_cron', '1569762098.9553799629211425781250', 'yes'),
(6763, '_transient_timeout_wc_term_counts', '1572354101', 'no'),
(6764, '_transient_wc_term_counts', 'a:3:{i:21;s:2:\"23\";i:26;s:1:\"2\";i:22;s:1:\"2\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', ''),
(2, 3, '_wp_page_template', 'default'),
(13, 11, '_wp_page_template', 'template-fullwidth.php'),
(14, 12, '_wp_page_template', 'template-fullwidth.php'),
(15, 13, '_wp_page_template', 'template-fullwidth.php'),
(16, 10, '_wp_page_template', 'default'),
(451, 83, '_wp_attached_file', '2019/05/cropped-images-e1558786131597.png'),
(452, 83, '_wp_attachment_context', 'custom-logo'),
(453, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:41:\"2019/05/cropped-images-e1558786131597.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-images-e1558786131597-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-images-e1558786131597-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-images-e1558786131597-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(456, 84, '_wp_attached_file', '2019/05/cropped-images-e1558786131597-1.png'),
(457, 84, '_wp_attachment_context', 'custom-logo'),
(458, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:43:\"2019/05/cropped-images-e1558786131597-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 85, '_wp_attached_file', '2019/05/cropped-images-e1558786131597-2.png'),
(460, 85, '_wp_attachment_context', 'custom-logo'),
(461, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:43:\"2019/05/cropped-images-e1558786131597-2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-images-e1558786131597-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(496, 97, '_wp_attached_file', '2019/05/4014703-driver-mobile-phone-repair-screw-service-wrench_112878.png'),
(497, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:74:\"2019/05/4014703-driver-mobile-phone-repair-screw-service-wrench_112878.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:74:\"4014703-driver-mobile-phone-repair-screw-service-wrench_112878-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(498, 98, '_wp_attached_file', '2019/05/cropped-13964594944341.png'),
(499, 98, '_wp_attachment_context', 'site-icon'),
(500, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2019/05/cropped-13964594944341.png\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"cropped-13964594944341-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:34:\"cropped-13964594944341-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:32:\"cropped-13964594944341-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 100, '_wp_attached_file', '2019/05/brickwall.png'),
(503, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:69;s:4:\"file\";s:21:\"2019/05/brickwall.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"brickwall-100x69.png\";s:5:\"width\";i:100;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"brickwall-100x69.png\";s:5:\"width\";i:100;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(504, 100, '_wp_attachment_custom_header_last_used_storefront', '1558793898'),
(505, 100, '_wp_attachment_is_custom_header', 'storefront'),
(517, 104, '_wp_attached_file', '2019/05/logo-1.png'),
(518, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1012;s:4:\"file\";s:18:\"2019/05/logo-1.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x777.png\";s:5:\"width\";i:768;s:6:\"height\";i:777;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-416x421.png\";s:5:\"width\";i:416;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"logo-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-416x421.png\";s:5:\"width\";i:416;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(519, 104, '_edit_lock', '1558794147:1'),
(525, 106, '_wp_attached_file', '2019/05/logo-e1558794629949.png'),
(526, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:152;s:4:\"file\";s:31:\"2019/05/logo-e1558794629949.png\";s:5:\"sizes\";a:9:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-e1558794629949-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"logo-768x777.png\";s:5:\"width\";i:768;s:6:\"height\";i:777;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"logo-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"logo-416x421.png\";s:5:\"width\";i:416;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"logo-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"logo-416x421.png\";s:5:\"width\";i:416;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-e1558794629949-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(527, 106, '_edit_lock', '1558794493:1'),
(528, 106, '_wp_attachment_backup_sizes', 'a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1000;s:6:\"height\";i:1012;s:4:\"file\";s:8:\"logo.png\";}s:18:\"full-1558794629949\";a:3:{s:5:\"width\";i:250;s:6:\"height\";i:253;s:4:\"file\";s:23:\"logo-e1558794555487.png\";}}'),
(529, 106, '_wp_attachment_image_alt', 'Логотип'),
(530, 106, '_edit_last', '1'),
(590, 120, '_wp_attached_file', '2019/05/cropped-logo-1.png'),
(591, 120, '_wp_attachment_context', 'site-icon'),
(592, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2019/05/cropped-logo-1.png\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(596, 2, '_edit_lock', '1560353283:1'),
(601, 11, '_edit_lock', '1560353263:1'),
(602, 10, '_edit_lock', '1560353218:1'),
(603, 13, '_edit_lock', '1560353271:1'),
(611, 12, '_edit_lock', '1560697477:1'),
(615, 128, '_edit_lock', '1560353408:1'),
(616, 130, '_edit_lock', '1560353205:1'),
(633, 128, '_edit_last', '1'),
(634, 128, '_wp_page_template', 'default'),
(697, 13, '_edit_last', '1'),
(706, 2, '_edit_last', '1'),
(731, 3, '_edit_lock', '1560697193:1'),
(792, 166, '_menu_item_type', 'post_type'),
(793, 166, '_menu_item_menu_item_parent', '0'),
(794, 166, '_menu_item_object_id', '10'),
(795, 166, '_menu_item_object', 'page'),
(796, 166, '_menu_item_target', ''),
(797, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(798, 166, '_menu_item_xfn', ''),
(799, 166, '_menu_item_url', ''),
(810, 169, '_menu_item_type', 'post_type'),
(811, 169, '_menu_item_menu_item_parent', '0'),
(812, 169, '_menu_item_object_id', '130'),
(813, 169, '_menu_item_object', 'page'),
(814, 169, '_menu_item_target', ''),
(815, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(816, 169, '_menu_item_xfn', ''),
(817, 169, '_menu_item_url', ''),
(818, 170, '_menu_item_type', 'post_type'),
(819, 170, '_menu_item_menu_item_parent', '0'),
(820, 170, '_menu_item_object_id', '128'),
(821, 170, '_menu_item_object', 'page'),
(822, 170, '_menu_item_target', ''),
(823, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(824, 170, '_menu_item_xfn', ''),
(825, 170, '_menu_item_url', ''),
(842, 173, '_menu_item_type', 'post_type'),
(843, 173, '_menu_item_menu_item_parent', '0'),
(844, 173, '_menu_item_object_id', '2'),
(845, 173, '_menu_item_object', 'page'),
(846, 173, '_menu_item_target', ''),
(847, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(848, 173, '_menu_item_xfn', ''),
(849, 173, '_menu_item_url', ''),
(852, 1, '_edit_lock', '1560352527:1'),
(890, 10, '_edit_last', '1'),
(899, 192, '_wp_attached_file', '2019/05/images.png'),
(900, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:18:\"2019/05/images.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(901, 193, '_wp_attached_file', '2019/05/images-1.png'),
(902, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:20:\"2019/05/images-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(904, 203, '_wp_attached_file', '2019/05/np.png'),
(905, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:14:\"2019/05/np.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"np-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"np-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"np-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"np-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"np-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"np-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"np-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"np-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(916, 210, '_wp_attached_file', '2019/05/UkrPoshta-1.png'),
(917, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:532;s:4:\"file\";s:23:\"2019/05/UkrPoshta-1.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"UkrPoshta-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-416x295.png\";s:5:\"width\";i:416;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"UkrPoshta-1-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-416x295.png\";s:5:\"width\";i:416;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"UkrPoshta-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(970, 249, '_edit_last', '1'),
(971, 249, '_edit_lock', '1560779102:1'),
(972, 249, '_regular_price', '3690'),
(973, 249, 'total_sales', '0'),
(974, 249, '_tax_status', 'taxable'),
(975, 249, '_tax_class', ''),
(976, 249, '_manage_stock', 'no'),
(977, 249, '_backorders', 'no'),
(978, 249, '_sold_individually', 'no'),
(979, 249, '_virtual', 'no'),
(980, 249, '_downloadable', 'no'),
(981, 249, '_download_limit', '-1'),
(982, 249, '_download_expiry', '-1'),
(983, 249, '_stock', NULL),
(984, 249, '_stock_status', 'instock'),
(985, 249, '_wc_average_rating', '0'),
(986, 249, '_wc_review_count', '1'),
(987, 249, '_product_version', '3.6.4'),
(988, 249, '_price', '3690'),
(1004, 249, '_product_image_gallery', ''),
(1006, 249, 'frs_woo_product_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:10:\"tab-custom\";s:7:\"content\";s:100:\"ertrete	retert	tertert\r\nertertert	reterte	ertert\r\nertrete	retert	tertert\r\nertertert	reterte	ertert\r\n\";}}'),
(1007, 249, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:14:\"[table id=7 /]\";}}'),
(1014, 97, '_wp_attachment_image_alt', 'ваіваа'),
(1016, 263, '_wp_attached_file', '2019/05/ebe87d2fad982f02bab5279ee39624c7.png'),
(1017, 263, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:385;s:4:\"file\";s:44:\"2019/05/ebe87d2fad982f02bab5279ee39624c7.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-266x300.png\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"ebe87d2fad982f02bab5279ee39624c7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 263, '_wp_attachment_image_alt', 'Смеситель'),
(1019, 130, '_edit_last', '1'),
(1020, 130, '_wp_page_template', 'default'),
(1036, 266, '_edit_last', '1'),
(1037, 266, '_edit_lock', '1560353255:1'),
(1038, 266, '_wp_page_template', 'default'),
(1039, 268, '_menu_item_type', 'post_type'),
(1040, 268, '_menu_item_menu_item_parent', '0'),
(1041, 268, '_menu_item_object_id', '266'),
(1042, 268, '_menu_item_object', 'page'),
(1043, 268, '_menu_item_target', ''),
(1044, 268, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1045, 268, '_menu_item_xfn', ''),
(1046, 268, '_menu_item_url', ''),
(1048, 269, '_edit_last', '1'),
(1049, 269, '_edit_lock', '1566127312:1'),
(1050, 269, '_wp_page_template', 'default'),
(1051, 271, '_menu_item_type', 'post_type'),
(1052, 271, '_menu_item_menu_item_parent', '0'),
(1053, 271, '_menu_item_object_id', '269'),
(1054, 271, '_menu_item_object', 'page'),
(1055, 271, '_menu_item_target', ''),
(1056, 271, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1057, 271, '_menu_item_xfn', ''),
(1058, 271, '_menu_item_url', ''),
(1064, 275, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":false,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1065, 275, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1],\"columns\":[1,1]}'),
(1066, 278, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":false,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1067, 278, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1]}'),
(1091, 284, '_wp_attached_file', '2019/05/WILO_Star_E_4c520117ba83d.png'),
(1092, 284, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:459;s:6:\"height\";i:500;s:4:\"file\";s:37:\"2019/05/WILO_Star_E_4c520117ba83d.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-275x300.png\";s:5:\"width\";i:275;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-416x453.png\";s:5:\"width\";i:416;s:6:\"height\";i:453;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-416x453.png\";s:5:\"width\";i:416;s:6:\"height\";i:453;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"WILO_Star_E_4c520117ba83d-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1093, 285, '_edit_last', '1'),
(1094, 285, '_edit_lock', '1560778449:1'),
(1095, 285, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:14:\"[table id=8 /]\";}}'),
(1096, 285, 'total_sales', '0'),
(1097, 285, '_tax_status', 'taxable'),
(1098, 285, '_tax_class', ''),
(1099, 285, '_manage_stock', 'no'),
(1100, 285, '_backorders', 'no'),
(1101, 285, '_sold_individually', 'no'),
(1102, 285, '_virtual', 'no'),
(1103, 285, '_downloadable', 'no'),
(1104, 285, '_download_limit', '-1'),
(1105, 285, '_download_expiry', '-1'),
(1106, 285, '_stock', NULL),
(1107, 285, '_stock_status', 'instock'),
(1108, 285, '_wc_average_rating', '0'),
(1109, 285, '_wc_review_count', '0'),
(1110, 285, '_product_version', '3.6.4'),
(1115, 287, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":false,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":false,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1116, 287, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1]}'),
(1117, 285, '_regular_price', '2340'),
(1118, 285, '_price', '2340'),
(1121, 289, '_edit_last', '1'),
(1122, 289, '_edit_lock', '1560777874:1'),
(1127, 289, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:14:\"[table id=9 /]\";}}'),
(1128, 289, 'total_sales', '0'),
(1129, 289, '_tax_status', 'taxable'),
(1130, 289, '_tax_class', ''),
(1131, 289, '_manage_stock', 'no'),
(1132, 289, '_backorders', 'no'),
(1133, 289, '_sold_individually', 'no'),
(1134, 289, '_virtual', 'no'),
(1135, 289, '_downloadable', 'no'),
(1136, 289, '_download_limit', '-1'),
(1137, 289, '_download_expiry', '-1'),
(1138, 289, '_stock', NULL),
(1139, 289, '_stock_status', 'instock'),
(1140, 289, '_wc_average_rating', '0'),
(1141, 289, '_wc_review_count', '0'),
(1142, 289, '_product_version', '3.6.4'),
(1143, 291, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":false,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1144, 291, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1,1,1,1,1,1],\"columns\":[1,1,1]}'),
(1145, 289, '_regular_price', '3720'),
(1146, 289, '_price', '3720'),
(1202, 289, '_product_image_gallery', ''),
(1209, 315, '_wp_attached_file', '2019/05/Eureka_30_WV03039D_BG_2.jpg'),
(1210, 315, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:973;s:6:\"height\";i:846;s:4:\"file\";s:35:\"2019/05/Eureka_30_WV03039D_BG_2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-300x261.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-768x668.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:668;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-416x362.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-416x362.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:362;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"Eureka_30_WV03039D_BG_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:10:\"marketing1\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1493030889\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1211, 249, '_thumbnail_id', '315'),
(1215, 317, '_wp_attached_file', '2019/05/Eldom-35-kw-E42.png'),
(1216, 317, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:432;s:4:\"file\";s:27:\"2019/05/Eldom-35-kw-E42.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-416x418.png\";s:5:\"width\";i:416;s:6:\"height\";i:418;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-416x418.png\";s:5:\"width\";i:416;s:6:\"height\";i:418;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Eldom-35-kw-E42-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1217, 285, '_thumbnail_id', '317'),
(1218, 318, '_wp_attached_file', '2019/05/ISTO-IVD-10045151h_mini.png'),
(1219, 318, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:781;s:6:\"height\";i:719;s:4:\"file\";s:35:\"2019/05/ISTO-IVD-10045151h_mini.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-768x707.png\";s:5:\"width\";i:768;s:6:\"height\";i:707;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-416x383.png\";s:5:\"width\";i:416;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-416x383.png\";s:5:\"width\";i:416;s:6:\"height\";i:383;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"ISTO-IVD-10045151h_mini-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1220, 289, '_thumbnail_id', '318'),
(1221, 319, '_edit_last', '1'),
(1222, 319, '_edit_lock', '1560777502:1'),
(1223, 319, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:15:\"[table id=11 /]\";}}'),
(1224, 319, '_regular_price', '5190'),
(1225, 319, 'total_sales', '0'),
(1226, 319, '_tax_status', 'taxable'),
(1227, 319, '_tax_class', ''),
(1228, 319, '_manage_stock', 'no'),
(1229, 319, '_backorders', 'no'),
(1230, 319, '_sold_individually', 'no'),
(1231, 319, '_virtual', 'no'),
(1232, 319, '_downloadable', 'no'),
(1233, 319, '_download_limit', '-1'),
(1234, 319, '_download_expiry', '-1'),
(1235, 319, '_stock', NULL),
(1236, 319, '_stock_status', 'instock'),
(1237, 319, '_wc_average_rating', '0'),
(1238, 319, '_wc_review_count', '0'),
(1239, 319, '_product_version', '3.6.4'),
(1240, 319, '_price', '5190'),
(1241, 320, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1242, 320, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1],\"columns\":[1,1,1,1,1]}'),
(1243, 321, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":false,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":false,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(1244, 321, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1,1,1,1],\"columns\":[1,1]}'),
(1255, 326, '_wp_attached_file', '2019/05/novatec-flat-size.jpg'),
(1256, 326, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3456;s:6:\"height\";i:2496;s:4:\"file\";s:29:\"2019/05/novatec-flat-size.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-768x555.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:555;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"novatec-flat-size-1024x740.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:740;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"novatec-flat-size-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-416x300.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"novatec-flat-size-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-416x300.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"novatec-flat-size-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1257, 326, '_wp_attachment_image_alt', 'Схема водонагревателя'),
(1258, 319, '_product_image_gallery', '326'),
(1272, 334, '_edit_last', '1'),
(1273, 334, '_edit_lock', '1559410977:1'),
(1274, 335, '_wp_attached_file', '2019/05/5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800.png'),
(1275, 335, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:510;s:6:\"height\";i:510;s:4:\"file\";s:83:\"2019/05/5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:83:\"5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1276, 335, '_wp_attachment_image_alt', 'Смеситель'),
(1277, 334, '_thumbnail_id', '335'),
(1278, 334, 'yikes_woo_products_tabs', 'a:0:{}'),
(1279, 334, '_regular_price', '422.14'),
(1280, 334, 'total_sales', '0'),
(1281, 334, '_tax_status', 'taxable'),
(1282, 334, '_tax_class', ''),
(1283, 334, '_manage_stock', 'no'),
(1284, 334, '_backorders', 'no'),
(1285, 334, '_sold_individually', 'no'),
(1286, 334, '_virtual', 'no'),
(1287, 334, '_downloadable', 'no'),
(1288, 334, '_download_limit', '-1'),
(1289, 334, '_download_expiry', '-1'),
(1290, 334, '_stock', NULL),
(1291, 334, '_stock_status', 'instock'),
(1292, 334, '_wc_average_rating', '0'),
(1293, 334, '_wc_review_count', '0'),
(1294, 334, '_product_version', '3.6.3'),
(1295, 334, '_price', '422.14'),
(1296, 336, '_edit_last', '1'),
(1297, 336, '_edit_lock', '1559411041:1'),
(1298, 336, 'yikes_woo_products_tabs', 'a:0:{}'),
(1299, 336, '_regular_price', '769'),
(1300, 336, 'total_sales', '0'),
(1301, 336, '_tax_status', 'taxable'),
(1302, 336, '_tax_class', ''),
(1303, 336, '_manage_stock', 'no'),
(1304, 336, '_backorders', 'no'),
(1305, 336, '_sold_individually', 'no'),
(1306, 336, '_virtual', 'no'),
(1307, 336, '_downloadable', 'no'),
(1308, 336, '_download_limit', '-1'),
(1309, 336, '_download_expiry', '-1'),
(1310, 336, '_stock', NULL),
(1311, 336, '_stock_status', 'instock'),
(1312, 336, '_wc_average_rating', '0'),
(1313, 336, '_wc_review_count', '0'),
(1314, 336, '_product_version', '3.6.3'),
(1315, 336, '_price', '769'),
(1316, 337, '_wp_attached_file', '2019/05/umyv_5007-500x500.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1317, 337, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:29:\"2019/05/umyv_5007-500x500.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"umyv_5007-500x500-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"umyv_5007-500x500-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1318, 337, '_wp_attachment_image_alt', 'Смеситель'),
(1319, 336, '_thumbnail_id', '337'),
(1321, 338, '_edit_last', '1'),
(1322, 338, '_edit_lock', '1559394488:1'),
(1323, 339, '_wp_attached_file', '2019/05/1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj.jpg'),
(1324, 339, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:60:\"2019/05/1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1325, 339, '_wp_attachment_image_alt', 'Насос'),
(1326, 338, '_thumbnail_id', '339'),
(1327, 338, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:28:\"характеристики\";s:7:\"content\";s:5827:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Китай</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><a class=\"novisited ng-star-inserted\" style=\"color: #3e77aa;\" href=\"https://rozetka.com.ua/pumps/c155952/filter/24034=14251/\">Дренажные насосы</a></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Высота подачи</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">6.5 м</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Двигатель</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Электрический</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">0.3 кВт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Производительность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">120 л/мин</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Питание</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><a class=\"novisited ng-star-inserted\" style=\"color: #3e77aa;\" href=\"https://rozetka.com.ua/pumps/c155952/filter/24019=12957/\">Сеть</a></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Максимальный размер частиц</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">5 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Дополнительные характеристики</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Рабочая частота вращения: 2850 об/мин\r\nНапряжение сети: 220 В\r\nЧастота тока: 50 Гц\r\nРежим работы: продолжительный (S1)\r\nСтепень защиты: IP68\r\nКласс изоляции: В\r\nМаксимальная глубина погружения: 7 м\r\nДлина питающего кабеля: 10 м</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Размеры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">160 х 160 х 300 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">3.7 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Комплектация</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Насос\r\nПластиковый фитинг\r\nРуководство пользователя\r\nУпаковка</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Латвия</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">36 месяцев</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1328, 338, 'total_sales', '0'),
(1329, 338, '_tax_status', 'taxable'),
(1330, 338, '_tax_class', ''),
(1331, 338, '_manage_stock', 'no'),
(1332, 338, '_backorders', 'no'),
(1333, 338, '_sold_individually', 'no'),
(1334, 338, '_virtual', 'no'),
(1335, 338, '_downloadable', 'no'),
(1336, 338, '_download_limit', '-1'),
(1337, 338, '_download_expiry', '-1'),
(1338, 338, '_stock', NULL),
(1339, 338, '_stock_status', 'instock'),
(1340, 338, '_wc_average_rating', '0'),
(1341, 338, '_wc_review_count', '0'),
(1342, 338, '_product_version', '3.6.3'),
(1343, 338, '_regular_price', '882'),
(1344, 338, '_price', '882'),
(1345, 340, '_edit_last', '1'),
(1346, 340, '_edit_lock', '1559396358:1'),
(1347, 341, '_wp_attached_file', '2019/05/1573909057_w640_h640_cid2681372_pid883112625-eb28c452.png'),
(1348, 341, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:186;s:6:\"height\";i:187;s:4:\"file\";s:65:\"2019/05/1573909057_w640_h640_cid2681372_pid883112625-eb28c452.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"1573909057_w640_h640_cid2681372_pid883112625-eb28c452-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:65:\"1573909057_w640_h640_cid2681372_pid883112625-eb28c452-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:65:\"1573909057_w640_h640_cid2681372_pid883112625-eb28c452-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1349, 340, '_thumbnail_id', '341'),
(1350, 340, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:28:\"характеристики\";s:7:\"content\";s:1447:\"<table class=\"b-product-info\">\r\n<tbody>\r\n<tr>\r\n<th class=\"b-product-info__header\" colspan=\"2\">Основные атрибуты</th>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Страна производитель</td>\r\n<td class=\"b-product-info__cell\">Китай</td>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Производитель <span id=\"product-attribute-0-1\" class=\"icon-help\"> </span></td>\r\n<td class=\"b-product-info__cell\">Power Craft</td>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Вид насоса</td>\r\n<td class=\"b-product-info__cell\">Для системы отопления</td>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Способ установки насоса <span id=\"product-attribute-0-3\" class=\"icon-help\"> </span></td>\r\n<td class=\"b-product-info__cell\">Циркуляционный</td>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Максимальный напор <span id=\"product-attribute-0-4\" class=\"icon-help\"> </span></td>\r\n<td class=\"b-product-info__cell\">6.0 (м)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Состояние</td>\r\n<td class=\"b-product-info__cell\">Новое</td>\r\n</tr>\r\n<tr>\r\n<th class=\"b-product-info__header\" colspan=\"2\">Габаритные и присоединительные размеры</th>\r\n</tr>\r\n<tr>\r\n<td class=\"b-product-info__cell\">Ширина</td>\r\n<td class=\"b-product-info__cell\">180.0 (мм)</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1351, 340, '_regular_price', '605'),
(1352, 340, 'total_sales', '0'),
(1353, 340, '_tax_status', 'taxable'),
(1354, 340, '_tax_class', ''),
(1355, 340, '_manage_stock', 'no'),
(1356, 340, '_backorders', 'no'),
(1357, 340, '_sold_individually', 'no'),
(1358, 340, '_virtual', 'no'),
(1359, 340, '_downloadable', 'no'),
(1360, 340, '_download_limit', '-1'),
(1361, 340, '_download_expiry', '-1'),
(1362, 340, '_stock', NULL),
(1363, 340, '_stock_status', 'instock'),
(1364, 340, '_wc_average_rating', '0'),
(1365, 340, '_wc_review_count', '0'),
(1366, 340, '_product_version', '3.6.3'),
(1367, 340, '_price', '605'),
(1368, 319, '_product_attributes', 'a:8:{s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"8\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1369, 289, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1370, 285, '_product_attributes', 'a:3:{s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1371, 249, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1377, 334, '_product_attributes', 'a:1:{s:63:\"pa_%d0%bd%d0%b0%d0%b7%d0%bd%d0%b0%d1%87%d0%b5%d0%bd%d0%b8%d0%b5\";a:6:{s:4:\"name\";s:23:\"pa_назначение\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1378, 336, '_product_attributes', 'a:1:{s:63:\"pa_%d0%bd%d0%b0%d0%b7%d0%bd%d0%b0%d1%87%d0%b5%d0%bd%d0%b8%d0%b5\";a:6:{s:4:\"name\";s:23:\"pa_назначение\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1381, 351, '_edit_last', '1'),
(1382, 351, '_edit_lock', '1560777216:1'),
(1387, 351, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:3476:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1500 Вт Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">10 л л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">сталь с эмалевым покрытием</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Вертикальная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">6.7 кг кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">12 месяцев</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1388, 351, 'total_sales', '0'),
(1389, 351, '_tax_status', 'taxable'),
(1390, 351, '_tax_class', ''),
(1391, 351, '_manage_stock', 'no'),
(1392, 351, '_backorders', 'no'),
(1393, 351, '_sold_individually', 'no'),
(1394, 351, '_virtual', 'no'),
(1395, 351, '_downloadable', 'no'),
(1396, 351, '_download_limit', '-1'),
(1397, 351, '_download_expiry', '-1'),
(1398, 351, '_stock', NULL),
(1399, 351, '_stock_status', 'instock'),
(1400, 351, '_wc_average_rating', '0'),
(1401, 351, '_wc_review_count', '0'),
(1402, 351, '_product_version', '3.6.4'),
(1403, 351, '_regular_price', '2294'),
(1404, 351, '_price', '2294'),
(1405, 351, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"8\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1406, 353, '_edit_last', '1'),
(1407, 353, '_edit_lock', '1560776286:1'),
(1411, 353, 'total_sales', '1'),
(1412, 353, '_tax_status', 'taxable'),
(1413, 353, '_tax_class', ''),
(1414, 353, '_manage_stock', 'no'),
(1415, 353, '_backorders', 'no'),
(1416, 353, '_sold_individually', 'no'),
(1417, 353, '_virtual', 'no'),
(1418, 353, '_downloadable', 'no'),
(1419, 353, '_download_limit', '-1'),
(1420, 353, '_download_expiry', '-1'),
(1421, 353, '_stock', NULL),
(1422, 353, '_stock_status', 'instock'),
(1423, 353, '_wc_average_rating', '0'),
(1424, 353, '_wc_review_count', '0'),
(1425, 353, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"8\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1426, 353, '_product_version', '3.6.4'),
(1428, 353, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:4624:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1500 Вт Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">10 л л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Прямоугольная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Время нагрева</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">0.25 ч (до 75°С) ч</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">сталь с эмалевым покрытием</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Вертикальная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">6.7 кг кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Украина</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">24 месяца</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1429, 353, '_regular_price', '2294'),
(1430, 353, '_price', '2294'),
(1431, 355, '_edit_last', '1'),
(1432, 355, '_edit_lock', '1560775939:1'),
(1436, 355, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:4155:\"<div id=\"rmjs-1\" class=\"prop_spec clearfix\" data-readmore=\"\" aria-expanded=\"true\">\r\n<div id=\"product_prop\" class=\"product_prop\" data-readmore=\"\" aria-expanded=\"false\">\r\n<div class=\"box\">\r\n\r\n<span class=\"h2 subsection_title\" style=\"font-weight: bold;\">Гарантия</span>\r\n<ul class=\"clearfix\">\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Варианты установки</span><span style=\"color: #585e67;\">вертикальная с верхней подводкой</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"box\">\r\n\r\n<span class=\"h2 subsection_title\" style=\"font-weight: bold;\">Основные характеристики</span>\r\n<ul class=\"clearfix\">\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Мощность, Вт</span><span style=\"color: #585e67;\">1200</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Объем бака, л</span><span style=\"color: #585e67;\">10</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Тип установки</span><span style=\"color: #585e67;\">настенный</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Форма бойлера</span><span style=\"color: #585e67;\">прямоугольная</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Материал корпуса</span><span style=\"color: #585e67;\">сталь</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Тип управления</span><span style=\"color: #585e67;\">механическое</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Цвет</span><span style=\"color: #585e67;\">белый</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"box\">\r\n\r\n<span class=\"h2 subsection_title\" style=\"font-weight: bold;\">Технические характеристики</span>\r\n<ul class=\"clearfix\">\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Режимы нагревания</span><span style=\"color: #585e67;\">обычный нагрев</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Количество ТЭНов</span><span style=\"color: #585e67;\">один</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Тип ТЭНа</span><span style=\"color: #585e67;\">\"мокрый\" (непосредственно контактирует с водой)</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Материал внутреннего бака</span><span style=\"color: #585e67;\">сталь с эмалевым покрытием</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Толщина стенок бака, мм</span><span style=\"color: #585e67;\">1.8</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Дополнительная защита</span><span style=\"color: #585e67;\">магниевый анод</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Класс защищенности бойлера</span><span style=\"color: #585e67;\">IP24</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Давление, бар</span><span style=\"color: #585e67;\">8</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Электропитание</span><span style=\"color: #585e67;\">230В/50Гц</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"box\">\r\n\r\n<span class=\"h2 subsection_title\" style=\"font-weight: bold;\">Физические характеристики</span>\r\n<ul class=\"clearfix\">\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Высота, мм</span><span style=\"color: #585e67;\">415</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Ширина, мм</span><span style=\"color: #585e67;\">332</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Глубина, мм</span><span style=\"color: #585e67;\">264</span></li>\r\n 	<li class=\"clearfix\"><span style=\"color: #585e67;\">Вес, кг</span><span style=\"color: #585e67;\">7.3</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div id=\"product_description\" class=\"specification description\"><span class=\"h2 title sprite\" style=\"font-weight: 300;\">Описание</span></div>\r\n</div>\";}}'),
(1437, 355, 'total_sales', '0'),
(1438, 355, '_tax_status', 'taxable'),
(1439, 355, '_tax_class', ''),
(1440, 355, '_manage_stock', 'no'),
(1441, 355, '_backorders', 'no'),
(1442, 355, '_sold_individually', 'no'),
(1443, 355, '_virtual', 'no'),
(1444, 355, '_downloadable', 'no'),
(1445, 355, '_download_limit', '-1'),
(1446, 355, '_download_expiry', '-1'),
(1447, 355, '_stock', NULL),
(1448, 355, '_stock_status', 'instock'),
(1449, 355, '_wc_average_rating', '0'),
(1450, 355, '_wc_review_count', '0'),
(1451, 355, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1452, 355, '_product_version', '3.6.4'),
(1453, 355, '_regular_price', '2100'),
(1454, 355, '_price', '2100'),
(1455, 357, '_edit_last', '1'),
(1456, 357, '_edit_lock', '1560708954:1'),
(1461, 357, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:7979:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Кол-во/мощность ТЭНов</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1х2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">10 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Прямоугольная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Регулятор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Открытый (на корпусе)</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Эмалированная сталь</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><a class=\"novisited ng-star-inserted\" style=\"color: #3e77aa;\" href=\"https://bt.rozetka.com.ua/boilers/c80131/filter/37604=52594/\">Вертикальная</a></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">43х28.5х28.8 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">47х32.8х32.5 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Установка: над раковиной\r\nЦиркониевая эмаль\r\nПовышенная теплоизоляция</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">6.6 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">7.6 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Цвет</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Белый</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Управление по Wi-Fi</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Без управления по Wi-Fi</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>24 месяца</b> официальной гарантии от производителя на электрические элементы + <b>84 месяца</b> на бак</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1462, 357, 'total_sales', '1'),
(1463, 357, '_tax_status', 'taxable'),
(1464, 357, '_tax_class', ''),
(1465, 357, '_manage_stock', 'no'),
(1466, 357, '_backorders', 'no'),
(1467, 357, '_sold_individually', 'no'),
(1468, 357, '_virtual', 'no'),
(1469, 357, '_downloadable', 'no'),
(1470, 357, '_download_limit', '-1'),
(1471, 357, '_download_expiry', '-1'),
(1472, 357, '_stock', NULL),
(1473, 357, '_stock_status', 'instock'),
(1474, 357, '_wc_average_rating', '0'),
(1475, 357, '_wc_review_count', '0');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1476, 357, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1477, 357, '_product_version', '3.6.4'),
(1478, 357, '_regular_price', '2670'),
(1479, 357, '_price', '2670'),
(1480, 359, '_edit_last', '1'),
(1481, 359, '_edit_lock', '1560692306:1'),
(1486, 359, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:8079:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Кол-во/мощность ТЭНов</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1х2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">10 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Прямоугольная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Индикатор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Механический</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Нержавеющая сталь 304L</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Комплект поставки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Бойлер\r\nИнструкция</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Вертикальная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">43.8х27.8х26.8 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">51x32x27 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Монтаж: под мойкой\r\nКласс влагозащиты IP24\r\nРабочее давление 0.8 MPa</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">6.8 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">7.8 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Цвет</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Белый</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Управление по Wi-Fi</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Без управления по Wi-Fi</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Сербия</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Австрия</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>84 месяца</b> официальной гарантии от производителя</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1487, 359, '_regular_price', '2970'),
(1488, 359, 'total_sales', '0'),
(1489, 359, '_tax_status', 'taxable'),
(1490, 359, '_tax_class', ''),
(1491, 359, '_manage_stock', 'no'),
(1492, 359, '_backorders', 'no'),
(1493, 359, '_sold_individually', 'no'),
(1494, 359, '_virtual', 'no'),
(1495, 359, '_downloadable', 'no'),
(1496, 359, '_download_limit', '-1'),
(1497, 359, '_download_expiry', '-1'),
(1498, 359, '_stock', NULL),
(1499, 359, '_stock_status', 'instock'),
(1500, 359, '_wc_average_rating', '0'),
(1501, 359, '_wc_review_count', '0'),
(1502, 359, '_product_attributes', 'a:8:{s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1503, 359, '_product_version', '3.6.4'),
(1504, 359, '_price', '2970'),
(1523, 362, '_wp_attached_file', '2019/06/329886_002.jpg'),
(1524, 362, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:22:\"2019/06/329886_002.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"329886_002-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"329886_002-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"329886_002-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"329886_002-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"329886_002-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"329886_002-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"329886_002-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"329886_002-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1525, 362, '_wp_attachment_image_alt', 'Водонагреватель'),
(1530, 363, '_edit_last', '1'),
(1531, 363, '_edit_lock', '1560778420:1'),
(1532, 363, 'total_sales', '1'),
(1533, 363, '_tax_status', 'taxable'),
(1534, 363, '_tax_class', ''),
(1535, 363, '_manage_stock', 'no'),
(1536, 363, '_backorders', 'no'),
(1537, 363, '_sold_individually', 'no'),
(1538, 363, '_virtual', 'no'),
(1539, 363, '_downloadable', 'no'),
(1540, 363, '_download_limit', '-1'),
(1541, 363, '_download_expiry', '-1'),
(1542, 363, '_stock', NULL),
(1543, 363, '_stock_status', 'instock'),
(1544, 363, '_wc_average_rating', '0'),
(1545, 363, '_wc_review_count', '0'),
(1546, 363, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1547, 363, '_product_version', '3.6.4'),
(1548, 363, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:8365:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объём</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Бойлер комбинированный</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Количество теплообменников</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">1</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность ТЭНа</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1.5 кВт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Электрический ТЭН</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Есть</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Индикатор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Механический</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Диаметр патрубков (выходов) подключения к котлу</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">12.7 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Диаметр патрубков подключения холодной и горячей воды</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">12.7 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Регулятор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механический</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Максимальное давление в баке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">8 бар</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Дополнительные характеристики</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Предохранительный клапан</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Шесть степеней защиты\r\nЦиркониевая эмаль\r\nПодключение: справа</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">46х100х47.4 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">104х50х51.4 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">31 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">32 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Цилиндрическая</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>24 месяца</b> официальной гарантии от производителя на электрические элементы + <b>84 месяца</b> на бак</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1549, 363, '_regular_price', '4500'),
(1550, 363, '_price', '4500'),
(1554, 365, '_edit_last', '1'),
(1555, 365, '_edit_lock', '1560708251:1'),
(1556, 366, '_wp_attached_file', '2019/06/boylsdr-qtermo-145.jpg'),
(1557, 366, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2019/06/boylsdr-qtermo-145.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"boylsdr-qtermo-145-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1558, 366, '_wp_attachment_image_alt', 'Бойлер QTERMO'),
(1559, 365, 'total_sales', '0'),
(1560, 365, '_tax_status', 'taxable'),
(1561, 365, '_tax_class', ''),
(1562, 365, '_manage_stock', 'no'),
(1563, 365, '_backorders', 'no'),
(1564, 365, '_sold_individually', 'no'),
(1565, 365, '_virtual', 'no'),
(1566, 365, '_downloadable', 'no'),
(1567, 365, '_download_limit', '-1'),
(1568, 365, '_download_expiry', '-1'),
(1569, 365, '_stock', NULL),
(1570, 365, '_stock_status', 'instock'),
(1571, 365, '_wc_average_rating', '0'),
(1572, 365, '_wc_review_count', '0'),
(1573, 365, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"8\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1574, 365, '_product_version', '3.6.4'),
(1575, 365, '_thumbnail_id', '366'),
(1576, 365, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:5929:\"<table class=\"product-features__table\" style=\"color: #000000;\">\r\n<tbody>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Производитель</th>\r\n<td class=\"product-features__cell\">Qtermo</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Страна производитель</th>\r\n<td class=\"product-features__cell\">Словакия</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Гарантия на на электрические элементы</th>\r\n<td class=\"product-features__cell\">2 года</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Гарантия на бак</th>\r\n<td class=\"product-features__cell\">10 лет</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Объем, л.</th>\r\n<td class=\"product-features__cell\">100 л.</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Высота, мм</th>\r\n<td class=\"product-features__cell\">847</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Глубина, мм</th>\r\n<td class=\"product-features__cell\">527</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Ширина, мм</th>\r\n<td class=\"product-features__cell\">515</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Вес, кг</th>\r\n<td class=\"product-features__cell\">31</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Мощность</th>\r\n<td class=\"product-features__cell\">2000 Вт</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Тип ТЭНа</th>\r\n<td class=\"product-features__cell\">Сухой (закрытый)</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Количество ТЭНов</th>\r\n<td class=\"product-features__cell\">2 ТЭНа по 1000 Вт</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Время нагрева (первый старт)</th>\r\n<td class=\"product-features__cell\">от 15 до 65 °С -2.5 час</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Управление</th>\r\n<td class=\"product-features__cell\">Механический</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Форма</th>\r\n<td class=\"product-features__cell\">Цилиндр</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Внутренний бак</th>\r\n<td class=\"product-features__cell\">Покрытие эмаль</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Установка</th>\r\n<td class=\"product-features__cell\">Вертикальная</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Тип установки</th>\r\n<td class=\"product-features__cell\">Настенный</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Подводка труб</th>\r\n<td class=\"product-features__cell\">Снизу</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Магниевый анод</th>\r\n<td class=\"product-features__cell\">Есть</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Диаметр вх./вых. трубы</th>\r\n<td class=\"product-features__cell\">12</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Теплоизоляция</th>\r\n<td class=\"product-features__cell\">45 мм</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Класс защиты</th>\r\n<td class=\"product-features__cell\">IPX4</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Рабочее давление</th>\r\n<td class=\"product-features__cell\">6 бар</td>\r\n</tr>\r\n<tr class=\"product-features__row\">\r\n<th class=\"product-features__cell product-features__cell--h\" style=\"font-weight: 600; color: #000000;\">Толщина бака</th>\r\n<td class=\"product-features__cell\">2-2,2мм</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1577, 365, '_regular_price', '5940'),
(1578, 365, '_price', '5940'),
(1579, 367, '_wp_attached_file', '2019/06/boyler-q5645.jpg'),
(1580, 367, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1397;s:6:\"height\";i:1800;s:4:\"file\";s:24:\"2019/06/boyler-q5645.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-233x300.jpg\";s:5:\"width\";i:233;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-768x990.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:990;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"boyler-q5645-795x1024.jpg\";s:5:\"width\";i:795;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"boyler-q5645-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-416x536.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-416x536.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"boyler-q5645-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1581, 367, '_wp_attachment_image_alt', 'Бойлер'),
(1582, 365, '_product_image_gallery', '367'),
(1583, 368, '_edit_last', '1'),
(1584, 368, '_edit_lock', '1560708243:1'),
(1585, 369, '_wp_attached_file', '2019/06/Nova-Tec-St56756.jpg'),
(1586, 369, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:28:\"2019/06/Nova-Tec-St56756.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Nova-Tec-St56756-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Nova-Tec-St56756-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1587, 369, '_wp_attachment_image_alt', 'Бойлер Nova-Tec'),
(1588, 370, '_wp_attached_file', '2019/06/Nova-Tec-St56756-1.jpg'),
(1589, 370, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:30:\"2019/06/Nova-Tec-St56756-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1590, 370, '_wp_attachment_image_alt', 'Бойлер'),
(1591, 368, '_thumbnail_id', '369'),
(1592, 368, 'yikes_woo_products_tabs', 'a:0:{}'),
(1593, 368, '_regular_price', '2591'),
(1594, 368, 'total_sales', '0'),
(1595, 368, '_tax_status', 'taxable'),
(1596, 368, '_tax_class', ''),
(1597, 368, '_manage_stock', 'no'),
(1598, 368, '_backorders', 'no'),
(1599, 368, '_sold_individually', 'no'),
(1600, 368, '_virtual', 'no'),
(1601, 368, '_downloadable', 'no'),
(1602, 368, '_download_limit', '-1'),
(1603, 368, '_download_expiry', '-1'),
(1604, 368, '_stock', NULL),
(1605, 368, '_stock_status', 'instock'),
(1606, 368, '_wc_average_rating', '0'),
(1607, 368, '_wc_review_count', '0'),
(1608, 368, '_product_version', '3.6.4'),
(1609, 368, '_price', '2591'),
(1610, 368, '_product_image_gallery', '370'),
(1611, 371, '_wp_attached_file', '2019/06/Nova-Tec-St56756-2.jpg'),
(1612, 371, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:30:\"2019/06/Nova-Tec-St56756-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1613, 368, '_purchase_note', 'В нашем интернет магазине вы можете заказать услугу установки бойлера '),
(1632, 12, '_edit_last', '1'),
(1633, 378, '_edit_last', '1'),
(1634, 378, '_edit_lock', '1560610653:1'),
(1639, 378, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:1199:\"<table style=\"color: #777777; height: 288px;\" border=\"1\" width=\"591\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td bgcolor=\"0b76b4\">Модель</td>\r\n<td bgcolor=\"0b76b4\">SVD80 4520/1h</td>\r\n<td bgcolor=\"0b76b4\">SVD100 4520/1h</td>\r\n</tr>\r\n<tr>\r\n<td>Объем, литров</td>\r\n<td>80</td>\r\n<td>100</td>\r\n</tr>\r\n<tr>\r\n<td>Мощность ТЭНа, Вт</td>\r\n<td colspan=\"2\" rowspan=\"1\">1 шт / 2000 Вт</td>\r\n</tr>\r\n<tr>\r\n<td>Тип ТЭНа</td>\r\n<td colspan=\"2\" rowspan=\"1\">Сухой (без контакта с водой)</td>\r\n</tr>\r\n<tr>\r\n<td>Форма бака</td>\r\n<td colspan=\"2\" rowspan=\"1\">Цилиндрическая</td>\r\n</tr>\r\n<tr>\r\n<td>Напряжение, В</td>\r\n<td colspan=\"2\" rowspan=\"1\">220</td>\r\n</tr>\r\n<tr>\r\n<td>Рабочее давление, МПа</td>\r\n<td colspan=\"2\" rowspan=\"1\">0,6</td>\r\n</tr>\r\n<tr>\r\n<td>Класс защиты</td>\r\n<td colspan=\"2\" rowspan=\"1\">IP 24</td>\r\n</tr>\r\n<tr>\r\n<td>Габариты (ВхШхГ), мм</td>\r\n<td>769x445x465</td>\r\n<td>949x445x465</td>\r\n</tr>\r\n<tr>\r\n<td>Вес, кг</td>\r\n<td>23,5</td>\r\n<td>27,5</td>\r\n</tr>\r\n<tr>\r\n<td>Цвет</td>\r\n<td colspan=\"2\" rowspan=\"1\">белый</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1640, 378, '_regular_price', '3930'),
(1641, 378, 'total_sales', '0'),
(1642, 378, '_tax_status', 'taxable'),
(1643, 378, '_tax_class', ''),
(1644, 378, '_manage_stock', 'no'),
(1645, 378, '_backorders', 'no'),
(1646, 378, '_sold_individually', 'no'),
(1647, 378, '_virtual', 'no'),
(1648, 378, '_downloadable', 'no'),
(1649, 378, '_download_limit', '-1'),
(1650, 378, '_download_expiry', '-1'),
(1651, 378, '_stock', NULL),
(1652, 378, '_stock_status', 'instock'),
(1653, 378, '_wc_average_rating', '0'),
(1654, 378, '_wc_review_count', '0'),
(1655, 378, '_product_version', '3.6.4'),
(1656, 378, '_price', '3930'),
(1657, 380, '_edit_last', '1'),
(1658, 380, '_edit_lock', '1560607855:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1663, 380, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:9252:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Кол-во/мощность ТЭНов</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1 x 2000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Цилиндрическая</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Индикатор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Механический</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Регулятор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Открытый (на корпусе)</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Время нагрева</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">3.2 ч</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Австрийская сталь BASF 2.2 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Вертикальная/горизонтальная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">111 x 44 x 44 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">48 x 48 x 103 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Толщина стенки металла 2.2 мм\r\nИндикатор температуры\r\nСтеклокерамическое титановое покрытие бака для воды\r\nФланец для ревизии и технического обслуживания\r\nМаксимальное давление на входе 8 бар\r\nМаксимальная регулируемая температура 70°С\r\nCистема теплообмена Tank in Tank\r\nКомбинация электрического нагрева и нагрева от других источников энергии\r\nВозможность одновременного подключения двух теплоносителей</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">37 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">38.3 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Цвет</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Белый</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Управление по Wi-Fi</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Без управления по Wi-Fi</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Македония</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Украина</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>24 месяца</b> официальной гарантии от производителя на электрические элементы + <b>84 месяца</b> на бак</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1664, 380, '_regular_price', '5220'),
(1665, 380, 'total_sales', '1'),
(1666, 380, '_tax_status', 'taxable'),
(1667, 380, '_tax_class', ''),
(1668, 380, '_manage_stock', 'no'),
(1669, 380, '_backorders', 'no'),
(1670, 380, '_sold_individually', 'no'),
(1671, 380, '_virtual', 'no'),
(1672, 380, '_downloadable', 'no'),
(1673, 380, '_download_limit', '-1'),
(1674, 380, '_download_expiry', '-1'),
(1675, 380, '_stock', NULL),
(1676, 380, '_stock_status', 'instock'),
(1677, 380, '_wc_average_rating', '0'),
(1678, 380, '_wc_review_count', '0'),
(1679, 380, '_product_version', '3.6.4'),
(1680, 380, '_price', '5220'),
(1681, 382, '_edit_last', '1'),
(1682, 382, '_edit_lock', '1560444956:1'),
(1686, 384, '_wp_attached_file', '2019/06/10657308_images_1685062.jpg'),
(1687, 384, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:630;s:4:\"file\";s:35:\"2019/06/10657308_images_1685062.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"10657308_images_1685062-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"10657308_images_1685062-129x300.jpg\";s:5:\"width\";i:129;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"10657308_images_1685062-270x324.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"10657308_images_1685062-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"10657308_images_1685062-270x324.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"10657308_images_1685062-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1688, 384, '_wp_attachment_image_alt', 'Водонагреватель'),
(1689, 385, '_wp_attached_file', '2019/06/10657308_images_16167.jpg'),
(1690, 385, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:316;s:6:\"height\";i:630;s:4:\"file\";s:33:\"2019/06/10657308_images_16167.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"10657308_images_16167-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"10657308_images_16167-150x300.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"10657308_images_16167-316x324.jpg\";s:5:\"width\";i:316;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"10657308_images_16167-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"10657308_images_16167-316x324.jpg\";s:5:\"width\";i:316;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"10657308_images_16167-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1691, 385, '_wp_attachment_image_alt', 'Водонагреватель'),
(1693, 382, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:28:\"характеристики\";s:7:\"content\";s:1888:\"<table class=\"attr-group\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr>\r\n<td>Тип установки</td>\r\n<td>настенный</td>\r\n</tr>\r\n<tr>\r\n<td>Установка</td>\r\n<td>вертикальная</td>\r\n</tr>\r\n<tr>\r\n<td>Мощность</td>\r\n<td>1600 Вт</td>\r\n</tr>\r\n<tr>\r\n<td>Кол-во/мощность ТЭНов</td>\r\n<td>2х800 Вт</td>\r\n</tr>\r\n<tr>\r\n<td>Объем</td>\r\n<td>100 л</td>\r\n</tr>\r\n<tr>\r\n<td>Тип управления</td>\r\n<td>механическое</td>\r\n</tr>\r\n<tr>\r\n<td>Индикатор температуры</td>\r\n<td>механический</td>\r\n</tr>\r\n<tr>\r\n<td>Регулятор температуры</td>\r\n<td>открытый (на корпусе)</td>\r\n</tr>\r\n<tr>\r\n<td>Тип нагревательного элемента (ТЭНа)</td>\r\n<td>скрытый (\"сухой\")</td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\">Дополнительные характеристики</th>\r\n</tr>\r\n<tr>\r\n<td>Время нагрева</td>\r\n<td>3,15 ч</td>\r\n</tr>\r\n<tr>\r\n<td>Материал внутреннего бака</td>\r\n<td>эмалированный стальной бак</td>\r\n</tr>\r\n<tr>\r\n<td>Форма</td>\r\n<td>цилиндрическая</td>\r\n</tr>\r\n<tr>\r\n<td>Особенности</td>\r\n<td>Температура нагрева воды: 75 ºС\r\nТитановая эмаль\r\nПенополиуретановая теплоизоляция\r\nСистема \"Антимикс\"</td>\r\n</tr>\r\n<tr>\r\n<th colspan=\"2\">Габариты, вес, цвет</th>\r\n</tr>\r\n<tr>\r\n<td>Габариты (ВхШхГ)</td>\r\n<td>95,2х46х46 см</td>\r\n</tr>\r\n<tr>\r\n<td>Габариты в упаковке (ВхШхГ)</td>\r\n<td>100х51х51 см</td>\r\n</tr>\r\n<tr>\r\n<td>Вес</td>\r\n<td>27 кг</td>\r\n</tr>\r\n<tr>\r\n<td>Вес в упаковке</td>\r\n<td>28 кг</td>\r\n</tr>\r\n<tr>\r\n<td>Цвет</td>\r\n<td>белый</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1694, 382, '_regular_price', '3215'),
(1695, 382, 'total_sales', '1'),
(1696, 382, '_tax_status', 'taxable'),
(1697, 382, '_tax_class', ''),
(1698, 382, '_manage_stock', 'no'),
(1699, 382, '_backorders', 'no'),
(1700, 382, '_sold_individually', 'no'),
(1701, 382, '_virtual', 'no'),
(1702, 382, '_downloadable', 'no'),
(1703, 382, '_download_limit', '-1'),
(1704, 382, '_download_expiry', '-1'),
(1705, 382, '_stock', NULL),
(1706, 382, '_stock_status', 'instock'),
(1707, 382, '_wc_average_rating', '0'),
(1708, 382, '_wc_review_count', '0'),
(1709, 382, '_product_version', '3.6.4'),
(1710, 382, '_price', '3215'),
(1711, 382, '_product_image_gallery', '384,385'),
(1712, 386, '_edit_last', '1'),
(1713, 386, '_edit_lock', '1560445721:1'),
(1717, 388, '_wp_attached_file', '2019/06/10102054_images_166563535.jpg'),
(1718, 388, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:349;s:6:\"height\";i:630;s:4:\"file\";s:37:\"2019/06/10102054_images_166563535.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"10102054_images_166563535-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"10102054_images_166563535-166x300.jpg\";s:5:\"width\";i:166;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"10102054_images_166563535-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"10102054_images_166563535-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"10102054_images_166563535-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"10102054_images_166563535-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1719, 388, '_wp_attachment_image_alt', 'Водонагреватель'),
(1721, 386, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:9093:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1500.0000 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Кол-во/мощность ТЭНов</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1х1500 Вт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объем</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100.0000 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Цилиндрическая</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Индикатор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Механический</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Регулятор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Скрытый (под крышкой)</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Время нагрева</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">4.2000 ч</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип нагревательного элемента (ТЭНа)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Открытый \"мокрый\" (непосредственно контактирует с водой)</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Материал внутреннего бака</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Эмалированный стальной бак</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Комплект поставки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Бойлер\r\nПредохранительный клапан\r\nИнструкция по эксплуатации\r\nГарантийный талон\r\nУпаковка</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Установка</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Вертикальная</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">91.6 х 46 х 46 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Наличие кабеля питания</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Нет</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100 x 51.7 x 51.7 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Титановая эмаль\r\nПенополиуретановая теплоизоляция\r\nТемпература нагрева воды: 75 ºС\r\nСистема \"Антимикс\"</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">26.0000 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">27.0000 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Цвет</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Белый</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип управления</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механическое</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Управление по Wi-Fi</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Без управления по Wi-Fi</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Украина</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>12 месяцев</b> официальной гарантии от производителя</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1722, 386, '_regular_price', '2422'),
(1723, 386, 'total_sales', '0'),
(1724, 386, '_tax_status', 'taxable'),
(1725, 386, '_tax_class', ''),
(1726, 386, '_manage_stock', 'no'),
(1727, 386, '_backorders', 'no'),
(1728, 386, '_sold_individually', 'no'),
(1729, 386, '_virtual', 'no'),
(1730, 386, '_downloadable', 'no'),
(1731, 386, '_download_limit', '-1'),
(1732, 386, '_download_expiry', '-1'),
(1733, 386, '_stock', NULL),
(1734, 386, '_stock_status', 'instock'),
(1735, 386, '_wc_average_rating', '0'),
(1736, 386, '_wc_review_count', '0'),
(1737, 386, '_product_attributes', 'a:8:{s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1738, 386, '_product_version', '3.6.4'),
(1739, 386, '_price', '2422'),
(1740, 386, '_product_image_gallery', '388'),
(1749, 391, '_wp_attached_file', '2019/06/Nova-Tec-St56756-3.jpg'),
(1750, 391, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:30:\"2019/06/Nova-Tec-St56756-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Nova-Tec-St56756-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1751, 391, '_wp_attachment_image_alt', 'Бойлер NOVA TEC'),
(1752, 382, '_thumbnail_id', '391'),
(1753, 382, '_product_attributes', 'a:7:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1754, 393, '_wp_attached_file', '2019/06/boyler-arti-wh-comby-100l-1.jpg'),
(1755, 393, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:631;s:4:\"file\";s:39:\"2019/06/boyler-arti-wh-comby-100l-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-416x417.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-416x417.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-arti-wh-comby-100l-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1758, 395, '_wp_attached_file', '2019/06/boyler-nova-tec-nt-s-100.jpg'),
(1759, 395, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:631;s:4:\"file\";s:36:\"2019/06/boyler-nova-tec-nt-s-100.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-416x417.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-416x417.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"boyler-nova-tec-nt-s-100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1760, 395, '_wp_attachment_image_alt', 'Водонагреватель NOVA TEC'),
(1761, 386, '_thumbnail_id', '395'),
(1762, 380, '_product_attributes', 'a:8:{s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1763, 378, '_product_attributes', 'a:8:{s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1764, 378, '_wp_old_slug', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d0%b5%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c-vogel-flug-svd100-4520-1h-%d0%bd%d0%b0-100-%d0%bb%d0%b8%d1%82%d1%80%d0%be%d0%b2'),
(1765, 380, '_wp_old_slug', '380'),
(1766, 368, '_wp_old_slug', 'novatec-standart-s%d1%80-100'),
(1767, 368, '_product_attributes', 'a:8:{s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1771, 398, '_wp_attached_file', '2019/06/boyler-arti-wh-comby-100l1.jpg'),
(1772, 398, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:630;s:4:\"file\";s:38:\"2019/06/boyler-arti-wh-comby-100l1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"boyler-arti-wh-comby-100l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1773, 398, '_wp_attachment_image_alt', 'Бойлер ARTI'),
(1774, 399, '_wp_attached_file', '2019/06/boyler-arti-wh-comby-100l1-1.jpg'),
(1775, 399, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:630;s:4:\"file\";s:40:\"2019/06/boyler-arti-wh-comby-100l1-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"boyler-arti-wh-comby-100l1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1776, 399, '_wp_attachment_image_alt', 'boyler arti'),
(1777, 380, '_thumbnail_id', '399'),
(1781, 401, '_wp_attached_file', '2019/06/vogel-flug-svd100-4520-1h.png'),
(1782, 401, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:568;s:4:\"file\";s:37:\"2019/06/vogel-flug-svd100-4520-1h.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-svd100-4520-1h-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1783, 401, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(1784, 378, '_thumbnail_id', '401'),
(1785, 378, '_wp_old_slug', 'vodonagrevatel-vogel-flug-svd100-4520-1h-na-100-litrov'),
(1786, 365, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-qtermo-100n-dry'),
(1787, 363, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-%d0%ba%d0%be%d0%bc%d0%b1%d0%b8%d0%bd%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b%d0%b9-eldom-thermo-100-1-5-kw-72270gntr'),
(1788, 406, '_wp_attached_file', '2019/06/eldom-thermo-100-1.5-kw-72270gntr.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1789, 406, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:45:\"2019/06/eldom-thermo-100-1.5-kw-72270gntr.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"eldom-thermo-100-1.5-kw-72270gntr-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1790, 406, '_wp_attachment_image_alt', 'Водонагреватель ELDOM'),
(1791, 363, '_thumbnail_id', '406'),
(1795, 408, '_edit_last', '1'),
(1796, 408, '_edit_lock', '1560778406:1'),
(1797, 408, '_thumbnail_id', '406'),
(1798, 408, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:8363:\"<table class=\"feature-t ng-star-inserted\" style=\"color: #4d4b4b;\">\r\n<tbody>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Объём</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100 л</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип установки</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Настенный</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Тип</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Бойлер комбинированный</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Количество теплообменников</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">1</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Электрический ТЭН</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Есть</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Мощность ТЭНа</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">1.5 кВт</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Индикатор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Механический</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Диаметр патрубков (выходов) подключения к котлу</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">12.7 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Регулятор температуры</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Механический</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Диаметр патрубков подключения холодной и горячей воды</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">12.7 мм</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Форма</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\">Цилиндрическая</span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Максимальное давление в баке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">8 бар</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Дополнительные характеристики</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Предохранительный клапан</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Особенности</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">Шесть степеней защиты\r\nЦиркониевая эмаль\r\nПодключение: слева</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">100х46х47.4 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Габариты в упаковке (ВхШхГ)</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">104х50х51.4 см</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">31 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Вес в упаковке</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\">32 кг</div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна-производитель товара</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Страна регистрации бренда</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\">Болгария</span></span></div></td>\r\n</tr>\r\n<tr class=\"ng-star-inserted\">\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-title features-full-view\" style=\"color: #797878;\"><span class=\"ng-star-inserted\">Гарантия</span></div></td>\r\n<td class=\"feature-t-cell\">\r\n<div class=\"feature-value features-full-view ng-star-inserted\"><span class=\"feature-value-inner\"><span class=\"ng-star-inserted\"><b>24 месяца</b> официальной гарантии от производителя на электрические элементы + <b>84 месяца</b> на бак</span></span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(1799, 408, '_regular_price', '4500'),
(1800, 408, 'total_sales', '3'),
(1801, 408, '_tax_status', 'taxable'),
(1802, 408, '_tax_class', ''),
(1803, 408, '_manage_stock', 'no'),
(1804, 408, '_backorders', 'no'),
(1805, 408, '_sold_individually', 'no'),
(1806, 408, '_virtual', 'no'),
(1807, 408, '_downloadable', 'no'),
(1808, 408, '_download_limit', '-1'),
(1809, 408, '_download_expiry', '-1'),
(1810, 408, '_stock', NULL),
(1811, 408, '_stock_status', 'instock'),
(1812, 408, '_wc_average_rating', '0'),
(1813, 408, '_wc_review_count', '0'),
(1814, 408, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(1815, 408, '_product_version', '3.6.4'),
(1816, 408, '_price', '4500'),
(1817, 411, '_wp_attached_file', '2019/06/boyler-vogel-flug-qu-10201h.jpg'),
(1818, 411, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:39:\"2019/06/boyler-vogel-flug-qu-10201h.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"boyler-vogel-flug-qu-10201h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1819, 411, '_wp_attachment_image_alt', 'Бойлер vogel flug'),
(1820, 359, '_thumbnail_id', '411'),
(1821, 359, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-vogel-flug-qu-1020-1h'),
(1822, 412, '_wp_attached_file', '2019/06/vogel-flug-qu-1020-1h-2.jpg'),
(1823, 412, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:295;s:4:\"file\";s:35:\"2019/06/vogel-flug-qu-1020-1h-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1824, 412, '_wp_attachment_image_alt', 'Vogel Flug QU 1020/1h'),
(1825, 413, '_wp_attached_file', '2019/06/vogel-flug-qu-1020-1h-3.jpg'),
(1826, 413, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:295;s:4:\"file\";s:35:\"2019/06/vogel-flug-qu-1020-1h-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1827, 413, '_wp_attachment_image_alt', 'Vogel Flug QU 1020/1h'),
(1828, 414, '_wp_attached_file', '2019/06/vogel-flug-qu-1020-1h-4.jpg'),
(1829, 414, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:295;s:4:\"file\";s:35:\"2019/06/vogel-flug-qu-1020-1h-4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-324x295.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-416x289.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"vogel-flug-qu-1020-1h-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1830, 414, '_wp_attachment_image_alt', 'Vogel Flug QU 1020/1h'),
(1831, 359, '_product_image_gallery', '412,413,414'),
(1897, 420, '_order_key', 'wc_order_CA3hK3dPfCudj'),
(1898, 420, '_customer_user', '1'),
(1899, 420, '_payment_method', 'bacs'),
(1900, 420, '_payment_method_title', 'Прямой банковский перевод'),
(1901, 420, '_customer_ip_address', '::1'),
(1902, 420, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(1903, 420, '_created_via', 'checkout'),
(1904, 420, '_cart_hash', 'c33cc060da71cfac2e3f8d77d02a9121'),
(1905, 420, '_billing_first_name', 'Ярослав'),
(1906, 420, '_billing_last_name', 'Власюк'),
(1907, 420, '_billing_email', 'vlas-jaro@ukr.net'),
(1908, 420, '_billing_phone', '099-194-97-27'),
(1909, 420, '_shipping_first_name', 'Ярослав'),
(1910, 420, '_shipping_last_name', 'Власюк'),
(1911, 420, '_order_currency', 'UAH'),
(1912, 420, '_cart_discount', '0'),
(1913, 420, '_cart_discount_tax', '0'),
(1914, 420, '_order_shipping', '80.00'),
(1915, 420, '_order_shipping_tax', '0'),
(1916, 420, '_order_tax', '0'),
(1917, 420, '_order_total', '5300.00'),
(1918, 420, '_order_version', '3.6.4'),
(1919, 420, '_prices_include_tax', 'no'),
(1920, 420, '_billing_address_index', 'Ярослав Власюк        vlas-jaro@ukr.net 099-194-97-27'),
(1921, 420, '_shipping_address_index', 'Ярослав Власюк       '),
(1922, 420, 'is_vat_exempt', 'no'),
(1923, 420, '_recorded_sales', 'yes'),
(1924, 420, '_recorded_coupon_usage_counts', 'yes'),
(1925, 420, '_order_stock_reduced', 'yes'),
(1926, 421, '_order_key', 'wc_order_LBCVyxPG8wCAS'),
(1927, 421, '_customer_user', '1'),
(1928, 421, '_payment_method', 'cod'),
(1929, 421, '_payment_method_title', 'Оплата при доставке'),
(1930, 421, '_customer_ip_address', '::1'),
(1931, 421, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(1932, 421, '_created_via', 'checkout'),
(1933, 421, '_cart_hash', '6a6eccbff3628617d38a1747b1613a6c'),
(1934, 421, '_billing_first_name', 'Ярослав'),
(1935, 421, '_billing_last_name', 'Власюк'),
(1936, 421, '_billing_address_1', 'ул. Мендеелева 12'),
(1937, 421, '_billing_address_2', 'кв 60'),
(1938, 421, '_billing_city', 'вапвапвпв'),
(1939, 421, '_billing_state', 'сарпваапвап'),
(1940, 421, '_billing_country', 'UA'),
(1941, 421, '_billing_email', 'vlas-jaro@ukr.net'),
(1942, 421, '_billing_phone', '099-194-97-27'),
(1943, 421, '_shipping_first_name', 'Ярослав'),
(1944, 421, '_shipping_last_name', 'Власюк'),
(1945, 421, '_shipping_address_1', 'ул. Мендеелева 12'),
(1946, 421, '_shipping_address_2', 'кв 60'),
(1947, 421, '_shipping_city', 'вапвапвпв'),
(1948, 421, '_shipping_state', 'сарпваапвап'),
(1949, 421, '_shipping_country', 'UA'),
(1950, 421, '_order_currency', 'UAH'),
(1951, 421, '_cart_discount', '0'),
(1952, 421, '_cart_discount_tax', '0'),
(1953, 421, '_order_shipping', '80.00'),
(1954, 421, '_order_shipping_tax', '0'),
(1955, 421, '_order_tax', '0'),
(1956, 421, '_order_total', '2750.00'),
(1957, 421, '_order_version', '3.6.4'),
(1958, 421, '_prices_include_tax', 'no'),
(1959, 421, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12 кв 60 вапвапвпв сарпваапвап  UA vlas-jaro@ukr.net 099-194-97-27'),
(1960, 421, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12 кв 60 вапвапвпв сарпваапвап  UA'),
(1961, 421, 'is_vat_exempt', 'no'),
(1962, 421, '_download_permissions_granted', 'yes'),
(1963, 421, '_recorded_sales', 'yes'),
(1964, 421, '_recorded_coupon_usage_counts', 'yes'),
(1965, 421, '_order_stock_reduced', 'yes'),
(1966, 422, '_order_key', 'wc_order_orVRGLDffodG4'),
(1967, 422, '_customer_user', '1'),
(1968, 422, '_payment_method', 'bacs'),
(1969, 422, '_payment_method_title', 'Прямой банковский перевод'),
(1970, 422, '_customer_ip_address', '::1'),
(1971, 422, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(1972, 422, '_created_via', 'checkout'),
(1973, 422, '_cart_hash', '34f81164bc695907dd697c363fe94707'),
(1974, 422, '_billing_first_name', 'Ярослав'),
(1975, 422, '_billing_last_name', 'Власюк'),
(1976, 422, '_billing_address_1', 'ул. Мендеелева 12'),
(1977, 422, '_billing_address_2', 'чяівпвап'),
(1978, 422, '_billing_city', 'Киев'),
(1979, 422, '_billing_state', 'Киевская'),
(1980, 422, '_billing_country', 'UA'),
(1981, 422, '_billing_email', 'vlas-jaro@ukr.net'),
(1982, 422, '_billing_phone', '099-194-97-27'),
(1983, 422, '_shipping_first_name', 'Ярослав'),
(1984, 422, '_shipping_last_name', 'Власюк'),
(1985, 422, '_shipping_address_1', 'ул. Мендеелева 12'),
(1986, 422, '_shipping_address_2', 'чяівпвап'),
(1987, 422, '_shipping_city', 'Киев'),
(1988, 422, '_shipping_state', 'Киевская'),
(1989, 422, '_shipping_country', 'UA'),
(1990, 422, '_order_currency', 'UAH'),
(1991, 422, '_cart_discount', '0'),
(1992, 422, '_cart_discount_tax', '0'),
(1993, 422, '_order_shipping', '80.00'),
(1994, 422, '_order_shipping_tax', '0'),
(1995, 422, '_order_tax', '0'),
(1996, 422, '_order_total', '4580.00'),
(1997, 422, '_order_version', '3.6.4'),
(1998, 422, '_prices_include_tax', 'no'),
(1999, 422, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA vlas-jaro@ukr.net 099-194-97-27'),
(2000, 422, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA'),
(2001, 422, 'is_vat_exempt', 'no'),
(2002, 422, '_recorded_sales', 'yes'),
(2003, 422, '_recorded_coupon_usage_counts', 'yes'),
(2004, 422, '_order_stock_reduced', 'yes'),
(2005, 423, '_order_key', 'wc_order_ho44Jrix7I5y2'),
(2006, 423, '_customer_user', '1'),
(2007, 423, '_payment_method', 'bacs'),
(2008, 423, '_payment_method_title', 'Прямой банковский перевод'),
(2009, 423, '_customer_ip_address', '::1'),
(2010, 423, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(2011, 423, '_created_via', 'checkout'),
(2012, 423, '_cart_hash', 'a901ba88f21111eb83aae03ffe6ccadb'),
(2013, 423, '_billing_first_name', 'Ярослав'),
(2014, 423, '_billing_last_name', 'Власюк'),
(2015, 423, '_billing_address_1', 'ул. Мендеелева 12'),
(2016, 423, '_billing_address_2', 'чяівпвап'),
(2017, 423, '_billing_city', 'Киев'),
(2018, 423, '_billing_state', 'Киевская'),
(2019, 423, '_billing_country', 'UA'),
(2020, 423, '_billing_email', 'vlas-jaro@ukr.net'),
(2021, 423, '_billing_phone', '099-194-97-27'),
(2022, 423, '_shipping_first_name', 'Ярослав'),
(2023, 423, '_shipping_last_name', 'Власюк'),
(2024, 423, '_shipping_address_1', 'ул. Мендеелева 12'),
(2025, 423, '_shipping_address_2', 'чяівпвап'),
(2026, 423, '_shipping_city', 'Киев'),
(2027, 423, '_shipping_state', 'Киевская'),
(2028, 423, '_shipping_country', 'UA'),
(2029, 423, '_order_currency', 'UAH'),
(2030, 423, '_cart_discount', '0'),
(2031, 423, '_cart_discount_tax', '0'),
(2032, 423, '_order_shipping', '80.00'),
(2033, 423, '_order_shipping_tax', '0'),
(2034, 423, '_order_tax', '0'),
(2035, 423, '_order_total', '4580.00'),
(2036, 423, '_order_version', '3.6.4'),
(2037, 423, '_prices_include_tax', 'no'),
(2038, 423, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA vlas-jaro@ukr.net 099-194-97-27'),
(2039, 423, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA'),
(2040, 423, 'is_vat_exempt', 'no'),
(2041, 423, '_recorded_sales', 'yes'),
(2042, 423, '_recorded_coupon_usage_counts', 'yes'),
(2043, 423, '_order_stock_reduced', 'yes'),
(2044, 424, '_order_key', 'wc_order_u9Ew8FeAt862F'),
(2045, 424, '_customer_user', '1'),
(2046, 424, '_payment_method', 'bacs'),
(2047, 424, '_payment_method_title', 'Прямой банковский перевод'),
(2048, 424, '_customer_ip_address', '::1'),
(2049, 424, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(2050, 424, '_created_via', 'checkout'),
(2051, 424, '_cart_hash', 'a901ba88f21111eb83aae03ffe6ccadb'),
(2052, 424, '_billing_first_name', 'Ярослав'),
(2053, 424, '_billing_last_name', 'Власюк'),
(2054, 424, '_billing_address_1', 'ул. Мендеелева 12'),
(2055, 424, '_billing_address_2', 'чяівпвап'),
(2056, 424, '_billing_city', 'Киев'),
(2057, 424, '_billing_state', 'Киевская'),
(2058, 424, '_billing_country', 'UA'),
(2059, 424, '_billing_email', 'vlas-jaro@ukr.net'),
(2060, 424, '_billing_phone', '099-194-97-27'),
(2061, 424, '_shipping_first_name', 'Ярослав'),
(2062, 424, '_shipping_last_name', 'Власюк'),
(2063, 424, '_shipping_address_1', 'ул. Мендеелева 12'),
(2064, 424, '_shipping_address_2', 'чяівпвап'),
(2065, 424, '_shipping_city', 'Киев'),
(2066, 424, '_shipping_state', 'Киевская'),
(2067, 424, '_shipping_country', 'UA'),
(2068, 424, '_order_currency', 'UAH'),
(2069, 424, '_cart_discount', '0'),
(2070, 424, '_cart_discount_tax', '0'),
(2071, 424, '_order_shipping', '80.00'),
(2072, 424, '_order_shipping_tax', '0'),
(2073, 424, '_order_tax', '0'),
(2074, 424, '_order_total', '4580.00'),
(2075, 424, '_order_version', '3.6.4'),
(2076, 424, '_prices_include_tax', 'no'),
(2077, 424, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA vlas-jaro@ukr.net 099-194-97-27'),
(2078, 424, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA'),
(2079, 424, 'is_vat_exempt', 'no'),
(2080, 424, '_recorded_sales', 'yes'),
(2081, 424, '_recorded_coupon_usage_counts', 'yes'),
(2082, 424, '_order_stock_reduced', 'yes'),
(2083, 425, '_order_key', 'wc_order_UIqy3u7mxdB4q'),
(2084, 425, '_customer_user', '1'),
(2085, 425, '_payment_method', 'cod'),
(2086, 425, '_payment_method_title', 'Оплата при доставке'),
(2087, 425, '_customer_ip_address', '::1'),
(2088, 425, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(2089, 425, '_created_via', 'checkout'),
(2090, 425, '_cart_hash', '9ee0ac45d539ef4a93aeecd3e6a4ef21'),
(2091, 425, '_billing_first_name', 'Ярослав'),
(2092, 425, '_billing_last_name', 'Власюк'),
(2093, 425, '_billing_address_1', 'ул. Мендеелева 12'),
(2094, 425, '_billing_address_2', 'чяівпвап'),
(2095, 425, '_billing_city', 'Киев'),
(2096, 425, '_billing_state', 'Киевская'),
(2097, 425, '_billing_country', 'UA'),
(2098, 425, '_billing_email', 'vlas-jaro@ukr.net'),
(2099, 425, '_billing_phone', '099-194-97-27'),
(2100, 425, '_shipping_first_name', 'Ярослав'),
(2101, 425, '_shipping_last_name', 'Власюк'),
(2102, 425, '_shipping_address_1', 'ул. Мендеелева 12'),
(2103, 425, '_shipping_address_2', 'чяівпвап'),
(2104, 425, '_shipping_city', 'Киев'),
(2105, 425, '_shipping_state', 'Киевская'),
(2106, 425, '_shipping_country', 'UA'),
(2107, 425, '_order_currency', 'UAH'),
(2108, 425, '_cart_discount', '0'),
(2109, 425, '_cart_discount_tax', '0'),
(2110, 425, '_order_shipping', '80.00'),
(2111, 425, '_order_shipping_tax', '0'),
(2112, 425, '_order_tax', '0'),
(2113, 425, '_order_total', '2374.00'),
(2114, 425, '_order_version', '3.6.4'),
(2115, 425, '_prices_include_tax', 'no'),
(2116, 425, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA vlas-jaro@ukr.net 099-194-97-27'),
(2117, 425, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12 чяівпвап Киев Киевская  UA'),
(2118, 425, 'is_vat_exempt', 'no'),
(2119, 425, '_download_permissions_granted', 'yes'),
(2120, 425, '_recorded_sales', 'yes'),
(2121, 425, '_recorded_coupon_usage_counts', 'yes'),
(2122, 425, '_order_stock_reduced', 'yes'),
(2123, 426, '_order_key', 'wc_order_b6o5HSCae9Uzt'),
(2124, 426, '_customer_user', '1'),
(2125, 426, '_payment_method', 'cod'),
(2126, 426, '_payment_method_title', 'Оплата при доставке'),
(2127, 426, '_customer_ip_address', '::1'),
(2128, 426, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36'),
(2129, 426, '_created_via', 'checkout'),
(2130, 426, '_cart_hash', 'a901ba88f21111eb83aae03ffe6ccadb'),
(2131, 426, '_billing_first_name', 'Ярослав'),
(2132, 426, '_billing_last_name', 'Власюк'),
(2133, 426, '_billing_address_1', 'ул. Мендеелева 12'),
(2134, 426, '_billing_city', 'Киев'),
(2135, 426, '_billing_state', 'Киевская'),
(2136, 426, '_billing_country', 'UA'),
(2137, 426, '_billing_email', 'vlas-jaro@ukr.net'),
(2138, 426, '_billing_phone', '099-194-97-27'),
(2139, 426, '_shipping_first_name', 'Ярослав'),
(2140, 426, '_shipping_last_name', 'Власюк'),
(2141, 426, '_shipping_address_1', 'ул. Мендеелева 12'),
(2142, 426, '_shipping_city', 'Киев'),
(2143, 426, '_shipping_state', 'Киевская'),
(2144, 426, '_shipping_country', 'UA'),
(2145, 426, '_order_currency', 'UAH'),
(2146, 426, '_cart_discount', '0'),
(2147, 426, '_cart_discount_tax', '0'),
(2148, 426, '_order_shipping', '80.00'),
(2149, 426, '_order_shipping_tax', '0'),
(2150, 426, '_order_tax', '0'),
(2151, 426, '_order_total', '4580.00'),
(2152, 426, '_order_version', '3.6.4'),
(2153, 426, '_prices_include_tax', 'no'),
(2154, 426, '_billing_address_index', 'Ярослав Власюк  ул. Мендеелева 12  Киев Киевская  UA vlas-jaro@ukr.net 099-194-97-27'),
(2155, 426, '_shipping_address_index', 'Ярослав Власюк  ул. Мендеелева 12  Киев Киевская  UA'),
(2156, 426, 'is_vat_exempt', 'no'),
(2157, 426, '_download_permissions_granted', 'yes'),
(2158, 426, '_recorded_sales', 'yes'),
(2159, 426, '_recorded_coupon_usage_counts', 'yes'),
(2160, 426, '_order_stock_reduced', 'yes'),
(2161, 428, '_wp_attached_file', '2019/06/eldom_extra_life_10_.jpg'),
(2162, 428, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:630;s:4:\"file\";s:32:\"2019/06/eldom_extra_life_10_.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"eldom_extra_life_10_-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"eldom_extra_life_10_-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2163, 428, '_wp_attachment_image_alt', 'Водонагрівач ELDOM'),
(2164, 357, '_thumbnail_id', '428'),
(2165, 357, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-eldom-extra-life-10-%d0%bd%d0%b0%d0%b4-%d0%bc%d0%be%d0%b9%d0%ba%d0%be%d0%b9-2-0-kw-72325nmp'),
(2166, 357, '_wp_old_slug', 'bojler-eldom-extra-life-10-nad-mojkoj-2-0-kw-72325nmp'),
(2167, 355, '_wp_old_slug', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d0%b5%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c-vogel-flug-su-1012-1h'),
(2168, 429, '_wp_attached_file', '2019/06/vogel-flug-su-10121h.png'),
(2169, 429, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:626;s:4:\"file\";s:32:\"2019/06/vogel-flug-su-10121h.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"vogel-flug-su-10121h-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2170, 429, '_wp_attachment_image_alt', 'Водонагреватель Vogel'),
(2171, 355, '_thumbnail_id', '429'),
(2172, 431, '_wp_attached_file', '2019/06/nova-tec-compact-under-10.jpg'),
(2173, 431, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:37:\"2019/06/nova-tec-compact-under-10.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"nova-tec-compact-under-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2174, 431, '_wp_attachment_image_alt', 'Водонагреватель nova-tec'),
(2175, 353, '_thumbnail_id', '431'),
(2176, 353, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-nova-tec-compact-under-10'),
(2177, 431, '_wp_old_slug', 'nova-tec-compact-under-10'),
(2178, 351, '_thumbnail_id', '431'),
(2179, 351, '_wp_old_slug', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-nova-tec-compact-over-10'),
(2180, 434, '_wp_attached_file', '2019/05/nova-tec-flat-nt-f-100.jpg'),
(2181, 434, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:265;s:4:\"file\";s:34:\"2019/05/nova-tec-flat-nt-f-100.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"nova-tec-flat-nt-f-100-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"nova-tec-flat-nt-f-100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"nova-tec-flat-nt-f-100-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2182, 434, '_wp_attachment_image_alt', 'Водонагреватель Nova Tec'),
(2183, 319, '_thumbnail_id', '434'),
(2184, 319, '_wp_old_slug', '319'),
(2185, 318, '_wp_attachment_image_alt', 'Бойлер ISTO'),
(2186, 289, '_wp_old_slug', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d0%b5%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c-isto-ivd-1004515-1h-%d0%bd%d0%b0-100-%d0%bb%d0%b8%d1%82%d1%80%d0%be%d0%b2'),
(2187, 317, '_wp_attachment_image_alt', 'Водонагреватель Eldom'),
(2188, 285, '_wp_old_slug', '%d0%bf%d1%80%d0%be%d1%82%d0%be%d1%87%d0%bd%d1%8b%d0%b9-%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d0%b5%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c-eldom-3-5-kw-e42'),
(2189, 315, '_wp_attachment_image_alt', 'Водонагреватель Eldom'),
(2190, 249, '_wp_old_slug', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d1%96%d0%b2%d0%b0%d1%87-eldom-eureka-30-slim-2x0-8-kw-wv03039d'),
(2191, 435, '_edit_last', '1'),
(2192, 435, '_edit_lock', '1560780937:1'),
(2193, 436, '_tablepress_table_options', '{\"last_editor\":1,\"table_head\":true,\"table_foot\":false,\"alternating_row_colors\":true,\"row_hover\":true,\"print_name\":false,\"print_name_position\":\"above\",\"print_description\":false,\"print_description_position\":\"below\",\"extra_css_classes\":\"\",\"use_datatables\":true,\"datatables_sort\":true,\"datatables_filter\":true,\"datatables_paginate\":true,\"datatables_lengthchange\":true,\"datatables_paginate_entries\":10,\"datatables_info\":true,\"datatables_scrollx\":false,\"datatables_custom_commands\":\"\"}'),
(2194, 436, '_tablepress_table_visibility', '{\"rows\":[1,1,1,1,1],\"columns\":[1,1,1,1,1]}'),
(2195, 435, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:2499:\"<table>\r\n<tbody>\r\n<tr>\r\n<td>Тип бойлера (водонагревателя)</td>\r\n<td><b>электрический</b></td>\r\n</tr>\r\n<tr>\r\n<td>Место установки</td>\r\n<td><b>ванная, кухня, туалет</b></td>\r\n</tr>\r\n<tr>\r\n<td>Бренд</td>\r\n<td><b>Vogel Flug</b></td>\r\n</tr>\r\n<tr>\r\n<td>Объём, л</td>\r\n<td><b>100 л</b></td>\r\n</tr>\r\n<tr>\r\n<td>Мощность, Вт</td>\r\n<td><b>2000 Вт</b></td>\r\n</tr>\r\n<tr>\r\n<td>Тип ТЭНа</td>\r\n<td><b>сухой</b></td>\r\n</tr>\r\n<tr>\r\n<td>Высота, мм</td>\r\n<td><b>420 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td>Ширина, мм</td>\r\n<td><b>1085 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td>Глубина, мм</td>\r\n<td><b>430 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td>Форма</td>\r\n<td><b>цилиндрическая</b></td>\r\n</tr>\r\n<tr>\r\n<td>Питание, V</td>\r\n<td><b>230V</b></td>\r\n</tr>\r\n<tr>\r\n<td>Монтажное положение</td>\r\n<td><b>горизонтальное</b></td>\r\n</tr>\r\n<tr>\r\n<td>Тип установки</td>\r\n<td><b>горизонтальный</b></td>\r\n</tr>\r\n<tr>\r\n<td>Тип управления</td>\r\n<td><b>механический</b></td>\r\n</tr>\r\n<tr>\r\n<td>Оснащение</td>\r\n<td><b>магниевый анод, защита от перегрева, предохранительный клапан</b></td>\r\n</tr>\r\n<tr>\r\n<td>Цвет</td>\r\n<td><b>белый</b></td>\r\n</tr>\r\n<tr>\r\n<td>Вес пустого бака, кг</td>\r\n<td><b>40 кг</b></td>\r\n</tr>\r\n<tr>\r\n<td>Максимальная температура нагрева, C max</td>\r\n<td><b>+75°С</b></td>\r\n</tr>\r\n<tr>\r\n<td>Давление</td>\r\n<td><b>8 bar</b></td>\r\n</tr>\r\n<tr>\r\n<td>Подключение</td>\r\n<td><b>G 1/2\"</b></td>\r\n</tr>\r\n<tr>\r\n<td>Материал внутреннего бака</td>\r\n<td><b>сталь с эмалевым покрытием</b></td>\r\n</tr>\r\n<tr>\r\n<td>Регулятор температуры</td>\r\n<td><b>открытый / на корпусе</b></td>\r\n</tr>\r\n<tr>\r\n<td>Толщина теплоизоляции, мм</td>\r\n<td><b>40 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td>Толщина стенки металла, мм</td>\r\n<td><b>2.2 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td>Гарантия производителя</td>\r\n<td><b>24 месяца</b></td>\r\n</tr>\r\n<tr>\r\n<td>Страна регистрации бренда</td>\r\n<td><b>Австрия</b></td>\r\n</tr>\r\n<tr>\r\n<td>Страна-производитель</td>\r\n<td><b>Австрия</b></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2196, 435, 'total_sales', '0'),
(2197, 435, '_tax_status', 'taxable'),
(2198, 435, '_tax_class', ''),
(2199, 435, '_manage_stock', 'no'),
(2200, 435, '_backorders', 'no'),
(2201, 435, '_sold_individually', 'no'),
(2202, 435, '_virtual', 'no'),
(2203, 435, '_downloadable', 'no'),
(2204, 435, '_download_limit', '-1'),
(2205, 435, '_download_expiry', '-1'),
(2206, 435, '_stock', NULL),
(2207, 435, '_stock_status', 'instock'),
(2208, 435, '_wc_average_rating', '0'),
(2209, 435, '_wc_review_count', '0'),
(2210, 435, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2211, 435, '_product_version', '3.6.4'),
(2212, 435, '_regular_price', '5400'),
(2213, 435, '_price', '5400'),
(2217, 438, '_wp_attached_file', '2019/06/vogel-flug-khd100-4220-2h-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2218, 438, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:39:\"2019/06/vogel-flug-khd100-4220-2h-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2219, 438, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(2220, 439, '_wp_attached_file', '2019/06/vogel-flug-khd100-4220-2h-3.jpg'),
(2221, 439, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:39:\"2019/06/vogel-flug-khd100-4220-2h-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2222, 439, '_wp_attachment_image_alt', ''),
(2223, 440, '_wp_attached_file', '2019/06/vogel-flug-khd100-4220-2h-4.jpg'),
(2224, 440, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:39:\"2019/06/vogel-flug-khd100-4220-2h-4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-khd100-4220-2h-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2225, 440, '_wp_attachment_image_alt', ''),
(2227, 435, '_product_image_gallery', '438,439,440'),
(2231, 442, '_wp_attached_file', '2019/06/vogel-flug-khd100-4220-2h.jpg'),
(2232, 442, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2019/06/vogel-flug-khd100-4220-2h.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-khd100-4220-2h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2233, 442, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(2234, 435, '_thumbnail_id', '442'),
(2235, 443, '_edit_last', '1'),
(2236, 443, '_edit_lock', '1560872949:1'),
(2237, 443, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:3132:\"<table>\r\n<tbody>\r\n<tr>\r\n<td><span>Тип бойлера (водонагревателя)</span></td>\r\n<td><span>электрический</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Место установки</span></td>\r\n<td><span>ванная, кухня, туалет, душ</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Бренд</span></td>\r\n<td><span>Vogel Flug</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Объём, л</span></td>\r\n<td><span>100 л</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Мощность, Вт</span></td>\r\n<td><span>2000 Вт</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Тип ТЭНа </span></td>\r\n<td><span>сухой</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Высота, мм</span></td>\r\n<td><span>1100 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Ширина, мм</span></td>\r\n<td><span>435 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Глубина, мм</span></td>\r\n<td><span>440 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Форма</span></td>\r\n<td><span>прямоугольная</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Питание, V</span></td>\r\n<td><span>230V</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Монтажное положение</span></td>\r\n<td><span>вертикальное</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Тип установки</span></td>\r\n<td><span>настенный</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Тип управления</span></td>\r\n<td><span>механический</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Оснащение</span></td>\r\n<td><span>индикатор температуры, магниевый анод, регулятор температуры</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Цвет</span></td>\r\n<td><span>белый</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Вес пустого бака, кг</span></td>\r\n<td><span>40 кг</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Максимальная температура нагрева, C max</span></td>\r\n<td><span>+75°C</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Давление</span></td>\r\n<td><span>6 bar</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Подключение</span></td>\r\n<td><span>G 1/2\"</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Материал корпуса</span></td>\r\n<td><span>окрашенная сталь</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Материал внутреннего бака</span></td>\r\n<td><span>стеклокерамическое титановое</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Регулятор температуры</span></td>\r\n<td><span>открытый / на корпусе</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Толщина теплоизоляции, мм</span></td>\r\n<td><span>40 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Толщина стенки металла, мм</span></td>\r\n<td><span>2.2 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Гарантия производителя</span></td>\r\n<td><span>24 месяца</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Страна регистрации бренда</span></td>\r\n<td><span>Австрия</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Страна-производитель</span></td>\r\n<td><span>Австрия</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2238, 444, '_wp_attached_file', '2019/06/vogel-flug-qvd100-4220-2h.jpg'),
(2239, 444, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2019/06/vogel-flug-qvd100-4220-2h.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"vogel-flug-qvd100-4220-2h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2240, 444, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(2241, 445, '_wp_attached_file', '2019/06/vogel-flug-qvd100-4220-2h-2.jpg'),
(2242, 445, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:39:\"2019/06/vogel-flug-qvd100-4220-2h-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2243, 445, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(2244, 446, '_wp_attached_file', '2019/06/vogel-flug-qvd100-4220-2h-3.jpg'),
(2245, 446, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:39:\"2019/06/vogel-flug-qvd100-4220-2h-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"vogel-flug-qvd100-4220-2h-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2246, 446, '_wp_attachment_image_alt', 'Водонагреватель Vogel Flug'),
(2247, 443, '_thumbnail_id', '444'),
(2248, 443, '_regular_price', '6390'),
(2249, 443, 'total_sales', '0'),
(2250, 443, '_tax_status', 'taxable'),
(2251, 443, '_tax_class', ''),
(2252, 443, '_manage_stock', 'no'),
(2253, 443, '_backorders', 'no'),
(2254, 443, '_sold_individually', 'no'),
(2255, 443, '_virtual', 'no'),
(2256, 443, '_downloadable', 'no'),
(2257, 443, '_download_limit', '-1'),
(2258, 443, '_download_expiry', '-1'),
(2259, 443, '_stock', NULL),
(2260, 443, '_stock_status', 'instock'),
(2261, 443, '_wc_average_rating', '0'),
(2262, 443, '_wc_review_count', '0'),
(2263, 443, '_product_attributes', 'a:8:{s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2264, 443, '_product_version', '3.6.4'),
(2265, 443, '_price', '6390'),
(2266, 443, '_product_image_gallery', '445,446'),
(2267, 447, '_edit_last', '1'),
(2268, 447, '_edit_lock', '1560873073:1'),
(2269, 447, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:0:\"\";s:2:\"id\";s:0:\"\";s:7:\"content\";s:1284:\"<table>\r\n<tbody>\r\n<tr>\r\n<td>Мощность</td>\r\n<td>2000 Вт</td>\r\n</tr>\r\n<tr>\r\n<td>Кол-во/мощность ТЭНов</td>\r\n<td>1х2000 Вт</td>\r\n</tr>\r\n<tr>\r\n<td>Объем</td>\r\n<td>100 л</td>\r\n</tr>\r\n<tr>\r\n<td>Форма</td>\r\n<td>Цилиндрическая</td>\r\n</tr>\r\n<tr>\r\n<td>Индикатор температуры</td>\r\n<td>Механический</td>\r\n</tr>\r\n<tr>\r\n<td>Регулятор температуры</td>\r\n<td>Открытый (на корпусе)</td>\r\n</tr>\r\n<tr>\r\n<td>Тип нагревательного элемента (ТЭНа)</td>\r\n<td>Открытый \"мокрый\" (непосредственно контактирует с водой)</td>\r\n</tr>\r\n<tr>\r\n<td>Материал внутреннего бака</td>\r\n<td>Титановая эмаль</td>\r\n</tr>\r\n<tr>\r\n<td>Установка</td>\r\n<td>Вертикальная</td>\r\n</tr>\r\n<tr>\r\n<td>Габариты (ВхШхГ)</td>\r\n<td>1000x435x455 мм см</td>\r\n</tr>\r\n<tr>\r\n<td>Вес</td>\r\n<td>26,8 кг. кг</td>\r\n</tr>\r\n<tr>\r\n<td>Тип установки</td>\r\n<td>Настенный</td>\r\n</tr>\r\n<tr>\r\n<td>Тип управления</td>\r\n<td>Механическое</td>\r\n</tr>\r\n<tr>\r\n<td>Гарантия</td>\r\n<td>24 месяца</td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2274, 447, '_regular_price', '3720'),
(2275, 447, 'total_sales', '0'),
(2276, 447, '_tax_status', 'taxable'),
(2277, 447, '_tax_class', ''),
(2278, 447, '_manage_stock', 'no'),
(2279, 447, '_backorders', 'no'),
(2280, 447, '_sold_individually', 'no'),
(2281, 447, '_virtual', 'no'),
(2282, 447, '_downloadable', 'no'),
(2283, 447, '_download_limit', '-1'),
(2284, 447, '_download_expiry', '-1'),
(2285, 447, '_stock', NULL),
(2286, 447, '_stock_status', 'instock'),
(2287, 447, '_wc_average_rating', '0'),
(2288, 447, '_wc_review_count', '0'),
(2289, 447, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2290, 447, '_product_version', '3.6.4'),
(2291, 447, '_price', '3720'),
(2292, 449, '_wp_attached_file', '2019/06/eldom-favorite-50-slim-x-20-kw-wh05039-l.jpg'),
(2293, 449, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:52:\"2019/06/eldom-favorite-50-slim-x-20-kw-wh05039-l.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"eldom-favorite-50-slim-x-20-kw-wh05039-l-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2294, 449, '_wp_attachment_image_alt', 'Водонагреватель Eldom'),
(2295, 447, '_thumbnail_id', '449'),
(2296, 447, '_wp_old_slug', 'vodonagrevatel-eldom-favorite-50-slim-x-2-0-kw-wh05039-l'),
(2297, 450, '_edit_last', '1'),
(2298, 450, '_edit_lock', '1560874553:1'),
(2299, 450, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:3033:\"<table>\r\n<tbody>\r\n<tr>\r\n<td><span>Объем:</span></td>\r\n<td><span>120 л</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Тип ТЭНа: </span></td>\r\n<td><span>Скрытый (Сухой ТЭН)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Количество ТЭНов: </span></td>\r\n<td><span>2</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Номинальная мощность:</span></td>\r\n<td><span>2000 Вт</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Мощность ТЭНа:</span></td>\r\n<td><span>2х1000 Вт</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Максимальная температура нагрева:</span></td>\r\n<td><span>75 °C</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Установка:</span></td>\r\n<td><span>Вертикальная</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Подводка труб:</span></td>\r\n<td><span>Нижняя</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Форма:</span></td>\r\n<td><span>Цилиндрическая</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Тип управления:</span></td>\r\n<td><span>Механическое</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Smart-управление: </span></td>\r\n<td><span>Нет</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Регулятор мощности:</span></td>\r\n<td><span>Открытый (на корпусе)</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Индикатор температуры:</span></td>\r\n<td><span>Механический</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Материал покрытия бака: </span></td>\r\n<td><span>Сталь с эмалевым покрытием</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Особенности: </span></td>\r\n<td><span>Защита от накипи</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Дополнительно:</span></td>\r\n<td><span>Внешний капиллярный термостат</span>\r\n\r\n<span>Капиллярный термовыключатель</span>\r\n\r\n<span>Электрический трубчатый элемент нагрева</span>\r\n\r\n<span>Комбинированный металлический предохранительный клапан «3 в 1»</span>\r\n\r\n<span>Водонепроницаемый переключатель с подсветкой</span>\r\n\r\n<span>Два магниевых анода</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Цвет:</span></td>\r\n<td><span>Белый</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Страна производитель:</span></td>\r\n<td><span>Болгария</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Габариты (ВхШхГ):</span></td>\r\n<td><span>117 x 46,2 x 48,4 мм</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Вес, кг:</span></td>\r\n<td><span>33.5 кг</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Габариты в упаковке (ВхШхГ):</span></td>\r\n<td><span>123 х 48 х 50 см</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Вес в упаковке:</span></td>\r\n<td><span>36 кг</span></td>\r\n</tr>\r\n<tr>\r\n<td><span>Инструкция:</span></td>\r\n<td><span>Eldom Eureka 120 2x1.0 kW WV12046D</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2300, 451, '_wp_attached_file', '2019/06/eldom-eureka-120-2x1.0-kw-wv12046d.jpg'),
(2301, 451, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:46:\"2019/06/eldom-eureka-120-2x1.0-kw-wv12046d.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"eldom-eureka-120-2x1.0-kw-wv12046d-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2302, 451, '_wp_attachment_image_alt', 'Водонагреватель Eldom'),
(2303, 452, '_wp_attached_file', '2019/06/eldom-eureka-120-2x1.0-kw-wv12046d-2.jpg'),
(2304, 452, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:415;s:4:\"file\";s:48:\"2019/06/eldom-eureka-120-2x1.0-kw-wv12046d-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-416x288.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:288;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"eldom-eureka-120-2x1.0-kw-wv12046d-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2305, 452, '_wp_attachment_image_alt', 'Водонагреватель Eldom'),
(2306, 450, '_thumbnail_id', '451'),
(2307, 450, '_regular_price', '5100'),
(2308, 450, 'total_sales', '0'),
(2309, 450, '_tax_status', 'taxable'),
(2310, 450, '_tax_class', ''),
(2311, 450, '_manage_stock', 'no'),
(2312, 450, '_backorders', 'no'),
(2313, 450, '_sold_individually', 'no'),
(2314, 450, '_virtual', 'no'),
(2315, 450, '_downloadable', 'no'),
(2316, 450, '_download_limit', '-1'),
(2317, 450, '_download_expiry', '-1'),
(2318, 450, '_stock', NULL),
(2319, 450, '_stock_status', 'instock'),
(2320, 450, '_wc_average_rating', '0'),
(2321, 450, '_wc_review_count', '0'),
(2322, 450, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2323, 450, '_product_version', '3.6.4'),
(2324, 450, '_price', '5100'),
(2325, 450, '_product_image_gallery', '452'),
(2326, 453, '_edit_last', '1'),
(2327, 453, '_edit_lock', '1561203588:1'),
(2328, 453, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:2802:\"<table style=\"font-size: 16px;\">\r\n<tbody>\r\n<tr>\r\n<td><b>Объем:</b></td>\r\n<td><b>15 л</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Тип ТЭНа: </b></td>\r\n<td><b>Открытый (Мокрый ТЭН)</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Количество ТЭНов: </b></td>\r\n<td><b>1</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Номинальная мощность:</b></td>\r\n<td><b>1500 Вт</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Мощность ТЭНа:</b></td>\r\n<td><b>1 x 1500 Вт</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Максимальная температура нагрева:</b></td>\r\n<td><b>75 °C</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Установка:</b></td>\r\n<td><b>Вертикально над раковиной</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Подводка труб:</b></td>\r\n<td><b>Нижняя</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Форма:</b></td>\r\n<td><b>Кубическая</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Тип управления:</b></td>\r\n<td><b>Механическое</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Smart-управление: </b></td>\r\n<td><b>Нет</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Регулятор мощности:</b></td>\r\n<td><b>Открытый (на корпусе)</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Индикатор температуры:</b></td>\r\n<td><b>Нет</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Материал покрытия бака: </b></td>\r\n<td><b>Сталь с эмалевым покрытием</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Особенности: </b></td>\r\n<td><b>Защита от накипи, ІР24</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Дополнительно:</b></td>\r\n<td><b>Время нагрева: 0.35 ч (до 75°С) ч</b>\r\n\r\n<b>Тип ТЭНа: открытый, фланцевый, нержавейка</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Цвет:</b></td>\r\n<td><b>Белый</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Страна производитель:</b></td>\r\n<td><b>Украина</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Габариты (ВхШхГ):</b></td>\r\n<td><b>355 х 355 х 325 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Вес, кг:</b></td>\r\n<td><b>7.8 кг</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Габариты в упаковке (ВхШхГ):</b></td>\r\n<td><b>390 х 390 х 395 мм</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Вес в упаковке:</b></td>\r\n<td><b>9,4 кг</b></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3><b>Гарантия</b></h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><b>Гарантийный срок:</b></td>\r\n<td><b>Внутренний бак - 7 лет, электрическая часть - 2 года</b></td>\r\n</tr>\r\n<tr>\r\n<td><b>Дополнительно:</b></td>\r\n<td><b>Характеристики и комплектация товара могут быть изменены производителем без уведомления.</b></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2329, 453, 'total_sales', '0'),
(2330, 453, '_tax_status', 'taxable'),
(2331, 453, '_tax_class', ''),
(2332, 453, '_manage_stock', 'no'),
(2333, 453, '_backorders', 'no'),
(2334, 453, '_sold_individually', 'no'),
(2335, 453, '_virtual', 'no'),
(2336, 453, '_downloadable', 'no'),
(2337, 453, '_download_limit', '-1'),
(2338, 453, '_download_expiry', '-1'),
(2339, 453, '_stock', NULL),
(2340, 453, '_stock_status', 'instock'),
(2341, 453, '_wc_average_rating', '0'),
(2342, 453, '_wc_review_count', '0'),
(2343, 453, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2344, 453, '_product_version', '3.6.4'),
(2345, 454, '_wp_attached_file', '2019/06/nova-tec-compact-over-15.jpg'),
(2346, 454, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2019/06/nova-tec-compact-over-15.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"nova-tec-compact-over-15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2347, 454, '_wp_attachment_image_alt', 'Водонагреватель NOVA TEC'),
(2348, 453, '_thumbnail_id', '454'),
(2349, 453, '_regular_price', '2439'),
(2350, 453, '_price', '2439'),
(2351, 455, '_edit_last', '1'),
(2352, 455, '_edit_lock', '1561204337:1'),
(2353, 455, 'yikes_woo_products_tabs', 'a:1:{i:0;a:3:{s:5:\"title\";s:28:\"Характеристики\";s:2:\"id\";s:14:\"harakteristiki\";s:7:\"content\";s:864:\"<table>\r\n<tbody>\r\n<tr>\r\n<td>Объем бака (л)</td>\r\n<td><b>15</b></td>\r\n</tr>\r\n<tr>\r\n<td>Тип нагревательного элемента (ТЭНа)</td>\r\n<td><b>открытый, фланцевый, нержавейка</b></td>\r\n</tr>\r\n<tr>\r\n<td>Мощность, Вт</td>\r\n<td><b>1500 Вт</b></td>\r\n</tr>\r\n<tr>\r\n<td>Тип управления</td>\r\n<td><b>механическое (наружный регулятор)</b></td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж</td>\r\n<td><b>вертикальный, в исполнении под мойкой</b></td>\r\n</tr>\r\n<tr>\r\n<td>Шнур питания (длина)</td>\r\n<td><b>1 метр</b></td>\r\n</tr>\r\n<tr>\r\n<td>Гарантия на бак (лет)</td>\r\n<td><b>7</b></td>\r\n</tr>\r\n<tr>\r\n<td>Гарантия на электрогруппу (лет)</td>\r\n<td><b>2</b></td>\r\n</tr>\r\n</tbody>\r\n</table>\";}}'),
(2354, 455, 'total_sales', '0'),
(2355, 455, '_tax_status', 'taxable'),
(2356, 455, '_tax_class', ''),
(2357, 455, '_manage_stock', 'no'),
(2358, 455, '_backorders', 'no'),
(2359, 455, '_sold_individually', 'no'),
(2360, 455, '_virtual', 'no'),
(2361, 455, '_downloadable', 'no'),
(2362, 455, '_download_limit', '-1'),
(2363, 455, '_download_expiry', '-1'),
(2364, 455, '_stock', NULL),
(2365, 455, '_stock_status', 'instock'),
(2366, 455, '_wc_average_rating', '0'),
(2367, 455, '_wc_review_count', '0'),
(2368, 455, '_product_attributes', 'a:8:{s:8:\"pa_forma\";a:6:{s:4:\"name\";s:8:\"pa_forma\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:17:\"pa_mesto-montazha\";a:6:{s:4:\"name\";s:17:\"pa_mesto-montazha\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_moshhnost-vt\";a:6:{s:4:\"name\";s:15:\"pa_moshhnost-vt\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:11:\"pa_obemov-l\";a:6:{s:4:\"name\";s:11:\"pa_obemov-l\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"3\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:15:\"pa_proizvoditel\";a:6:{s:4:\"name\";s:15:\"pa_proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"4\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_tip-tjena\";a:6:{s:4:\"name\";s:12:\"pa_tip-tjena\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"5\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:18:\"pa_tip-upravlenija\";a:6:{s:4:\"name\";s:18:\"pa_tip-upravlenija\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"6\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:12:\"pa_ustanovka\";a:6:{s:4:\"name\";s:12:\"pa_ustanovka\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"7\";s:10:\"is_visible\";s:1:\"0\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(2369, 455, '_product_version', '3.6.4'),
(2370, 454, '_wp_old_slug', 'nova-tec-compact-over-15'),
(2371, 455, '_thumbnail_id', '454'),
(2372, 455, '_regular_price', '2439'),
(2373, 455, '_price', '2439'),
(2374, 275, '_wp_old_slug', '%d0%bf%d1%80%d0%b0%d0%b9%d1%81-%d0%bb%d0%b8%d1%81%d1%82-xlsx');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-24 12:25:46', '2019-05-24 09:25:46', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-05-24 12:25:46', '2019-05-24 09:25:46', '', 0, 'http://localhost/magazine/?p=1', 0, 'post', '', 4),
(2, 1, '2019-05-24 12:25:46', '2019-05-24 09:25:46', '<!-- wp:image {\"id\":193,\"align\":\"left\",\"width\":200,\"height\":164} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\" width=\"200\" height=\"164\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О нас', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2019-05-26 07:57:44', '2019-05-26 04:57:44', '', 0, 'http://localhost/magazine/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-24 12:25:46', '2019-05-24 09:25:46', '<!-- wp:heading -->\n<h2>Кто мы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш адрес сайта: http://localhost/magazine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие персональные данные мы собираем и с какой целью</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Комментарии</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Медиафайлы</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Формы контактов</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Куки</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Встраиваемое содержимое других вебсайтов</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Веб-аналитика</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куда мы отправляем ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Ваша контактная информация</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Дополнительная информация</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как мы защищаем ваши данные</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Какие принимаются процедуры против взлома данных</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>От каких третьих сторон мы получаем данные</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Какие автоматические решения принимаются на основе данных пользователей</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Требования к раскрытию отраслевых нормативных требований</h3>\n<!-- /wp:heading -->', 'Политика конфиденциальности', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2019-05-28 14:16:59', '2019-05-28 11:16:59', '', 0, 'http://localhost/magazine/?page_id=3', 0, 'page', '', 0),
(10, 1, '2019-05-24 17:07:25', '2019-05-24 14:07:25', '', 'Каталог товаров', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-05-29 20:08:30', '2019-05-29 17:08:30', '', 0, 'http://localhost/magazine/shop/', 0, 'page', '', 0),
(11, 1, '2019-05-24 17:07:25', '2019-05-24 14:07:25', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-05-28 14:17:09', '2019-05-28 11:17:09', '', 0, 'http://localhost/magazine/cart/', 0, 'page', '', 0),
(12, 1, '2019-05-24 17:07:25', '2019-05-24 14:07:25', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart][woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-06-16 18:03:28', '2019-06-16 15:03:28', '', 0, 'http://localhost/magazine/checkout/', 0, 'page', '', 0),
(13, 1, '2019-05-24 17:07:25', '2019-05-24 14:07:25', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-05-28 14:17:05', '2019-05-28 11:17:05', '', 0, 'http://localhost/magazine/my-account/', 0, 'page', '', 0),
(83, 1, '2019-05-25 15:09:23', '2019-05-25 12:09:23', 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597.png', 'cropped-images-e1558786131597.png', '', 'inherit', 'open', 'closed', '', 'cropped-images-e1558786131597-png', '', '', '2019-05-25 15:09:23', '2019-05-25 12:09:23', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2019-05-25 15:12:19', '2019-05-25 12:12:19', 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597-1.png', 'cropped-images-e1558786131597-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-images-e1558786131597-1-png', '', '', '2019-05-25 15:12:19', '2019-05-25 12:12:19', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2019-05-25 15:12:56', '2019-05-25 12:12:56', 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597-2.png', 'cropped-images-e1558786131597-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-images-e1558786131597-2-png', '', '', '2019-05-25 15:12:56', '2019-05-25 12:12:56', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-images-e1558786131597-2.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2019-05-25 16:46:45', '2019-05-25 13:46:45', '', '4014703-driver-mobile-phone-repair-screw-service-wrench_112878', '', 'inherit', 'open', 'closed', '', '4014703-driver-mobile-phone-repair-screw-service-wrench_112878', '', '', '2019-05-27 19:25:26', '2019-05-27 16:25:26', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/4014703-driver-mobile-phone-repair-screw-service-wrench_112878.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2019-05-25 17:00:52', '2019-05-25 14:00:52', 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-13964594944341.png', 'cropped-13964594944341.png', '', 'inherit', 'open', 'closed', '', 'cropped-13964594944341-png', '', '', '2019-05-25 17:00:52', '2019-05-25 14:00:52', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-13964594944341.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2019-05-25 17:18:11', '2019-05-25 14:18:11', '', 'brickwall', '', 'inherit', 'open', 'closed', '', 'brickwall', '', '', '2019-05-25 17:18:11', '2019-05-25 14:18:11', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/brickwall.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2019-05-25 17:24:32', '2019-05-25 14:24:32', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-05-25 17:24:32', '2019-05-25 14:24:32', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/logo-1.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2019-05-25 17:29:02', '2019-05-25 14:29:02', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2019-05-25 17:30:33', '2019-05-25 14:30:33', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/logo.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2019-05-25 19:53:57', '2019-05-25 16:53:57', 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2019-05-25 19:53:57', '2019-05-25 16:53:57', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2019-05-25 20:07:30', '2019-05-25 17:07:30', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/magazine.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-25 20:07:30', '2019-05-25 17:07:30', '', 3, 'http://localhost/magazine/2019/05/25/3-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2019-05-25 20:16:03', '2019-05-25 17:16:03', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-25 20:16:03', '2019-05-25 17:16:03', '', 10, 'http://localhost/magazine/2019/05/25/10-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2019-05-25 20:17:01', '2019-05-25 17:17:01', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-25 20:17:01', '2019-05-25 17:17:01', '', 13, 'http://localhost/magazine/2019/05/25/13-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-05-25 20:17:04', '2019-05-25 17:17:04', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/magazine/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-25 20:17:04', '2019-05-25 17:17:04', '', 2, 'http://localhost/magazine/2019/05/25/2-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2019-05-25 20:19:21', '2019-05-25 17:19:21', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-05-25 20:19:21', '2019-05-25 17:19:21', '', 12, 'http://localhost/magazine/2019/05/25/12-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-05-25 20:20:40', '2019-05-25 17:20:40', '', 'Статьи', '', 'publish', 'closed', 'closed', '', 'katalog', '', '', '2019-06-12 18:31:40', '2019-06-12 15:31:40', '', 0, 'http://localhost/magazine/?page_id=128', 0, 'page', '', 0),
(129, 1, '2019-05-25 20:20:40', '2019-05-25 17:20:40', '', 'Каталог', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-05-25 20:20:40', '2019-05-25 17:20:40', '', 128, 'http://localhost/magazine/2019/05/25/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-05-25 20:22:35', '2019-05-25 17:22:35', '<!-- wp:paragraph -->\r\n<p>Приветствуем!<br />Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты</p>\r\n<p><img class=\"wp-image-210 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-300x213.png\" alt=\"\" width=\"176\" height=\"125\" /><img class=\"wp-image-203 alignnone\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"139\" height=\"139\" /></p>\r\n<!-- /wp:paragraph -->\r\n<p><img class=\"alignnone  wp-image-211 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-1-300x213.png\" alt=\"\" width=\"160\" height=\"114\" /></p>', 'Доставка и оплата', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2019-06-12 18:28:48', '2019-06-12 15:28:48', '', 0, 'http://localhost/magazine/?page_id=130', 0, 'page', '', 0),
(131, 1, '2019-05-25 20:22:21', '2019-05-25 17:22:21', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-25 20:22:21', '2019-05-25 17:22:21', '', 130, 'http://localhost/magazine/2019/05/25/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-05-25 20:28:56', '2019-05-25 17:28:56', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Корзина', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-05-25 20:28:56', '2019-05-25 17:28:56', '', 11, 'http://localhost/magazine/2019/05/25/11-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-05-25 20:45:57', '2019-05-25 17:45:57', '', '1234', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-25 20:45:57', '2019-05-25 17:45:57', '', 10, 'http://localhost/magazine/2019/05/25/10-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-05-25 21:20:03', '2019-05-25 18:20:03', '<!-- wp:heading -->\n<h2>Кто мы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Наш адрес сайта: http://localhost/magazine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие персональные данные мы собираем и с какой целью</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Комментарии</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Медиафайлы</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Формы контактов</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Куки</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Встраиваемое содержимое других вебсайтов</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Веб-аналитика</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куда мы отправляем ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Ваша контактная информация</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Дополнительная информация</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как мы защищаем ваши данные</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Какие принимаются процедуры против взлома данных</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>От каких третьих сторон мы получаем данные</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Какие автоматические решения принимаются на основе данных пользователей</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Требования к раскрытию отраслевых нормативных требований</h3>\n<!-- /wp:heading -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-25 21:20:03', '2019-05-25 18:20:03', '', 3, 'http://localhost/magazine/2019/05/25/3-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-05-25 21:59:47', '2019-05-25 18:59:47', '', 'Каталог', '', 'publish', 'closed', 'closed', '', '166', '', '', '2019-05-28 16:18:19', '2019-05-28 13:18:19', '', 0, 'http://localhost/magazine/2019/05/25/166/', 2, 'nav_menu_item', '', 0),
(169, 1, '2019-05-25 22:03:48', '2019-05-25 19:03:48', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2019-05-28 16:18:19', '2019-05-28 13:18:19', '', 0, 'http://localhost/magazine/2019/05/25/169/', 3, 'nav_menu_item', '', 0),
(170, 1, '2019-05-25 22:03:49', '2019-05-25 19:03:49', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2019-05-28 16:18:19', '2019-05-28 13:18:19', '', 0, 'http://localhost/magazine/2019/05/25/170/', 4, 'nav_menu_item', '', 0),
(173, 1, '2019-05-25 22:03:50', '2019-05-25 19:03:50', '', 'Главная', '', 'publish', 'closed', 'closed', '', '173', '', '', '2019-05-28 16:18:18', '2019-05-28 13:18:18', '', 0, 'http://localhost/magazine/2019/05/25/173/', 1, 'nav_menu_item', '', 0),
(177, 1, '2019-05-25 22:19:07', '2019-05-25 19:19:07', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/magazine/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-25 22:19:07', '2019-05-25 19:19:07', '', 2, 'http://localhost/magazine/2019/05/25/2-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-05-25 22:21:16', '2019-05-25 19:21:16', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/magazine/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-25 22:21:16', '2019-05-25 19:21:16', '', 2, 'http://localhost/magazine/2019/05/25/2-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2019-05-25 22:31:01', '2019-05-25 19:31:01', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-25 22:31:01', '2019-05-25 19:31:01', '', 10, 'http://localhost/magazine/2019/05/25/10-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-05-25 22:41:39', '2019-05-25 19:41:39', '', 'Каталог', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-25 22:41:39', '2019-05-25 19:41:39', '', 10, 'http://localhost/magazine/2019/05/25/10-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2019-05-25 22:46:37', '2019-05-25 19:46:37', '', 'Каталог товаров', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-25 22:46:37', '2019-05-25 19:46:37', '', 10, 'http://localhost/magazine/2019/05/25/10-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2019-05-25 22:47:33', '2019-05-25 19:47:33', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-05-25 22:47:33', '2019-05-25 19:47:33', '', 128, 'http://localhost/magazine/2019/05/25/128-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2019-05-26 07:02:42', '2019-05-26 04:02:42', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2019-05-26 07:02:42', '2019-05-26 04:02:42', '', 2, 'http://localhost/magazine/wp-content/uploads/2019/05/images.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2019-05-26 07:18:04', '2019-05-26 04:18:04', '', 'images-1', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2019-05-26 07:18:04', '2019-05-26 04:18:04', '', 2, 'http://localhost/magazine/wp-content/uploads/2019/05/images-1.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2019-05-26 07:24:47', '2019-05-26 04:24:47', '<!-- wp:image {\"id\":193,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote is-style-large\"><p> Это молодой интернет  магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:24:47', '2019-05-26 04:24:47', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2019-05-26 07:32:19', '2019-05-26 04:32:19', '<!-- wp:image {\"id\":193,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет  магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:32:19', '2019-05-26 04:32:19', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2019-05-26 07:41:01', '2019-05-26 04:41:01', '<!-- wp:image {\"id\":193,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:41:01', '2019-05-26 04:41:01', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2019-05-26 07:47:41', '2019-05-26 04:47:41', '<!-- wp:image {\"id\":193,\"align\":\"left\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-05-26 07:47:41', '2019-05-26 04:47:41', '', 2, 'http://localhost/magazine/2019/05/26/2-autosave-v1/', 0, 'revision', '', 0),
(199, 1, '2019-05-26 07:57:03', '2019-05-26 04:57:03', '<!-- wp:image {\"id\":193,\"align\":\"left\",\"width\":548} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\" width=\"548\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:57:03', '2019-05-26 04:57:03', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2019-05-26 07:57:18', '2019-05-26 04:57:18', '<!-- wp:image {\"id\":193,\"align\":\"left\",\"width\":248} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\" width=\"248\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:57:18', '2019-05-26 04:57:18', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2019-05-26 07:57:44', '2019-05-26 04:57:44', '<!-- wp:image {\"id\":193,\"align\":\"left\",\"width\":200,\"height\":164} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft is-resized\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/images-1.png\" alt=\"\" class=\"wp-image-193\" width=\"200\" height=\"164\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default\"><p> Это молодой интернет &nbsp;магазин созданный группой энтузиастов. Обычные слесаря-сантехники, в нерабочие время, без какого либо знания программирования, пилили этот магазин. И вот спустя пол года на свет родился Он. В данном магазине вы сможете купить: бойлера, котлы, насосы и мн. др. Со временем ассортимент нашего магазина будет пополнятся. Перед покупкой вы сможете проконсультироваться с нашими специалистами которые не в теории а на практике знают что лучше… Также у нас вы можете нанять бригаду специалистов, которая вам и установит бойлер или котел, зависимости что вам нужно. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-26 07:57:44', '2019-05-26 04:57:44', '', 2, 'http://localhost/magazine/2019/05/26/2-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2019-05-26 08:09:35', '2019-05-26 05:09:35', '', 'np', '', 'inherit', 'open', 'closed', '', 'np', '', '', '2019-05-26 08:09:35', '2019-05-26 05:09:35', '', 130, 'http://localhost/magazine/wp-content/uploads/2019/05/np.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2019-05-26 08:25:43', '2019-05-26 05:25:43', '', 'UkrPoshta-1', '', 'inherit', 'open', 'closed', '', 'ukrposhta-1', '', '', '2019-05-26 08:25:43', '2019-05-26 05:25:43', '', 130, 'http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png', 0, 'attachment', 'image/png', 0),
(214, 1, '2019-05-26 08:28:43', '2019-05-26 05:28:43', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты</p>\n<!-- /wp:paragraph -->\n\n', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 08:28:43', '2019-05-26 05:28:43', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-05-26 08:48:54', '2019-05-26 05:48:54', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\"> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<code><img class=\"wp-image-203\" style=\"width: 150px;\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np.png\" alt=\"\" width=\"120\" height=\"120\"><img class=\"wp-image-210\" style=\"width: 150px;\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png\" alt=\"\" width=\"120\" height=\"120\"></code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"></div>\n<!-- /wp:columns -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 08:48:54', '2019-05-26 05:48:54', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2019-05-26 08:50:04', '2019-05-26 05:50:04', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p style=\"text-align:left\"> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<code><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/np.png\" alt=\"\" width=\"120\" height=\"120\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png\" alt=\"\" width=\"120\" height=\"120\"></code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"></div>\n<!-- /wp:columns -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 08:50:04', '2019-05-26 05:50:04', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2019-05-26 08:51:16', '2019-05-26 05:51:16', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<code><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/np.png\" alt=\"\" width=\"120\" height=\"120\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png\" alt=\"\" width=\"120\" height=\"120\"></code></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"></div>\n<!-- /wp:columns -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 08:51:16', '2019-05-26 05:51:16', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2019-05-26 08:52:19', '2019-05-26 05:52:19', '<!-- wp:html -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<code><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/np.png\" alt=\"\" width=\"120\" height=\"120\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png\" alt=\"\" width=\"120\" height=\"120\"></code></p>\n<!-- /wp:html -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"></div>\n<!-- /wp:columns -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 08:52:19', '2019-05-26 05:52:19', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(228, 1, '2019-05-26 09:22:42', '2019-05-26 06:22:42', '<!-- wp:html -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<code><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/np.png\" alt=\"\" width=\"120\" height=\"120\"><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1.png\" alt=\"\" width=\"120\" height=\"120\"></code></p>\n<!-- /wp:html -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:22:42', '2019-05-26 06:22:42', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(231, 1, '2019-05-26 09:28:19', '2019-05-26 06:28:19', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[229,230]} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-11.png\" alt=\"\" data-id=\"229\" data-link=\"http://localhost/magazine/?attachment_id=229\" class=\"wp-image-229\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-4.png\" alt=\"\" data-id=\"230\" data-link=\"http://localhost/magazine/?attachment_id=230\" class=\"wp-image-230\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:28:19', '2019-05-26 06:28:19', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2019-05-26 09:29:40', '2019-05-26 06:29:40', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:29:40', '2019-05-26 06:29:40', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2019-05-26 09:31:17', '2019-05-26 06:31:17', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Доставка и оплатаіва', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:31:17', '2019-05-26 06:31:17', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2019-05-26 09:32:03', '2019-05-26 06:32:03', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:32:03', '2019-05-26 06:32:03', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2019-05-26 09:33:42', '2019-05-26 06:33:42', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:33:42', '2019-05-26 06:33:42', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2019-05-26 09:35:45', '2019-05-26 06:35:45', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<p><img class=\"alignnone  wp-image-203\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"113\" height=\"113\" /></p>', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:35:45', '2019-05-26 06:35:45', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2019-05-26 09:36:10', '2019-05-26 06:36:10', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Экспресс-Доставки и Почты России </p>\n<!-- /wp:paragraph -->\n\n<p><img class=\"alignnone  wp-image-203 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"113\" height=\"113\" /><img class=\"alignnone  wp-image-211 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-1-300x213.png\" alt=\"\" width=\"137\" height=\"97\" /></p>', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-26 09:36:10', '2019-05-26 06:36:10', '', 130, 'http://localhost/magazine/2019/05/26/130-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2019-05-27 20:14:49', '2019-05-27 17:14:49', '<!-- wp:paragraph -->\n<p>Приветствуем!<br />Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты<img class=\"alignnone  wp-image-203 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"113\" height=\"113\" /><img class=\"alignnone  wp-image-210\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-300x213.png\" alt=\"\" width=\"176\" height=\"125\" /></p>\n<!-- /wp:paragraph -->\n<p><img class=\"alignnone  wp-image-211 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-1-300x213.png\" alt=\"\" width=\"160\" height=\"114\" /></p>', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-autosave-v1', '', '', '2019-05-27 20:14:49', '2019-05-27 17:14:49', '', 130, 'http://localhost/magazine/2019/05/27/130-autosave-v1/', 0, 'revision', '', 0),
(246, 1, '2019-05-27 13:25:26', '2019-05-27 10:25:26', '<!-- wp:paragraph -->\n<p> Приветствуем!<br>Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты </p>\n<!-- /wp:paragraph -->\n\n<p><img class=\"alignnone  wp-image-203 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"113\" height=\"113\" /><img class=\"alignnone  wp-image-211 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-1-300x213.png\" alt=\"\" width=\"160\" height=\"114\" /></p>', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-27 13:25:26', '2019-05-27 10:25:26', '', 130, 'http://localhost/magazine/2019/05/27/130-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2019-05-27 15:48:40', '2019-05-27 12:48:40', 'Водонагреватель <strong>Eldom EUREKA 30 SLIM 2X0.8 KW WV03039D</strong>. Закрытый тен, внешний терморегулятор, покрытие бака циркониевая эмаль. Плотный изоляционный слой из бесфреонового пенополиуретана толщиной до 35 мм обеспечивает исключительно низкие тепловые потери и экономию средств. 6 степеней защиты. Комбинированный металлический вентиль - совмещает в себе функции предохранительного, обратного и дифференциального клапана. Специфический эллипсовидный фланец. Выключатель двойной со световой индикацией. Возможность установки анодного тестера, следящего за состоянием антикоррозийной защиты.', 'Водонагреватель Eldom Eureka 30 SLIM 2x0.8 kW WV03039D', 'Код товара: <strong>2568</strong>\r\n\r\n&nbsp;', 'publish', 'open', 'closed', '', 'vodonagrivach-eldom-eureka-30-slim-2x0-8-kw-wv03039d', '', '', '2019-06-17 16:43:33', '2019-06-17 13:43:33', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=249', 0, 'product', '', 1),
(256, 1, '2019-06-17 16:38:34', '2019-06-17 13:38:34', 'Водонагреватель <strong>Eldom EUREKA 30 SLIM 2X0.8 KW WV03039D</strong>. Закрытый тен, внешний терморегулятор, покрытие бака циркониевая эмаль. Плотный изоляционный слой из бесфреонового пенополиуретана толщиной до 35 мм обеспечивает исключительно низкие тепловые потери и экономию средств. 6 степеней защиты. Комбинированный металлический вентиль - совмещает в себе функции предохранительного, обратного и дифференциального клапана. Специфический эллипсовидный фланец. Выключатель двойной со световой индикацией. Возможность установки анодного тестера, следящего за состоянием антикоррозийной защиты.', 'Водонагреватель Eldom Eureka 30 SLIM 2x0.8 kW WV03039D', 'Код товара: <strong>2568</strong>\n\n&nbsp;', 'inherit', 'closed', 'closed', '', '249-autosave-v1', '', '', '2019-06-17 16:38:34', '2019-06-17 13:38:34', '', 249, 'http://localhost/magazine/2019/05/27/249-autosave-v1/', 0, 'revision', '', 0),
(263, 1, '2019-05-27 19:32:05', '2019-05-27 16:32:05', 'Смеситель', 'ebe87d2fad982f02bab5279ee39624c7', '', 'inherit', 'open', 'closed', '', 'ebe87d2fad982f02bab5279ee39624c7', '', '', '2019-05-27 19:32:24', '2019-05-27 16:32:24', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/ebe87d2fad982f02bab5279ee39624c7.png', 0, 'attachment', 'image/png', 0),
(264, 1, '2019-05-27 20:16:21', '2019-05-27 17:16:21', '<!-- wp:paragraph -->\r\n<p>Приветствуем!<br />Доставка в нашем магазине осуществляется службами Новой Почты и УкрПочты</p>\r\n<p><img class=\"wp-image-210 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-300x213.png\" alt=\"\" width=\"176\" height=\"125\" /><img class=\"wp-image-203 alignnone\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/np-300x300.png\" alt=\"\" width=\"139\" height=\"139\" /></p>\r\n<!-- /wp:paragraph -->\r\n<p><img class=\"alignnone  wp-image-211 alignleft\" src=\"http://localhost/magazine/wp-content/uploads/2019/05/UkrPoshta-1-1-300x213.png\" alt=\"\" width=\"160\" height=\"114\" /></p>', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-05-27 20:16:21', '2019-05-27 17:16:21', '', 130, 'http://localhost/magazine/2019/05/27/130-revision-v1/', 0, 'revision', '', 0),
(266, 1, '2019-05-28 14:29:11', '2019-05-28 11:29:11', 'Мы работаем с Пн по Вс  с 8:00 до 20:00 Без выходных и перерывов на чай =)\r\n\r\nНаш Тел. 099-194-97-27\r\n\r\nНаш E-mail vlasjaro3@gmai.com\r\n\r\nМы открыты к сотрудничеству.\r\n\r\nВсе ваши предложения пишите на электронную почту, которая указана выше.', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2019-06-12 18:29:44', '2019-06-12 15:29:44', '', 0, 'http://localhost/magazine/?page_id=266', 0, 'page', '', 0),
(267, 1, '2019-05-28 14:29:11', '2019-05-28 11:29:11', 'Мы работаем с Пн по Вс  с 8:00 до 20:00 Без выходных и перерывов на чай =)\r\n\r\nНаш Тел. 099-194-97-27\r\n\r\nНаш E-mail vlasjaro3@gmai.com\r\n\r\nМы открыты к сотрудничеству.\r\n\r\nВсе ваши предложения пишите на электронную почту, которая указана выше.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2019-05-28 14:29:11', '2019-05-28 11:29:11', '', 266, 'http://localhost/magazine/2019/05/28/266-revision-v1/', 0, 'revision', '', 0),
(268, 1, '2019-05-28 14:31:17', '2019-05-28 11:31:17', ' ', '', '', 'publish', 'closed', 'closed', '', '268', '', '', '2019-05-28 16:18:19', '2019-05-28 13:18:19', '', 0, 'http://localhost/magazine/?p=268', 6, 'nav_menu_item', '', 0),
(269, 1, '2019-05-28 14:34:15', '2019-05-28 11:34:15', '<h2>В этом прайс листе представлены цены на наши услуги</h2>\r\nВсе цены указаны в грн\r\n\r\n[table id=6 /]', 'Прайс лист', '', 'publish', 'closed', 'closed', '', 'prays-lyst', '', '', '2019-06-12 18:31:15', '2019-06-12 15:31:15', '', 0, 'http://localhost/magazine/?page_id=269', 0, 'page', '', 0),
(270, 1, '2019-05-28 14:34:15', '2019-05-28 11:34:15', '<h2>В этом прайс листе представлены цены на наши услуги</h2>', 'Прайс лист', '', 'inherit', 'closed', 'closed', '', '269-revision-v1', '', '', '2019-05-28 14:34:15', '2019-05-28 11:34:15', '', 269, 'http://localhost/magazine/2019/05/28/269-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2019-05-28 14:35:01', '2019-05-28 11:35:01', ' ', '', '', 'publish', 'closed', 'closed', '', '271', '', '', '2019-05-28 16:18:19', '2019-05-28 13:18:19', '', 0, 'http://localhost/magazine/?p=271', 5, 'nav_menu_item', '', 0),
(272, 1, '2019-05-28 14:43:57', '2019-05-28 11:43:57', '<h2>В этом прайс листе представлены цены на наши услуги</h2>\r\nВсе цены указаны в грн\r\n\r\n&nbsp;', 'Прайс лист', '', 'inherit', 'closed', 'closed', '', '269-revision-v1', '', '', '2019-05-28 14:43:57', '2019-05-28 11:43:57', '', 269, 'http://localhost/magazine/2019/05/28/269-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2019-05-28 14:46:17', '2019-05-28 11:46:17', '[[\"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430\",\"\\u0426\\u0435\\u043d\\u0430 \"],[\"\\u0412\\u044b\\u0437\\u043e\\u0432 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u0430\",\"200\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u0431\\u043e\\u0439\\u043b\\u0435\\u0440\\u0430\",\"200\"],[\"\\u041f\\u0440\\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0430 \",\"200\"]]', 'Прайс лист.xlsx', 'Прайс лист.xlsx', 'publish', 'closed', 'closed', '', 'd0-bf-d1-80-d0-b0-d0-b9-d1-81-d0-bb-d0-b8-d1-81-d1-82-xlsx', '', '', '2019-08-18 14:25:26', '2019-08-18 11:25:26', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&#038;p=275', 0, 'tablepress_table', 'application/json', 0),
(276, 1, '2019-05-28 14:47:11', '2019-05-28 11:47:11', '[[\"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430\",\"\\u0426\\u0435\\u043d\\u0430 \"],[\"\\u0412\\u044b\\u0437\\u043e\\u0432 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u0430\",\"200\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u0431\\u043e\\u0439\\u043b\\u0435\\u0440\\u0430\",\"200\"],[\"\\u041f\\u0440\\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0430 \\u043f\\u0438\\u0437\\u0434\\u044b\",\"200\"],[\"\\u041f\\u0440\\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0430 \\u043f\\u0438\\u0437\\u0434\\u044b \\u0445\\u0443\\u0435\\u043c\",\"\\u0431\\u0435\\u0437\\u0446\\u0435\\u043d\\u043d\\u043e\"]]', 'Прайс лист.xlsx', 'Прайс лист.xlsx', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2019-05-28 14:47:11', '2019-05-28 11:47:11', '', 275, 'http://localhost/magazine/2019/05/28/275-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2019-05-28 14:48:14', '2019-05-28 11:48:14', '<h2>В этом прайс листе представлены цены на наши услуги</h2>\r\nВсе цены указаны в грн\r\n\r\n[table id=6 /]', 'Прайс лист', '', 'inherit', 'closed', 'closed', '', '269-revision-v1', '', '', '2019-05-28 14:48:14', '2019-05-28 11:48:14', '', 269, 'http://localhost/magazine/2019/05/28/269-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2019-05-28 16:00:14', '2019-05-28 13:00:14', '[[\"\\u041e\\u0431\\u044a\\u0435\\u043c, \\u043b:\",\"30\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430 (\\u0422\\u042d\\u041d\\u0430):\",\"\\u0421\\u043a\\u0440\\u044b\\u0442\\u044b\\u0439 (\\\"\\u0441\\u0443\\u0445\\u043e\\u0439\\\")\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c \\u0422\\u042d\\u041d\\u0430(\\u043e\\u0431\\u0449\\u0430\\u044f), \\u0412\\u0442:\",\"1600\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430:\",\"\\u0426\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f\"],[\"\\u041a\\u043e\\u043b-\\u0432\\u043e \\u0422\\u042d\\u041d\\u043e\\u0432:\",\"2\"],[\"\\u0422\\u0438\\u043f \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f:\",\"\\u041c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430:\",\"\\u0412\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f\"],[\"\\u041c\\u043e\\u043d\\u0442\\u0430\\u0436:\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0432\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0435\\u0433\\u043e \\u0431\\u0430\\u043a\\u0430, \\u043c\\u043c:\",\"2\\n\"],[\"\\u0412\\u044b\\u0441\\u043e\\u0442\\u0430, \\u043c\\u043c:\",\"560\"],[\"\\u0428\\u0438\\u0440\\u0438\\u043d\\u0430, \\u043c\\u043c:\",\"387\"],[\"\\u0413\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 (\\u0441 \\u043a\\u0440\\u043e\\u043d\\u0448\\u0442\\u0435\\u0439\\u043d\\u043e\\u043c), \\u043c\\u043c:\",\"410\"],[\"\\u0412\\u0435\\u0441, \\u043a\\u0433:\",\"14.5\"],[\"\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0431\\u0430\\u043a\\u0430:\",\"\\u042d\\u043c\\u0430\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u0430\\u043b\\u044c\"],[\"\\u041a\\u043d\\u043e\\u043f\\u043a\\u0430 \\u0432\\u043a\\u043b\\\\\\u0432\\u044b\\u043a\\u043b \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f\",\"\\u041d\\u0435\\u0442\"],[\"\\u0422\\u0435\\u0440\\u043c\\u043e\\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\",\"\\u0412\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439\"],[\"\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438 (\\u043c\\u043e\\u043d\\u0442\\u0430\\u0436):\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0430\\u043d\\u043e\\u0434\\u043e\\u0432:\",\"2\"],[\"\\u041a\\u043b\\u0430\\u0441\\u0441 \\u044d\\u043d\\u0435\\u0440\\u0433\\u043e\\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u0438:\",\"\\u0421\"],[\"\\u0412\\u044b\\u0445\\u043e\\u0434 \\u0434\\u043b\\u044f \\u0433\\u043e\\u0440\\u044f\\u0447\\u0435\\u0439 \\u0432\\u043e\\u0434\\u044b:\",\"G 1/2\\\"\\u041c\"],[\"\\u0412\\u0445\\u043e\\u0434 \\u0434\\u043b\\u044f \\u0445\\u043e\\u043b\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b\",\"G 1/2\\\"\\u041c\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b \\u0432 \\u0443\\u043f\\u0430\\u043a\\u043e\\u0432\\u043a\\u0435 (\\u0412\\u0445\\u0428\\u0445\\u0413), \\u043c\\u043c:\",\"590\\u0445400\\u0445402\"],[\"\\u041d\\u043e\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435, Mpa\",\"0,8\"],[\"\\u0412\\u0435\\u0441 \\u0432 \\u0443\\u043f\\u0430\\u043a\\u043e\\u0432\\u043a\\u0435, \\u043a\\u0433:\",\"15.8\"],[\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u044b:\",\"36\"],[\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u0431\\u0430\\u043a:\",\"120\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0443\\u0442\\u0435\\u043f\\u043b\\u0438\\u0442\\u0435\\u043b\\u044f, (\\u043c\\u043c):\",\"33\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%81%d1%82-microsoft-excel-xlsx', '', '', '2019-05-28 16:02:17', '2019-05-28 13:02:17', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&#038;p=278', 0, 'tablepress_table', 'application/json', 0),
(279, 1, '2019-05-28 16:02:17', '2019-05-28 13:02:17', '[[\"\\u041e\\u0431\\u044a\\u0435\\u043c, \\u043b:\",\"30\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430 (\\u0422\\u042d\\u041d\\u0430):\",\"\\u0421\\u043a\\u0440\\u044b\\u0442\\u044b\\u0439 (\\\"\\u0441\\u0443\\u0445\\u043e\\u0439\\\")\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c \\u0422\\u042d\\u041d\\u0430(\\u043e\\u0431\\u0449\\u0430\\u044f), \\u0412\\u0442:\",\"1600\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430:\",\"\\u0426\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f\"],[\"\\u041a\\u043e\\u043b-\\u0432\\u043e \\u0422\\u042d\\u041d\\u043e\\u0432:\",\"2\"],[\"\\u0422\\u0438\\u043f \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f:\",\"\\u041c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430:\",\"\\u0412\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f\"],[\"\\u041c\\u043e\\u043d\\u0442\\u0430\\u0436:\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0432\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0435\\u0433\\u043e \\u0431\\u0430\\u043a\\u0430, \\u043c\\u043c:\",\"2\\n\"],[\"\\u0412\\u044b\\u0441\\u043e\\u0442\\u0430, \\u043c\\u043c:\",\"560\"],[\"\\u0428\\u0438\\u0440\\u0438\\u043d\\u0430, \\u043c\\u043c:\",\"387\"],[\"\\u0413\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 (\\u0441 \\u043a\\u0440\\u043e\\u043d\\u0448\\u0442\\u0435\\u0439\\u043d\\u043e\\u043c), \\u043c\\u043c:\",\"410\"],[\"\\u0412\\u0435\\u0441, \\u043a\\u0433:\",\"14.5\"],[\"\\u0412\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442\\u0438\\u0435 \\u0431\\u0430\\u043a\\u0430:\",\"\\u042d\\u043c\\u0430\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u0430\\u043b\\u044c\"],[\"\\u041a\\u043d\\u043e\\u043f\\u043a\\u0430 \\u0432\\u043a\\u043b\\\\\\u0432\\u044b\\u043a\\u043b \\u043f\\u0438\\u0442\\u0430\\u043d\\u0438\\u044f\",\"\\u041d\\u0435\\u0442\"],[\"\\u0422\\u0435\\u0440\\u043c\\u043e\\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0442\\u043e\\u0440\",\"\\u0412\\u043d\\u0435\\u0448\\u043d\\u0438\\u0439\"],[\"\\u0422\\u0438\\u043f \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0438 (\\u043c\\u043e\\u043d\\u0442\\u0430\\u0436):\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0430\\u043d\\u043e\\u0434\\u043e\\u0432:\",\"2\"],[\"\\u041a\\u043b\\u0430\\u0441\\u0441 \\u044d\\u043d\\u0435\\u0440\\u0433\\u043e\\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0441\\u0442\\u0438:\",\"\\u0421\"],[\"\\u0412\\u044b\\u0445\\u043e\\u0434 \\u0434\\u043b\\u044f \\u0433\\u043e\\u0440\\u044f\\u0447\\u0435\\u0439 \\u0432\\u043e\\u0434\\u044b:\",\"G 1/2\\\"\\u041c\"],[\"\\u0412\\u0445\\u043e\\u0434 \\u0434\\u043b\\u044f \\u0445\\u043e\\u043b\\u043e\\u0434\\u043d\\u043e\\u0439 \\u0432\\u043e\\u0434\\u044b\",\"G 1/2\\\"\\u041c\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b \\u0432 \\u0443\\u043f\\u0430\\u043a\\u043e\\u0432\\u043a\\u0435 (\\u0412\\u0445\\u0428\\u0445\\u0413), \\u043c\\u043c:\",\"590\\u0445400\\u0445402\"],[\"\\u041d\\u043e\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435, Mpa\",\"0,8\"],[\"\\u0412\\u0435\\u0441 \\u0432 \\u0443\\u043f\\u0430\\u043a\\u043e\\u0432\\u043a\\u0435, \\u043a\\u0433:\",\"15.8\"],[\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u044b:\",\"36\"],[\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u0431\\u0430\\u043a:\",\"120\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0443\\u0442\\u0435\\u043f\\u043b\\u0438\\u0442\\u0435\\u043b\\u044f, (\\u043c\\u043c):\",\"33\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'inherit', 'closed', 'closed', '', '278-revision-v1', '', '', '2019-05-28 16:02:17', '2019-05-28 13:02:17', '', 278, 'http://localhost/magazine/2019/05/28/278-revision-v1/', 0, 'revision', '', 0),
(284, 1, '2019-05-28 16:28:54', '2019-05-28 13:28:54', '', 'WILO_Star_E_4c520117ba83d', '', 'inherit', 'open', 'closed', '', 'wilo_star_e_4c520117ba83d', '', '', '2019-05-28 16:28:54', '2019-05-28 13:28:54', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/05/WILO_Star_E_4c520117ba83d.png', 0, 'attachment', 'image/png', 0),
(285, 1, '2019-05-28 16:56:52', '2019-05-28 13:56:52', '<h3>Обзор Eldom 3,5 kw E42 сместитель</h3>\r\nПроточный водонагреватель Eldom E42 в любое время обеспечит вас горячей водой. Модель имеет компактный размер и предназначена для установки на кухне. Вода в баке нагревается в момент прохождения ее через водонагреватель. Для быстрого нагрева воды устройство использует электроэнергию из бытовой сети.\r\n<h4>Компактное исполнение и простая установка</h4>\r\nНагреватель Eldom E42 имеет универсальный монтаж – монтируется над мойкой. Нагрев происходит за счет открытого ТЭНа мощностью 3,5 кВт. Горячей воды будет вполне достаточно для восполнения мелких бытовых нужд.\r\n<h4>Безопасность и надежность</h4>\r\nEldom E42 обладает надежной системой защиты от поражения электрическим током, от превышения и падения давления в сети водоснабжения, а так же защитой от перегрева воды. Специальное терморегулирующее устройство в автоматическом режиме поддерживает нужную температуру воды. Бак изготовлен из стали с эмалированным покрытием. На лицевой панели установлен водонепроницаемый выключатель с подсветкой и смеситель.', 'Проточный водонагреватель Eldom 3.5 kw E42', 'Код товара: <strong>2516</strong>', 'publish', 'open', 'closed', '', 'protochnyj-vodonagrevatel-eldom-3-5-kw-e42', '', '', '2019-06-17 16:32:56', '2019-06-17 13:32:56', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=285', 0, 'product', '', 0),
(287, 1, '2019-05-28 17:08:25', '2019-05-28 14:08:25', '[[\"\\u0422\\u0438\\u043f\",\"\\u043f\\u0440\\u043e\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439\"],[\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0438\",\"\\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0441\\u0435\\u0442\\u044c\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430\",\"\\u0432\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430\",\"\\u043f\\u0440\\u044f\\u043c\\u043e\\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0439\"],[\"\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435\",\" 220 \\u0412 (1 \\u0444\\u0430\\u0437\\u0430)\"],[\"\\u041f\\u043e\\u0442\\u0440\\u0435\\u0431\\u043b\\u044f\\u0435\\u043c\\u0430\\u044f\\u00a0\\u043c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c\",\" 3500 \\u0412\\u0442\"],[\"\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0442\\u0435\\u043c-\\u0440\\u0430\\u00a0\\u0432\\u043e\\u0434\\u044b\",\" 60 \\u00b0C\"],[\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c\",\" 1.5 \\u043b/\\u043c\\u0438\\u043d\"],[\"\\u0423\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u041f\\u043e\\u0434\\u0430\\u0447\\u0430 \\u0432\\u043e\\u0434\\u044b\",\" \\u043f\\u043e\\u0434 \\u043d\\u0430\\u043f\\u043e\\u0440\\u043e\\u043c\"],[\"\\u041a\\u043e\\u043b-\\u0432\\u043e \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432\",\" 1\\n\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\",\" \\u0422\\u042d\\u041d\"],[\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"\\u0441\\u043f\\u0435\\u0440\\u0435\\u0434\\u0438\"],[\"\\u041f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431\",\"\\u0441\\u043d\\u0438\\u0437\\u0443\"],[\"\\u041d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430 \\u043a\\u0440\\u0430\\u043d\",\" +\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b (\\u0412\\u0445\\u0428\\u0445\\u0413)\",\"23.2x14.5x8.5 \\u0441\\u043c / \\u0432\\u0435\\u0441 \\u2014 2 \\u043a\\u0433 /\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%81%d1%82-microsoft-excel-xlsx-2', '', '', '2019-05-28 17:09:38', '2019-05-28 14:09:38', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&#038;p=287', 0, 'tablepress_table', 'application/json', 0),
(288, 1, '2019-05-28 17:09:38', '2019-05-28 14:09:38', '[[\"\\u0422\\u0438\\u043f\",\"\\u043f\\u0440\\u043e\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439\"],[\"\\u0418\\u0441\\u0442\\u043e\\u0447\\u043d\\u0438\\u043a \\u044d\\u043d\\u0435\\u0440\\u0433\\u0438\\u0438\",\"\\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u0441\\u0435\\u0442\\u044c\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430\",\"\\u0432\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430 \\u043a\\u043e\\u0440\\u043f\\u0443\\u0441\\u0430\",\"\\u043f\\u0440\\u044f\\u043c\\u043e\\u0443\\u0433\\u043e\\u043b\\u044c\\u043d\\u044b\\u0439\"],[\"\\u041f\\u0438\\u0442\\u0430\\u043d\\u0438\\u0435\",\" 220 \\u0412 (1 \\u0444\\u0430\\u0437\\u0430)\"],[\"\\u041f\\u043e\\u0442\\u0440\\u0435\\u0431\\u043b\\u044f\\u0435\\u043c\\u0430\\u044f\\u00a0\\u043c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c\",\" 3500 \\u0412\\u0442\"],[\"\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0442\\u0435\\u043c-\\u0440\\u0430\\u00a0\\u0432\\u043e\\u0434\\u044b\",\" 60 \\u00b0C\"],[\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c\",\" 1.5 \\u043b/\\u043c\\u0438\\u043d\"],[\"\\u0423\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u041f\\u043e\\u0434\\u0430\\u0447\\u0430 \\u0432\\u043e\\u0434\\u044b\",\" \\u043f\\u043e\\u0434 \\u043d\\u0430\\u043f\\u043e\\u0440\\u043e\\u043c\"],[\"\\u041a\\u043e\\u043b-\\u0432\\u043e \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u043e\\u0432\",\" 1\\n\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430\",\" \\u0422\\u042d\\u041d\"],[\"\\u041e\\u0440\\u0433\\u0430\\u043d\\u044b \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"\\u0441\\u043f\\u0435\\u0440\\u0435\\u0434\\u0438\"],[\"\\u041f\\u043e\\u0434\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0443\\u0431\",\"\\u0441\\u043d\\u0438\\u0437\\u0443\"],[\"\\u041d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430 \\u043a\\u0440\\u0430\\u043d\",\" +\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u044b (\\u0412\\u0445\\u0428\\u0445\\u0413)\",\"23.2x14.5x8.5 \\u0441\\u043c / \\u0432\\u0435\\u0441 \\u2014 2 \\u043a\\u0433 /\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'inherit', 'closed', 'closed', '', '287-revision-v1', '', '', '2019-05-28 17:09:38', '2019-05-28 14:09:38', '', 287, 'http://localhost/magazine/2019/05/28/287-revision-v1/', 0, 'revision', '', 0),
(289, 1, '2019-05-28 18:11:31', '2019-05-28 15:11:31', '<h3><strong>Электрический водонагреватель ISTO IVD на 100 литров</strong></h3>\r\nISTO – относительно новый игрок на рынке водонагревательной техники. Компания базируется в Хорватии. Использует качественные материалы и комплектующие надежных европейских производителей. Выпускает электробойлеры, которые по параметрам не уступают продукции более известных брендов, а стоят на порядок дешевле.\r\n\r\n<strong>Назначение</strong>\r\n\r\n<strong>Водонагреватель </strong><strong>ISTO </strong><strong>IVD 1004515/1</strong><strong>h</strong> – бытовой электробойлер с эмалированным стальным баком <strong>на 100 л</strong> и «сухим» ТЭНом 1 кВт. Рассчитан на вертикальный монтаж. Предназначен для ГВС жилых домов, квартир, коммерческих объектов, потребляющих небольшие объемы горячей воды.\r\n\r\nПодключается к бытовой электросети 220 В.\r\n\r\n<strong>Особенности</strong>\r\n\r\nРабочий бак бойлера изготовлен из низколегированной стали с хорошими эксплуатационными характеристиками.<strong>Толщина стенок 1,8 мм.</strong>\r\n\r\nВнутреннюю поверхность бака защищает <strong>стеклокерамическая титановая эмаль</strong>. Покрытие отличается механической прочностью и устойчивостью к высоким температурам.\r\n\r\nВстроенный в бак <strong>магниевый анод</strong> замедляет интенсивность окисления и образования накипи.\r\n\r\nКорпус утеплен плотным<strong> пенополиуретаном толщиной 25 мм</strong>. Такая изоляция обеспечивает низкий уровень теплопотерь и поддерживает температуру воды в баке максимально долго.\r\n\r\nДля нагрева используется долговечный <strong>«сухой» ТЭН на 1 кВт</strong>, выполненный по технологии INOX Dry (разработка австрийской компании Vogel Flug). Его фланец сделан из нержавеющей стали и закреплен на бак через эластичную прокладку, которая полностью исключает вероятность протечки. Трубки нагревательных элементов и термостата также из нержавеющей стали, причем без дополнительного слоя эмали. Отсутствие такого покрытия на поверхности повышает эффективность теплообмена и приближает его к максимальному КПД.\r\n\r\n<strong>Электроника Thermowatt</strong> (Италия) соответствует европейским стандартам качества и гарантирует максимальную надежность и безопасность эксплуатации водонагревателя.\r\n\r\nДля управления режимами работы используется наружный терморегулятор, а текущие значения температуры выводятся на выносной индикатор.\r\n<h3><strong>Преимущества водонагревателя ISTO серии IVD:</strong></h3>\r\n<ul>\r\n 	<li>Долговечный стальной бак с титановым покрытием;</li>\r\n 	<li>«Сухой» ТЭН с повышенной эффективностью нагрева;</li>\r\n 	<li>Защитный магниевый анод;</li>\r\n 	<li>Высококачественный пенополиуретановый утеплитель;</li>\r\n 	<li>Безопасная электроника ТМ Thermowatt;</li>\r\n 	<li>Минимальные теплопотери;</li>\r\n 	<li>Гарантия на элементы водонагревателя 12 месяцев, на внутренний бак – 5 лет.</li>\r\n</ul>\r\n<strong>Комплект поставки:</strong>\r\n<ol>\r\n 	<li>Водонагреватель;</li>\r\n 	<li>паспорт, руководство по установке и эксплуатации.</li>\r\n</ol>', 'Водонагреватель ISTO IVD 1004515/1h на 100 литров', 'Код товара: <strong>2731</strong>', 'publish', 'open', 'closed', '', 'isto-ivd-1004515-1h-na-100-litrov', '', '', '2019-06-17 16:24:34', '2019-06-17 13:24:34', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=289', 0, 'product', '', 0),
(291, 1, '2019-05-28 18:11:49', '2019-05-28 15:11:49', '[[\"\\u041f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u044b\",\"\\u0415\\u0434. \\u0438\\u0437\\u043c\\u0435\\u0440\\u0435\\u043d\\u0438\\u044f\",\"\\u0417\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f\"],[\"\\u041e\\u0431\\u044a\\u0435\\u043c \\u0431\\u0430\\u043a\\u0430\",\"\\u043b\",\"100\"],[\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0422\\u042d\\u041d\\u043e\\u0432\",\"\\u0448\\u0442.\",\"1\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c \\u0422\\u042d\\u041d\\u0430\",\"\\u043a\\u0412\\u0442\",\"1.5\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0441\\u0442\\u0430\\u043b\\u0438\",\"\\u043c\\u043c\",\"1.8\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0442\\u0435\\u043f\\u043b\\u043e\\u0438\\u0437\\u043e\\u043b\\u044f\\u0446\\u0438\\u0438\",\"\\u043c\\u043c\",\"25\"],[\"\\u0420\\u0430\\u0431\\u043e\\u0447\\u0435\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u041f\\u0430\",\"0.6\"],[\"\\u0418\\u0441\\u043f\\u044b\\u0442\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u041f\\u0430\",\"1.6\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u043d\\u044b\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b:\",\"\",\"\"],[\"- \\u0432\\u044b\\u0441\\u043e\\u0442\\u0430\",\"\\u043c\\u043c\",\"953\"],[\"- \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430\",\"\",\"445\"],[\"- \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\",\"\",\"465\"],[\"\\u0412\\u0435\\u0441\",\"\\u043a\\u0433\",\"27\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%81%d1%82-microsoft-excel-xlsx-3', '', '', '2019-05-28 18:13:00', '2019-05-28 15:13:00', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&#038;p=291', 0, 'tablepress_table', 'application/json', 0),
(292, 1, '2019-05-28 18:13:00', '2019-05-28 15:13:00', '[[\"\\u041f\\u0430\\u0440\\u0430\\u043c\\u0435\\u0442\\u0440\\u044b\",\"\\u0415\\u0434. \\u0438\\u0437\\u043c\\u0435\\u0440\\u0435\\u043d\\u0438\\u044f\",\"\\u0417\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u044f\"],[\"\\u041e\\u0431\\u044a\\u0435\\u043c \\u0431\\u0430\\u043a\\u0430\",\"\\u043b\",\"100\"],[\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0422\\u042d\\u041d\\u043e\\u0432\",\"\\u0448\\u0442.\",\"1\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c \\u0422\\u042d\\u041d\\u0430\",\"\\u043a\\u0412\\u0442\",\"1.5\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0441\\u0442\\u0430\\u043b\\u0438\",\"\\u043c\\u043c\",\"1.8\"],[\"\\u0422\\u043e\\u043b\\u0449\\u0438\\u043d\\u0430 \\u0442\\u0435\\u043f\\u043b\\u043e\\u0438\\u0437\\u043e\\u043b\\u044f\\u0446\\u0438\\u0438\",\"\\u043c\\u043c\",\"25\"],[\"\\u0420\\u0430\\u0431\\u043e\\u0447\\u0435\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u041f\\u0430\",\"0.6\"],[\"\\u0418\\u0441\\u043f\\u044b\\u0442\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u0434\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"\\u043c\\u041f\\u0430\",\"1.6\"],[\"\\u0413\\u0430\\u0431\\u0430\\u0440\\u0438\\u0442\\u043d\\u044b\\u0435 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u044b:\",\"\",\"\"],[\"- \\u0432\\u044b\\u0441\\u043e\\u0442\\u0430\",\"\\u043c\\u043c\",\"953\"],[\"- \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430\",\"\",\"445\"],[\"- \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\",\"\",\"465\"],[\"\\u0412\\u0435\\u0441\",\"\\u043a\\u0433\",\"27\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'inherit', 'closed', 'closed', '', '291-revision-v1', '', '', '2019-05-28 18:13:00', '2019-05-28 15:13:00', '', 291, 'http://localhost/magazine/2019/05/28/291-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2019-05-28 21:17:15', '2019-05-28 18:17:15', '<h3><strong>Электрический водонагреватель ISTO IVD на 100 литров</strong></h3>\nISTO – относительно новый игрок на рынке водонагревательной техники. Компания базируется в Хорватии. Использует качественные материалы и комплектующие надежных европейских производителей. Выпускает электробойлеры, которые по параметрам не уступают продукции более известных брендов, а стоят на порядок дешевле.\n\n<strong>Назначение</strong>\n\n<strong>Водонагреватель </strong><strong>ISTO </strong><strong>IVD 1004515/1</strong><strong>h</strong> – бытовой электробойлер с эмалированным стальным баком <strong>на 100 л</strong> и «сухим» ТЭНом 1 кВт. Рассчитан на вертикальный монтаж. Предназначен для ГВС жилых домов, квартир, коммерческих объектов, потребляющих небольшие объемы горячей воды.\n\nПодключается к бытовой электросети 220 В.\n\n<strong>Особенности</strong>\n\nРабочий бак бойлера изготовлен из низколегированной стали с хорошими эксплуатационными характеристиками.<strong>Толщина стенок 1,8 мм.</strong>\n\nВнутреннюю поверхность бака защищает <strong>стеклокерамическая титановая эмаль</strong>. Покрытие отличается механической прочностью и устойчивостью к высоким температурам.\n\nВстроенный в бак <strong>магниевый анод</strong> замедляет интенсивность окисления и образования накипи.\n\nКорпус утеплен плотным<strong> пенополиуретаном толщиной 25 мм</strong>. Такая изоляция обеспечивает низкий уровень теплопотерь и поддерживает температуру воды в баке максимально долго.\n\nДля нагрева используется долговечный <strong>«сухой» ТЭН на 1 кВт</strong>, выполненный по технологии INOX Dry (разработка австрийской компании Vogel Flug). Его фланец сделан из нержавеющей стали и закреплен на бак через эластичную прокладку, которая полностью исключает вероятность протечки. Трубки нагревательных элементов и термостата также из нержавеющей стали, причем без дополнительного слоя эмали. Отсутствие такого покрытия на поверхности повышает эффективность теплообмена и приближает его к максимальному КПД.\n\n<strong>Электроника Thermowatt</strong> (Италия) соответствует европейским стандартам качества и гарантирует максимальную надежность и безопасность эксплуатации водонагревателя.\n\nДля управления режимами работы используется наружный терморегулятор, а текущие значения температуры выводятся на выносной индикатор.\n<h3><strong>Преимущества водонагревателя ISTO серии IVD:</strong></h3>\n<ul>\n 	<li>Долговечный стальной бак с титановым покрытием;</li>\n 	<li>«Сухой» ТЭН с повышенной эффективностью нагрева;</li>\n 	<li>Защитный магниевый анод;</li>\n 	<li>Высококачественный пенополиуретановый утеплитель;</li>\n 	<li>Безопасная электроника ТМ Thermowatt;</li>\n 	<li>Минимальные теплопотери;</li>\n 	<li>Гарантия на элементы водонагревателя 12 месяцев, на внутренний бак – 5 лет.</li>\n</ul>\n<strong>Комплект поставки:</strong>\n<ol>\n 	<li>Водонагреватель;</li>\n 	<li>паспорт, руководство по установке и эксплуатации.</li>\n</ol>', 'Водонагреватель ISTO IVD 1004515/1h на 100 литров', '<p>Код товара:&nbsp;<strong>329933</strong></p>', 'inherit', 'closed', 'closed', '', '289-autosave-v1', '', '', '2019-05-28 21:17:15', '2019-05-28 18:17:15', '', 289, 'http://localhost/magazine/2019/05/28/289-autosave-v1/', 0, 'revision', '', 0),
(315, 1, '2019-05-28 21:21:41', '2019-05-28 18:21:41', '', 'Eureka_30_WV03039D_BG_2', '', 'inherit', 'open', 'closed', '', 'eureka_30_wv03039d_bg_2', '', '', '2019-06-17 16:39:31', '2019-06-17 13:39:31', '', 249, 'http://localhost/magazine/wp-content/uploads/2019/05/Eureka_30_WV03039D_BG_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(317, 1, '2019-05-28 21:24:15', '2019-05-28 18:24:15', '', 'Eldom 3,5 kw E42', '', 'inherit', 'open', 'closed', '', 'eldom-35-kw-e42', '', '', '2019-06-17 16:29:28', '2019-06-17 13:29:28', '', 285, 'http://localhost/magazine/wp-content/uploads/2019/05/Eldom-35-kw-E42.png', 0, 'attachment', 'image/png', 0),
(318, 1, '2019-05-28 21:27:06', '2019-05-28 18:27:06', '', 'ISTO IVD 10045151h_mini', '', 'inherit', 'open', 'closed', '', 'isto-ivd-10045151h_mini', '', '', '2019-06-17 16:21:33', '2019-06-17 13:21:33', '', 289, 'http://localhost/magazine/wp-content/uploads/2019/05/ISTO-IVD-10045151h_mini.png', 0, 'attachment', 'image/png', 0),
(319, 1, '2019-05-29 19:03:47', '2019-05-29 16:03:47', '<strong>NOVA TEC Flat NT-F 100</strong> Бойлер (водонагреватель) ПЛОСКИЙ\r\nНакопительный бойлер Flat NT-F 100 плоской формы объемом 100 литров.\r\n\r\nНадежный водонагреватель с уникальной конструкцией – система из 2 баков из объединенная общим протоком воды, теплоизоляцией и внешним корпусом.\r\n\r\nДва открытых (мокрых) ТЭНа мощностью 2,0 кВт (1000 Вт + 1000 Вт). На лицевой стороне расположен индикатор работы, цифровой дисплей и удобный механический регулятор температуры нагрева воды. Внутренний бак надежно защищен от коррозии благодаря покрытию эмалью и магниевому аноду.\r\n\r\nПРЕИМУЩЕСТВА ВОДОНАГРЕВАТЕЛЯ НОВАТЕК FLAT NT-F 100\r\nТолщина стенки металла 2,5 мм.\r\n\r\nДва открытых ТЭНа (мокрый)\r\n\r\nМеханическая регулировка температуры.\r\n\r\nЦифровой дисплей.\r\n\r\nИндикатор температуры.\r\n\r\nТермометр и наружный регулятор температуры на корпусе.\r\n\r\nРазмеры – 1155x530x280. Вес – 31,3 кг', 'Водонагреватель Nova Tec Flat NT-F 100', 'Код товара: <strong>3050</strong>', 'publish', 'open', 'closed', '', 'nova-tec-flat-nt-f-100', '', '', '2019-06-17 16:20:37', '2019-06-17 13:20:37', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=319', 0, 'product', '', 0),
(320, 1, '2019-05-29 19:04:43', '2019-05-29 16:04:43', '[[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"]]', '', '', 'publish', 'closed', 'closed', '', '320', '', '', '2019-05-29 19:04:43', '2019-05-29 16:04:43', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&p=320', 0, 'tablepress_table', 'application/json', 0),
(321, 1, '2019-05-29 19:07:43', '2019-05-29 16:07:43', '[[\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\",\"Nova Tec\"],[\"\\u0414\\u0438\\u0430\\u043f\\u0430\\u0437\\u043e\\u043d \\u043e\\u0431\\u044a\\u0435\\u043c\\u043e\\u0432, \\u043b.\",\"100\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430 (\\u0422\\u042d\\u041d\\u0430)\",\"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044b\\u0439 (\\u201c\\u043c\\u043e\\u043a\\u0440\\u044b\\u0439\\u201d)\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0412\\u0442\",\"2000 \\u0412\\u0442\"],[\"\\u0422\\u0438\\u043f \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"\\u041c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430\",\"\\u0412\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f\"],[\"\\u041c\\u0435\\u0441\\u0442\\u043e \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0430\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430\",\"\\u041f\\u043b\\u043e\\u0441\\u043a\\u0430\\u044f\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%81%d1%82-microsoft-excel-xlsx-4', '', '', '2019-05-29 19:08:37', '2019-05-29 16:08:37', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&#038;p=321', 0, 'tablepress_table', 'application/json', 0),
(322, 1, '2019-05-29 19:08:37', '2019-05-29 16:08:37', '[[\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u044c\",\"Nova Tec\"],[\"\\u0414\\u0438\\u0430\\u043f\\u0430\\u0437\\u043e\\u043d \\u043e\\u0431\\u044a\\u0435\\u043c\\u043e\\u0432, \\u043b.\",\"100\"],[\"\\u0422\\u0438\\u043f \\u043d\\u0430\\u0433\\u0440\\u0435\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u044d\\u043b\\u0435\\u043c\\u0435\\u043d\\u0442\\u0430 (\\u0422\\u042d\\u041d\\u0430)\",\"\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044b\\u0439 (\\u201c\\u043c\\u043e\\u043a\\u0440\\u044b\\u0439\\u201d)\"],[\"\\u041c\\u043e\\u0449\\u043d\\u043e\\u0441\\u0442\\u044c, \\u0412\\u0442\",\"2000 \\u0412\\u0442\"],[\"\\u0422\\u0438\\u043f \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f\",\"\\u041c\\u0435\\u0445\\u0430\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430\",\"\\u0412\\u0435\\u0440\\u0442\\u0438\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f\"],[\"\\u041c\\u0435\\u0441\\u0442\\u043e \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0430\",\"\\u041d\\u0430\\u0441\\u0442\\u0435\\u043d\\u043d\\u044b\\u0439\"],[\"\\u0424\\u043e\\u0440\\u043c\\u0430\",\"\\u041f\\u043b\\u043e\\u0441\\u043a\\u0430\\u044f\"]]', 'Лист Microsoft Excel.xlsx', 'Лист Microsoft Excel.xlsx', 'inherit', 'closed', 'closed', '', '321-revision-v1', '', '', '2019-05-29 19:08:37', '2019-05-29 16:08:37', '', 321, 'http://localhost/magazine/2019/05/29/321-revision-v1/', 0, 'revision', '', 0),
(326, 1, '2019-05-29 19:20:30', '2019-05-29 16:20:30', '', 'novatec-flat-size', '', 'inherit', 'open', 'closed', '', 'novatec-flat-size', '', '', '2019-05-29 19:20:53', '2019-05-29 16:20:53', '', 319, 'http://localhost/magazine/wp-content/uploads/2019/05/novatec-flat-size.jpg', 0, 'attachment', 'image/jpeg', 0),
(331, 1, '2019-05-29 20:08:15', '2019-05-29 17:08:15', '[table id=6 /]', 'Каталог товаров', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-29 20:08:15', '2019-05-29 17:08:15', '', 10, 'http://localhost/magazine/2019/05/29/10-revision-v1/', 0, 'revision', '', 0),
(332, 1, '2019-05-29 20:08:30', '2019-05-29 17:08:30', '', 'Каталог товаров', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-05-29 20:08:30', '2019-05-29 17:08:30', '', 10, 'http://localhost/magazine/2019/05/29/10-revision-v1/', 0, 'revision', '', 0),
(334, 1, '2019-05-30 19:52:27', '2019-05-30 16:52:27', 'Материал: латунь. Назначение: для ванны. Смеситель KRAFT KRF3006 характеризуется надежностью в использовании, стойкостью к износу, воздействию моющих веществ, невосприимчивостью к коррозии. Латунный смеситель имеет продолжительный срок службы.', 'Смеситель KRAFT KRF3006 для ванны', 'Код товара: <strong>3189</strong>', 'publish', 'open', 'closed', '', '%d1%81%d0%bc%d0%b5%d1%81%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-kraft-krf3006-%d0%b4%d0%bb%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b', '', '', '2019-06-01 20:42:55', '2019-06-01 17:42:55', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=334', 0, 'product', '', 0),
(335, 1, '2019-05-30 19:51:27', '2019-05-30 16:51:27', '', '5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800', '', 'inherit', 'open', 'closed', '', '5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800', '', '', '2019-05-30 19:52:02', '2019-05-30 16:52:02', '', 334, 'http://localhost/magazine/wp-content/uploads/2019/05/5c49cea2ac9724591-5c49c1aaa33f71617-smesitel-kaiser-006-500x500-800x800.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(336, 1, '2019-05-30 19:59:01', '2019-05-30 16:59:01', '<table class=\"table table-bordered\">\r\n<thead>\r\n<tr>\r\n<td colspan=\"2\"><strong>Характеристики</strong></td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Бренд</td>\r\n<td>KRAFT</td>\r\n</tr>\r\n<tr>\r\n<td>Гарантия</td>\r\n<td>5 лет</td>\r\n</tr>\r\n<tr>\r\n<td>Материал</td>\r\n<td>Нержавеющая сталь</td>\r\n</tr>\r\n<tr>\r\n<td>Назначение</td>\r\n<td>Для умывальника</td>\r\n</tr>\r\n<tr>\r\n<td>Страна производитель</td>\r\n<td>Китай</td>\r\n</tr>\r\n<tr>\r\n<td>Управление</td>\r\n<td>Одноручковый</td>\r\n</tr>\r\n<tr>\r\n<td>Форма излива</td>\r\n<td>Прямой</td>\r\n</tr>\r\n<tr>\r\n<td>Цвет</td>\r\n<td>Нержавейка</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Смеситель для умывальника KRAFT KRF5007', 'Код товара: 3195', 'publish', 'open', 'closed', '', '%d1%81%d0%bc%d0%b5%d1%81%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%b4%d0%bb%d1%8f-%d1%83%d0%bc%d1%8b%d0%b2%d0%b0%d0%bb%d1%8c%d0%bd%d0%b8%d0%ba%d0%b0-kraft-krf5007', '', '', '2019-06-01 20:44:00', '2019-06-01 17:44:00', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=336', 0, 'product', '', 0),
(337, 1, '2019-05-30 19:59:41', '2019-05-30 16:59:41', '', 'umyv_5007-500x500', '', 'inherit', 'open', 'closed', '', 'umyv_5007-500x500', '', '', '2019-05-30 20:00:02', '2019-05-30 17:00:02', '', 336, 'http://localhost/magazine/wp-content/uploads/2019/05/umyv_5007-500x500.png', 0, 'attachment', 'image/png', 0),
(338, 1, '2019-05-31 19:54:11', '2019-05-31 16:54:11', 'Насос погружной дренажный <b>Vitals Aqua DT 307s</b> предназначен для перекачивания технических вод – бытовых, коммунальных, сельскохозяйственных.\r\n\r\nПо своей конструкции насос погружной дренажный <b>Vitals Aqua DT 307s</b> относится к погружным моноблочным центробежным насосам с вертикальным расположением вала и боковым расположением напорного патрубка. Насос может быть установлен на твердое основание или подвешен на гибком тросе за ручку для переноски.\r\n\r\n<b>Насос может применяться для:</b>\r\n<ul>\r\n 	<li>откачивания чистой или загрязненной воды с целью осушения дренажных колодцев, погребов и подвалов, котлованов, канав, бассейнов, водоемов, ванн и аквариумов</li>\r\n 	<li>ирригации, отвода и снижения уровня грунтовых и сточных вод, в том числе вод, содержащих компоненты моющих средств и другой бытовой химии</li>\r\n 	<li>подачи воды из открытых природных водоемов и водохранилищ в оросительные системы садов и огородов, садовые и парковые фонтаны</li>\r\n</ul>\r\n&nbsp;\r\n\r\nНасос не предназначен для перекачки минеральной и морской воды, агрессивных и легковоспламеняющихся жидкостей и растворов, откачивания содержимого канализационных отстойников, коллекторов, колодцев. Вода, перекачиваемая насосом, не должна содержать большие абразивные или твердые включения.\r\n\r\n<b>Условия эксплуатации:</b>\r\n<ul>\r\n 	<li>общее содержание механических примесей в воде не должно превышать 12 кг/м3</li>\r\n 	<li>рабочий диапазон температуры перекачиваемой воды – от +4 °С до +35 °С</li>\r\n 	<li>максимальное количество включений двигателя насоса в час – не более 20</li>\r\n 	<li>показатель кислотности (рН) должен находиться в диапазоне от 4 до 10</li>\r\n 	<li>минимальный уровень осушения – 70 мм</li>\r\n 	<li>минимальный диаметр колодца – 600 мм</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<b>Особенности:</b>\r\n<ul>\r\n 	<li>обмотка статора электродвигателя изготовлена из медной проволоки</li>\r\n 	<li>вал насоса изготовлен из нержавеющей стали</li>\r\n 	<li>установлены высококачественные подшипники</li>\r\n 	<li>керамические сальники торцевого уплотнения</li>\r\n 	<li>рабочее колесо из стойкого пластика</li>\r\n 	<li>корпус насоса изготовлен из стойкого пластика</li>\r\n 	<li>поплавковый выключатель обеспечивает своевременное включение и выключение двигателя</li>\r\n 	<li>длина кабеля питания 10 метров</li>\r\n</ul>', 'Насос погружной дренажный для чистой воды Vitals Aqua DT 307s', 'Код товара: <strong>3302</strong>', 'publish', 'open', 'closed', '', '%d0%bd%d0%b0%d1%81%d0%be%d1%81-%d0%bf%d0%be%d0%b3%d1%80%d1%83%d0%b6%d0%bd%d0%be%d0%b9-%d0%b4%d1%80%d0%b5%d0%bd%d0%b0%d0%b6%d0%bd%d1%8b%d0%b9-%d0%b4%d0%bb%d1%8f-%d1%87%d0%b8%d1%81%d1%82%d0%be%d0%b9', '', '', '2019-06-01 16:10:10', '2019-06-01 13:10:10', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=338', 0, 'product', '', 0),
(339, 1, '2019-05-31 19:53:25', '2019-05-31 16:53:25', '', '1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj', '', 'inherit', 'open', 'closed', '', '1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj', '', '', '2019-05-31 19:53:39', '2019-05-31 16:53:39', '', 338, 'http://localhost/magazine/wp-content/uploads/2019/05/1470436790_w640_h640_nasos-pogruzhnoj-drenazhnyj.jpg', 0, 'attachment', 'image/jpeg', 0),
(340, 1, '2019-05-31 20:05:22', '2019-05-31 17:05:22', 'Насос циркуляционный DCA 25-6-180\r\n\r\nВысота подъема 4м\r\n\r\nБаза 180 мм\r\n\r\nКабель питания и\r\nГайки в комплекте Медная обмотка двигателя Улучшенная клеммная площадка Улучшенная крылчатка\r\n\r\n&nbsp;', 'Насос циркуляционный Power Craft XCA 25-6-180C', 'Код товара: <strong>3398</strong>', 'publish', 'open', 'closed', '', '%d0%bd%d0%b0%d1%81%d0%be%d1%81-%d1%86%d0%b8%d1%80%d0%ba%d1%83%d0%bb%d1%8f%d1%86%d0%b8%d0%be%d0%bd%d0%bd%d1%8b%d0%b9-power-craft-xca-25-6-180c', '', '', '2019-06-01 16:39:31', '2019-06-01 13:39:31', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=340', 0, 'product', '', 0),
(341, 1, '2019-05-31 20:05:14', '2019-05-31 17:05:14', '', '1573909057_w640_h640_cid2681372_pid883112625-eb28c452', '', 'inherit', 'open', 'closed', '', '1573909057_w640_h640_cid2681372_pid883112625-eb28c452', '', '', '2019-05-31 20:05:14', '2019-05-31 17:05:14', '', 340, 'http://localhost/magazine/wp-content/uploads/2019/05/1573909057_w640_h640_cid2681372_pid883112625-eb28c452.png', 0, 'attachment', 'image/png', 0),
(343, 1, '2019-06-01 16:11:39', '2019-06-01 13:11:39', 'Насос циркуляционный DCA 25-6-180\n\nВысота подъема 4м\n\nБаза 180 мм\n\nКабель питания и\nГайки в комплекте Медная обмотка двигателя Улучшенная клеммная площадка Улучшенная крылчатка\n\n&nbsp;', 'Насос циркуляционный Power Craft XCA 25-6-180C', 'Код товара: <strong>3398</strong>', 'inherit', 'closed', 'closed', '', '340-autosave-v1', '', '', '2019-06-01 16:11:39', '2019-06-01 13:11:39', '', 340, 'http://localhost/magazine/2019/06/01/340-autosave-v1/', 0, 'revision', '', 0),
(351, 1, '2019-06-03 12:31:47', '2019-06-03 09:31:47', 'Далеко не все жители квартирных домов могут похвастаться постоянным наличием горячего водоснабжения. А жители частных домов тем более должны обеспечивать себя теплой водой сами. Здесь пригодится электрический накопительный водонагреватель. Для кухни, например, можно купить бойлер<strong> NOVA TEC Compact Over 10</strong> (NT CO 10) .  Основные преимущества модели - Компактные размеры позволяют установить Ваш водонагреватель непосредственно в месте использования го­рячей воды, например под умывальником или раковиной, что значительно экономит пространство. - Экономия воды установка водонагревателя непосредственно в точке отбора воды позволяет сократить траты воды за время, пока горячая вода поступит по трубопроводу из удаленного места нагрева. - Энергосбережение значительное сокращение расхода электроэнергии, затрачиваемой на подогрев воды при подаче из удаленного водонагревателя. Особенности модели  - эмалированный внутренний бак - дополнительная защита - термостат безопасности - увеличенный магниевый анод - наружный регулятор  - увеличенный слой теплоизоляции - облегченный пластиковый корпус и компактный размер - небольшой вес.', 'Бойлер NOVA TEC Compact Over 10', 'Код товара: <strong>2931</strong>', 'publish', 'open', 'closed', '', 'nova-tec-compact-over-10', '', '', '2019-06-17 16:13:35', '2019-06-17 13:13:35', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=351', 0, 'product', '', 0),
(353, 1, '2019-06-03 13:23:05', '2019-06-03 10:23:05', 'Далеко не все жители квартирных домов могут похвастаться постоянным наличием горячего водоснабжения. А жители частных домов тем более должны обеспечивать себя теплой водой сами. Здесь пригодится электрический накопительный водонагреватель. Для кухни, например, можно купить бойлер<strong> NOVA TEC Compact Under 10</strong> (NT-CU 10). Основные преимущества модели: - Компактные размеры: позволяют установить Ваш водонагреватель непосредственно в месте использования горячей воды, например под умывальником или раковиной, что значительно экономит пространство. - Экономия воды: установка водонагревателя непосредственно в точке отбора воды позволяет сократить траты воды за время, пока горячая вода поступит по трубопроводу из удаленного места нагрева. - Энергосбережение: значительное сокращение расхода электроэнергии, затрачиваемой на подогрев воды при подаче из удаленного водонагревателя. Особенности модели - эмалированный внутренний бак - дополнительная защита - термостат безопасности - увеличенный магниевый анод - наружный регулятор - увеличенный слой теплоизоляции - облегченный пластиковый корпус и компактный размер - небольшой вес.', 'Бойлер NOVA TEC Compact Under 10', 'Код товара: <strong>2930</strong>', 'publish', 'open', 'closed', '', 'nova-tec-compact-under-10', '', '', '2019-06-17 16:00:20', '2019-06-17 13:00:20', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=353', 0, 'product', '', 0),
(355, 1, '2019-06-04 19:00:28', '2019-06-04 16:00:28', 'Малолитражные бойлеры пользуются большой популярностью среди наших покупателей. Они обладают компактными размерами, довольно простые в установке, не требуют много места и самое главное быстро нагревают воду. Мы предлагаем Вам ознакомиться с ещё одним представителем «маленького» электроводонагревателя Vogel Flug SU1012/1h. Его основное преимущество — настенный монтаж непосредственно под раковиной или мойкой.\r\n\r\nБойлер SU1012/1h от компании Vogel Flug — оптимальный выбор соотношения цены качество. Все комплектующие используемые в данном водонагревателе изготовлены на территории Евросоюза. В изготовлении накопительного бака используется Австрийская низколегированная сталь толщиной 1,8 мм. Электрическая часть производится в Италии на производственных мощностях компании Thermowatt. Накопительный бак — объёмом 10 литров, стальной, с антикоррозийным покрытием из стекло–титановой эмали, прошедшей процедуру обжига при температуре 850 °C. В качестве теплоизоляции используются экологически–чистая гомогенная полиуретановая пена без содержания хлорфторуглеродов. Толщина слоя составляет 25 мм.\r\n\r\nНагревательный элемент — медный, «мокрого» типа, мощностью 1200 Вт. Контактирует непосредственно с водой, обеспечивает быстрый её нагрев. Крепление ТЭНа к корпусу бака осуществляется через усиленный фланец на 6–ти болтах. Установка водонагревателя настенная в вертикальном положении, верхнее расположение патрубков горячей и холодной воды. Управление температурой нагрева производится при помощи выносного механического терморегулятора. Завод изготовитель предоставляет гарантию на накопительный бак 5 лет, на электрическую часть 2 года.', 'Водонагреватель Vogel Flug SU 1012/1h', 'Код товара: <strong>3063</strong>', 'publish', 'open', 'closed', '', 'vogel-flug-su-1012-1h', '', '', '2019-06-16 21:23:37', '2019-06-16 18:23:37', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=355', 0, 'product', '', 0),
(357, 1, '2019-06-04 19:16:19', '2019-06-04 16:16:19', '<ul>\r\n 	<li>ЭНЕРГОСБЕРЕГАЮЩИЙ – с минимальными тепловыми потерями, благодаря перфектной теплоизоляции из плотного ЕКО пенополиуретана;</li>\r\n 	<li>ДОЛГАЯ ЖИЗНЬ - инновативная формула износостойкой циркониевой эмали и антикоррозионной катодной защиты;</li>\r\n 	<li>НАДЕЖНЫЙ – с надежной четыре-степенной защитой;</li>\r\n 	<li>Подходящ для установки в помещениях без водопроводной инсталляции для горячей воды;</li>\r\n 	<li>Легкий и быстрый монтаж– прибор полностью укомплектован и нет необходимости в покупке дополнительных аксессуаров или элементов для монтажа.</li>\r\n 	<li>Укомплектован со специальной смесительной батареей и гибкими шлангами;</li>\r\n 	<li>Комплектовки входят в цену прибора;</li>\r\n 	<li>Комбинированный металлический вентиль – совмещает в себе функции предохранительного, обратного и дифференциального клапана;</li>\r\n 	<li>Внешний терморегулятор – задание температуры нагрева воды;</li>\r\n 	<li>Светяющийся ключ;</li>\r\n 	<li>Возможность встраивания анодного тестера;</li>\r\n 	<li>Модный елегантный дизайн</li>\r\n</ul>', 'Бойлер ELDOM Extra life 10 над мойкой 2.0 kw 72325NMP', 'Код товара: <strong>2336</strong>', 'publish', 'open', 'closed', '', 'bojler-eldom-extra-life-10', '', '', '2019-06-16 21:15:54', '2019-06-16 18:15:54', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=357', 0, 'product', '', 0),
(359, 1, '2019-06-05 20:46:14', '2019-06-05 17:46:14', '<h3>Тип нагрева</h3>\r\nVogel Flug QU 1020/1h – миниатюрный водонагреватель с электрическим способом нагрева воды, который устанавливается под раковиной. Тип – накопительный. Нагревательный элемент – стандартный трубчатый электронагреватель (ТЭН. Максимальный нагрев воды – до 75 С.\r\n<h3>Теплоизоляция</h3>\r\nТеплоизоляцией служит полиуретановая пена, не содержащая хлорфторуглеродов. Она обеспечивает поддержание температуры нагретой воды в накопителе и, соответственно, экономию потребляемой энергии.\r\n<h3>Бак</h3>\r\nРабочий объем Vogel Flug QU 1020/1h - 10 л. Материал – низколегированная сталь с высокими антикоррозионными показателями. Форма – плоская, максимально удобная для монтажа под раковиной (или в другом подходящем для этих целей месте).\r\n<h3>Управление режимами</h3>\r\nУправление – вручную, при помощи вынесенных на корпус ручек. В целях безопасности модель имеет автоматическую защиту от перегрева.', 'Бойлер VOGEL FLUG QU 1020/1h', 'Код товара <strong>2419</strong>', 'publish', 'open', 'closed', '', 'vogel-flug-qu-1020-1h', '', '', '2019-06-16 16:40:44', '2019-06-16 13:40:44', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=359', 0, 'product', '', 0),
(362, 1, '2019-06-05 21:05:25', '2019-06-05 18:05:25', '', '329886_002', '', 'inherit', 'open', 'closed', '', '329886_002', '', '', '2019-06-05 21:05:54', '2019-06-05 18:05:54', '', 0, 'http://localhost/magazine/wp-content/uploads/2019/06/329886_002.jpg', 0, 'attachment', 'image/jpeg', 0),
(363, 1, '2019-06-06 20:23:14', '2019-06-06 17:23:14', 'Бойлер воды <b>ELDOM</b> серий Термо представляют экономические серии водонагревателей. Они включают в комплектацию теплообменник, который устанавливается в нижней секции устройства. Он может быть подключен к дополнительным источникам электрического питания.\r\n<h3>Особенности модели</h3>\r\nКомбинированный бойлер Eldom Thermo 100 1.5 kW 72270GNTR HITET прекрасно подойдет для удовлетворения домашних потребностей. Он быстро нагревает воду и прекрасно сохраняет её тепло. Бойлер работает без присмотра – вы можете доверять высокому уровню его безопасности. Модель оснащена магниевым анодом, который предотвращает образование ржавчины на стенках бака (стенки выполнены из эмалированной стали с циркониевым покрытием). Аноды сменные, уступают свое место после 3-5 лет службы другим анодам.', 'Бойлер комбинированный ELDOM Thermo 100 1.5 kW 72270GNTR', '<div class=\"woocommerce-product-details__short-description\">\r\n\r\nКод товара: <strong>3250</strong>\r\n\r\n</div>\r\n<form class=\"cart\" action=\"http://localhost/magazine/product/%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-eldom-extra-life-10-%d0%bd%d0%b0%d0%b4-%d0%bc%d0%be%d0%b9%d0%ba%d0%be%d0%b9-2-0-kw-72325nmp/\" enctype=\"multipart/form-data\" method=\"post\">\r\n<div class=\"quantity\"></div>\r\n</form>', 'publish', 'open', 'closed', '', 'eldom-thermo-100-1-5-kw-72270gntr', '', '', '2019-06-15 18:51:55', '2019-06-15 15:51:55', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=363', 0, 'product', '', 0),
(365, 1, '2019-06-07 18:58:56', '2019-06-07 15:58:56', '<strong>QTERMO 100N Dry - </strong>это накопитель воды с электрическим нагревом, со специальным покрытием из высокотемпературной стекло-циркониевой эмали толщиной 550 микрон, нанесенной жидкостным способом, с обжигом при температуре 850 градусов. При этом добавление циркония Zr в композицию покрытия эмали значительно повышает его устойчивость к высоким температурам испарения воды. А эмалированное покрытие из циркония защищает внутренний резервуар водонагревателя во время работы и хорошо зарекомендовало себя при длительной эксплуатации, независимо от различных характеристик воды.\r\n\r\n<hr />\r\n\r\nДля обеспечения высококачественной теплоизоляции, внутренний бак изолирован слоем термоизоляции из гомогенной не содержащей хлорфторуглероды пенополиуретановой пены, изготовленной на основе специального рецепта при котором получается пена очень высокой плотности. Показатель плотности данной изоляции характеризуется одним из лучших коэффициентов теплопроводности (= 0,022) с гарантированными минимальными потерями тепла и максимальной финансовой экономией, и соответствует новым стандартам ЕС с 01.01.2016 года по энергосбережению.\r\n\r\n<hr />\r\n\r\n<strong>Технология сухого нагрева.</strong>Нагреватели размещены в специальных теплообменниках и не находятся в непосредственном контакте с водой.Что позволяет  в отличие от обычных нагревателей исключает повреждение нагревательных спиралей от накипи и значительно продлевает срок службы и работу устройства. Фланец сухого нагревательного элемента Trend N Dry имеет толщину стали 3 мм и крепится к внутреннему баку бойлера на 6 болтов через эластичную прокладку, полностью, исключая протечки в местах соединения.\r\n\r\n<hr />\r\n\r\n<strong> Внутренний бак </strong>водонагревателей Qtermo произведен из специальной, низколегированной стали от Немецкого производителя Steel AG, толщиной 2-2,2мм (горловина фланца 3мм).\r\n\r\n<hr />\r\n\r\nПлотность изоляции гарантирует минимальную теплопотерю нагретой в бойлере воды, <strong>толщина изоляции достигает 45мм</strong>. Надёжная электрическая часть, COTHERM (Франция), соответствующая европейским требованиям качества. Каждый водонагреватель Qtermo оснащен увеличенной активной анодной защитой. Эта функция обеспечивает эффективную защиту, особенно в случае более высокого содержания кислорода в воде, и в значительной степени продлевает срок службы нагревателя.\r\n\r\n<hr />\r\n\r\n<strong>Преимущества</strong>\r\n<ul>\r\n 	<li>Встроенный активный магниевый анод имеет средний срок службы 2 года.</li>\r\n 	<li>Рабочее давление 0,6MPa (испытуемое – 1,6).</li>\r\n 	<li>Все комплектующие, из которых состоит водонагреватель , произведены в Евросоюзе.</li>\r\n 	<li>Управление режимами работы осуществляется при помощи наружного терморегулятора. Выносной термоиндикатор.</li>\r\n 	<li>Индикация режима работы.</li>\r\n 	<li>Класс влагозащиты IPX4</li>\r\n 	<li>Сборка бака производится в соответствии всем существующим стандартам Евросоюза. Это подтверждено сертификатом EURO 1 и сертификатами соответствий.</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<strong>Полная гарантия</strong> на все части водонагревателя Qtermo составляет 2 года.\r\n\r\n<strong>Гарантия на внутренний бак</strong> водонагревателя Qtermo, составляет <strong>10 лет!</strong>', 'Бойлер QTERMO 100N Dry', 'Код товара <strong>3430</strong>', 'publish', 'open', 'closed', '', 'qtermo-100n-dry', '', '', '2019-06-15 18:30:42', '2019-06-15 15:30:42', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=365', 0, 'product', '', 0),
(366, 1, '2019-06-07 18:58:32', '2019-06-07 15:58:32', '', 'boylsdr-QTERMO 100N Dry', '', 'inherit', 'open', 'closed', '', 'boylsdr-qtermo-145', '', '', '2019-06-15 18:22:57', '2019-06-15 15:22:57', '', 365, 'http://localhost/magazine/wp-content/uploads/2019/06/boylsdr-qtermo-145.jpg', 0, 'attachment', 'image/jpeg', 0),
(367, 1, '2019-06-07 18:59:29', '2019-06-07 15:59:29', '', 'boyler-q5645', '', 'inherit', 'open', 'closed', '', 'boyler-q5645', '', '', '2019-06-07 18:59:42', '2019-06-07 15:59:42', '', 365, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-q5645.jpg', 0, 'attachment', 'image/jpeg', 0),
(368, 1, '2019-06-07 19:12:42', '2019-06-07 16:12:42', '<strong>Надежность</strong>\r\n\r\n<strong>Водонагреватель Novatec NT-SP 100 </strong> отличается стабильной подачей воды, что позволит вам не переживать о перебоях, касательно температуры подаваемой воды.\r\n\r\n<strong>Терморегулятор</strong>\r\n\r\nВодонагреватели серии Standart Plus оборудованы наружным регулятором температуры воды, расположенном на нижней крышке нагревателя, который позволяет легко устанавливать необходимую температуру нагрева воды.\r\n\r\n<strong>Эффективная мощность</strong>\r\n\r\nПолучать горячую воду быстро вам позволит высокий показатель мощности, как для столь компактного водонагревателя, который равен 1800 Вт.', 'Водонагреватель Novatec Standart SР 100', 'Код товара <strong>2808</strong>', 'publish', 'open', 'closed', '', 'novatec-standart-sr-100', '', '', '2019-06-15 17:59:19', '2019-06-15 14:59:19', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=368', 0, 'product', '', 0),
(369, 1, '2019-06-07 19:10:54', '2019-06-07 16:10:54', '', 'Nova-Tec-St56756', '', 'inherit', 'open', 'closed', '', 'nova-tec-st56756', '', '', '2019-06-15 17:54:59', '2019-06-15 14:54:59', '', 368, 'http://localhost/magazine/wp-content/uploads/2019/06/Nova-Tec-St56756.jpg', 0, 'attachment', 'image/jpeg', 0),
(370, 1, '2019-06-07 19:12:13', '2019-06-07 16:12:13', '', 'Nova-Tec-St56756', '', 'inherit', 'open', 'closed', '', 'nova-tec-st56756-2', '', '', '2019-06-07 19:12:25', '2019-06-07 16:12:25', '', 368, 'http://localhost/magazine/wp-content/uploads/2019/06/Nova-Tec-St56756-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(371, 1, '2019-06-07 19:13:32', '2019-06-07 16:13:32', '', 'Nova-Tec-St56756', '', 'inherit', 'open', 'closed', '', 'nova-tec-st56756-3', '', '', '2019-06-07 19:13:32', '2019-06-07 16:13:32', '', 368, 'http://localhost/magazine/wp-content/uploads/2019/06/Nova-Tec-St56756-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(377, 1, '2019-06-08 18:22:50', '2019-06-08 15:22:50', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart][woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-06-08 18:22:50', '2019-06-08 15:22:50', '', 12, 'http://localhost/magazine/2019/06/08/12-revision-v1/', 0, 'revision', '', 0),
(378, 1, '2019-06-08 18:33:27', '2019-06-08 15:33:27', 'Навесной водонагреватель <strong>Vogel Flug SVD100 4520/1h</strong> используется в системах горячего водоснабжения частных домов, квартир, различных коммунальных и коммерческих объектов. Представленная модель это бойлер накопительного типа, объёмом 100 литров, устанавливается в вертикальном положении, работает от электросети с напряжением 220В.\r\n\r\n<strong>Vogel Flug SVD100 4520/1h</strong> — цилиндрический водонагреватель от известного производителя. Полностью собран из комплектующих произведённых на территории Евросоюза. Соответствует всем Европейским стандартам по энергоэффективности и безопасности. Рабочий резервуар (накопительный бак) произведён из Австрийской низколигированной стали толщиной 1,8 мм. Внутренняя поверхность бака обработана антикоррозийным покрытием на основе стеклоэмали. Увеличенный магниевый анод призван обеспечить дополнительную защиту от коррозии и значительно уменьшить интенсивность образование накипи. Срок его замены зависит от интенсивности использования бойлера, но в среднем один раз в два года. Свести к минимуму потери тепла (охлаждение воды в накопительном баке) призвана плотная полиуретановая пена толщиной 25 мм. Она экологически чистая (без хлорфторуглеродов) не наносит вред окружающей среде, соответствует последним стандартам по энергосбережению.\r\n\r\nВ водонагревателе <strong>Vogel Flug SVD100 4520/1h</strong> применяется один «сухой» нагревательный элемент мощностью 2000 Вт. ТЭН изготовлен итальянским концерном Thermowatt, что является 100% гарантией качества, высокой надёжности, безопасности. Управление температурой нагрева производится с помощью механического терморегулятора, предусмотрен световой индикатор, красного цвета, сигнализирующий включение режима нагрева. Стрелочный термометр отображает температуру воды в накопительном баке. На водонагреватель распространяется официальная гарантия от производителя — на бак 7 лет, на электрическую часть 2 года.\r\n<h3>Технические данные:</h3>\r\n<ul>\r\n 	<li>Объем накопительного бака: 100 л</li>\r\n 	<li>Форма бака: цилиндрическая</li>\r\n 	<li>Номинальное напряжение: 230 В / 50Hz</li>\r\n 	<li>Мощность ТЭНа: 1 шт х 2000 Вт</li>\r\n 	<li>Тип ТЭНа: «сухой»</li>\r\n 	<li>Установка: настенная / вертикальная</li>\r\n 	<li>Диаметр патрубков подключения: ½\"</li>\r\n 	<li>Рабочее давление: 0,6 МПа</li>\r\n 	<li>Сбросной клапан: есть</li>\r\n</ul>\r\n<h3>Габариты и масса:</h3>\r\n<ul>\r\n 	<li>Габаритные размеры (ВхШхГ): 949x445x465 мм</li>\r\n 	<li>Вес: 27,5 кг</li>\r\n 	<li>Цвет: белый</li>\r\n</ul>\r\n<h3>Особенности:</h3>\r\n<ul>\r\n 	<li>Два термодатчика: основной и резервный</li>\r\n 	<li>Экологически чистая теплоизоляция</li>\r\n 	<li>Защитный клапан от перепадов давления</li>\r\n 	<li>Магниевый защитный анод, периодичность смены 1 раз в 2 года</li>\r\n 	<li>Выносной механический терморегулятор</li>\r\n 	<li>Сухой нагревательный элемент, высокое КПД нагрева</li>\r\n 	<li>Накопительный бак из Австрийской легированной стали</li>\r\n 	<li>Толщина стенки бака 1,8 мм</li>\r\n 	<li>Внутреннее покрытие бака: стеклоэмаль</li>\r\n 	<li>Индикатор температуры воды, индикатор нагрева</li>\r\n 	<li>Комплектующие Европейских производителей</li>\r\n</ul>\r\n<h3>Официальная гарантия:</h3>\r\n<ul>\r\n 	<li>Накопительный бак: 7 лет (официальная гарантия от производителя)</li>\r\n 	<li>На электрическую часть: 2 года (официальная гарантия от производителя)</li>\r\n 	<li>Производство: Сербия / Хорватия</li>\r\n</ul>', 'Водонагреватель Vogel Flug SVD100 4520/1h на 100 литров', 'Код товара <strong>3077</strong>', 'publish', 'open', 'closed', '', 'vogel-flug-svd100-4520-1h', '', '', '2019-06-15 17:26:05', '2019-06-15 14:26:05', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=378', 0, 'product', '', 0),
(380, 1, '2019-06-10 18:42:23', '2019-06-10 15:42:23', 'Комбинированный навесной бойлер косвенного нагрева на <b>100 литров</b>, с одним теплообменником объемом 0.62 л и встроенным электрическим нагревательным элементом ТЭНом мощностью 2.0 кВт. Тэн открытый (мокрый). Внутренний бак изготовлен из австрийской стали толщиной 2.2 мм., сверху бак покрыт стеклокерамической титановой эмалью, что способствует длительному сроку службы бака. Бойлер <b>ARTi WH Comby</b> с универсальной установкой (вертикально-горизонтальный). Комбинированные баки косвенного нагрева являются основополагающим элементом для приготовления горячей воды от разных источников теплоснабжения -газовый, электрический, твердотопливный котлы, солнечная энергия, электроснабжение и т.д.\r\n<b>Особенности бойлера косвенного нагрева ARTi WH Comby:</b>\r\n<ul>\r\n 	<li>Универсальная установка — вертикальная или горизонтальная.</li>\r\n 	<li>Возможность одновременного подключения двух теплоносителей.</li>\r\n 	<li>Модельный ряд из 5 модификаций.</li>\r\n 	<li>Внутри стальной бак с стеклокерамическим титановым покрытием.</li>\r\n 	<li>Установлен магниевый анод для защиты электрического нагревателя от накипи.</li>\r\n 	<li>Ускоренный нагрев электрическим нагревателем мощностью 2.0 кВт.</li>\r\n</ul>\r\n<b>Преимущества бойлера ARTi серия WH Comby:</b>\r\n<ul>\r\n 	<li>Толщина стенки металла 2.2 мм.</li>\r\n 	<li>Индикатор температуры.</li>\r\n 	<li>Стеклокерамическое титановое покрытие бака для воды.</li>\r\n 	<li>Фланец для ревизии и технического обслуживания.</li>\r\n 	<li>Механический способ регулирования.</li>\r\n 	<li>Термометр и наружный регулятор температуры на корпусе.</li>\r\n 	<li>Максимальное давление на входе 8 бар.</li>\r\n 	<li>Максимальная регулируемая температура 70°С.</li>\r\n</ul>', 'Бойлер ARTI WH COMBY 100L/1', 'Код товара <strong>3002</strong>', 'publish', 'open', 'closed', '', 'boyler-arti-wh-comby-100l-1', '', '', '2019-06-15 17:10:34', '2019-06-15 14:10:34', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=380', 0, 'product', '', 0),
(382, 1, '2019-06-10 18:53:44', '2019-06-10 15:53:44', 'Водонагреватели серии <strong>Direct Dry </strong>(с сухим ТЭНом) идеально подходят для эксплуатации в условиях \"жесткой\" воды. Он имеет два нагревательных элемента, которые герметично спрятаны в эмалированных трубках. При такой конструкции отсутствует контакт нагревательного элемента с водой. Площадь нагрева у \"сухого\" ТЭНа значительно больше, чем у классического медного, благодаря чему нагревание происходит быстрей, более плавно и равномерно.\r\n\r\n<strong>Титановая эмаль    </strong>\r\nДля защиты всех баков <strong>ТМ NOVATEC</strong> от коррозии используется титановая эмаль, не содержащая органических примесей. Эмаль наносится жидким способом и обжигается в печи под температурой  850 ºС. Полученный композитный материал \"сталь-эмаль\" гарантирует защиту водонагревателей <strong>TM NOVATEC</strong> от самой жесткой водопроводной воды.\r\n\r\n<strong>Теплоизоляция  </strong>\r\nЭкологически чистая, не содержащая CFC, пенополиуретановая теплоизоляция. Слой термоизоляции в водонагревателях <strong>TM NOVATEC</strong> от 20 до 57 мм. в зависимости от месторасположения в корпусе водонагревателя. Такая конструкция придает ему свойства термоса, что значительно снижает расходы домохозяйства на электроэнергию.\r\n\r\n<strong>Система \"Антимикс\"  </strong>\r\nПри создании водонагревателей <strong>TM NOVATEC</strong> применена уникальная система \"Антимикс\", которая препятствует перемешиванию слоев холодной и уже нагретой воды. Благодаря этой \"умной\" системе значительно увеличивается коэффициент использования горячей воды, и полностью исключаются температурные перепады.', 'NOVATEC Direct Dry NT-DD 100', 'Код товара <strong>2804</strong>', 'publish', 'open', 'closed', '', 'novatec-direct-dry-nt-dd-100', '', '', '2019-06-13 19:55:54', '2019-06-13 16:55:54', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=382', 0, 'product', '', 0),
(384, 1, '2019-06-10 18:53:18', '2019-06-10 15:53:18', '', '10657308_images_1685062', '', 'inherit', 'open', 'closed', '', '10657308_images_1685062', '', '', '2019-06-10 18:53:28', '2019-06-10 15:53:28', '', 382, 'http://localhost/magazine/wp-content/uploads/2019/06/10657308_images_1685062.jpg', 0, 'attachment', 'image/jpeg', 0),
(385, 1, '2019-06-10 18:53:35', '2019-06-10 15:53:35', '', '10657308_images_16167', '', 'inherit', 'open', 'closed', '', '10657308_images_16167', '', '', '2019-06-10 18:53:40', '2019-06-10 15:53:40', '', 382, 'http://localhost/magazine/wp-content/uploads/2019/06/10657308_images_16167.jpg', 0, 'attachment', 'image/jpeg', 0),
(386, 1, '2019-06-11 20:07:24', '2019-06-11 17:07:24', '<b>Титановая эмаль   </b>\r\nДля защиты всех баков ТМ NOVA TEC от коррозии используется титановая эмаль, не содержащая органических примесей. Эмаль наносится жидким способом и обжигается в печи под температурой 850. Полученный композитный материал \"сталь-эмаль\" гарантирует защиту водонагревателей TM NOVA TEC от самой жесткой водопроводной воды.\r\n\r\n<b>Теплоизоляция  </b>\r\nЭкологически чистая, не содержащая CFC, пенополиуретановая теплоизоляция. Слой термоизоляции в водонагревателях TM NOVATEC от 20 до 57 мм. в зависимости от месторасположения в корпусе водонагревателя. Такая конструкция придает ему свойства термоса, что значительно снижает расходы домохозяйства на электроэнергию.\r\n\r\n<b>Система \"Антимикс\"    </b>\r\nПри создании водонагревателей TM NOVA TEC применена уникальная система \"Антимикс\", которая препятствует перемешиванию слоев холодной и уже нагретой воды. Благодаря этой \"умной\" системе значительно увеличивается коэффициент использования горячей воды, и полностью исключаются температурные перепады.', 'Бойлер NOVA TEC NT-S 100', 'Код товара <strong>2008</strong>', 'publish', 'open', 'closed', '', 'nova-tec-nt-s-100', '', '', '2019-06-13 20:02:34', '2019-06-13 17:02:34', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=386', 0, 'product', '', 0),
(388, 1, '2019-06-11 20:07:14', '2019-06-11 17:07:14', '', '10102054_images_166563535', '', 'inherit', 'open', 'closed', '', '10102054_images_166563535', '', '', '2019-06-11 20:07:21', '2019-06-11 17:07:21', '', 386, 'http://localhost/magazine/wp-content/uploads/2019/06/10102054_images_166563535.jpg', 0, 'attachment', 'image/jpeg', 0),
(391, 1, '2019-06-11 20:28:54', '2019-06-11 17:28:54', '', 'Nova-Tec-St56756', '', 'inherit', 'open', 'closed', '', 'nova-tec-st56756-4', '', '', '2019-06-13 19:56:26', '2019-06-13 16:56:26', '', 382, 'http://localhost/magazine/wp-content/uploads/2019/06/Nova-Tec-St56756-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(392, 1, '2019-06-12 18:38:28', '2019-06-12 15:38:28', '<b>Титановая эмаль   </b>\nДля защиты всех баков ТМ NOVATEC от коррозии используется титановая эмаль, не содержащая органических примесей. Эмаль наносится жидким способом и обжигается в печи под температурой 850. Полученный композитный материал \"сталь-эмаль\" гарантирует защиту водонагревателей TM NOVATEC от самой жесткой водопроводной воды.\n\n<b>Теплоизоляция  </b>\nЭкологически чистая, не содержащая CFC, пенополиуретановая теплоизоляция. Слой термоизоляции в водонагревателях TM NOVATEC от 20 до 57 мм. в зависимости от месторасположения в корпусе водонагревателя. Такая конструкция придает ему свойства термоса, что значительно снижает расходы домохозяйства на электроэнергию.\n\n<b>Система \"Антимикс\"    </b>\nПри создании водонагревателей TM NOVATEC NT-S 100 применена уникальная система \"Антимикс\", которая препятствует перемешиванию слоев холодной и уже нагретой воды. Благодаря этой \"умной\" системе значительно увеличивается коэффициент использования горячей воды, и полностью исключаются температурные перепады.', 'Бойлер NOVA TEC NT-S 100', 'Код товара <strong>2008</strong>', 'inherit', 'closed', 'closed', '', '386-autosave-v1', '', '', '2019-06-12 18:38:28', '2019-06-12 15:38:28', '', 386, 'http://localhost/magazine/2019/06/12/386-autosave-v1/', 0, 'revision', '', 0),
(393, 1, '2019-06-12 18:44:04', '2019-06-12 15:44:04', '', 'Boyler ARTI WH COMBY 100L 1', '', 'inherit', 'open', 'closed', '', 'boyler-arti-wh-comby-100l-1', '', '', '2019-06-12 18:44:04', '2019-06-12 15:44:04', '', 386, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-arti-wh-comby-100l-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(395, 1, '2019-06-12 18:47:27', '2019-06-12 15:47:27', '', 'Boyler NOVA TEC NT-S 100', '', 'inherit', 'open', 'closed', '', 'boyler-nova-tec-nt-s-100', '', '', '2019-06-12 18:48:12', '2019-06-12 15:48:12', '', 386, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-nova-tec-nt-s-100.jpg', 0, 'attachment', 'image/jpeg', 0),
(398, 1, '2019-06-13 20:19:27', '2019-06-13 17:19:27', '', 'Boyler ARTI WH COMBY 100L1', '', 'inherit', 'open', 'closed', '', 'boyler-arti-wh-comby-100l1', '', '', '2019-06-13 20:19:40', '2019-06-13 17:19:40', '', 380, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-arti-wh-comby-100l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(399, 1, '2019-06-15 17:09:58', '2019-06-15 14:09:58', '', 'Boyler ARTI WH COMBY 100L1', '', 'inherit', 'open', 'closed', '', 'boyler-arti-wh-comby-100l1-2', '', '', '2019-06-15 17:10:27', '2019-06-15 14:10:27', '', 380, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-arti-wh-comby-100l1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(401, 1, '2019-06-15 17:24:15', '2019-06-15 14:24:15', '', 'Vogel Flug SVD100 4520-1h', '', 'inherit', 'open', 'closed', '', 'vogel-flug-svd100-4520-1h', '', '', '2019-06-15 17:24:44', '2019-06-15 14:24:44', '', 378, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-svd100-4520-1h.png', 0, 'attachment', 'image/png', 0),
(402, 1, '2019-06-15 17:25:59', '2019-06-15 14:25:59', 'Навесной водонагреватель <strong>Vogel Flug SVD100 4520/1h</strong> используется в системах горячего водоснабжения частных домов, квартир, различных коммунальных и коммерческих объектов. Представленная модель это бойлер накопительного типа, объёмом 100 литров, устанавливается в вертикальном положении, работает от электросети с напряжением 220В.\n\n<strong>Vogel Flug SVD100 4520/1h</strong> — цилиндрический водонагреватель от известного производителя. Полностью собран из комплектующих произведённых на территории Евросоюза. Соответствует всем Европейским стандартам по энергоэффективности и безопасности. Рабочий резервуар (накопительный бак) произведён из Австрийской низколигированной стали толщиной 1,8 мм. Внутренняя поверхность бака обработана антикоррозийным покрытием на основе стеклоэмали. Увеличенный магниевый анод призван обеспечить дополнительную защиту от коррозии и значительно уменьшить интенсивность образование накипи. Срок его замены зависит от интенсивности использования бойлера, но в среднем один раз в два года. Свести к минимуму потери тепла (охлаждение воды в накопительном баке) призвана плотная полиуретановая пена толщиной 25 мм. Она экологически чистая (без хлорфторуглеродов) не наносит вред окружающей среде, соответствует последним стандартам по энергосбережению.\n\nВ водонагревателе <strong>Vogel Flug SVD100 4520/1h</strong> применяется один «сухой» нагревательный элемент мощностью 2000 Вт. ТЭН изготовлен итальянским концерном Thermowatt, что является 100% гарантией качества, высокой надёжности, безопасности. Управление температурой нагрева производится с помощью механического терморегулятора, предусмотрен световой индикатор, красного цвета, сигнализирующий включение режима нагрева. Стрелочный термометр отображает температуру воды в накопительном баке. На водонагреватель распространяется официальная гарантия от производителя — на бак 7 лет, на электрическую часть 2 года.\n<h3>Технические данные:</h3>\n<ul>\n 	<li>Объем накопительного бака: 100 л</li>\n 	<li>Форма бака: цилиндрическая</li>\n 	<li>Номинальное напряжение: 230 В / 50Hz</li>\n 	<li>Мощность ТЭНа: 1 шт х 2000 Вт</li>\n 	<li>Тип ТЭНа: «сухой»</li>\n 	<li>Установка: настенная / вертикальная</li>\n 	<li>Диаметр патрубков подключения: ½\"</li>\n 	<li>Рабочее давление: 0,6 МПа</li>\n 	<li>Сбросной клапан: есть</li>\n</ul>\n<h3>Габариты и масса:</h3>\n<ul>\n 	<li>Габаритные размеры (ВхШхГ): 949x445x465 мм</li>\n 	<li>Вес: 27,5 кг</li>\n 	<li>Цвет: белый</li>\n</ul>\n<h3>Особенности:</h3>\n<ul>\n 	<li>Два термодатчика: основной и резервный</li>\n 	<li>Экологически чистая теплоизоляция</li>\n 	<li>Защитный клапан от перепадов давления</li>\n 	<li>Магниевый защитный анод, периодичность смены 1 раз в 2 года</li>\n 	<li>Выносной механический терморегулятор</li>\n 	<li>Сухой нагревательный элемент, высокое КПД нагрева</li>\n 	<li>Накопительный бак из Австрийской легированной стали</li>\n 	<li>Толщина стенки бака 1,8 мм</li>\n 	<li>Внутреннее покрытие бака: стеклоэмаль</li>\n 	<li>Индикатор температуры воды, индикатор нагрева</li>\n 	<li>Комплектующие Европейских производителей</li>\n</ul>\n<h3>Официальная гарантия:</h3>\n<ul>\n 	<li>Накопительный бак: 7 лет (официальная гарантия от производителя)</li>\n 	<li>На электрическую часть: 2 года (официальная гарантия от производителя)</li>\n 	<li>Производство: Сербия / Хорватия</li>\n</ul>', 'Водонагреватель Vogel Flug SVD100 4520/1h на 100 литров', 'Код товара <strong>3077</strong>', 'inherit', 'closed', 'closed', '', '378-autosave-v1', '', '', '2019-06-15 17:25:59', '2019-06-15 14:25:59', '', 378, 'http://localhost/magazine/2019/06/15/378-autosave-v1/', 0, 'revision', '', 0),
(403, 1, '2019-06-15 17:54:51', '2019-06-15 14:54:51', '<strong>Надежность</strong>\n\n<strong>Водонагреватель Novatec NT-SP 100 </strong> отличается стабильной подачей воды, что позволит вам не переживать о перебоях, касательно температуры подаваемой воды.\n\n<strong>Терморегулятор</strong>\n\nВодонагреватели серии Standart Plus оборудованы наружным регулятором температуры воды, расположенном на нижней крышке нагревателя, который позволяет легко устанавливать необходимую температуру нагрева воды.\n\n<strong>Эффективная мощность</strong>\n\nПолучать горячую воду быстро вам позволит высокий показатель мощности, как для столь компактного водонагревателя, который равен 1800 Вт.', 'Водонагреватель Novatec Standart SР 100', 'Код товара <strong>2808</strong>', 'inherit', 'closed', 'closed', '', '368-autosave-v1', '', '', '2019-06-15 17:54:51', '2019-06-15 14:54:51', '', 368, 'http://localhost/magazine/2019/06/15/368-autosave-v1/', 0, 'revision', '', 0),
(404, 1, '2019-06-15 18:28:57', '2019-06-15 15:28:57', '<strong>QTERMO 100N Dry - </strong>это накопитель воды с электрическим нагревом, со специальным покрытием из высокотемпературной стекло-циркониевой эмали толщиной 550 микрон, нанесенной жидкостным способом, с обжигом при температуре 850 градусов. При этом добавление циркония Zr в композицию покрытия эмали значительно повышает его устойчивость к высоким температурам испарения воды. А эмалированное покрытие из циркония защищает внутренний резервуар водонагревателя во время работы и хорошо зарекомендовало себя при длительной эксплуатации, независимо от различных характеристик воды.\n\n<hr />\n\nДля обеспечения высококачественной теплоизоляции, внутренний бак изолирован слоем термоизоляции из гомогенной не содержащей хлорфторуглероды пенополиуретановой пены, изготовленной на основе специального рецепта при котором получается пена очень высокой плотности. Показатель плотности данной изоляции характеризуется одним из лучших коэффициентов теплопроводности (= 0,022) с гарантированными минимальными потерями тепла и максимальной финансовой экономией, и соответствует новым стандартам ЕС с 01.01.2016 года по энергосбережению.\n\n<hr />\n\n<strong>Технология сухого нагрева.</strong>Нагреватели размещены в специальных теплообменниках и не находятся в непосредственном контакте с водой.Что позволяет  в отличие от обычных нагревателей исключает повреждение нагревательных спиралей от накипи и значительно продлевает срок службы и работу устройства. Фланец сухого нагревательного элемента Trend N Dry имеет толщину стали 3 мм и крепится к внутреннему баку бойлера на 6 болтов через эластичную прокладку, полностью, исключая протечки в местах соединения.\n\n<hr />\n\n<strong> Внутренний бак </strong>водонагревателей Qtermo произведен из специальной, низколегированной стали от Немецкого производителя Steel AG, толщиной 2-2,2мм (горловина фланца 3мм).\n\n<hr />\n\nПлотность изоляции гарантирует минимальную теплопотерю нагретой в бойлере воды, <strong>толщина изоляции достигает 45мм</strong>. Надёжная электрическая часть, COTHERM (Франция), соответствующая европейским требованиям качества. Каждый водонагреватель Qtermo оснащен увеличенной активной анодной защитой. Эта функция обеспечивает эффективную защиту, особенно в случае более высокого содержания кислорода в воде, и в значительной степени продлевает срок службы нагревателя.\n\n<hr />\n\n<strong>Преимущества</strong>\n<ul>\n 	<li>Встроенный активный магниевый анод имеет средний срок службы 2 года.</li>\n 	<li>Рабочее давление 0,6MPa (испытуемое – 1,6).</li>\n 	<li>Все комплектующие, из которых состоит водонагреватель , произведены в Евросоюзе.</li>\n 	<li>Управление режимами работы осуществляется при помощи наружного терморегулятора. Выносной термоиндикатор.</li>\n 	<li>Индикация режима работы.</li>\n 	<li>Класс влагозащиты IPX4</li>\n 	<li>Сборка бака производится в соответствии всем существующим стандартам Евросоюза. Это подтверждено сертификатом EURO 1 и сертификатами соответствий.</li>\n</ul>\n\n<hr />\n\n<strong>Полная гарантия</strong> на все части водонагревателя Qtermo составляет 2 года.\n\n<strong>Гарантия на внутренний бак</strong> водонагревателя Qtermo, составляет <strong>10 лет!</strong>', 'Бойлер QTERMO 100N Dry', '<p>Код товара <strong>3430</strong></p>', 'inherit', 'closed', 'closed', '', '365-autosave-v1', '', '', '2019-06-15 18:28:57', '2019-06-15 15:28:57', '', 365, 'http://localhost/magazine/2019/06/15/365-autosave-v1/', 0, 'revision', '', 0),
(405, 1, '2019-06-15 18:38:20', '2019-06-15 15:38:20', 'Бойлер воды <b>ELDOM</b> серий Термо представляют экономические серии водонагревателей. Они включают в комплектацию теплообменник, который устанавливается в нижней секции устройства. Он может быть подключен к дополнительным источникам электрического питания.\n<h3>Особенности модели</h3>\nКомбинированный бойлер Eldom Thermo 100 1.5 kW 72270GNTR HITET прекрасно подойдет для удовлетворения домашних потребностей. Он быстро нагревает воду и прекрасно сохраняет её тепло. Бойлер работает без присмотра – вы можете доверять высокому уровню его безопасности. Модель оснащена магниевым анодом, который предотвращает образование ржавчины на стенках бака (стенки выполнены из эмалированной стали с циркониевым покрытием). Аноды сменные, уступают свое место после 3-5 лет службы другим анодам.', 'Бойлер комбинированный ELDOM Thermo 100 1.5 kW 72270GNTR', '<div class=\"woocommerce-product-details__short-description\">\n\nКод товара: <strong>3250</strong>\n\n</div>\n<form class=\"cart\" action=\"http://localhost/magazine/product/%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80-eldom-extra-life-10-%d0%bd%d0%b0%d0%b4-%d0%bc%d0%be%d0%b9%d0%ba%d0%be%d0%b9-2-0-kw-72325nmp/\" enctype=\"multipart/form-data\" method=\"post\">\n<div class=\"quantity\"></div>\n</form>', 'inherit', 'closed', 'closed', '', '363-autosave-v1', '', '', '2019-06-15 18:38:20', '2019-06-15 15:38:20', '', 363, 'http://localhost/magazine/2019/06/15/363-autosave-v1/', 0, 'revision', '', 0),
(406, 1, '2019-06-15 18:40:09', '2019-06-15 15:40:09', '', 'ELDOM Thermo 100 1.5 kW 72270GNTR', '', 'inherit', 'open', 'closed', '', 'eldom-thermo-100-1-5-kw-72270gntr-2', '', '', '2019-06-15 18:40:43', '2019-06-15 15:40:43', '', 363, 'http://localhost/magazine/wp-content/uploads/2019/06/eldom-thermo-100-1.5-kw-72270gntr.jpg', 0, 'attachment', 'image/jpeg', 0),
(408, 1, '2019-06-15 19:00:43', '2019-06-15 16:00:43', '<strong>БОЙЛЕР</strong> <b>ELDOM</b> серий Термо представляют экономические серии водонагревателей. Они включают в комплектацию теплообменник, который устанавливается в нижней секции устройства. Он может быть подключен к дополнительным источникам электрического питания.', 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR', 'Код товара <strong>3249</strong>', 'publish', 'open', 'closed', '', 'bojler-eldom-thermo-100-1x2-kw-72270gnt-72270gntr', '', '', '2019-06-15 19:00:47', '2019-06-15 16:00:47', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=408', 0, 'product', '', 0),
(410, 1, '2019-06-16 15:53:11', '2019-06-16 12:53:11', '<h3>Тип нагрева</h3>\nVogel Flug QU 1020/1h – миниатюрный водонагреватель с электрическим способом нагрева воды, который устанавливается под раковиной. Тип – накопительный. Нагревательный элемент – стандартный трубчатый электронагреватель (ТЭН. Максимальный нагрев воды – до 75 С.\n<h3>Теплоизоляция</h3>\nТеплоизоляцией служит полиуретановая пена, не содержащая хлорфторуглеродов. Она обеспечивает поддержание температуры нагретой воды в накопителе и, соответственно, экономию потребляемой энергии.\n<h3>Бак</h3>\nРабочий объем Vogel Flug QU 1020/1h - 10 л. Материал – низколегированная сталь с высокими антикоррозионными показателями. Форма – плоская, максимально удобная для монтажа под раковиной (или в другом подходящем для этих целей месте).\n<h3>Управление режимами</h3>\nУправление – вручную, при помощи вынесенных на корпус ручек. В целях безопасности модель имеет автоматическую защиту от перегрева.', 'Бойлер VOGEL FLUG QU 1020/1h', 'Код товара <strong>2419</strong>', 'inherit', 'closed', 'closed', '', '359-autosave-v1', '', '', '2019-06-16 15:53:11', '2019-06-16 12:53:11', '', 359, 'http://localhost/magazine/2019/06/16/359-autosave-v1/', 0, 'revision', '', 0),
(411, 1, '2019-06-16 16:12:49', '2019-06-16 13:12:49', '', 'boyler-vogel-flug-qu-10201h', '', 'inherit', 'open', 'closed', '', 'boyler-vogel-flug-qu-10201h', '', '', '2019-06-16 16:13:48', '2019-06-16 13:13:48', '', 359, 'http://localhost/magazine/wp-content/uploads/2019/06/boyler-vogel-flug-qu-10201h.jpg', 0, 'attachment', 'image/jpeg', 0),
(412, 1, '2019-06-16 16:19:52', '2019-06-16 13:19:52', '', 'Vogel Flug QU 1020 1h 2', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qu-1020-1h-2', '', '', '2019-06-16 16:20:01', '2019-06-16 13:20:01', '', 359, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qu-1020-1h-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(413, 1, '2019-06-16 16:20:38', '2019-06-16 13:20:38', '', 'Vogel Flug QU 1020 1h 3', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qu-1020-1h-3', '', '', '2019-06-16 16:20:47', '2019-06-16 13:20:47', '', 359, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qu-1020-1h-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(414, 1, '2019-06-16 16:21:35', '2019-06-16 13:21:35', '', 'Vogel Flug QU 1020 1h 4', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qu-1020-1h-4', '', '', '2019-06-16 16:21:41', '2019-06-16 13:21:41', '', 359, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qu-1020-1h-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(418, 1, '2019-06-16 18:03:16', '2019-06-16 15:03:16', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-06-16 18:03:16', '2019-06-16 15:03:16', '', 12, 'http://localhost/magazine/2019/06/16/12-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(419, 1, '2019-06-16 18:03:28', '2019-06-16 15:03:28', '<!-- wp:shortcode -->\r\n<p>[woocommerce_cart][woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-06-16 18:03:28', '2019-06-16 15:03:28', '', 12, 'http://localhost/magazine/2019/06/16/12-revision-v1/', 0, 'revision', '', 0),
(420, 1, '2019-06-16 18:12:00', '2019-06-16 15:12:00', '', 'Order &ndash; Июнь 16, 2019 @ 06:12 ПП', 'вмііаівіав', 'wc-on-hold', 'open', 'closed', 'wc_order_MWdPlYcpspByG', 'zakaz-ndash-16-jun-2019-v-15-12', '', '', '2019-06-16 18:12:04', '2019-06-16 15:12:04', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=420', 0, 'shop_order', '', 1),
(421, 1, '2019-06-16 18:42:18', '2019-06-16 15:42:18', '', 'Order &ndash; Июнь 16, 2019 @ 06:42 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_MnoyUMKg7P4XW', 'zakaz-ndash-16-jun-2019-v-15-42', '', '', '2019-06-16 18:42:22', '2019-06-16 15:42:22', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=421', 0, 'shop_order', '', 1),
(422, 1, '2019-06-16 19:16:37', '2019-06-16 16:16:37', '', 'Order &ndash; Июнь 16, 2019 @ 07:16 ПП', '', 'wc-on-hold', 'open', 'closed', 'wc_order_dDHKMTzNjxZlV', 'zakaz-ndash-16-jun-2019-v-16-16', '', '', '2019-06-16 19:16:41', '2019-06-16 16:16:41', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=422', 0, 'shop_order', '', 1),
(423, 1, '2019-06-16 19:18:54', '2019-06-16 16:18:54', '', 'Order &ndash; Июнь 16, 2019 @ 07:18 ПП', '', 'wc-on-hold', 'open', 'closed', 'wc_order_M5kzqDfOtHhfs', 'zakaz-ndash-16-jun-2019-v-16-18', '', '', '2019-06-16 19:18:58', '2019-06-16 16:18:58', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=423', 0, 'shop_order', '', 1),
(424, 1, '2019-06-16 19:22:34', '2019-06-16 16:22:34', '', 'Order &ndash; Июнь 16, 2019 @ 07:22 ПП', '', 'wc-on-hold', 'open', 'closed', 'wc_order_obuTHtzS15P7A', 'zakaz-ndash-16-jun-2019-v-16-22', '', '', '2019-06-16 19:22:38', '2019-06-16 16:22:38', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=424', 0, 'shop_order', '', 1),
(425, 1, '2019-06-16 19:39:59', '2019-06-16 16:39:59', '', 'Order &ndash; Июнь 16, 2019 @ 07:39 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_6yu3vVt8v3AdC', 'zakaz-ndash-16-jun-2019-v-16-39', '', '', '2019-06-16 19:40:02', '2019-06-16 16:40:02', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=425', 0, 'shop_order', '', 1),
(426, 1, '2019-06-16 20:21:45', '2019-06-16 17:21:45', '', 'Order &ndash; Июнь 16, 2019 @ 08:21 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_7eWJJdmDblXRc', 'zakaz-ndash-16-jun-2019-v-17-21', '', '', '2019-06-16 20:21:47', '2019-06-16 17:21:47', '', 0, 'http://localhost/magazine/?post_type=shop_order&#038;p=426', 0, 'shop_order', '', 1),
(427, 1, '2019-06-16 21:08:54', '2019-06-16 18:08:54', '<ul>\n 	<li>ЭНЕРГОСБЕРЕГАЮЩИЙ – с минимальными тепловыми потерями, благодаря перфектной теплоизоляции из плотного ЕКО пенополиуретана;</li>\n 	<li>ДОЛГАЯ ЖИЗНЬ - инновативная формула износостойкой циркониевой эмали и антикоррозионной катодной защиты;</li>\n 	<li>НАДЕЖНЫЙ – с надежной четыре-степенной защитой;</li>\n 	<li>Подходящ для установки в помещениях без водопроводной инсталляции для горячей воды;</li>\n 	<li>Легкий и быстрый монтаж– прибор полностью укомплектован и нет необходимости в покупке дополнительных аксессуаров или элементов для монтажа.</li>\n 	<li>Укомплектован со специальной смесительной батареей и гибкими шлангами;</li>\n 	<li>Комплектовки входят в цену прибора;</li>\n 	<li>Комбинированный металлический вентиль – совмещает в себе функции предохранительного, обратного и дифференциального клапана;</li>\n 	<li>Внешний терморегулятор – задание температуры нагрева воды;</li>\n 	<li>Светяющийся ключ;</li>\n 	<li>Возможность встраивания анодного тестера;</li>\n 	<li>Модный елегантный дизайн</li>\n</ul>', 'Бойлер ELDOM Extra life 10 над мойкой 2.0 kw 72325NMP', 'Код товара: <strong>2336</strong>', 'inherit', 'closed', 'closed', '', '357-autosave-v1', '', '', '2019-06-16 21:08:54', '2019-06-16 18:08:54', '', 357, 'http://localhost/magazine/2019/06/16/357-autosave-v1/', 0, 'revision', '', 0),
(428, 1, '2019-06-16 21:13:27', '2019-06-16 18:13:27', '', 'eldom_extra_life_10_', '', 'inherit', 'open', 'closed', '', 'eldom_extra_life_10_', '', '', '2019-06-16 21:14:08', '2019-06-16 18:14:08', '', 357, 'http://localhost/magazine/wp-content/uploads/2019/06/eldom_extra_life_10_.jpg', 0, 'attachment', 'image/jpeg', 0),
(429, 1, '2019-06-16 21:22:23', '2019-06-16 18:22:23', '', 'Vogel Flug SU 10121h', '', 'inherit', 'open', 'closed', '', 'vogel-flug-su-10121h', '', '', '2019-06-16 21:22:54', '2019-06-16 18:22:54', '', 355, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-su-10121h.png', 0, 'attachment', 'image/png', 0),
(431, 1, '2019-06-17 15:56:42', '2019-06-17 12:56:42', '', 'NOVA TEC Compact', '', 'inherit', 'open', 'closed', '', 'nova-tec-compact-under-10-2', '', '', '2019-06-17 16:02:38', '2019-06-17 13:02:38', '', 353, 'http://localhost/magazine/wp-content/uploads/2019/06/nova-tec-compact-under-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(432, 1, '2019-06-17 16:02:25', '2019-06-17 13:02:25', 'Далеко не все жители квартирных домов могут похвастаться постоянным наличием горячего водоснабжения. А жители частных домов тем более должны обеспечивать себя теплой водой сами. Здесь пригодится электрический накопительный водонагреватель. Для кухни, например, можно купить бойлер<strong> NOVA TEC Compact Over 10</strong> (NT CO 10) .  Основные преимущества модели - Компактные размеры позволяют установить Ваш водонагреватель непосредственно в месте использования го­рячей воды, например под умывальником или раковиной, что значительно экономит пространство. - Экономия воды установка водонагревателя непосредственно в точке отбора воды позволяет сократить траты воды за время, пока горячая вода поступит по трубопроводу из удаленного места нагрева. - Энергосбережение значительное сокращение расхода электроэнергии, затрачиваемой на подогрев воды при подаче из удаленного водонагревателя. Особенности модели  - эмалированный внутренний бак - дополнительная защита - термостат безопасности - увеличенный магниевый анод - наружный регулятор  - увеличенный слой теплоизоляции - облегченный пластиковый корпус и компактный размер - небольшой вес.', 'Бойлер NOVA TEC Compact Over 10', 'Код товара: <strong>2931</strong>', 'inherit', 'closed', 'closed', '', '351-autosave-v1', '', '', '2019-06-17 16:02:25', '2019-06-17 13:02:25', '', 351, 'http://localhost/magazine/2019/06/17/351-autosave-v1/', 0, 'revision', '', 0),
(433, 1, '2019-06-17 16:14:47', '2019-06-17 13:14:47', '<strong>NOVA TEC Flat NT-F 100</strong> Бойлер (водонагреватель) ПЛОСКИЙ\nНакопительный бойлер Flat NT-F 100 плоской формы объемом 100 литров.\n\nНадежный водонагреватель с уникальной конструкцией – система из 2 баков из объединенная общим протоком воды, теплоизоляцией и внешним корпусом.\n\nДва открытых (мокрых) ТЭНа мощностью 2,0 кВт (1000 Вт + 1000 Вт). На лицевой стороне расположен индикатор работы, цифровой дисплей и удобный механический регулятор температуры нагрева воды. Внутренний бак надежно защищен от коррозии благодаря покрытию эмалью и магниевому аноду.\n\nПРЕИМУЩЕСТВА ВОДОНАГРЕВАТЕЛЯ НОВАТЕК FLAT NT-F 100\nТолщина стенки металла 2,5 мм.\n\nДва открытых ТЭНа (мокрый)\n\nМеханическая регулировка температуры.\n\nЦифровой дисплей.\n\nИндикатор температуры.\n\nТермометр и наружный регулятор температуры на корпусе.\n\nРазмеры – 1155x530x280. Вес – 31,3 кг', 'Водонагреватель Nova Tec Flat NT-F 100', 'Код товара: <strong>3050</strong>', 'inherit', 'closed', 'closed', '', '319-autosave-v1', '', '', '2019-06-17 16:14:47', '2019-06-17 13:14:47', '', 319, 'http://localhost/magazine/2019/06/17/319-autosave-v1/', 0, 'revision', '', 0),
(434, 1, '2019-06-17 16:15:39', '2019-06-17 13:15:39', '', 'Nova Tec Flat NT-F 100', '', 'inherit', 'open', 'closed', '', 'nova-tec-flat-nt-f-100', '', '', '2019-06-17 16:16:14', '2019-06-17 13:16:14', '', 319, 'http://localhost/magazine/wp-content/uploads/2019/05/nova-tec-flat-nt-f-100.jpg', 0, 'attachment', 'image/jpeg', 0),
(435, 1, '2019-06-17 16:59:52', '2019-06-17 13:59:52', '<strong>Бойлер Vogel Flug KHD100 4220/2h</strong> — удобный и компактный электрический водонагреватель объёмом 100 л, устанавливается в горизонтальном положении, имеет верхнее подключение и открытый сухой нагревательный элемент (ТЭН). Бак бойлера <strong>Vogel Flug KHD100 4220/2h</strong> сделан из эмалированной стали (толщина стенок 2,2 мм), выдерживает рабочие давление 0,8MPa. ТЭН водонагревателя <strong>Vogel Flug KHD100 4220/2h</strong> потребляет мощность P - 2000 Вт (имеет запатентованную технологию фланца INOX ellipse, которая позволяет выдерживать давление до 8 бар - это дает возможность за 20 минут нагреть воду с 15°C до 75°C).\r\n\r\nТеплоизоляция данного устройства изготовлена из прочного полиуретана толщиной 40 мм, соответствует стандарту ЕС с 1 января 2016 года по энергосберегающим свойствам. Имеется встроенный магниевый анод, который защищает бак от коррозий и нуждается в замене каждые 2 года. Класс влагозащиты IP24 - это означает, что оболочка водонагревателя защищена от небольших твердых тел и контакта с пальцами рук человека, а также изолировано от воды и влаги.\r\n\r\n<strong>Бойлер Vogel Flug KHD100 4220/2h</strong> встроено два независимых термодатчика, управление устройством осуществляется механически. Также в комплект входит предохранительный клапан, который служит для сбрасывания избыточного давления.\r\n\r\nКачество производства и сборки водонагревателя соответствует европейским стандартам. Также <strong>Vogel Flug</strong> дает гарантию 2 года на все комплектующие части водонагревателя, бак водонагревателя находится на гарантии 10 лет.', 'Бойлер Vogel Flug KHD100 4220/2h', '<span style=\"font-weight: 400;\">Код товара </span><b>2477</b>', 'publish', 'open', 'closed', '', 'bojler-vogel-flug-khd100-4220-2h', '', '', '2019-06-17 17:09:53', '2019-06-17 14:09:53', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=435', 0, 'product', '', 0),
(436, 1, '2019-06-17 16:53:10', '2019-06-17 13:53:10', '[[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"],[\"\",\"\",\"\",\"\",\"\"]]', '', '\r\nТип бойлера (водонагревателя)\r\nэлектрический\r\nМесто установки\r\nванная, кухня, туалет\r\nБренд\r\nVogel Flug\r\nОбъём, л\r\n100 л\r\nМощность, Вт\r\n2000 Вт\r\nТип ТЭНа \r\nсухой\r\nВысота, мм\r\n420 мм\r\nШирина, мм\r\n1085 мм\r\nГлубина, мм\r\n430 мм\r\nФорма\r\nцилиндрическая\r\nПитание, V\r\n230V\r\nМонтажное положение\r\nгоризонтальное\r\nТип установки\r\nгоризонтальный\r\nТип управления\r\nмеханический\r\nОснащение\r\nмагниевый анод, защита от перегрева, предохранительный клапан\r\nЦвет\r\nбелый\r\nВес пустого бака, кг\r\n40 кг\r\nМаксимальная температура нагрева, C max\r\n+75°С\r\nДавление\r\n8 bar\r\nПодключение\r\nG 1/2\"\r\nМатериал внутреннего бака\r\nсталь с эмалевым покрытием\r\nРегулятор температуры\r\nоткрытый / на корпусе\r\nТолщина теплоизоляции, мм\r\n40 мм\r\nТолщина стенки металла, мм\r\n2.2 мм\r\nГарантия производителя\r\n24 месяца\r\nСтрана регистрации бренда\r\nАвстрия\r\nСтрана-производитель\r\nАвстрия\r\n', 'publish', 'closed', 'closed', '', '436', '', '', '2019-06-17 16:53:10', '2019-06-17 13:53:10', '', 0, 'http://localhost/magazine/?post_type=tablepress_table&p=436', 0, 'tablepress_table', 'application/json', 0),
(438, 1, '2019-06-17 17:04:45', '2019-06-17 14:04:45', '', 'Vogel Flug KHD100 4220 2h 2', '', 'inherit', 'open', 'closed', '', 'vogel-flug-khd100-4220-2h-2', '', '', '2019-06-17 17:05:09', '2019-06-17 14:05:09', '', 435, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-khd100-4220-2h-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(439, 1, '2019-06-17 17:05:15', '2019-06-17 14:05:15', '', 'Vogel Flug KHD100 4220 2h 3', '', 'inherit', 'open', 'closed', '', 'vogel-flug-khd100-4220-2h-3', '', '', '2019-06-17 17:05:31', '2019-06-17 14:05:31', '', 435, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-khd100-4220-2h-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(440, 1, '2019-06-17 17:05:36', '2019-06-17 14:05:36', '', 'Vogel Flug KHD100 4220 2h 4', '', 'inherit', 'open', 'closed', '', 'vogel-flug-khd100-4220-2h-4', '', '', '2019-06-17 17:05:55', '2019-06-17 14:05:55', '', 435, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-khd100-4220-2h-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(442, 1, '2019-06-17 17:09:30', '2019-06-17 14:09:30', '', 'Vogel Flug KHD100 4220 2h', '', 'inherit', 'open', 'closed', '', 'vogel-flug-khd100-4220-2h', '', '', '2019-06-17 17:09:48', '2019-06-17 14:09:48', '', 435, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-khd100-4220-2h.jpg', 0, 'attachment', 'image/jpeg', 0),
(443, 1, '2019-06-18 18:40:38', '2019-06-18 15:40:38', '<span style=\"font-weight: 400;\"><strong>Бойлер Vogel Flug QVD100 4220/2h</strong> — удобный и компактный электрический водонагреватель объёмом 100 л, устанавливается вертикально на стену с нижним подключением, встроено два закрытых сухих ТЭНа. Бак бойлера<strong> QVD100 4220/2h</strong> сделан из cтеклокерамической титановой эмали (толщина стенок 2.2 мм), выдерживает рабочие давление 0,8MPa.</span>\r\n\r\n<span style=\"font-weight: 400;\">Покрытие бака стеклокерамикой выполнено жидким способом, такой вид покрытия используется в premium классах, так как имеет высокую плотность и устойчивость к расширению бака при нагреве воды.</span>\r\n\r\n<span style=\"font-weight: 400;\">Нагревательный элемент бойлера <strong>QVD100 4220/2h</strong> потребляет мощность P - 2000 Вт (имеет запатентованную технологию фланца INOX Dry, позволяет выдерживать давление до 16 бар).</span>\r\n\r\n<span style=\"font-weight: 400;\">Теплоизоляция данного устройства изготовлена из гомогенной полиуретановой пены толщиной 3 - 6 см, соответствует стандарту ЕС с 1 января 2016 года по энергосберегающим свойствам. Имеется встроенный магниевый анод, который защищает бак от коррозий и нуждается в замене каждые два года. Класс влагозащиты IP24 - это означает, что оболочка водонагревателя защищена от небольших твердых тел и контакта с пальцами рук человека, а также изолировано от воды и влаги. Управление устройством осуществляется механически, терморегулятор и термометр расположены на передней панели водонагревателя, что позволяет настраивать температуру нагрева воды. Также в комплект входит клапан  предохранительный, который служит для сбрасывания избыточного давления.</span>\r\n\r\n<span style=\"font-weight: 400;\">Качество производства и сборки водонагревателя соответствует европейским стандартам. Также Vogel Flug дает гарантию 2 года на все комплектующие части водонагревателя, бак водонагревателя находится на гарантии 10 лет.</span>', 'Бойлер Vogel Flug QVD100 4220/2h', '<span style=\"font-weight: 400;\">Код товара </span><strong>2402</strong>', 'publish', 'open', 'closed', '', 'bojler-vogel-flug-qvd100-4220-2h', '', '', '2019-06-18 18:40:41', '2019-06-18 15:40:41', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=443', 0, 'product', '', 0),
(444, 1, '2019-06-18 18:39:26', '2019-06-18 15:39:26', '', 'Vogel Flug QVD100 4220 2h', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qvd100-4220-2h', '', '', '2019-06-18 18:39:57', '2019-06-18 15:39:57', '', 443, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qvd100-4220-2h.jpg', 0, 'attachment', 'image/jpeg', 0),
(445, 1, '2019-06-18 18:40:10', '2019-06-18 15:40:10', '', 'Vogel Flug QVD100 4220 2h 2', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qvd100-4220-2h-2', '', '', '2019-06-18 18:40:18', '2019-06-18 15:40:18', '', 443, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qvd100-4220-2h-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(446, 1, '2019-06-18 18:40:25', '2019-06-18 15:40:25', '', 'Vogel Flug QVD100 4220 2h 3', '', 'inherit', 'open', 'closed', '', 'vogel-flug-qvd100-4220-2h-3', '', '', '2019-06-18 18:40:30', '2019-06-18 15:40:30', '', 443, 'http://localhost/magazine/wp-content/uploads/2019/06/vogel-flug-qvd100-4220-2h-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(447, 1, '2019-06-18 18:47:47', '2019-06-18 15:47:47', '<span style=\"font-weight: 400;\"><strong>Водонагреватель Eldom Favorite 50 SLIM X 2,0 kW WH05039 L (R) 50 L</strong> - это электрический нагреватель с объемом бака 50 л.<strong> Элдом WH05039 L (R) 50 L</strong> обладает такими характеристиками: механическое управление, высокая теплоизоляция 30 мм, изнутри бак покрыт циркониевой эмалью, наличие защитного блока, наличие внешнего терморегулятора, индикатора температуры и т. п. <strong>Бойлер Eldom 50 SLIM X 2,0 kW WH05039 50 L</strong> относится к серии Favorit (бойлеры с открытым ТЭНом). Тепловая мощность бойлера <strong>ELDOM WH05039 50 L</strong> составляет 2,0 кВт.</span>', 'Водонагреватель Eldom Favorite 50 SLIM X 2,0 kW WH05039 L', '<span style=\"font-weight: 400;\">Код товара </span><strong>3209</strong>', 'publish', 'open', 'closed', '', 'eldom-favorite-50-slim-x-2-0-kw-wh05039-l', '', '', '2019-06-18 18:51:13', '2019-06-18 15:51:13', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=447', 0, 'product', '', 0),
(449, 1, '2019-06-18 18:49:56', '2019-06-18 15:49:56', '', 'Eldom Favorite 50 SLIM X 2,0 kW WH05039 L', '', 'inherit', 'open', 'closed', '', 'eldom-favorite-50-slim-x-2-0-kw-wh05039-l', '', '', '2019-06-18 18:50:37', '2019-06-18 15:50:37', '', 447, 'http://localhost/magazine/wp-content/uploads/2019/06/eldom-favorite-50-slim-x-20-kw-wh05039-l.jpg', 0, 'attachment', 'image/jpeg', 0),
(450, 1, '2019-06-18 18:59:12', '2019-06-18 15:59:12', '<h3><span style=\"font-weight: 400;\">Накопительный бойлер</span></h3>\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Горячая вода – это обязательный компонент современного жилья. Без неё человек не ощущает себя комфортно, особенно в холодное время года. Чтобы позаботиться о постоянной подаче горячей воды, вам следует обзавестись бойлером. Но какой же выбрать? Мы рекомендуем вам электрический бойлер, а именно – модель <strong>Eldom Eureka 120 2x1.0 kW WV12046D</strong>. Эта цилиндрической формы модель сможет всегда обеспечить вам желаемый результат.</span>\r\n<h3><span style=\"font-weight: 400;\">Преимущества модели</span></h3>\r\n&nbsp;\r\n\r\n<span style=\"font-weight: 400;\">Бойлер <strong>Eldom Eureka 120 2x1.0 kW WV12046D</strong> оснащен сухим нагревательным элементом, который не контактирует с водой, из-за чего повышается долговечность. Если у вас вода загрязненная – данная модель отлично подойдет . Бойлер располагает регулятором температуры, который вы можете увидеть на корпусе. Её бак изготовлен из эмалированной стали, защищен циркониевым покрытием. Модель оснащена 6-уровневой защитой и внешним терморегулятором. Она сэкономит ваши средства, ведь для работы не требует много электроэнергии. </span>', 'Бойлер Eldom Eureka 120 2x1.0 kW WV12046D', '<span style=\"font-weight: 400;\">Код товара </span><strong>2599</strong>', 'publish', 'open', 'closed', '', 'bojler-eldom-eureka-120-2x1-0-kw-wv12046d', '', '', '2019-06-18 18:59:15', '2019-06-18 15:59:15', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=450', 0, 'product', '', 0),
(451, 1, '2019-06-18 18:58:14', '2019-06-18 15:58:14', '', 'Eldom Eureka 120 2x1.0 kW WV12046D', '', 'inherit', 'open', 'closed', '', 'eldom-eureka-120-2x1-0-kw-wv12046d', '', '', '2019-06-18 18:58:33', '2019-06-18 15:58:33', '', 450, 'http://localhost/magazine/wp-content/uploads/2019/06/eldom-eureka-120-2x1.0-kw-wv12046d.jpg', 0, 'attachment', 'image/jpeg', 0),
(452, 1, '2019-06-18 18:58:40', '2019-06-18 15:58:40', '', 'Eldom Eureka 120 2x1.0 kW WV12046D 2', '', 'inherit', 'open', 'closed', '', 'eldom-eureka-120-2x1-0-kw-wv12046d-2', '', '', '2019-06-18 18:59:01', '2019-06-18 15:59:01', '', 450, 'http://localhost/magazine/wp-content/uploads/2019/06/eldom-eureka-120-2x1.0-kw-wv12046d-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(453, 1, '2019-06-22 14:39:43', '2019-06-22 11:39:43', '<span style=\"font-weight: 400;\">Сегодня в продаже находится множество самых различных типов бойлеров и водонагревателей, которые обладают широким функционалом и сильно разнятся между собой объемом бачка и уровнем энергопотребления. Не все покупатели подыскивают для своего жилища крупногабаритный, объемный, мощный бойлер. Многие пользователи интересуются небольшими по объему и размеру нагревательными системами, которые с легкостью поместятся под рукомойником в ванной комнате или душе. Также особый интерес вызывают модели, которые можно быстро и без особых проблем установить под кухонной раковиной, чтобы обеспечить себя теплой водой для мытья посуды. Ярким примером такого небольшого, универсального, качественно сделанного бойлера является водонагреватель</span><b> NOVA TEC Compact Over 15.</b>', 'NOVA TEC Compact Over 15', '<span style=\"font-weight: 400;\">Код товара </span><strong>2933</strong>', 'publish', 'open', 'closed', '', 'nova-tec-compact-over-15', '', '', '2019-06-22 14:39:44', '2019-06-22 11:39:44', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=453', 0, 'product', '', 0),
(454, 1, '2019-06-22 14:38:23', '2019-06-22 11:38:23', '', 'NOVA TEC Compact 15', '', 'inherit', 'open', 'closed', '', 'nova-tec-compact-over-15-2', '', '', '2019-06-22 14:49:12', '2019-06-22 11:49:12', '', 453, 'http://localhost/magazine/wp-content/uploads/2019/06/nova-tec-compact-over-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(455, 1, '2019-06-22 14:49:25', '2019-06-22 11:49:25', '<span style=\"font-weight: 400;\">Далеко не все жители квартирных домов могут похвастаться постоянным наличием горячего водоснабжения. А жители частных домов тем более должны обеспечивать себя теплой водой сами. Здесь пригодится электрический накопительный водонагреватель. Для кухни, например, можно купить</span><b> бойлер NOVA TEC Compact Under 15 (NT-CU 15).</b>\r\n\r\n&nbsp;\r\n\r\n<b>Основные преимущества модели:</b>\r\n\r\n<span style=\"font-weight: 400;\">- Компактные размеры: позволяют установить Ваш водонагреватель непосредственно в месте использования го­рячей воды, например под умывальником или раковиной, что значительно экономит пространство.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Экономия воды: установка водонагревателя непосредственно в точке отбора воды позволяет сократить траты воды за время, пока горячая вода поступит по трубопроводу из удаленного места нагрева.</span>\r\n\r\n<span style=\"font-weight: 400;\">- Энергосбережение: значительное сокращение расхода электроэнергии, затрачиваемой на подогрев воды при подаче из удаленного водонагревателя.</span>\r\n\r\n&nbsp;\r\n\r\n<b>Особенности модели      </b><span style=\"font-weight: 400;\">                                 </span>\r\n\r\n<span style=\"font-weight: 400;\">- эмалированный внутренний бак</span>\r\n\r\n<span style=\"font-weight: 400;\">- дополнительная защита - термостат безопасности</span>\r\n\r\n<span style=\"font-weight: 400;\">- увеличенный магниевый анод</span>\r\n\r\n<span style=\"font-weight: 400;\">- наружный регулятор</span>\r\n\r\n<span style=\"font-weight: 400;\">- увеличенный слой теплоизоляции</span>\r\n\r\n<span style=\"font-weight: 400;\">- облегченный пластиковый корпус и компактный размер</span>\r\n\r\n<span style=\"font-weight: 400;\">- небольшой вес.</span>', 'NOVA TEC Compact Under 15', '<span style=\"font-weight: 400;\">Код товара </span><strong>2932</strong>', 'publish', 'open', 'closed', '', 'nova-tec-compact-under-15', '', '', '2019-06-22 14:54:07', '2019-06-22 11:54:07', '', 0, 'http://localhost/magazine/?post_type=product&#038;p=455', 0, 'product', '', 0),
(458, 1, '2019-08-18 14:25:26', '2019-08-18 11:25:26', '[[\"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0430\",\"\\u0426\\u0435\\u043d\\u0430 \"],[\"\\u0412\\u044b\\u0437\\u043e\\u0432 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u0430\",\"200\"],[\"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u0431\\u043e\\u0439\\u043b\\u0435\\u0440\\u0430\",\"200\"],[\"\\u041f\\u0440\\u043e\\u0447\\u0438\\u0441\\u0442\\u043a\\u0430 \",\"200\"]]', 'Прайс лист.xlsx', 'Прайс лист.xlsx', 'inherit', 'closed', 'closed', '', '275-revision-v1', '', '', '2019-08-18 14:25:26', '2019-08-18 11:25:26', '', 275, 'http://localhost/magazine/2019/08/18/275-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(7, 21, 'order', '0'),
(8, 21, 'product_count_product_cat', '23'),
(12, 21, 'display_type', 'products'),
(13, 21, 'thumbnail_id', '318'),
(14, 22, 'order', '0'),
(15, 22, 'display_type', 'products'),
(16, 22, 'thumbnail_id', '263'),
(17, 23, 'product_count_product_tag', '4'),
(18, 24, 'product_count_product_tag', '13'),
(22, 26, 'order', '0'),
(23, 26, 'display_type', ''),
(24, 26, 'thumbnail_id', '284'),
(25, 27, 'product_count_product_tag', '16'),
(26, 28, 'product_count_product_tag', '1'),
(27, 29, 'product_count_product_tag', '3'),
(28, 22, 'product_count_product_cat', '2'),
(29, 30, 'product_count_product_tag', '2'),
(30, 31, 'product_count_product_tag', '1'),
(31, 32, 'product_count_product_tag', '1'),
(32, 26, 'product_count_product_cat', '2'),
(33, 33, 'product_count_product_tag', '1'),
(34, 34, 'product_count_product_tag', '1'),
(35, 35, 'order_pa_производитель', '0'),
(36, 36, 'order_pa_производитель', '0'),
(37, 37, 'order_pa_производитель', '0'),
(38, 38, 'order_pa_производитель', '0'),
(39, 39, 'order_pa_объем-л', '0'),
(40, 40, 'order_pa_объем-л', '0'),
(41, 41, 'order_pa_объем-л', '0'),
(42, 42, 'order_pa_объем-л', '0'),
(43, 43, 'order_pa_объем-л', '0'),
(44, 44, 'order_pa_объем-л', '0'),
(45, 45, 'order_pa_объем-л', '0'),
(46, 46, 'order_pa_объем-л', '0'),
(47, 47, 'order_pa_объем-л', '0'),
(48, 48, 'order_pa_объем-л', '0'),
(49, 49, 'order_pa_объем-л', '0'),
(50, 50, 'order_pa_объем-л', '0'),
(51, 51, 'order_pa_тип-тэна', '0'),
(52, 52, 'order_pa_тип-тэна', '0'),
(53, 53, 'order_pa_мощность-вт', '0'),
(54, 54, 'order_pa_мощность-вт', '0'),
(55, 55, 'order_pa_мощность-вт', '0'),
(56, 56, 'order_pa_мощность-вт', '0'),
(57, 57, 'order_pa_мощность-вт', '0'),
(58, 58, 'order_pa_мощность-вт', '0'),
(59, 59, 'order_pa_мощность-вт', '0'),
(60, 60, 'order_pa_мощность-вт', '0'),
(61, 61, 'order_pa_мощность-вт', '0'),
(62, 62, 'order_pa_мощность-вт', '0'),
(63, 63, 'order_pa_мощность-вт', '0'),
(64, 64, 'order_pa_мощность-вт', '0'),
(65, 65, 'order_pa_тип-управления', '0'),
(66, 66, 'order_pa_тип-управления', '0'),
(67, 67, 'order_pa_тип-управления', '0'),
(68, 68, 'order_pa_установка', '0'),
(69, 69, 'order_pa_установка', '0'),
(70, 70, 'order_pa_установка', '0'),
(71, 71, 'order_pa_место-монтажа', '0'),
(72, 72, 'order_pa_место-монтажа', '0'),
(73, 73, 'order_pa_место-монтажа', '0'),
(74, 74, 'order_pa_форма', '0'),
(75, 75, 'order_pa_форма', '0'),
(76, 76, 'order_pa_форма', '0'),
(77, 77, 'order_pa_форма', '0'),
(78, 78, 'order_pa_производитель', '0'),
(79, 79, 'order_pa_мощность-вт', '0'),
(80, 80, 'order_pa_производитель', '0'),
(81, 81, 'order_pa_назначение', '0'),
(82, 82, 'order_pa_назначение', '0'),
(83, 83, 'order_pa_назначение', '0'),
(84, 84, 'order_pa_назначение', '0'),
(85, 85, 'product_count_product_tag', '2'),
(86, 86, 'product_count_product_tag', '3'),
(87, 87, 'product_count_product_tag', '1'),
(88, 88, 'product_count_product_tag', '1'),
(89, 89, 'product_count_product_tag', '1'),
(91, 91, 'order_pa_proizvoditel', '0'),
(92, 92, 'order_pa_proizvoditel', '0'),
(93, 93, 'order_pa_proizvoditel', '0'),
(94, 94, 'order_pa_proizvoditel', '0'),
(95, 95, 'order_pa_proizvoditel', '0'),
(96, 96, 'order_pa_obemov-l', '0'),
(97, 97, 'order_pa_obemov-l', '0'),
(98, 98, 'order_pa_obemov-l', '0'),
(99, 99, 'order_pa_obemov-l', '0'),
(100, 100, 'order_pa_obemov-l', '0'),
(101, 101, 'order_pa_obemov-l', '0'),
(102, 102, 'order_pa_obemov-l', '0'),
(103, 103, 'order_pa_obemov-l', '0'),
(104, 104, 'order_pa_tip-tjena', '0'),
(105, 105, 'order_pa_tip-tjena', '0'),
(106, 106, 'order_pa_moshhnost-vt', '0'),
(107, 107, 'order_pa_moshhnost-vt', '0'),
(108, 108, 'order_pa_moshhnost-vt', '0'),
(109, 109, 'order_pa_moshhnost-vt', '0'),
(110, 110, 'order_pa_moshhnost-vt', '0'),
(111, 111, 'order_pa_moshhnost-vt', '0'),
(112, 112, 'order_pa_moshhnost-vt', '0'),
(113, 113, 'order_pa_moshhnost-vt', '0'),
(114, 114, 'order_pa_moshhnost-vt', '0'),
(115, 115, 'order_pa_moshhnost-vt', '0'),
(116, 106, 'order', '2'),
(117, 107, 'order', '3'),
(118, 108, 'order', '4'),
(119, 109, 'order', '5'),
(120, 110, 'order', '6'),
(121, 111, 'order', '7'),
(122, 115, 'order', '8'),
(123, 112, 'order', '9'),
(124, 113, 'order', '10'),
(125, 114, 'order', '12'),
(126, 116, 'order_pa_moshhnost-vt', '0'),
(127, 117, 'order_pa_moshhnost-vt', '0'),
(128, 116, 'order', '1'),
(129, 117, 'order', '11'),
(130, 118, 'order_pa_tip-upravlenija', '0'),
(131, 119, 'order_pa_tip-upravlenija', '0'),
(132, 120, 'order_pa_mesto-montazha', '0'),
(133, 121, 'order_pa_mesto-montazha', '0'),
(134, 122, 'order_pa_mesto-montazha', '0'),
(135, 123, 'order_pa_forma', '0'),
(136, 124, 'order_pa_forma', '0'),
(137, 125, 'order_pa_forma', '0'),
(138, 126, 'order_pa_forma', '0'),
(139, 127, 'order_pa_ustanovka', '0'),
(140, 128, 'order_pa_ustanovka', '0'),
(141, 129, 'order_pa_ustanovka', '0'),
(142, 130, 'order_pa_proizvoditel', '0'),
(143, 131, 'order_pa_moshhnost-vt', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(20, 'magazin', 'magazin', 0),
(21, 'Водонагреватели', 'vodonagrevatel', 0),
(22, 'Смесители', 'smesiteli', 0),
(23, 'Eldom', 'eldom', 0),
(24, 'Бойлер', '%d0%b1%d0%be%d0%b9%d0%bb%d0%b5%d1%80', 0),
(26, 'Насосы', 'nasosy', 0),
(27, 'Водонагреватель', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d0%b5%d0%b2%d0%b0%d1%82%d0%b5%d0%bb%d1%8c', 0),
(28, 'ISTO', 'isto', 0),
(29, 'Novatec', 'novatec', 0),
(30, 'Kraft', 'kraft', 0),
(31, 'Смеситель для ванны', '%d1%81%d0%bc%d0%b5%d1%81%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%b4%d0%bb%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b', 0),
(32, 'Смеситель для умывальника', '%d1%81%d0%bc%d0%b5%d1%81%d0%b8%d1%82%d0%b5%d0%bb%d1%8c-%d0%b4%d0%bb%d1%8f-%d1%83%d0%bc%d1%8b%d0%b2%d0%b0%d0%bb%d1%8c%d0%bd%d0%b8%d0%ba%d0%b0', 0),
(33, 'Vitals', 'vitals', 0),
(34, 'Power Craft', 'power-craft', 0),
(35, 'noBrend', 'nobrend', 0),
(36, 'Novatec', 'novatec', 0),
(37, 'Vogel Flug', 'vogel-flug', 0),
(38, 'Arti', 'arti', 0),
(39, '10 л.', '10-%d0%bb', 0),
(40, 'меньше 10 л.', '%d0%bc%d0%b5%d0%bd%d1%8c%d1%88%d0%b5-10-%d0%bb', 0),
(41, '15 л.', '15-%d0%bb', 0),
(42, '30 л.', '30-%d0%bb', 0),
(43, '50 л.', '50-%d0%bb', 0),
(44, '80 л.', '80-%d0%bb', 0),
(45, '100 л.', '100-%d0%bb', 0),
(46, '120 л.', '120-%d0%bb', 0),
(47, '60 л.', '60-%d0%bb', 0),
(48, '150 л.', '150-%d0%bb', 0),
(49, '200 л.', '200-%d0%bb', 0),
(50, 'больше 200 л.', '%d0%b1%d0%be%d0%bb%d1%8c%d1%88%d0%b5-200-%d0%bb', 0),
(51, 'Открытый (\"мокрый\")', '%d0%be%d1%82%d0%ba%d1%80%d1%8b%d1%82%d1%8b%d0%b9-%d0%bc%d0%be%d0%ba%d1%80%d1%8b%d0%b9', 0),
(52, 'Скрытый (\"сухой\")', '%d1%81%d0%ba%d1%80%d1%8b%d1%82%d1%8b%d0%b9-%d1%81%d1%83%d1%85%d0%be%d0%b9', 0),
(53, '1000 Вт', '1000-%d0%b2%d1%82', 0),
(54, '1200 Вт', '1200-%d0%b2%d1%82', 0),
(55, '1400 Вт', '1400-%d0%b2%d1%82', 0),
(56, '1500 Вт', '1500-%d0%b2%d1%82', 0),
(57, '1600 Вт', '1600-%d0%b2%d1%82', 0),
(58, '1800 Вт', '1800-%d0%b2%d1%82', 0),
(59, '2000 Вт', '2000-%d0%b2%d1%82', 0),
(60, '2400 Вт', '2400-%d0%b2%d1%82', 0),
(61, '2500 Вт', '2500-%d0%b2%d1%82', 0),
(62, '2100 Вт', '2100-%d0%b2%d1%82', 0),
(63, '3000 Вт', '3000-%d0%b2%d1%82', 0),
(64, '2600 Вт', '2600-%d0%b2%d1%82', 0),
(65, 'Механическое', '%d0%bc%d0%b5%d1%85%d0%b0%d0%bd%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5', 0),
(66, 'Электронное', '%d1%8d%d0%bb%d0%b5%d0%ba%d1%82%d1%80%d0%be%d0%bd%d0%bd%d0%be%d0%b5', 0),
(67, 'Сенсорное', '%d1%81%d0%b5%d0%bd%d1%81%d0%be%d1%80%d0%bd%d0%be%d0%b5', 0),
(68, 'Вертикальная', '%d0%b2%d0%b5%d1%80%d1%82%d0%b8%d0%ba%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(69, 'Горизонтальная', '%d0%b3%d0%be%d1%80%d0%b8%d0%b7%d0%be%d0%bd%d1%82%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(70, 'Универсальная', '%d1%83%d0%bd%d0%b8%d0%b2%d0%b5%d1%80%d1%81%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(71, 'Настенный', '%d0%bd%d0%b0%d1%81%d1%82%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9', 0),
(72, 'Напольный', '%d0%bd%d0%b0%d0%bf%d0%be%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9', 0),
(73, 'Под мойку (до 30 л.)', '%d0%bf%d0%be%d0%b4-%d0%bc%d0%be%d0%b9%d0%ba%d1%83-%d0%b4%d0%be-30-%d0%bb', 0),
(74, 'Цилиндрическая', '%d1%86%d0%b8%d0%bb%d0%b8%d0%bd%d0%b4%d1%80%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b0%d1%8f', 0),
(75, 'Тонкая (Slim)', '%d1%82%d0%be%d0%bd%d0%ba%d0%b0%d1%8f-slim', 0),
(76, 'Плоская', '%d0%bf%d0%bb%d0%be%d1%81%d0%ba%d0%b0%d1%8f', 0),
(77, 'Прямоугольная', '%d0%bf%d1%80%d1%8f%d0%bc%d0%be%d1%83%d0%b3%d0%be%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(78, 'ISTO', 'isto', 0),
(79, '3500 Вт', '3500-%d0%b2%d1%82', 0),
(80, 'Eldom', 'eldom', 0),
(81, 'Душ', '%d0%b4%d1%83%d1%88', 0),
(82, 'Ванна', '%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', 0),
(83, 'Раковина', '%d1%80%d0%b0%d0%ba%d0%be%d0%b2%d0%b8%d0%bd%d0%b0', 0),
(84, 'Кухня', '%d0%ba%d1%83%d1%85%d0%bd%d1%8f', 0),
(85, 'NOVA TEC', 'nova-tec', 0),
(86, 'Vogel Flug', 'vogel-flug', 0),
(87, 'noBrend', 'nobrend', 0),
(88, 'Arti', 'arti', 0),
(89, 'Водонагрівач', '%d0%b2%d0%be%d0%b4%d0%be%d0%bd%d0%b0%d0%b3%d1%80%d1%96%d0%b2%d0%b0%d1%87', 0),
(91, 'Novatec', 'novatec', 0),
(92, 'Vogel Flug', 'vogel-flug', 0),
(93, 'Eldom', 'eldom', 0),
(94, 'Arti', 'arti', 0),
(95, 'ISTO', 'isto', 0),
(96, '10', '10', 0),
(97, '15', '15', 0),
(98, '30', '30', 0),
(99, '50', '50', 0),
(100, '80', '80', 0),
(101, '100', '100', 0),
(102, '120', '120', 0),
(103, '150', '150', 0),
(104, 'Открытый (\"мокрый\")', '%d0%be%d1%82%d0%ba%d1%80%d1%8b%d1%82%d1%8b%d0%b9-%d0%bc%d0%be%d0%ba%d1%80%d1%8b%d0%b9', 0),
(105, 'Скрытый (\"сухой\")', '%d1%81%d0%ba%d1%80%d1%8b%d1%82%d1%8b%d0%b9-%d1%81%d1%83%d1%85%d0%be%d0%b9', 0),
(106, '1000', '1000', 0),
(107, '1200', '1200', 0),
(108, '1400', '1400', 0),
(109, '1500', '1500', 0),
(110, '1600', '1600', 0),
(111, '1800', '1800', 0),
(112, '2000', '2000', 0),
(113, '2400', '2400', 0),
(114, '2500', '2500', 0),
(115, '2100', '2100', 0),
(116, '3000', '3000', 0),
(117, '2600', '2600', 0),
(118, 'Механическое', '%d0%bc%d0%b5%d1%85%d0%b0%d0%bd%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5', 0),
(119, 'Электронное', '%d1%8d%d0%bb%d0%b5%d0%ba%d1%82%d1%80%d0%be%d0%bd%d0%bd%d0%be%d0%b5', 0),
(120, 'Настенный', '%d0%bd%d0%b0%d1%81%d1%82%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9', 0),
(121, 'Напольный', '%d0%bd%d0%b0%d0%bf%d0%be%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9', 0),
(122, 'Под мойку (до 30 л.)', '%d0%bf%d0%be%d0%b4-%d0%bc%d0%be%d0%b9%d0%ba%d1%83-%d0%b4%d0%be-30-%d0%bb', 0),
(123, 'Цилиндрическая', '%d1%86%d0%b8%d0%bb%d0%b8%d0%bd%d0%b4%d1%80%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b0%d1%8f', 0),
(124, 'Тонкая (Slim)', '%d1%82%d0%be%d0%bd%d0%ba%d0%b0%d1%8f-slim', 0),
(125, 'Плоская', '%d0%bf%d0%bb%d0%be%d1%81%d0%ba%d0%b0%d1%8f', 0),
(126, 'Прямоугольная', '%d0%bf%d1%80%d1%8f%d0%bc%d0%be%d1%83%d0%b3%d0%be%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(127, 'Вертикальная', '%d0%b2%d0%b5%d1%80%d1%82%d0%b8%d0%ba%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(128, 'Горизонтальная', '%d0%b3%d0%be%d1%80%d0%b8%d0%b7%d0%be%d0%bd%d1%82%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(129, 'Универсальная', '%d1%83%d0%bd%d0%b8%d0%b2%d0%b5%d1%80%d1%81%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f', 0),
(130, 'Qtermo', 'qtermo', 0),
(131, '3500', '3500', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(166, 20, 0),
(169, 20, 0),
(170, 20, 0),
(173, 20, 0),
(249, 2, 0),
(249, 21, 0),
(249, 23, 0),
(249, 24, 0),
(249, 27, 0),
(249, 42, 0),
(249, 52, 0),
(249, 57, 0),
(249, 65, 0),
(249, 68, 0),
(249, 71, 0),
(249, 74, 0),
(249, 80, 0),
(249, 93, 0),
(249, 98, 0),
(249, 105, 0),
(249, 110, 0),
(249, 118, 0),
(249, 120, 0),
(249, 123, 0),
(249, 127, 0),
(268, 20, 0),
(271, 20, 0),
(285, 2, 0),
(285, 21, 0),
(285, 23, 0),
(285, 24, 0),
(285, 27, 0),
(285, 51, 0),
(285, 65, 0),
(285, 68, 0),
(285, 77, 0),
(285, 79, 0),
(285, 80, 0),
(285, 93, 0),
(285, 127, 0),
(285, 131, 0),
(289, 2, 0),
(289, 21, 0),
(289, 24, 0),
(289, 27, 0),
(289, 28, 0),
(289, 45, 0),
(289, 52, 0),
(289, 56, 0),
(289, 65, 0),
(289, 68, 0),
(289, 71, 0),
(289, 74, 0),
(289, 78, 0),
(289, 95, 0),
(289, 101, 0),
(289, 105, 0),
(289, 109, 0),
(289, 118, 0),
(289, 120, 0),
(289, 123, 0),
(289, 127, 0),
(319, 2, 0),
(319, 21, 0),
(319, 24, 0),
(319, 27, 0),
(319, 29, 0),
(319, 36, 0),
(319, 45, 0),
(319, 51, 0),
(319, 59, 0),
(319, 65, 0),
(319, 68, 0),
(319, 71, 0),
(319, 76, 0),
(319, 91, 0),
(319, 101, 0),
(319, 104, 0),
(319, 112, 0),
(319, 118, 0),
(319, 120, 0),
(319, 126, 0),
(319, 127, 0),
(334, 2, 0),
(334, 22, 0),
(334, 30, 0),
(334, 31, 0),
(334, 82, 0),
(336, 2, 0),
(336, 22, 0),
(336, 30, 0),
(336, 32, 0),
(336, 83, 0),
(338, 2, 0),
(338, 26, 0),
(338, 33, 0),
(340, 2, 0),
(340, 26, 0),
(340, 34, 0),
(351, 2, 0),
(351, 21, 0),
(351, 24, 0),
(351, 27, 0),
(351, 36, 0),
(351, 39, 0),
(351, 51, 0),
(351, 56, 0),
(351, 65, 0),
(351, 68, 0),
(351, 71, 0),
(351, 85, 0),
(351, 91, 0),
(351, 96, 0),
(351, 104, 0),
(351, 109, 0),
(351, 118, 0),
(351, 120, 0),
(351, 126, 0),
(351, 127, 0),
(353, 2, 0),
(353, 21, 0),
(353, 24, 0),
(353, 27, 0),
(353, 36, 0),
(353, 39, 0),
(353, 51, 0),
(353, 56, 0),
(353, 65, 0),
(353, 69, 0),
(353, 73, 0),
(353, 85, 0),
(353, 91, 0),
(353, 96, 0),
(353, 104, 0),
(353, 109, 0),
(353, 118, 0),
(353, 122, 0),
(353, 126, 0),
(353, 127, 0),
(355, 2, 0),
(355, 21, 0),
(355, 27, 0),
(355, 37, 0),
(355, 39, 0),
(355, 51, 0),
(355, 54, 0),
(355, 65, 0),
(355, 71, 0),
(355, 77, 0),
(355, 86, 0),
(355, 92, 0),
(355, 96, 0),
(355, 104, 0),
(355, 107, 0),
(355, 118, 0),
(355, 122, 0),
(355, 126, 0),
(355, 127, 0),
(357, 2, 0),
(357, 21, 0),
(357, 23, 0),
(357, 27, 0),
(357, 39, 0),
(357, 51, 0),
(357, 59, 0),
(357, 65, 0),
(357, 68, 0),
(357, 73, 0),
(357, 77, 0),
(357, 80, 0),
(357, 93, 0),
(357, 96, 0),
(357, 104, 0),
(357, 112, 0),
(357, 118, 0),
(357, 122, 0),
(357, 126, 0),
(357, 127, 0),
(359, 2, 0),
(359, 21, 0),
(359, 27, 0),
(359, 37, 0),
(359, 39, 0),
(359, 51, 0),
(359, 59, 0),
(359, 65, 0),
(359, 71, 0),
(359, 77, 0),
(359, 86, 0),
(359, 92, 0),
(359, 96, 0),
(359, 104, 0),
(359, 112, 0),
(359, 118, 0),
(359, 122, 0),
(359, 126, 0),
(359, 127, 0),
(361, 45, 0),
(361, 51, 0),
(361, 56, 0),
(361, 65, 0),
(361, 71, 0),
(361, 74, 0),
(361, 80, 0),
(363, 2, 0),
(363, 21, 0),
(363, 23, 0),
(363, 24, 0),
(363, 27, 0),
(363, 45, 0),
(363, 51, 0),
(363, 56, 0),
(363, 65, 0),
(363, 68, 0),
(363, 71, 0),
(363, 74, 0),
(363, 80, 0),
(363, 93, 0),
(363, 101, 0),
(363, 104, 0),
(363, 109, 0),
(363, 118, 0),
(363, 120, 0),
(363, 123, 0),
(363, 127, 0),
(365, 2, 0),
(365, 21, 0),
(365, 24, 0),
(365, 27, 0),
(365, 35, 0),
(365, 45, 0),
(365, 52, 0),
(365, 59, 0),
(365, 65, 0),
(365, 68, 0),
(365, 71, 0),
(365, 74, 0),
(365, 87, 0),
(365, 101, 0),
(365, 105, 0),
(365, 112, 0),
(365, 118, 0),
(365, 120, 0),
(365, 123, 0),
(365, 127, 0),
(365, 130, 0),
(368, 2, 0),
(368, 21, 0),
(368, 24, 0),
(368, 27, 0),
(368, 29, 0),
(368, 94, 0),
(368, 101, 0),
(368, 104, 0),
(368, 111, 0),
(368, 118, 0),
(368, 120, 0),
(368, 123, 0),
(368, 127, 0),
(378, 2, 0),
(378, 21, 0),
(378, 24, 0),
(378, 27, 0),
(378, 86, 0),
(378, 92, 0),
(378, 101, 0),
(378, 105, 0),
(378, 112, 0),
(378, 118, 0),
(378, 120, 0),
(378, 123, 0),
(378, 127, 0),
(380, 2, 0),
(380, 21, 0),
(380, 24, 0),
(380, 27, 0),
(380, 88, 0),
(380, 94, 0),
(380, 101, 0),
(380, 104, 0),
(380, 112, 0),
(380, 118, 0),
(380, 120, 0),
(380, 123, 0),
(380, 129, 0),
(382, 2, 0),
(382, 21, 0),
(382, 24, 0),
(382, 27, 0),
(382, 29, 0),
(382, 36, 0),
(382, 45, 0),
(382, 52, 0),
(382, 57, 0),
(382, 65, 0),
(382, 68, 0),
(382, 71, 0),
(382, 74, 0),
(382, 91, 0),
(382, 101, 0),
(382, 105, 0),
(382, 110, 0),
(382, 118, 0),
(382, 120, 0),
(382, 123, 0),
(386, 2, 0),
(386, 21, 0),
(386, 24, 0),
(386, 27, 0),
(386, 36, 0),
(386, 45, 0),
(386, 51, 0),
(386, 56, 0),
(386, 65, 0),
(386, 68, 0),
(386, 71, 0),
(386, 74, 0),
(386, 89, 0),
(386, 91, 0),
(386, 101, 0),
(386, 104, 0),
(386, 109, 0),
(386, 118, 0),
(386, 120, 0),
(386, 123, 0),
(386, 127, 0),
(408, 2, 0),
(408, 21, 0),
(408, 93, 0),
(408, 101, 0),
(408, 104, 0),
(408, 109, 0),
(408, 118, 0),
(408, 120, 0),
(408, 123, 0),
(408, 127, 0),
(435, 2, 0),
(435, 21, 0),
(435, 92, 0),
(435, 101, 0),
(435, 105, 0),
(435, 112, 0),
(435, 118, 0),
(435, 120, 0),
(435, 123, 0),
(435, 128, 0),
(443, 2, 0),
(443, 21, 0),
(443, 92, 0),
(443, 101, 0),
(443, 105, 0),
(443, 112, 0),
(443, 118, 0),
(443, 120, 0),
(443, 126, 0),
(443, 127, 0),
(447, 2, 0),
(447, 21, 0),
(447, 93, 0),
(447, 101, 0),
(447, 104, 0),
(447, 112, 0),
(447, 118, 0),
(447, 120, 0),
(447, 123, 0),
(447, 127, 0),
(450, 2, 0),
(450, 21, 0),
(450, 93, 0),
(450, 102, 0),
(450, 105, 0),
(450, 112, 0),
(450, 118, 0),
(450, 120, 0),
(450, 123, 0),
(450, 127, 0),
(453, 2, 0),
(453, 21, 0),
(453, 91, 0),
(453, 97, 0),
(453, 104, 0),
(453, 109, 0),
(453, 118, 0),
(453, 120, 0),
(453, 126, 0),
(453, 127, 0),
(455, 2, 0),
(455, 21, 0),
(455, 91, 0),
(455, 97, 0),
(455, 104, 0),
(455, 109, 0),
(455, 118, 0),
(455, 122, 0),
(455, 126, 0),
(455, 127, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 27),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(20, 20, 'nav_menu', '', 0, 6),
(21, 21, 'product_cat', 'Водонагреватель', 0, 23),
(22, 22, 'product_cat', 'Смеситель', 0, 2),
(23, 23, 'product_tag', '', 0, 4),
(24, 24, 'product_tag', '', 0, 13),
(26, 26, 'product_cat', 'Насосы', 0, 2),
(27, 27, 'product_tag', '', 0, 16),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 3),
(30, 30, 'product_tag', '', 0, 2),
(31, 31, 'product_tag', '', 0, 1),
(32, 32, 'product_tag', '', 0, 1),
(33, 33, 'product_tag', '', 0, 1),
(34, 34, 'product_tag', '', 0, 1),
(35, 35, 'pa_производитель', '', 0, 1),
(36, 36, 'pa_производитель', '', 0, 5),
(37, 37, 'pa_производитель', '', 0, 2),
(38, 38, 'pa_производитель', '', 0, 0),
(39, 39, 'pa_объем-л', '', 0, 5),
(40, 40, 'pa_объем-л', '', 0, 0),
(41, 41, 'pa_объем-л', '', 0, 0),
(42, 42, 'pa_объем-л', '', 0, 1),
(43, 43, 'pa_объем-л', '', 0, 0),
(44, 44, 'pa_объем-л', '', 0, 0),
(45, 45, 'pa_объем-л', '', 0, 7),
(46, 46, 'pa_объем-л', '', 0, 0),
(47, 47, 'pa_объем-л', '', 0, 0),
(48, 48, 'pa_объем-л', '', 0, 0),
(49, 49, 'pa_объем-л', '', 0, 0),
(50, 50, 'pa_объем-л', '', 0, 0),
(51, 51, 'pa_тип-тэна', '', 0, 10),
(52, 52, 'pa_тип-тэна', '', 0, 4),
(53, 53, 'pa_мощность-вт', '', 0, 0),
(54, 54, 'pa_мощность-вт', '', 0, 1),
(55, 55, 'pa_мощность-вт', '', 0, 0),
(56, 56, 'pa_мощность-вт', '', 0, 6),
(57, 57, 'pa_мощность-вт', '', 0, 2),
(58, 58, 'pa_мощность-вт', '', 0, 0),
(59, 59, 'pa_мощность-вт', '', 0, 4),
(60, 60, 'pa_мощность-вт', '', 0, 0),
(61, 61, 'pa_мощность-вт', '', 0, 0),
(62, 62, 'pa_мощность-вт', '', 0, 0),
(63, 63, 'pa_мощность-вт', '', 0, 0),
(64, 64, 'pa_мощность-вт', '', 0, 0),
(65, 65, 'pa_тип-управления', '', 0, 14),
(66, 66, 'pa_тип-управления', '', 0, 0),
(67, 67, 'pa_тип-управления', '', 0, 0),
(68, 68, 'pa_установка', '', 0, 10),
(69, 69, 'pa_установка', '', 0, 1),
(70, 70, 'pa_установка', '', 0, 0),
(71, 71, 'pa_место-монтажа', '', 0, 11),
(72, 72, 'pa_место-монтажа', '', 0, 0),
(73, 73, 'pa_место-монтажа', '', 0, 2),
(74, 74, 'pa_форма', '', 0, 7),
(75, 75, 'pa_форма', '', 0, 0),
(76, 76, 'pa_форма', '', 0, 1),
(77, 77, 'pa_форма', '', 0, 4),
(78, 78, 'pa_производитель', '', 0, 1),
(79, 79, 'pa_мощность-вт', '', 0, 1),
(80, 80, 'pa_производитель', '', 0, 5),
(81, 81, 'pa_назначение', '', 0, 0),
(82, 82, 'pa_назначение', '', 0, 1),
(83, 83, 'pa_назначение', '', 0, 1),
(84, 84, 'pa_назначение', '', 0, 0),
(85, 85, 'product_tag', '', 0, 2),
(86, 86, 'product_tag', '', 0, 3),
(87, 87, 'product_tag', '', 0, 1),
(88, 88, 'product_tag', '', 0, 1),
(89, 89, 'product_tag', '', 0, 1),
(91, 91, 'pa_proizvoditel', '', 0, 7),
(92, 92, 'pa_proizvoditel', '', 0, 5),
(93, 93, 'pa_proizvoditel', '', 0, 7),
(94, 94, 'pa_proizvoditel', '', 0, 2),
(95, 95, 'pa_proizvoditel', '', 0, 1),
(96, 96, 'pa_obemov-l', '', 0, 5),
(97, 97, 'pa_obemov-l', '', 0, 2),
(98, 98, 'pa_obemov-l', '', 0, 1),
(99, 99, 'pa_obemov-l', '', 0, 0),
(100, 100, 'pa_obemov-l', '', 0, 0),
(101, 101, 'pa_obemov-l', '', 0, 13),
(102, 102, 'pa_obemov-l', '', 0, 1),
(103, 103, 'pa_obemov-l', '', 0, 0),
(104, 104, 'pa_tip-tjena', '', 0, 14),
(105, 105, 'pa_tip-tjena', '', 0, 8),
(106, 106, 'pa_moshhnost-vt', '', 0, 0),
(107, 107, 'pa_moshhnost-vt', '', 0, 1),
(108, 108, 'pa_moshhnost-vt', '', 0, 0),
(109, 109, 'pa_moshhnost-vt', '', 0, 8),
(110, 110, 'pa_moshhnost-vt', '', 0, 2),
(111, 111, 'pa_moshhnost-vt', '', 0, 1),
(112, 112, 'pa_moshhnost-vt', '', 0, 10),
(113, 113, 'pa_moshhnost-vt', '', 0, 0),
(114, 114, 'pa_moshhnost-vt', '', 0, 0),
(115, 115, 'pa_moshhnost-vt', '', 0, 0),
(116, 116, 'pa_moshhnost-vt', '', 0, 0),
(117, 117, 'pa_moshhnost-vt', '', 0, 0),
(118, 118, 'pa_tip-upravlenija', '', 0, 22),
(119, 119, 'pa_tip-upravlenija', '', 0, 0),
(120, 120, 'pa_mesto-montazha', '', 0, 17),
(121, 121, 'pa_mesto-montazha', '', 0, 0),
(122, 122, 'pa_mesto-montazha', '', 0, 5),
(123, 123, 'pa_forma', '', 0, 13),
(124, 124, 'pa_forma', '', 0, 0),
(125, 125, 'pa_forma', '', 0, 0),
(126, 126, 'pa_forma', '', 0, 9),
(127, 127, 'pa_ustanovka', '', 0, 20),
(128, 128, 'pa_ustanovka', '', 0, 1),
(129, 129, 'pa_ustanovka', '', 0, 1),
(130, 130, 'pa_proizvoditel', '', 0, 1),
(131, 131, 'pa_moshhnost-vt', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Joker'),
(2, 1, 'first_name', 'Ярослав'),
(3, 1, 'last_name', 'Власюк'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,theme_editor_notice,tp09_edit_drag_drop_sort,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"a54f18d12c0991ae5fc1c2b453055c50b11253e176e80488fff75ac96a7c920d\";a:4:{s:10:\"expiration\";i:1565449715;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565276915;}s:64:\"6bbe9636ffbf407950820ecbc7fd6ee14295fe340c2644ee23f2e53f8fc77d77\";a:4:{s:10:\"expiration\";i:1566486522;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1565276922;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '457'),
(18, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, '_woocommerce_tracks_anon_id', 'woo:FTLhDFBOY8T4HmG8CK/xzmAB'),
(22, 1, 'jetpack_tracks_anon_id', 'jetpack:QXdP45aHj3m7dMPSFkbhw1kB'),
(23, 1, 'wc_last_active', '1566086400'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o&hidetb=1&advImgDetails=show&post_dfw=off&editor_plain_text_paste_warning=2'),
(25, 1, 'wp_user-settings-time', '1559146583'),
(26, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(27, 1, 'metaboxhidden_attachment', 'a:0:{}'),
(28, 1, 'meta-box-order_attachment', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_attachment', '2'),
(30, 1, 'manageedit-commentscolumnshidden', 'a:0:{}'),
(31, 1, 'nav_menu_recently_edited', '20'),
(32, 1, 'dismissed_no_secure_connection_notice', '1'),
(33, 1, 'closedpostboxes_product', 'a:0:{}'),
(34, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(35, 1, 'edit_product_cat_per_page', '20'),
(36, 1, 'wp_tablepress_user_options', '{\"user_options_db_version\":38,\"admin_menu_parent_page\":\"middle\",\"message_first_visit\":true}'),
(37, 1, 'managetablepress_listcolumnshidden', 'a:1:{i:0;s:22:\"table_last_modified_by\";}'),
(38, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:104:\"dashboard_right_now,dashboard_activity,woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status\";s:4:\"side\";s:17:\"dashboard_primary\";s:7:\"column3\";s:21:\"dashboard_quick_press\";s:7:\"column4\";s:0:\"\";}'),
(39, 1, 'dismissed_wc_admin_notice', '1'),
(40, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"postcustom,woocommerce-product-data,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(41, 1, 'screen_layout_product', '2'),
(42, 1, 'last_update', '1560705705'),
(43, 1, 'billing_first_name', 'Ярослав'),
(44, 1, 'billing_last_name', 'Власюк'),
(45, 1, 'billing_city', 'Киев'),
(46, 1, 'billing_state', 'Киевская'),
(47, 1, 'shipping_first_name', 'Ярослав'),
(48, 1, 'shipping_last_name', 'Власюк'),
(49, 1, 'shipping_address_1', 'ул. Мендеелева 12'),
(50, 1, 'shipping_city', 'Киев'),
(51, 1, 'shipping_state', 'Киевская'),
(52, 1, 'shipping_country', 'UA'),
(54, 1, 'billing_new_fild5', 'ччапвапавм'),
(57, 1, 'paying_customer', '1'),
(58, 1, 'billing_email', 'vlas-jaro@ukr.net'),
(59, 1, 'billing_phone', '099-194-97-27'),
(63, 1, 'billing_address_1', 'ул. Мендеелева 12'),
(64, 1, 'billing_address_2', 'чяівпвап'),
(65, 1, 'billing_country', 'UA'),
(66, 1, 'shipping_address_2', 'чяівпвап'),
(82, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:1\";}'),
(84, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"40008b9a5380fcacce3976bf7c08af5b\";a:11:{s:3:\"key\";s:32:\"40008b9a5380fcacce3976bf7c08af5b\";s:10:\"product_id\";i:340;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:605;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:605;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Joker', '$P$Bp9KC6HjBVGy4.hTyjdvEDRC32FwTo0', 'joker', 'vlasjaro3@gmail.com', '', '2019-05-24 09:25:45', '', 0, 'Joker');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(58, '', 0, 0, '18.00', '18.00', 1, NULL, 'instock', 0, '0.00', 0),
(60, '', 0, 0, '55.00', '55.00', 1, NULL, 'instock', 0, '0.00', 0),
(62, '', 0, 0, '16.00', '16.00', 1, NULL, 'instock', 0, '0.00', 0),
(64, '', 0, 0, '90.00', '90.00', 0, NULL, 'instock', 0, '0.00', 0),
(66, '', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(68, '', 0, 0, '35.00', '35.00', 1, NULL, 'instock', 0, '0.00', 0),
(69, '', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(71, '', 0, 0, '42.00', '42.00', 1, NULL, 'instock', 0, '0.00', 0),
(73, '', 0, 0, '25.00', '25.00', 0, NULL, 'instock', 0, '0.00', 0),
(75, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(76, '', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(77, '', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(249, '', 0, 0, '3690.00', '3690.00', 0, NULL, 'instock', 0, '0.00', 0),
(285, '', 0, 0, '2340.00', '2340.00', 0, NULL, 'instock', 0, '0.00', 0),
(289, '', 0, 0, '3720.00', '3720.00', 0, NULL, 'instock', 0, '0.00', 0),
(319, '', 0, 0, '5190.00', '5190.00', 0, NULL, 'instock', 0, '0.00', 0),
(334, '', 0, 0, '422.14', '422.14', 0, NULL, 'instock', 0, '0.00', 0),
(336, '', 0, 0, '769.00', '769.00', 0, NULL, 'instock', 0, '0.00', 0),
(338, '', 0, 0, '882.00', '882.00', 0, NULL, 'instock', 0, '0.00', 0),
(340, '', 0, 0, '605.00', '605.00', 0, NULL, 'instock', 0, '0.00', 0),
(351, '', 0, 0, '2294.00', '2294.00', 0, NULL, 'instock', 0, '0.00', 0),
(353, '', 0, 0, '2294.00', '2294.00', 0, NULL, 'instock', 0, '0.00', 1),
(355, '', 0, 0, '2100.00', '2100.00', 0, NULL, 'instock', 0, '0.00', 0),
(357, '', 0, 0, '2670.00', '2670.00', 0, NULL, 'instock', 0, '0.00', 1),
(359, '', 0, 0, '2970.00', '2970.00', 0, NULL, 'instock', 0, '0.00', 0),
(361, '', 0, 0, '4500.00', '4500.00', 0, NULL, 'instock', 0, '0.00', 0),
(363, '', 0, 0, '4500.00', '4500.00', 0, NULL, 'instock', 0, '0.00', 1),
(365, '', 0, 0, '5940.00', '5940.00', 0, NULL, 'instock', 0, '0.00', 0),
(368, '', 0, 0, '2591.00', '2591.00', 0, NULL, 'instock', 0, '0.00', 0),
(378, '', 0, 0, '3930.00', '3930.00', 0, NULL, 'instock', 0, '0.00', 0),
(380, '', 0, 0, '5220.00', '5220.00', 0, NULL, 'instock', 0, '0.00', 1),
(382, '', 0, 0, '3215.00', '3215.00', 0, NULL, 'instock', 0, '0.00', 1),
(386, '', 0, 0, '2422.00', '2422.00', 0, NULL, 'instock', 0, '0.00', 0),
(408, '', 0, 0, '4500.00', '4500.00', 0, NULL, 'instock', 0, '0.00', 3),
(435, '', 0, 0, '5400.00', '5400.00', 0, NULL, 'instock', 0, '0.00', 0),
(443, '', 0, 0, '6390.00', '6390.00', 0, NULL, 'instock', 0, '0.00', 0),
(447, '', 0, 0, '3720.00', '3720.00', 0, NULL, 'instock', 0, '0.00', 0),
(450, '', 0, 0, '5100.00', '5100.00', 0, NULL, 'instock', 0, '0.00', 0),
(453, '', 0, 0, '2439.00', '2439.00', 0, NULL, 'instock', 0, '0.00', 0),
(455, '', 0, 0, '2439.00', '2439.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(10, 'proizvoditel', 'Производитель', 'select', 'menu_order', 0),
(11, 'obemov-l', 'Объемов, л', 'select', 'menu_order', 0),
(12, 'tip-tjena', 'Тип ТЭНа', 'select', 'menu_order', 0),
(13, 'moshhnost-vt', 'Мощность, Вт', 'select', 'menu_order', 0),
(14, 'tip-upravlenija', 'Тип управления', 'select', 'menu_order', 0),
(15, 'mesto-montazha', 'Место монтажа', 'select', 'menu_order', 0),
(16, 'forma', 'Форма', 'select', 'menu_order', 0),
(17, 'ustanovka', 'Установка', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(16, 3, '_product_id', '380'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '5220'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '5220'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'flat_rate'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '80.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Позиции', 'Бойлер ARTI WH COMBY 100L/1 &times; 1'),
(31, 5, '_product_id', '357'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '2670'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '2670'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, 'method_id', 'flat_rate'),
(41, 6, 'instance_id', '1'),
(42, 6, 'cost', '80.00'),
(43, 6, 'total_tax', '0'),
(44, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(45, 6, 'Позиции', 'Бойлер ELDOM Extra life 10 над мойкой 2.0 kw 72325NMP &times; 1'),
(46, 7, '_product_id', '363'),
(47, 7, '_variation_id', '0'),
(48, 7, '_qty', '1'),
(49, 7, '_tax_class', ''),
(50, 7, '_line_subtotal', '4500'),
(51, 7, '_line_subtotal_tax', '0'),
(52, 7, '_line_total', '4500'),
(53, 7, '_line_tax', '0'),
(54, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 8, 'method_id', 'flat_rate'),
(56, 8, 'instance_id', '1'),
(57, 8, 'cost', '80.00'),
(58, 8, 'total_tax', '0'),
(59, 8, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(60, 8, 'Позиции', 'Бойлер комбинированный ELDOM Thermo 100 1.5 kW 72270GNTR &times; 1'),
(61, 9, '_product_id', '408'),
(62, 9, '_variation_id', '0'),
(63, 9, '_qty', '1'),
(64, 9, '_tax_class', ''),
(65, 9, '_line_subtotal', '4500'),
(66, 9, '_line_subtotal_tax', '0'),
(67, 9, '_line_total', '4500'),
(68, 9, '_line_tax', '0'),
(69, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(70, 10, 'method_id', 'flat_rate'),
(71, 10, 'instance_id', '1'),
(72, 10, 'cost', '80.00'),
(73, 10, 'total_tax', '0'),
(74, 10, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(75, 10, 'Позиции', 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR &times; 1'),
(76, 11, '_product_id', '408'),
(77, 11, '_variation_id', '0'),
(78, 11, '_qty', '1'),
(79, 11, '_tax_class', ''),
(80, 11, '_line_subtotal', '4500'),
(81, 11, '_line_subtotal_tax', '0'),
(82, 11, '_line_total', '4500'),
(83, 11, '_line_tax', '0'),
(84, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(85, 12, 'method_id', 'flat_rate'),
(86, 12, 'instance_id', '1'),
(87, 12, 'cost', '80.00'),
(88, 12, 'total_tax', '0'),
(89, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(90, 12, 'Позиции', 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR &times; 1'),
(91, 13, '_product_id', '353'),
(92, 13, '_variation_id', '0'),
(93, 13, '_qty', '1'),
(94, 13, '_tax_class', ''),
(95, 13, '_line_subtotal', '2294'),
(96, 13, '_line_subtotal_tax', '0'),
(97, 13, '_line_total', '2294'),
(98, 13, '_line_tax', '0'),
(99, 13, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(100, 14, 'method_id', 'flat_rate'),
(101, 14, 'instance_id', '1'),
(102, 14, 'cost', '80.00'),
(103, 14, 'total_tax', '0'),
(104, 14, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(105, 14, 'Позиции', 'Бойлер NOVA TEC Compact Under 10 &times; 1'),
(106, 15, '_product_id', '408'),
(107, 15, '_variation_id', '0'),
(108, 15, '_qty', '1'),
(109, 15, '_tax_class', ''),
(110, 15, '_line_subtotal', '4500'),
(111, 15, '_line_subtotal_tax', '0'),
(112, 15, '_line_total', '4500'),
(113, 15, '_line_tax', '0'),
(114, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(115, 16, 'method_id', 'flat_rate'),
(116, 16, 'instance_id', '1'),
(117, 16, 'cost', '80.00'),
(118, 16, 'total_tax', '0'),
(119, 16, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(120, 16, 'Позиции', 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR &times; 1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(3, 'Бойлер ARTI WH COMBY 100L/1', 'line_item', 420),
(4, 'Единая ставка', 'shipping', 420),
(5, 'Бойлер ELDOM Extra life 10 над мойкой 2.0 kw 72325NMP', 'line_item', 421),
(6, 'Единая ставка', 'shipping', 421),
(7, 'Бойлер комбинированный ELDOM Thermo 100 1.5 kW 72270GNTR', 'line_item', 422),
(8, 'Единая ставка', 'shipping', 422),
(9, 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR', 'line_item', 423),
(10, 'Единая ставка', 'shipping', 423),
(11, 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR', 'line_item', 424),
(12, 'Единая ставка', 'shipping', 424),
(13, 'Бойлер NOVA TEC Compact Under 10', 'line_item', 425),
(14, 'Единая ставка', 'shipping', 425),
(15, 'БОЙЛЕР ELDOM THERMO 100 1X2 KW 72270GNT/72270GNTR', 'line_item', 426),
(16, 'Единая ставка', 'shipping', 426);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Украина', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(5, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(1, 2, 'free_shipping', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6765;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2375;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
