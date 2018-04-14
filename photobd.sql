-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 14 2018 г., 12:58
-- Версия сервера: 5.7.17
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `photobd`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-10 21:10:36', '2018-04-10 18:10:36', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/edsa-project-cms/photography', 'yes'),
(2, 'home', 'http://127.0.0.1/edsa-project-cms/photography', 'yes'),
(3, 'blogname', 'photography', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dimkasklyar@mail.ru', 'yes'),
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
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"rustolat/rus-to-lat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'photography', 'yes'),
(41, 'stylesheet', 'photography', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:4:{i:1523729437;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523729449;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523729687;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1523383986;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/ru_RU/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";s:68:\"http://downloads.wordpress.org/release/wordpress-4.9.5-partial-4.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.9.4\";}}s:12:\"last_checked\";i:1523700903;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_d47731ece7cfc0e48f77a9a5e401f6b7', '1523988650', 'no'),
(221, '_site_transient_timeout_theme_roots', '1523702708', 'no'),
(222, '_site_transient_theme_roots', 'a:1:{s:11:\"photography\";s:7:\"/themes\";}', 'no'),
(223, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1523700909;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";s:23:\"rustolat/rus-to-lat.php\";s:3:\"0.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"rustolat/rus-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/rustolat\";s:4:\"slug\";s:8:\"rustolat\";s:6:\"plugin\";s:23:\"rustolat/rus-to-lat.php\";s:11:\"new_version\";s:3:\"0.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/rustolat/\";s:7:\"package\";s:54:\"http://downloads.wordpress.org/plugin/rustolat.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:52:\"https://s.w.org/plugins/geopattern-icon/rustolat.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523700908;s:7:\"checked\";a:1:{s:11:\"photography\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_browser_d47731ece7cfc0e48f77a9a5e401f6b7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(133, 'current_theme', 'photography', 'yes'),
(134, 'theme_mods_photography', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(228, 'category_children', 'a:1:{i:3;a:1:{i:0;i:4;}}', 'yes'),
(182, 'category_4', 'a:2:{s:9:\"cat_title\";s:0:\"\";s:9:\"cat_text1\";s:22:\"View my flickr profile\";}', 'yes'),
(196, 'category_6', 'a:2:{s:9:\"cat_title\";s:0:\"\";s:9:\"cat_text1\";s:8:\"See More\";}', 'yes'),
(205, 'category_11', 'a:2:{s:9:\"cat_title\";s:95:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/brooke-lark-175644.png\";s:9:\"cat_text1\";s:12:\"Send Message\";}', 'yes'),
(224, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1523744527', 'no'),
(225, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(226, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1523744528', 'no'),
(227, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: No working transports found</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: No working transports found</p></div>', 'no'),
(168, 'category_3', 'a:1:{s:9:\"cat_title\";s:86:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/bcg-sec-1.jpg\";}', 'yes'),
(152, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1523471841:1'),
(4, 4, '_wp_page_template', 'themepage.php'),
(7, 7, '_wp_attached_file', '2018/04/Avfu6nAGkYw.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:23:\"2018/04/Avfu6nAGkYw.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Avfu6nAGkYw-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Avfu6nAGkYw-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Avfu6nAGkYw-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"Avfu6nAGkYw-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2018/04/cropped-Avfu6nAGkYw.jpg'),
(10, 8, '_wp_attachment_context', 'custom-logo'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:708;s:6:\"height\";i:216;s:4:\"file\";s:31:\"2018/04/cropped-Avfu6nAGkYw.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-Avfu6nAGkYw-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-Avfu6nAGkYw-300x92.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:92;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, '_menu_item_type', 'post_type'),
(14, 9, '_menu_item_menu_item_parent', '0'),
(15, 9, '_menu_item_object_id', '4'),
(16, 9, '_menu_item_object', 'page'),
(17, 9, '_menu_item_target', ''),
(18, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 9, '_menu_item_xfn', ''),
(20, 9, '_menu_item_url', ''),
(21, 9, '_menu_item_orphaned', '1523392210'),
(22, 10, '_menu_item_type', 'post_type'),
(23, 10, '_menu_item_menu_item_parent', '0'),
(24, 10, '_menu_item_object_id', '4'),
(25, 10, '_menu_item_object', 'page'),
(26, 10, '_menu_item_target', ''),
(27, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 10, '_menu_item_xfn', ''),
(29, 10, '_menu_item_url', ''),
(31, 11, '_menu_item_type', 'post_type'),
(32, 11, '_menu_item_menu_item_parent', '0'),
(33, 11, '_menu_item_object_id', '2'),
(34, 11, '_menu_item_object', 'page'),
(35, 11, '_menu_item_target', ''),
(36, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 11, '_menu_item_xfn', ''),
(38, 11, '_menu_item_url', ''),
(39, 11, '_menu_item_orphaned', '1523392210'),
(40, 12, '_menu_item_type', 'custom'),
(41, 12, '_menu_item_menu_item_parent', '0'),
(42, 12, '_menu_item_object_id', '12'),
(43, 12, '_menu_item_object', 'custom'),
(44, 12, '_menu_item_target', ''),
(45, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 12, '_menu_item_xfn', ''),
(47, 12, '_menu_item_url', 'http://#'),
(49, 13, '_menu_item_type', 'custom'),
(50, 13, '_menu_item_menu_item_parent', '0'),
(51, 13, '_menu_item_object_id', '13'),
(52, 13, '_menu_item_object', 'custom'),
(53, 13, '_menu_item_target', ''),
(54, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 13, '_menu_item_xfn', ''),
(56, 13, '_menu_item_url', 'http://#'),
(77, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2018/04/header.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"header-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"header-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"header-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"header-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 14, '_menu_item_type', 'custom'),
(59, 14, '_menu_item_menu_item_parent', '0'),
(60, 14, '_menu_item_object_id', '14'),
(61, 14, '_menu_item_object', 'custom'),
(62, 14, '_menu_item_target', ''),
(63, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 14, '_menu_item_xfn', ''),
(65, 14, '_menu_item_url', 'http://#'),
(67, 15, '_menu_item_type', 'custom'),
(68, 15, '_menu_item_menu_item_parent', '0'),
(69, 15, '_menu_item_object_id', '15'),
(70, 15, '_menu_item_object', 'custom'),
(71, 15, '_menu_item_target', ''),
(72, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 15, '_menu_item_xfn', ''),
(74, 15, '_menu_item_url', 'http://#'),
(76, 16, '_wp_attached_file', '2018/04/header.jpg'),
(78, 4, '_thumbnail_id', '16'),
(79, 4, 'buttonText', 'See My Works'),
(82, 4, 'fontAwesome', 'fa-facebook'),
(80, 4, 'fontAwesome', 'fa-vk'),
(81, 4, 'socialURL', 'http://vk.com'),
(83, 4, 'socialURL', 'https://www.facebook.com'),
(84, 4, 'fontAwesome', 'fa-instagram'),
(85, 4, 'socialURL', 'https://www.instagram.com'),
(86, 4, 'fontAwesome', 'fa-twitter'),
(87, 4, 'socialURL', 'https://twitter.com'),
(88, 18, '_wp_attached_file', '2018/04/bcg-sec-1.jpg'),
(89, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:514;s:6:\"height\";i:730;s:4:\"file\";s:21:\"2018/04/bcg-sec-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bcg-sec-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bcg-sec-1-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 1, '_wp_trash_meta_status', 'publish'),
(91, 1, '_wp_trash_meta_time', '1523476150'),
(92, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(93, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(94, 20, '_edit_last', '1'),
(95, 20, '_edit_lock', '1523556122:1'),
(98, 2, '_wp_trash_meta_status', 'publish'),
(99, 2, '_wp_trash_meta_time', '1523553239'),
(100, 2, '_wp_desired_post_slug', 'sample-page'),
(101, 26, '_edit_last', '1'),
(102, 26, '_edit_lock', '1523556067:1'),
(103, 27, '_wp_attached_file', '2018/04/work1.jpg'),
(104, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2018/04/work1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 28, '_wp_attached_file', '2018/04/work2.png'),
(106, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2018/04/work2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 29, '_wp_attached_file', '2018/04/work3.png'),
(108, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2018/04/work3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 26, '_thumbnail_id', '29'),
(110, 26, '_wp_page_template', 'postPhotoStyle.php'),
(114, 31, '_edit_lock', '1523556087:1'),
(113, 31, '_edit_last', '1'),
(115, 31, '_thumbnail_id', '28'),
(116, 31, '_wp_page_template', 'default'),
(120, 33, '_edit_lock', '1523556107:1'),
(119, 33, '_edit_last', '1'),
(121, 33, '_thumbnail_id', '27'),
(122, 33, '_wp_page_template', 'postPhotoStyle.php'),
(125, 20, '_wp_trash_meta_status', 'publish'),
(126, 20, '_wp_trash_meta_time', '1523556269'),
(127, 20, '_wp_desired_post_slug', 'what-i-do'),
(128, 35, '_edit_last', '1'),
(129, 35, '_edit_lock', '1523557684:1'),
(130, 38, '_wp_attached_file', '2018/04/babaria.png'),
(131, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2018/04/babaria.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 39, '_wp_attached_file', '2018/04/brillbird-transparent-logo.png'),
(133, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:130;s:6:\"height\";i:23;s:4:\"file\";s:38:\"2018/04/brillbird-transparent-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 40, '_wp_attached_file', '2018/04/logo.png'),
(135, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:152;s:6:\"height\";i:71;s:4:\"file\";s:16:\"2018/04/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x71.png\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 41, '_wp_attached_file', '2018/04/logo_loxa.png'),
(137, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:34;s:4:\"file\";s:21:\"2018/04/logo_loxa.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo_loxa-150x34.png\";s:5:\"width\";i:150;s:6:\"height\";i:34;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 42, '_wp_attached_file', '2018/04/logo1.png'),
(139, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:163;s:6:\"height\";i:35;s:4:\"file\";s:17:\"2018/04/logo1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo1-150x35.png\";s:5:\"width\";i:150;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 43, '_wp_attached_file', '2018/04/minkys_eyelash_extensions_training.png'),
(141, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:104;s:6:\"height\";i:61;s:4:\"file\";s:46:\"2018/04/minkys_eyelash_extensions_training.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 37, '_edit_last', '1'),
(143, 37, '_wp_page_template', 'default'),
(148, 35, '_wp_trash_meta_status', 'draft'),
(146, 37, 'multiupload', 'a:6:{i:0;s:111:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/minkys_eyelash_extensions_training.png\";i:1;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo1.png\";i:2;s:86:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo_loxa.png\";i:3;s:81:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo.png\";i:4;s:103:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/brillbird-transparent-logo.png\";i:5;s:84:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/babaria.png\";}'),
(147, 37, '_edit_lock', '1523558485:1'),
(149, 35, '_wp_trash_meta_time', '1523559991'),
(150, 35, '_wp_desired_post_slug', ''),
(151, 46, '_edit_last', '1'),
(152, 46, '_edit_lock', '1523561013:1'),
(153, 47, '_wp_attached_file', '2018/04/portfolio-1.jpg'),
(154, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:739;s:6:\"height\";i:506;s:4:\"file\";s:23:\"2018/04/portfolio-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 48, '_wp_attached_file', '2018/04/portfolio-2.jpg'),
(156, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:471;s:6:\"height\";i:233;s:4:\"file\";s:23:\"2018/04/portfolio-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-2-300x148.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 49, '_wp_attached_file', '2018/04/portfolio-3.jpg'),
(158, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:233;s:4:\"file\";s:23:\"2018/04/portfolio-3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 50, '_wp_attached_file', '2018/04/portfolio-4.jpg'),
(160, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:301;s:6:\"height\";i:233;s:4:\"file\";s:23:\"2018/04/portfolio-4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-4-300x232.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:232;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 51, '_wp_attached_file', '2018/04/portfolio-5.jpg'),
(162, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:331;s:6:\"height\";i:233;s:4:\"file\";s:23:\"2018/04/portfolio-5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-5-300x211.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 52, '_wp_attached_file', '2018/04/portfolio-6.jpg'),
(164, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:252;s:4:\"file\";s:23:\"2018/04/portfolio-6.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-6-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 53, '_wp_attached_file', '2018/04/portfolio-7.jpg'),
(166, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:666;s:6:\"height\";i:221;s:4:\"file\";s:23:\"2018/04/portfolio-7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-7-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 46, '_wp_page_template', 'default'),
(172, 55, '_edit_lock', '1523566461:1'),
(171, 55, '_edit_last', '1'),
(170, 46, 'multiupload', 'a:7:{i:0;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-1.jpg\";i:1;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-2.jpg\";i:2;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-3.jpg\";i:3;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-4.jpg\";i:4;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-5.jpg\";i:5;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-6.jpg\";i:6;s:88:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-7.jpg\";}'),
(173, 56, '_wp_attached_file', '2018/04/blog-1.jpg'),
(174, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:458;s:6:\"height\";i:305;s:4:\"file\";s:18:\"2018/04/blog-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 57, '_wp_attached_file', '2018/04/blog-2.jpg'),
(176, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:661;s:6:\"height\";i:440;s:4:\"file\";s:18:\"2018/04/blog-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 58, '_wp_attached_file', '2018/04/blog-3.jpg'),
(178, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:589;s:4:\"file\";s:18:\"2018/04/blog-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog-3-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 55, '_thumbnail_id', '58'),
(180, 55, '_wp_page_template', 'postPhotoStyle.php'),
(185, 60, '_edit_lock', '1523562657:1'),
(184, 60, '_edit_last', '1'),
(183, 55, 'multiupload', 'a:1:{i:0;s:27:\"http://placehold.it/100x100\";}'),
(186, 60, '_thumbnail_id', '57'),
(187, 60, '_wp_page_template', 'default'),
(192, 62, '_thumbnail_id', '56'),
(191, 62, '_edit_last', '1'),
(190, 60, 'multiupload', 'a:1:{i:0;s:0:\"\";}'),
(193, 62, '_wp_page_template', 'default'),
(198, 65, '_wp_attached_file', '2018/04/brooke-lark-175644.png'),
(196, 62, 'multiupload', 'a:1:{i:0;s:0:\"\";}'),
(197, 62, '_edit_lock', '1523647479:1'),
(199, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:528;s:4:\"file\";s:30:\"2018/04/brooke-lark-175644.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"brooke-lark-175644-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"brooke-lark-175644-300x99.png\";s:5:\"width\";i:300;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"brooke-lark-175644-768x253.png\";s:5:\"width\";i:768;s:6:\"height\";i:253;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"brooke-lark-175644-1024x338.png\";s:5:\"width\";i:1024;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 66, '_edit_lock', '1523646244:1'),
(202, 66, '_edit_last', '1'),
(204, 66, '_wp_page_template', 'default'),
(209, 68, '_edit_lock', '1523702116:1'),
(208, 68, '_edit_last', '1'),
(207, 66, 'multiupload', 'a:1:{i:0;s:0:\"\";}'),
(210, 69, '_wp_attached_file', '2018/04/inst1.jpg'),
(211, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:97;s:4:\"file\";s:17:\"2018/04/inst1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 70, '_wp_attached_file', '2018/04/inst2.jpg'),
(213, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:42;s:4:\"file\";s:17:\"2018/04/inst2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 71, '_wp_attached_file', '2018/04/inst3.jpg'),
(215, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:45;s:4:\"file\";s:17:\"2018/04/inst3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 72, '_wp_attached_file', '2018/04/inst4.jpg'),
(217, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:61;s:4:\"file\";s:17:\"2018/04/inst4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 73, '_wp_attached_file', '2018/04/inst5.jpg'),
(219, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:54;s:6:\"height\";i:61;s:4:\"file\";s:17:\"2018/04/inst5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 74, '_wp_attached_file', '2018/04/inst6.jpg'),
(221, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:74;s:6:\"height\";i:61;s:4:\"file\";s:17:\"2018/04/inst6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 68, '_wp_page_template', 'default'),
(225, 68, 'multiupload', 'a:6:{i:0;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst1.jpg\";i:1;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst2.jpg\";i:2;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst3.jpg\";i:3;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst4.jpg\";i:4;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst5.jpg\";i:5;s:82:\"http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst6.jpg\";}');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-10 21:10:36', '2018-04-10 18:10:36', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2018-04-11 22:49:10', '2018-04-11 19:49:10', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-10 21:10:36', '2018-04-10 18:10:36', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://127.0.0.1/edsa-project-cms/photography/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-12 20:13:59', '2018-04-12 17:13:59', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-04-10 21:10:50', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-10 21:10:50', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=3', 0, 'post', '', 0),
(4, 1, '2018-04-10 21:14:57', '2018-04-10 18:14:57', '<h1>Hello, I\'m <br>Dakota Jhonson</h1>\r\n<p>I’m an Art Director & Photographer based in the San Francisco.</p>', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2018-04-11 21:03:32', '2018-04-11 18:03:32', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-04-10 21:14:57', '2018-04-10 18:14:57', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 21:14:57', '2018-04-10 18:14:57', '', 4, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-04-10 22:13:10', '2018-04-10 19:13:10', '', 'Avfu6nAGkYw', '', 'inherit', 'open', 'closed', '', 'avfu6nagkyw', '', '', '2018-04-10 22:13:10', '2018-04-10 19:13:10', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/Avfu6nAGkYw.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-04-10 22:13:18', '2018-04-10 19:13:18', 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/cropped-Avfu6nAGkYw.jpg', 'cropped-Avfu6nAGkYw.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-avfu6nagkyw-jpg', '', '', '2018-04-10 22:13:18', '2018-04-10 19:13:18', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/cropped-Avfu6nAGkYw.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-04-10 23:30:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 23:30:10', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-04-10 23:31:20', '2018-04-10 20:31:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-10 23:31:20', '2018-04-10 20:31:20', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-04-10 23:30:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-10 23:30:10', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 'Clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=13', 3, 'nav_menu_item', '', 0),
(14, 1, '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-04-10 23:31:21', '2018-04-10 20:31:21', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=15', 5, 'nav_menu_item', '', 0),
(16, 1, '2018-04-10 23:38:46', '2018-04-10 20:38:46', '', 'header', '', 'inherit', 'open', 'closed', '', 'header', '', '', '2018-04-10 23:38:46', '2018-04-10 20:38:46', '', 4, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/header.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-04-10 23:45:46', '2018-04-10 20:45:46', '<h1>Hello, I\'m <br>Dakota Jhonson</h1>\r\n<p>I’m an Art Director & Photographer based in the San Francisco.</p>', 'Главная', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-10 23:45:46', '2018-04-10 20:45:46', '', 4, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/10/4-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-04-11 22:11:11', '2018-04-11 19:11:11', '', 'bcg-sec-1', '', 'inherit', 'open', 'closed', '', 'bcg-sec-1', '', '', '2018-04-11 22:11:11', '2018-04-11 19:11:11', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/bcg-sec-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-04-11 22:49:10', '2018-04-11 19:49:10', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-11 22:49:10', '2018-04-11 19:49:10', '', 1, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/11/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-04-11 22:54:13', '2018-04-11 19:54:13', '', 'What I Do?', '', 'trash', 'open', 'open', '', 'what-i-do__trashed', '', '', '2018-04-12 21:04:29', '2018-04-12 18:04:29', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=20', 0, 'post', '', 0),
(21, 1, '2018-04-11 22:54:13', '2018-04-11 19:54:13', '', 'What I Do?', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-04-11 22:54:13', '2018-04-11 19:54:13', '', 20, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/11/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-04-12 20:13:59', '2018-04-12 17:13:59', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://127.0.0.1/edsa-project-cms/photography/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-12 20:13:59', '2018-04-12 17:13:59', '', 2, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-12 20:14:05', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-12 20:14:05', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-04-12 20:14:59', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 20:14:59', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=24', 0, 'post', '', 0),
(25, 1, '2018-04-12 20:54:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 20:54:39', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=25', 0, 'post', '', 0),
(26, 1, '2018-04-12 21:03:25', '2018-04-12 18:03:25', '', 'Lifestyle', '', 'publish', 'open', 'open', '', 'lifestyle', '', '', '2018-04-12 21:03:25', '2018-04-12 18:03:25', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=26', 0, 'post', '', 0),
(27, 1, '2018-04-12 21:01:34', '2018-04-12 18:01:34', '', 'work1', '', 'inherit', 'open', 'closed', '', 'work1', '', '', '2018-04-12 21:01:34', '2018-04-12 18:01:34', '', 26, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/work1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-04-12 21:02:06', '2018-04-12 18:02:06', '', 'work2', '', 'inherit', 'open', 'closed', '', 'work2', '', '', '2018-04-12 21:02:06', '2018-04-12 18:02:06', '', 26, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/work2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2018-04-12 21:02:08', '2018-04-12 18:02:08', '', 'work3', '', 'inherit', 'open', 'closed', '', 'work3', '', '', '2018-04-12 21:02:08', '2018-04-12 18:02:08', '', 26, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/work3.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-04-12 21:03:25', '2018-04-12 18:03:25', '', 'Lifestyle', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-04-12 21:03:25', '2018-04-12 18:03:25', '', 26, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-04-12 21:03:46', '2018-04-12 18:03:46', '', 'Portraits', '', 'publish', 'open', 'open', '', 'portraits', '', '', '2018-04-12 21:03:46', '2018-04-12 18:03:46', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=31', 0, 'post', '', 0),
(32, 1, '2018-04-12 21:03:46', '2018-04-12 18:03:46', '', 'Portraits', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-04-12 21:03:46', '2018-04-12 18:03:46', '', 31, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-04-12 21:04:07', '2018-04-12 18:04:07', '', 'Fashion', '', 'publish', 'open', 'open', '', 'fashion', '', '', '2018-04-12 21:04:07', '2018-04-12 18:04:07', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=33', 0, 'post', '', 0),
(34, 1, '2018-04-12 21:04:07', '2018-04-12 18:04:07', '', 'Fashion', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-12 21:04:07', '2018-04-12 18:04:07', '', 33, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-04-12 22:06:31', '2018-04-12 19:06:31', '', 'Happy Clients', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-04-12 22:06:31', '2018-04-12 19:06:31', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=35', 0, 'post', '', 0),
(36, 1, '2018-04-12 21:33:40', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 21:33:40', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=36', 0, 'post', '', 0),
(37, 1, '2018-04-12 21:41:40', '2018-04-12 18:41:40', '', 'Happy Clients', '', 'publish', 'open', 'open', '', 'happy-clients', '', '', '2018-04-12 21:41:40', '2018-04-12 18:41:40', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=37', 0, 'post', '', 0),
(38, 1, '2018-04-12 21:35:59', '2018-04-12 18:35:59', '', 'babaria', '', 'inherit', 'open', 'closed', '', 'babaria', '', '', '2018-04-12 21:35:59', '2018-04-12 18:35:59', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/babaria.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2018-04-12 21:36:00', '2018-04-12 18:36:00', '', 'brillbird-transparent-logo', '', 'inherit', 'open', 'closed', '', 'brillbird-transparent-logo', '', '', '2018-04-12 21:36:00', '2018-04-12 18:36:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/brillbird-transparent-logo.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2018-04-12 21:36:02', '2018-04-12 18:36:02', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-04-12 21:36:02', '2018-04-12 18:36:02', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-04-12 21:36:03', '2018-04-12 18:36:03', '', 'logo_loxa', '', 'inherit', 'open', 'closed', '', 'logo_loxa', '', '', '2018-04-12 21:36:03', '2018-04-12 18:36:03', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo_loxa.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-04-12 21:36:04', '2018-04-12 18:36:04', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2018-04-12 21:36:04', '2018-04-12 18:36:04', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/logo1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-04-12 21:36:06', '2018-04-12 18:36:06', '', 'minkys_eyelash_extensions_training', '', 'inherit', 'open', 'closed', '', 'minkys_eyelash_extensions_training', '', '', '2018-04-12 21:36:06', '2018-04-12 18:36:06', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/minkys_eyelash_extensions_training.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-04-12 21:41:40', '2018-04-12 18:41:40', '', 'Happy Clients', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2018-04-12 21:41:40', '2018-04-12 18:41:40', '', 37, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/37-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-04-12 22:06:31', '2018-04-12 19:06:31', '', 'Happy Clients', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-04-12 22:06:31', '2018-04-12 19:06:31', '', 35, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/35-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-04-12 22:25:41', '2018-04-12 19:25:41', '', 'Portfolio', '', 'publish', 'open', 'open', '', 'portfolio', '', '', '2018-04-12 22:25:41', '2018-04-12 19:25:41', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=46', 0, 'post', '', 0),
(47, 1, '2018-04-12 22:23:41', '2018-04-12 19:23:41', '', 'portfolio-1', '', 'inherit', 'open', 'closed', '', 'portfolio-1', '', '', '2018-04-12 22:23:41', '2018-04-12 19:23:41', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-04-12 22:23:43', '2018-04-12 19:23:43', '', 'portfolio-2', '', 'inherit', 'open', 'closed', '', 'portfolio-2', '', '', '2018-04-12 22:23:43', '2018-04-12 19:23:43', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-04-12 22:23:44', '2018-04-12 19:23:44', '', 'portfolio-3', '', 'inherit', 'open', 'closed', '', 'portfolio-3', '', '', '2018-04-12 22:23:44', '2018-04-12 19:23:44', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-04-12 22:23:46', '2018-04-12 19:23:46', '', 'portfolio-4', '', 'inherit', 'open', 'closed', '', 'portfolio-4', '', '', '2018-04-12 22:23:46', '2018-04-12 19:23:46', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-04-12 22:23:47', '2018-04-12 19:23:47', '', 'portfolio-5', '', 'inherit', 'open', 'closed', '', 'portfolio-5', '', '', '2018-04-12 22:23:47', '2018-04-12 19:23:47', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-04-12 22:23:49', '2018-04-12 19:23:49', '', 'portfolio-6', '', 'inherit', 'open', 'closed', '', 'portfolio-6', '', '', '2018-04-12 22:23:49', '2018-04-12 19:23:49', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-04-12 22:23:50', '2018-04-12 19:23:50', '', 'portfolio-7', '', 'inherit', 'open', 'closed', '', 'portfolio-7', '', '', '2018-04-12 22:23:50', '2018-04-12 19:23:50', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/portfolio-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-04-12 22:25:41', '2018-04-12 19:25:41', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-04-12 22:25:41', '2018-04-12 19:25:41', '', 46, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/46-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-12 22:51:16', '2018-04-12 19:51:16', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'publish', 'open', 'open', '', 'design-is-the-method-of-putting-form-and-content-together', '', '', '2018-04-12 23:54:20', '2018-04-12 20:54:20', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=55', 0, 'post', '', 0),
(56, 1, '2018-04-12 22:49:50', '2018-04-12 19:49:50', '', 'blog-1', '', 'inherit', 'open', 'closed', '', 'blog-1', '', '', '2018-04-12 22:49:50', '2018-04-12 19:49:50', '', 55, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/blog-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-04-12 22:49:52', '2018-04-12 19:49:52', '', 'blog-2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2018-04-12 22:49:52', '2018-04-12 19:49:52', '', 55, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/blog-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-04-12 22:49:53', '2018-04-12 19:49:53', '', 'blog-3', '', 'inherit', 'open', 'closed', '', 'blog-3', '', '', '2018-04-12 22:49:53', '2018-04-12 19:49:53', '', 55, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/blog-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-04-12 22:51:16', '2018-04-12 19:51:16', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-04-12 22:51:16', '2018-04-12 19:51:16', '', 55, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/55-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-04-12 22:52:20', '2018-04-12 19:52:20', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'publish', 'open', 'open', '', 'design-is-the-method-of-putting-form-and-content-together-2', '', '', '2018-04-12 22:52:20', '2018-04-12 19:52:20', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=60', 0, 'post', '', 0),
(61, 1, '2018-04-12 22:52:20', '2018-04-12 19:52:20', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-04-12 22:52:20', '2018-04-12 19:52:20', '', 60, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-04-12 22:54:07', '2018-04-12 19:54:07', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'publish', 'open', 'open', '', 'design-is-the-method-of-putting-form-and-content-together-3', '', '', '2018-04-12 22:54:07', '2018-04-12 19:54:07', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=62', 0, 'post', '', 0),
(63, 1, '2018-04-12 22:54:07', '2018-04-12 19:54:07', 'Sed ut perspiciatis unde omnis iste natus error sit lao hoksi voluptatem lios mukatu accusantium doloremq doisa nojilaudan tium, totam rem aperiam, uni eaque ipsa quae ab cok illo inven tore siva.', 'Design is the method of putting form and content together.', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-04-12 22:54:07', '2018-04-12 19:54:07', '', 62, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/12/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-04-12 23:18:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-12 23:18:14', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=64', 0, 'post', '', 0),
(65, 1, '2018-04-12 23:39:04', '2018-04-12 20:39:04', '', 'brooke-lark-175644', '', 'inherit', 'open', 'closed', '', 'brooke-lark-175644', '', '', '2018-04-12 23:39:04', '2018-04-12 20:39:04', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/brooke-lark-175644.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2018-04-13 22:06:23', '2018-04-13 19:06:23', '<p>237 Church St, San Francisco,<br> CA 94114, USA</p>\r\n<a href=\"mailto:\">nazmulhasanjingar@gmail.com</a>', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2018-04-13 22:06:23', '2018-04-13 19:06:23', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=66', 0, 'post', '', 0),
(67, 1, '2018-04-13 22:06:23', '2018-04-13 19:06:23', '<p>237 Church St, San Francisco,<br> CA 94114, USA</p>\r\n<a href=\"mailto:\">nazmulhasanjingar@gmail.com</a>', 'Contact', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-04-13 22:06:23', '2018-04-13 19:06:23', '', 66, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/13/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-04-14 13:37:29', '2018-04-14 10:37:29', '', 'Instagram', '', 'publish', 'open', 'open', '', 'instagram', '', '', '2018-04-14 13:37:29', '2018-04-14 10:37:29', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=68', 0, 'post', '', 0),
(69, 1, '2018-04-14 13:33:09', '2018-04-14 10:33:09', '', 'inst1', '', 'inherit', 'open', 'closed', '', 'inst1', '', '', '2018-04-14 13:33:09', '2018-04-14 10:33:09', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-04-14 13:33:10', '2018-04-14 10:33:10', '', 'inst2', '', 'inherit', 'open', 'closed', '', 'inst2', '', '', '2018-04-14 13:33:10', '2018-04-14 10:33:10', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-04-14 13:33:12', '2018-04-14 10:33:12', '', 'inst3', '', 'inherit', 'open', 'closed', '', 'inst3', '', '', '2018-04-14 13:33:12', '2018-04-14 10:33:12', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-04-14 13:33:13', '2018-04-14 10:33:13', '', 'inst4', '', 'inherit', 'open', 'closed', '', 'inst4', '', '', '2018-04-14 13:33:13', '2018-04-14 10:33:13', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst4.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-04-14 13:33:14', '2018-04-14 10:33:14', '', 'inst5', '', 'inherit', 'open', 'closed', '', 'inst5', '', '', '2018-04-14 13:33:14', '2018-04-14 10:33:14', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst5.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-04-14 13:33:16', '2018-04-14 10:33:16', '', 'inst6', '', 'inherit', 'open', 'closed', '', 'inst6', '', '', '2018-04-14 13:33:16', '2018-04-14 10:33:16', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/wp-content/uploads/2018/04/inst6.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-04-14 13:37:29', '2018-04-14 10:37:29', '', 'Instagram', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-04-14 13:37:29', '2018-04-14 10:37:29', '', 68, 'http://127.0.0.1/edsa-project-cms/photography/2018/04/14/68-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-04-14 13:37:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-14 13:37:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/edsa-project-cms/photography/?p=76', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'MainMenu', 'mainmenu', 0),
(3, 'About MySelf', 'about', 0),
(4, 'What I Do?', 'whatido', 0),
(5, 'Happy Clients', 'happy-clients', 0),
(6, 'Portfolio', 'portfolio', 0),
(7, 'Blog', 'blog', 0),
(8, 'Life style', 'life-style', 0),
(9, 'Fashion', 'fashion', 0),
(10, 'Portraits', 'portraits', 0),
(11, 'Let\'s work?', 'lets-work', 0),
(12, 'Footer', 'footer', 0),
(13, 'Instagram Update', 'instagram', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(31, 4, 0),
(20, 4, 0),
(26, 4, 0),
(35, 1, 0),
(33, 4, 0),
(37, 5, 0),
(46, 6, 0),
(55, 8, 0),
(55, 7, 0),
(60, 7, 0),
(60, 9, 0),
(62, 7, 0),
(62, 10, 0),
(66, 12, 0),
(68, 13, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Hey, thanks for stopping by. My name’s Dakota Jhonson junior and I’m a briliant Art Director and pro Photographer based in the San Francisco where I make cool things for agencies and brands around globe. Mentas is loaded with useful features, each one with its own meaningful purpose. We listen to our users and integrate their feature requests on a regular basis. If you like my work then please do not  hesitate to reach out.', 0, 0),
(4, 4, 'category', '', 3, 3),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', 'The point of using Lorem Ipsum is that it has a non  more-or-less  dik sonormal distri bution of letters, as cliper opposed. a closer look to our fully furnished and beautiful demos, which can be use easily On this find website you can find some pictures I\'ve taken during my travel. a cloto our fully furnished and so beautful demos, which can be use.', 0, 1),
(7, 7, 'category', 'The point of using Lorem Ipsum is that it has a non  more-or-less  normal distri bution of letters, as cliper opposed. a closer look to our fully', 0, 3),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"1e10fae780ecbfbb486d955e0052b97f8a9a05f21cfcbf8826d1000044f3e9e6\";a:4:{s:10:\"expiration\";i:1523725129;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:142:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 YaBrowser/18.2.0.284 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1523552329;}s:64:\"5e292bf31a1b54f8dfb6b9d811581f091627df28463c06a6e2c3df2fa2d51305\";a:4:{s:10:\"expiration\";i:1523818469;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:142:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 YaBrowser/18.2.0.284 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1523645669;}s:64:\"c9cd2097fad45bd2a85cf48094a8df61c8c968fee47f86401d37ab15f4ae063d\";a:4:{s:10:\"expiration\";i:1523874122;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:142:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 YaBrowser/18.2.0.284 Yowser/2.5 Safari/537.36\";s:5:\"login\";i:1523701322;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&imgsize=full'),
(20, 1, 'wp_user-settings-time', '1523646380'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(27, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:65:\"submitdiv,categorydiv,tagsdiv-post_tag,pageparentdiv,postimagediv\";s:6:\"normal\";s:90:\"metaimage_meta_box,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_post', '2'),
(29, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:0:\"\";}');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BufW29zQgY170X9XUp3IT9eLcDoWbv0', 'admin', 'dimkasklyar@mail.ru', '', '2018-04-10 18:10:36', '', 0, 'admin');

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
