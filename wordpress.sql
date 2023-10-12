-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Oct 12, 2023 at 07:49 AM
-- Server version: 10.4.30-MariaDB-1:10.4.30+maria~ubu2004-log
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-06 02:03:25', '2023-10-06 02:03:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Oizumi WP Sample', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'daniel.oizumi@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'oizumi', 'yes'),
(41, 'stylesheet', 'oizumi', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '105', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1712109805', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1697097806;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1697118621;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697119406;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697161821;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697161822;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697162606;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697249006;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1697519278;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(120, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:56:\"/var/www/html/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:60:\"/var/www/html/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:52:\"/var/www/html/wp-includes/blocks/archives/editor.css\";i:3;s:56:\"/var/www/html/wp-includes/blocks/archives/editor.min.css\";i:4;s:55:\"/var/www/html/wp-includes/blocks/archives/style-rtl.css\";i:5;s:59:\"/var/www/html/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:51:\"/var/www/html/wp-includes/blocks/archives/style.css\";i:7;s:55:\"/var/www/html/wp-includes/blocks/archives/style.min.css\";i:8;s:53:\"/var/www/html/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:57:\"/var/www/html/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:49:\"/var/www/html/wp-includes/blocks/audio/editor.css\";i:11;s:53:\"/var/www/html/wp-includes/blocks/audio/editor.min.css\";i:12;s:52:\"/var/www/html/wp-includes/blocks/audio/style-rtl.css\";i:13;s:56:\"/var/www/html/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:48:\"/var/www/html/wp-includes/blocks/audio/style.css\";i:15;s:52:\"/var/www/html/wp-includes/blocks/audio/style.min.css\";i:16;s:52:\"/var/www/html/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:56:\"/var/www/html/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:48:\"/var/www/html/wp-includes/blocks/audio/theme.css\";i:19;s:52:\"/var/www/html/wp-includes/blocks/audio/theme.min.css\";i:20;s:54:\"/var/www/html/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:58:\"/var/www/html/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:50:\"/var/www/html/wp-includes/blocks/avatar/editor.css\";i:23;s:54:\"/var/www/html/wp-includes/blocks/avatar/editor.min.css\";i:24;s:53:\"/var/www/html/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:57:\"/var/www/html/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:49:\"/var/www/html/wp-includes/blocks/avatar/style.css\";i:27;s:53:\"/var/www/html/wp-includes/blocks/avatar/style.min.css\";i:28;s:53:\"/var/www/html/wp-includes/blocks/block/editor-rtl.css\";i:29;s:57:\"/var/www/html/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:49:\"/var/www/html/wp-includes/blocks/block/editor.css\";i:31;s:53:\"/var/www/html/wp-includes/blocks/block/editor.min.css\";i:32;s:54:\"/var/www/html/wp-includes/blocks/button/editor-rtl.css\";i:33;s:58:\"/var/www/html/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:50:\"/var/www/html/wp-includes/blocks/button/editor.css\";i:35;s:54:\"/var/www/html/wp-includes/blocks/button/editor.min.css\";i:36;s:53:\"/var/www/html/wp-includes/blocks/button/style-rtl.css\";i:37;s:57:\"/var/www/html/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:49:\"/var/www/html/wp-includes/blocks/button/style.css\";i:39;s:53:\"/var/www/html/wp-includes/blocks/button/style.min.css\";i:40;s:55:\"/var/www/html/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:59:\"/var/www/html/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:51:\"/var/www/html/wp-includes/blocks/buttons/editor.css\";i:43;s:55:\"/var/www/html/wp-includes/blocks/buttons/editor.min.css\";i:44;s:54:\"/var/www/html/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:58:\"/var/www/html/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:50:\"/var/www/html/wp-includes/blocks/buttons/style.css\";i:47;s:54:\"/var/www/html/wp-includes/blocks/buttons/style.min.css\";i:48;s:55:\"/var/www/html/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:59:\"/var/www/html/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:51:\"/var/www/html/wp-includes/blocks/calendar/style.css\";i:51;s:55:\"/var/www/html/wp-includes/blocks/calendar/style.min.css\";i:52;s:58:\"/var/www/html/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:62:\"/var/www/html/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:54:\"/var/www/html/wp-includes/blocks/categories/editor.css\";i:55;s:58:\"/var/www/html/wp-includes/blocks/categories/editor.min.css\";i:56;s:57:\"/var/www/html/wp-includes/blocks/categories/style-rtl.css\";i:57;s:61:\"/var/www/html/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:53:\"/var/www/html/wp-includes/blocks/categories/style.css\";i:59;s:57:\"/var/www/html/wp-includes/blocks/categories/style.min.css\";i:60;s:52:\"/var/www/html/wp-includes/blocks/code/editor-rtl.css\";i:61;s:56:\"/var/www/html/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:48:\"/var/www/html/wp-includes/blocks/code/editor.css\";i:63;s:52:\"/var/www/html/wp-includes/blocks/code/editor.min.css\";i:64;s:51:\"/var/www/html/wp-includes/blocks/code/style-rtl.css\";i:65;s:55:\"/var/www/html/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:47:\"/var/www/html/wp-includes/blocks/code/style.css\";i:67;s:51:\"/var/www/html/wp-includes/blocks/code/style.min.css\";i:68;s:51:\"/var/www/html/wp-includes/blocks/code/theme-rtl.css\";i:69;s:55:\"/var/www/html/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:47:\"/var/www/html/wp-includes/blocks/code/theme.css\";i:71;s:51:\"/var/www/html/wp-includes/blocks/code/theme.min.css\";i:72;s:55:\"/var/www/html/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:59:\"/var/www/html/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:51:\"/var/www/html/wp-includes/blocks/columns/editor.css\";i:75;s:55:\"/var/www/html/wp-includes/blocks/columns/editor.min.css\";i:76;s:54:\"/var/www/html/wp-includes/blocks/columns/style-rtl.css\";i:77;s:58:\"/var/www/html/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:50:\"/var/www/html/wp-includes/blocks/columns/style.css\";i:79;s:54:\"/var/www/html/wp-includes/blocks/columns/style.min.css\";i:80;s:62:\"/var/www/html/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:66:\"/var/www/html/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:58:\"/var/www/html/wp-includes/blocks/comment-content/style.css\";i:83;s:62:\"/var/www/html/wp-includes/blocks/comment-content/style.min.css\";i:84;s:63:\"/var/www/html/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:67:\"/var/www/html/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:59:\"/var/www/html/wp-includes/blocks/comment-template/style.css\";i:87;s:63:\"/var/www/html/wp-includes/blocks/comment-template/style.min.css\";i:88;s:75:\"/var/www/html/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:79:\"/var/www/html/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:71:\"/var/www/html/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:75:\"/var/www/html/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:67:\"/var/www/html/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:71:\"/var/www/html/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:63:\"/var/www/html/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:67:\"/var/www/html/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:66:\"/var/www/html/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:70:\"/var/www/html/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:62:\"/var/www/html/wp-includes/blocks/comments-pagination/style.css\";i:99;s:66:\"/var/www/html/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:62:\"/var/www/html/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:66:\"/var/www/html/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:58:\"/var/www/html/wp-includes/blocks/comments-title/editor.css\";i:103;s:62:\"/var/www/html/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:56:\"/var/www/html/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:60:\"/var/www/html/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:52:\"/var/www/html/wp-includes/blocks/comments/editor.css\";i:107;s:56:\"/var/www/html/wp-includes/blocks/comments/editor.min.css\";i:108;s:55:\"/var/www/html/wp-includes/blocks/comments/style-rtl.css\";i:109;s:59:\"/var/www/html/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:51:\"/var/www/html/wp-includes/blocks/comments/style.css\";i:111;s:55:\"/var/www/html/wp-includes/blocks/comments/style.min.css\";i:112;s:53:\"/var/www/html/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:57:\"/var/www/html/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:49:\"/var/www/html/wp-includes/blocks/cover/editor.css\";i:115;s:53:\"/var/www/html/wp-includes/blocks/cover/editor.min.css\";i:116;s:52:\"/var/www/html/wp-includes/blocks/cover/style-rtl.css\";i:117;s:56:\"/var/www/html/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:48:\"/var/www/html/wp-includes/blocks/cover/style.css\";i:119;s:52:\"/var/www/html/wp-includes/blocks/cover/style.min.css\";i:120;s:55:\"/var/www/html/wp-includes/blocks/details/editor-rtl.css\";i:121;s:59:\"/var/www/html/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:51:\"/var/www/html/wp-includes/blocks/details/editor.css\";i:123;s:55:\"/var/www/html/wp-includes/blocks/details/editor.min.css\";i:124;s:54:\"/var/www/html/wp-includes/blocks/details/style-rtl.css\";i:125;s:58:\"/var/www/html/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:50:\"/var/www/html/wp-includes/blocks/details/style.css\";i:127;s:54:\"/var/www/html/wp-includes/blocks/details/style.min.css\";i:128;s:53:\"/var/www/html/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:57:\"/var/www/html/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:49:\"/var/www/html/wp-includes/blocks/embed/editor.css\";i:131;s:53:\"/var/www/html/wp-includes/blocks/embed/editor.min.css\";i:132;s:52:\"/var/www/html/wp-includes/blocks/embed/style-rtl.css\";i:133;s:56:\"/var/www/html/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:48:\"/var/www/html/wp-includes/blocks/embed/style.css\";i:135;s:52:\"/var/www/html/wp-includes/blocks/embed/style.min.css\";i:136;s:52:\"/var/www/html/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:56:\"/var/www/html/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:48:\"/var/www/html/wp-includes/blocks/embed/theme.css\";i:139;s:52:\"/var/www/html/wp-includes/blocks/embed/theme.min.css\";i:140;s:52:\"/var/www/html/wp-includes/blocks/file/editor-rtl.css\";i:141;s:56:\"/var/www/html/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:48:\"/var/www/html/wp-includes/blocks/file/editor.css\";i:143;s:52:\"/var/www/html/wp-includes/blocks/file/editor.min.css\";i:144;s:51:\"/var/www/html/wp-includes/blocks/file/style-rtl.css\";i:145;s:55:\"/var/www/html/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:47:\"/var/www/html/wp-includes/blocks/file/style.css\";i:147;s:51:\"/var/www/html/wp-includes/blocks/file/style.min.css\";i:148;s:56:\"/var/www/html/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:60:\"/var/www/html/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:52:\"/var/www/html/wp-includes/blocks/footnotes/style.css\";i:151;s:56:\"/var/www/html/wp-includes/blocks/footnotes/style.min.css\";i:152;s:56:\"/var/www/html/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:60:\"/var/www/html/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:52:\"/var/www/html/wp-includes/blocks/freeform/editor.css\";i:155;s:56:\"/var/www/html/wp-includes/blocks/freeform/editor.min.css\";i:156;s:55:\"/var/www/html/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:59:\"/var/www/html/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:51:\"/var/www/html/wp-includes/blocks/gallery/editor.css\";i:159;s:55:\"/var/www/html/wp-includes/blocks/gallery/editor.min.css\";i:160;s:54:\"/var/www/html/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:58:\"/var/www/html/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:50:\"/var/www/html/wp-includes/blocks/gallery/style.css\";i:163;s:54:\"/var/www/html/wp-includes/blocks/gallery/style.min.css\";i:164;s:54:\"/var/www/html/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:58:\"/var/www/html/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:50:\"/var/www/html/wp-includes/blocks/gallery/theme.css\";i:167;s:54:\"/var/www/html/wp-includes/blocks/gallery/theme.min.css\";i:168;s:53:\"/var/www/html/wp-includes/blocks/group/editor-rtl.css\";i:169;s:57:\"/var/www/html/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:49:\"/var/www/html/wp-includes/blocks/group/editor.css\";i:171;s:53:\"/var/www/html/wp-includes/blocks/group/editor.min.css\";i:172;s:52:\"/var/www/html/wp-includes/blocks/group/style-rtl.css\";i:173;s:56:\"/var/www/html/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:48:\"/var/www/html/wp-includes/blocks/group/style.css\";i:175;s:52:\"/var/www/html/wp-includes/blocks/group/style.min.css\";i:176;s:52:\"/var/www/html/wp-includes/blocks/group/theme-rtl.css\";i:177;s:56:\"/var/www/html/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:48:\"/var/www/html/wp-includes/blocks/group/theme.css\";i:179;s:52:\"/var/www/html/wp-includes/blocks/group/theme.min.css\";i:180;s:54:\"/var/www/html/wp-includes/blocks/heading/style-rtl.css\";i:181;s:58:\"/var/www/html/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:50:\"/var/www/html/wp-includes/blocks/heading/style.css\";i:183;s:54:\"/var/www/html/wp-includes/blocks/heading/style.min.css\";i:184;s:52:\"/var/www/html/wp-includes/blocks/html/editor-rtl.css\";i:185;s:56:\"/var/www/html/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:48:\"/var/www/html/wp-includes/blocks/html/editor.css\";i:187;s:52:\"/var/www/html/wp-includes/blocks/html/editor.min.css\";i:188;s:53:\"/var/www/html/wp-includes/blocks/image/editor-rtl.css\";i:189;s:57:\"/var/www/html/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:49:\"/var/www/html/wp-includes/blocks/image/editor.css\";i:191;s:53:\"/var/www/html/wp-includes/blocks/image/editor.min.css\";i:192;s:52:\"/var/www/html/wp-includes/blocks/image/style-rtl.css\";i:193;s:56:\"/var/www/html/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:48:\"/var/www/html/wp-includes/blocks/image/style.css\";i:195;s:52:\"/var/www/html/wp-includes/blocks/image/style.min.css\";i:196;s:52:\"/var/www/html/wp-includes/blocks/image/theme-rtl.css\";i:197;s:56:\"/var/www/html/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:48:\"/var/www/html/wp-includes/blocks/image/theme.css\";i:199;s:52:\"/var/www/html/wp-includes/blocks/image/theme.min.css\";i:200;s:62:\"/var/www/html/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:66:\"/var/www/html/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:58:\"/var/www/html/wp-includes/blocks/latest-comments/style.css\";i:203;s:62:\"/var/www/html/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:60:\"/var/www/html/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:64:\"/var/www/html/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:56:\"/var/www/html/wp-includes/blocks/latest-posts/editor.css\";i:207;s:60:\"/var/www/html/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:59:\"/var/www/html/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:63:\"/var/www/html/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:55:\"/var/www/html/wp-includes/blocks/latest-posts/style.css\";i:211;s:59:\"/var/www/html/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:51:\"/var/www/html/wp-includes/blocks/list/style-rtl.css\";i:213;s:55:\"/var/www/html/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:47:\"/var/www/html/wp-includes/blocks/list/style.css\";i:215;s:51:\"/var/www/html/wp-includes/blocks/list/style.min.css\";i:216;s:58:\"/var/www/html/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:62:\"/var/www/html/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:54:\"/var/www/html/wp-includes/blocks/media-text/editor.css\";i:219;s:58:\"/var/www/html/wp-includes/blocks/media-text/editor.min.css\";i:220;s:57:\"/var/www/html/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:61:\"/var/www/html/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:53:\"/var/www/html/wp-includes/blocks/media-text/style.css\";i:223;s:57:\"/var/www/html/wp-includes/blocks/media-text/style.min.css\";i:224;s:52:\"/var/www/html/wp-includes/blocks/more/editor-rtl.css\";i:225;s:56:\"/var/www/html/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:48:\"/var/www/html/wp-includes/blocks/more/editor.css\";i:227;s:52:\"/var/www/html/wp-includes/blocks/more/editor.min.css\";i:228;s:63:\"/var/www/html/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:67:\"/var/www/html/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:59:\"/var/www/html/wp-includes/blocks/navigation-link/editor.css\";i:231;s:63:\"/var/www/html/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:62:\"/var/www/html/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:66:\"/var/www/html/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:58:\"/var/www/html/wp-includes/blocks/navigation-link/style.css\";i:235;s:62:\"/var/www/html/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:66:\"/var/www/html/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:70:\"/var/www/html/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:62:\"/var/www/html/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:66:\"/var/www/html/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:58:\"/var/www/html/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:62:\"/var/www/html/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:54:\"/var/www/html/wp-includes/blocks/navigation/editor.css\";i:243;s:58:\"/var/www/html/wp-includes/blocks/navigation/editor.min.css\";i:244;s:57:\"/var/www/html/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:61:\"/var/www/html/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:53:\"/var/www/html/wp-includes/blocks/navigation/style.css\";i:247;s:57:\"/var/www/html/wp-includes/blocks/navigation/style.min.css\";i:248;s:56:\"/var/www/html/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:60:\"/var/www/html/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:52:\"/var/www/html/wp-includes/blocks/nextpage/editor.css\";i:251;s:56:\"/var/www/html/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:57:\"/var/www/html/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:61:\"/var/www/html/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:53:\"/var/www/html/wp-includes/blocks/page-list/editor.css\";i:255;s:57:\"/var/www/html/wp-includes/blocks/page-list/editor.min.css\";i:256;s:56:\"/var/www/html/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:60:\"/var/www/html/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:52:\"/var/www/html/wp-includes/blocks/page-list/style.css\";i:259;s:56:\"/var/www/html/wp-includes/blocks/page-list/style.min.css\";i:260;s:57:\"/var/www/html/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:61:\"/var/www/html/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:53:\"/var/www/html/wp-includes/blocks/paragraph/editor.css\";i:263;s:57:\"/var/www/html/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:56:\"/var/www/html/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:60:\"/var/www/html/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:52:\"/var/www/html/wp-includes/blocks/paragraph/style.css\";i:267;s:56:\"/var/www/html/wp-includes/blocks/paragraph/style.min.css\";i:268;s:58:\"/var/www/html/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:62:\"/var/www/html/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:54:\"/var/www/html/wp-includes/blocks/post-author/style.css\";i:271;s:58:\"/var/www/html/wp-includes/blocks/post-author/style.min.css\";i:272;s:66:\"/var/www/html/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:70:\"/var/www/html/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:62:\"/var/www/html/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:66:\"/var/www/html/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:65:\"/var/www/html/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:69:\"/var/www/html/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:61:\"/var/www/html/wp-includes/blocks/post-comments-form/style.css\";i:279;s:65:\"/var/www/html/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:56:\"/var/www/html/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:60:\"/var/www/html/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:52:\"/var/www/html/wp-includes/blocks/post-date/style.css\";i:283;s:56:\"/var/www/html/wp-includes/blocks/post-date/style.min.css\";i:284;s:60:\"/var/www/html/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:64:\"/var/www/html/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:56:\"/var/www/html/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:60:\"/var/www/html/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:59:\"/var/www/html/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:63:\"/var/www/html/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:55:\"/var/www/html/wp-includes/blocks/post-excerpt/style.css\";i:291;s:59:\"/var/www/html/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:67:\"/var/www/html/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:71:\"/var/www/html/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:63:\"/var/www/html/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:67:\"/var/www/html/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:66:\"/var/www/html/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:70:\"/var/www/html/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:62:\"/var/www/html/wp-includes/blocks/post-featured-image/style.css\";i:299;s:66:\"/var/www/html/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:67:\"/var/www/html/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:71:\"/var/www/html/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:63:\"/var/www/html/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:67:\"/var/www/html/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:61:\"/var/www/html/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:65:\"/var/www/html/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:57:\"/var/www/html/wp-includes/blocks/post-template/editor.css\";i:307;s:61:\"/var/www/html/wp-includes/blocks/post-template/editor.min.css\";i:308;s:60:\"/var/www/html/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:64:\"/var/www/html/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:56:\"/var/www/html/wp-includes/blocks/post-template/style.css\";i:311;s:60:\"/var/www/html/wp-includes/blocks/post-template/style.min.css\";i:312;s:57:\"/var/www/html/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:61:\"/var/www/html/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:53:\"/var/www/html/wp-includes/blocks/post-terms/style.css\";i:315;s:57:\"/var/www/html/wp-includes/blocks/post-terms/style.min.css\";i:316;s:57:\"/var/www/html/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:61:\"/var/www/html/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:53:\"/var/www/html/wp-includes/blocks/post-title/style.css\";i:319;s:57:\"/var/www/html/wp-includes/blocks/post-title/style.min.css\";i:320;s:59:\"/var/www/html/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:63:\"/var/www/html/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:55:\"/var/www/html/wp-includes/blocks/preformatted/style.css\";i:323;s:59:\"/var/www/html/wp-includes/blocks/preformatted/style.min.css\";i:324;s:57:\"/var/www/html/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:61:\"/var/www/html/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:53:\"/var/www/html/wp-includes/blocks/pullquote/editor.css\";i:327;s:57:\"/var/www/html/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:56:\"/var/www/html/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:60:\"/var/www/html/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:52:\"/var/www/html/wp-includes/blocks/pullquote/style.css\";i:331;s:56:\"/var/www/html/wp-includes/blocks/pullquote/style.min.css\";i:332;s:56:\"/var/www/html/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:60:\"/var/www/html/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:52:\"/var/www/html/wp-includes/blocks/pullquote/theme.css\";i:335;s:56:\"/var/www/html/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:72:\"/var/www/html/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:76:\"/var/www/html/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:68:\"/var/www/html/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:72:\"/var/www/html/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:64:\"/var/www/html/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:68:\"/var/www/html/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:60:\"/var/www/html/wp-includes/blocks/query-pagination/editor.css\";i:343;s:64:\"/var/www/html/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:63:\"/var/www/html/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:67:\"/var/www/html/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:59:\"/var/www/html/wp-includes/blocks/query-pagination/style.css\";i:347;s:63:\"/var/www/html/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:58:\"/var/www/html/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:62:\"/var/www/html/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:54:\"/var/www/html/wp-includes/blocks/query-title/style.css\";i:351;s:58:\"/var/www/html/wp-includes/blocks/query-title/style.min.css\";i:352;s:53:\"/var/www/html/wp-includes/blocks/query/editor-rtl.css\";i:353;s:57:\"/var/www/html/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:49:\"/var/www/html/wp-includes/blocks/query/editor.css\";i:355;s:53:\"/var/www/html/wp-includes/blocks/query/editor.min.css\";i:356;s:52:\"/var/www/html/wp-includes/blocks/quote/style-rtl.css\";i:357;s:56:\"/var/www/html/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:48:\"/var/www/html/wp-includes/blocks/quote/style.css\";i:359;s:52:\"/var/www/html/wp-includes/blocks/quote/style.min.css\";i:360;s:52:\"/var/www/html/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:56:\"/var/www/html/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:48:\"/var/www/html/wp-includes/blocks/quote/theme.css\";i:363;s:52:\"/var/www/html/wp-includes/blocks/quote/theme.min.css\";i:364;s:56:\"/var/www/html/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:60:\"/var/www/html/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:52:\"/var/www/html/wp-includes/blocks/read-more/style.css\";i:367;s:56:\"/var/www/html/wp-includes/blocks/read-more/style.min.css\";i:368;s:51:\"/var/www/html/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:55:\"/var/www/html/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:47:\"/var/www/html/wp-includes/blocks/rss/editor.css\";i:371;s:51:\"/var/www/html/wp-includes/blocks/rss/editor.min.css\";i:372;s:50:\"/var/www/html/wp-includes/blocks/rss/style-rtl.css\";i:373;s:54:\"/var/www/html/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:46:\"/var/www/html/wp-includes/blocks/rss/style.css\";i:375;s:50:\"/var/www/html/wp-includes/blocks/rss/style.min.css\";i:376;s:54:\"/var/www/html/wp-includes/blocks/search/editor-rtl.css\";i:377;s:58:\"/var/www/html/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:50:\"/var/www/html/wp-includes/blocks/search/editor.css\";i:379;s:54:\"/var/www/html/wp-includes/blocks/search/editor.min.css\";i:380;s:53:\"/var/www/html/wp-includes/blocks/search/style-rtl.css\";i:381;s:57:\"/var/www/html/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:49:\"/var/www/html/wp-includes/blocks/search/style.css\";i:383;s:53:\"/var/www/html/wp-includes/blocks/search/style.min.css\";i:384;s:53:\"/var/www/html/wp-includes/blocks/search/theme-rtl.css\";i:385;s:57:\"/var/www/html/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:49:\"/var/www/html/wp-includes/blocks/search/theme.css\";i:387;s:53:\"/var/www/html/wp-includes/blocks/search/theme.min.css\";i:388;s:57:\"/var/www/html/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:61:\"/var/www/html/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:53:\"/var/www/html/wp-includes/blocks/separator/editor.css\";i:391;s:57:\"/var/www/html/wp-includes/blocks/separator/editor.min.css\";i:392;s:56:\"/var/www/html/wp-includes/blocks/separator/style-rtl.css\";i:393;s:60:\"/var/www/html/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:52:\"/var/www/html/wp-includes/blocks/separator/style.css\";i:395;s:56:\"/var/www/html/wp-includes/blocks/separator/style.min.css\";i:396;s:56:\"/var/www/html/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:60:\"/var/www/html/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:52:\"/var/www/html/wp-includes/blocks/separator/theme.css\";i:399;s:56:\"/var/www/html/wp-includes/blocks/separator/theme.min.css\";i:400;s:57:\"/var/www/html/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:61:\"/var/www/html/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:53:\"/var/www/html/wp-includes/blocks/shortcode/editor.css\";i:403;s:57:\"/var/www/html/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:57:\"/var/www/html/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:61:\"/var/www/html/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:53:\"/var/www/html/wp-includes/blocks/site-logo/editor.css\";i:407;s:57:\"/var/www/html/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:56:\"/var/www/html/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:60:\"/var/www/html/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:52:\"/var/www/html/wp-includes/blocks/site-logo/style.css\";i:411;s:56:\"/var/www/html/wp-includes/blocks/site-logo/style.min.css\";i:412;s:60:\"/var/www/html/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:64:\"/var/www/html/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:56:\"/var/www/html/wp-includes/blocks/site-tagline/editor.css\";i:415;s:60:\"/var/www/html/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:58:\"/var/www/html/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:62:\"/var/www/html/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:54:\"/var/www/html/wp-includes/blocks/site-title/editor.css\";i:419;s:58:\"/var/www/html/wp-includes/blocks/site-title/editor.min.css\";i:420;s:57:\"/var/www/html/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:61:\"/var/www/html/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:53:\"/var/www/html/wp-includes/blocks/site-title/style.css\";i:423;s:57:\"/var/www/html/wp-includes/blocks/site-title/style.min.css\";i:424;s:59:\"/var/www/html/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:63:\"/var/www/html/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:55:\"/var/www/html/wp-includes/blocks/social-link/editor.css\";i:427;s:59:\"/var/www/html/wp-includes/blocks/social-link/editor.min.css\";i:428;s:60:\"/var/www/html/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:64:\"/var/www/html/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:56:\"/var/www/html/wp-includes/blocks/social-links/editor.css\";i:431;s:60:\"/var/www/html/wp-includes/blocks/social-links/editor.min.css\";i:432;s:59:\"/var/www/html/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:63:\"/var/www/html/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:55:\"/var/www/html/wp-includes/blocks/social-links/style.css\";i:435;s:59:\"/var/www/html/wp-includes/blocks/social-links/style.min.css\";i:436;s:54:\"/var/www/html/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:58:\"/var/www/html/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:50:\"/var/www/html/wp-includes/blocks/spacer/editor.css\";i:439;s:54:\"/var/www/html/wp-includes/blocks/spacer/editor.min.css\";i:440;s:53:\"/var/www/html/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:57:\"/var/www/html/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:49:\"/var/www/html/wp-includes/blocks/spacer/style.css\";i:443;s:53:\"/var/www/html/wp-includes/blocks/spacer/style.min.css\";i:444;s:53:\"/var/www/html/wp-includes/blocks/table/editor-rtl.css\";i:445;s:57:\"/var/www/html/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:49:\"/var/www/html/wp-includes/blocks/table/editor.css\";i:447;s:53:\"/var/www/html/wp-includes/blocks/table/editor.min.css\";i:448;s:52:\"/var/www/html/wp-includes/blocks/table/style-rtl.css\";i:449;s:56:\"/var/www/html/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:48:\"/var/www/html/wp-includes/blocks/table/style.css\";i:451;s:52:\"/var/www/html/wp-includes/blocks/table/style.min.css\";i:452;s:52:\"/var/www/html/wp-includes/blocks/table/theme-rtl.css\";i:453;s:56:\"/var/www/html/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:48:\"/var/www/html/wp-includes/blocks/table/theme.css\";i:455;s:52:\"/var/www/html/wp-includes/blocks/table/theme.min.css\";i:456;s:56:\"/var/www/html/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:60:\"/var/www/html/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:52:\"/var/www/html/wp-includes/blocks/tag-cloud/style.css\";i:459;s:56:\"/var/www/html/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:61:\"/var/www/html/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:65:\"/var/www/html/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:57:\"/var/www/html/wp-includes/blocks/template-part/editor.css\";i:463;s:61:\"/var/www/html/wp-includes/blocks/template-part/editor.min.css\";i:464;s:60:\"/var/www/html/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:64:\"/var/www/html/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:56:\"/var/www/html/wp-includes/blocks/template-part/theme.css\";i:467;s:60:\"/var/www/html/wp-includes/blocks/template-part/theme.min.css\";i:468;s:63:\"/var/www/html/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:67:\"/var/www/html/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:59:\"/var/www/html/wp-includes/blocks/term-description/style.css\";i:471;s:63:\"/var/www/html/wp-includes/blocks/term-description/style.min.css\";i:472;s:60:\"/var/www/html/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:64:\"/var/www/html/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:56:\"/var/www/html/wp-includes/blocks/text-columns/editor.css\";i:475;s:60:\"/var/www/html/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:59:\"/var/www/html/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:63:\"/var/www/html/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:55:\"/var/www/html/wp-includes/blocks/text-columns/style.css\";i:479;s:59:\"/var/www/html/wp-includes/blocks/text-columns/style.min.css\";i:480;s:52:\"/var/www/html/wp-includes/blocks/verse/style-rtl.css\";i:481;s:56:\"/var/www/html/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:48:\"/var/www/html/wp-includes/blocks/verse/style.css\";i:483;s:52:\"/var/www/html/wp-includes/blocks/verse/style.min.css\";i:484;s:53:\"/var/www/html/wp-includes/blocks/video/editor-rtl.css\";i:485;s:57:\"/var/www/html/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:49:\"/var/www/html/wp-includes/blocks/video/editor.css\";i:487;s:53:\"/var/www/html/wp-includes/blocks/video/editor.min.css\";i:488;s:52:\"/var/www/html/wp-includes/blocks/video/style-rtl.css\";i:489;s:56:\"/var/www/html/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:48:\"/var/www/html/wp-includes/blocks/video/style.css\";i:491;s:52:\"/var/www/html/wp-includes/blocks/video/style.min.css\";i:492;s:52:\"/var/www/html/wp-includes/blocks/video/theme-rtl.css\";i:493;s:56:\"/var/www/html/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:48:\"/var/www/html/wp-includes/blocks/video/theme.css\";i:495;s:52:\"/var/www/html/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:0:{}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.1\";s:7:\"version\";s:5:\"6.3.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697076722;s:15:\"version_checked\";s:5:\"6.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(127, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1696902652;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697077551;s:7:\"checked\";a:1:{s:6:\"oizumi\";s:5:\"1.1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(136, '_site_transient_timeout_php_check_8fa879a52057541fd4d02aa80888ea2b', '1697507417', 'no'),
(137, '_site_transient_php_check_8fa879a52057541fd4d02aa80888ea2b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(138, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(139, '_site_transient_timeout_browser_22210ca73bf1af2ec2eace74a96ee356', '1697507422', 'no'),
(140, '_site_transient_browser_22210ca73bf1af2ec2eace74a96ee356', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"117.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(142, 'can_compress_scripts', '0', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'acf_version', '6.2.0', 'yes'),
(157, 'current_theme', 'Oizumi Theme', 'yes'),
(158, 'theme_mods_oizumi', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:10:\"header-nav\";i:2;s:10:\"footer-nav\";i:3;s:17:\"mobile-footer-nav\";i:4;s:9:\"links-nav\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(162, 'finished_updating_comment_type', '1', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(166, 'options_header_logo', '52', 'no'),
(167, '_options_header_logo', 'field_6523867bff67d', 'no'),
(168, 'options_social_links', '4', 'no'),
(169, '_options_social_links', 'field_65238538fbf57', 'no'),
(170, 'options_footer_content', 'RISK DISCLOSURE:*The services and information provided by The Bored Traders Club are not directed at citizens or residents in the USA. Additionally, they are not intended for distribution to or used by any individual in any jurisdiction where such distribution would be contrary to local law or regulation.', 'no'),
(171, '_options_footer_content', 'field_6523861821a0d', 'no'),
(172, 'options_social_links_0_image', '59', 'no'),
(173, '_options_social_links_0_image', 'field_65238551fbf58', 'no'),
(174, 'options_social_links_0_url', 'https://instagram.com', 'no'),
(175, '_options_social_links_0_url', 'field_65238587fbf59', 'no'),
(176, 'options_social_links_1_image', '62', 'no'),
(177, '_options_social_links_1_image', 'field_65238551fbf58', 'no'),
(178, 'options_social_links_1_url', 'https://x.com', 'no'),
(179, '_options_social_links_1_url', 'field_65238587fbf59', 'no'),
(180, 'options_social_links_2_image', '56', 'no'),
(181, '_options_social_links_2_image', 'field_65238551fbf58', 'no'),
(182, 'options_social_links_2_url', 'https://facebook.com', 'no'),
(183, '_options_social_links_2_url', 'field_65238587fbf59', 'no'),
(184, 'options_social_links_3_image', '60', 'no'),
(185, '_options_social_links_3_image', 'field_65238551fbf58', 'no'),
(186, 'options_social_links_3_url', 'https://linkedin.com', 'no'),
(187, '_options_social_links_3_url', 'field_65238587fbf59', 'no'),
(202, 'options_mobile_logo', '108', 'no'),
(203, '_options_mobile_logo', 'field_6523867bff67d', 'no'),
(204, 'options_desktop_logo', '116', 'no'),
(205, '_options_desktop_logo', 'field_6524dc718785d', 'no'),
(215, '_transient_timeout_acf_plugin_updates', '1697119414', 'no'),
(216, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.0\";}}', 'no'),
(289, '_site_transient_timeout_available_translations', '1697083748', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(290, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-06-18 08:25:23\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 11:57:36\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-26 18:08:30\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-08 21:42:14\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-11 14:11:39\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-09 09:04:37\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-11 10:23:38\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-19 11:54:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-08 09:49:50\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 17:22:10\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-18 08:19:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 17:22:24\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.3.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-08 09:52:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.3.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-28 11:25:18\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-07 10:32:51\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-28 15:57:23\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-28 15:58:51\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-03 07:13:00\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-03 07:25:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-20 08:57:43\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 18:46:52\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-04 16:53:05\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-31 02:13:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-22 13:44:03\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-26 01:50:26\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-08 22:41:08\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-29 11:14:24\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-29 13:15:12\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-29 15:42:01\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-13 12:53:57\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-26 13:43:14\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-08 17:24:46\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-09 07:20:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-07 11:10:27\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-05 16:40:26\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-06 09:35:55\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-01 09:12:30\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 12:18:05\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 13:19:20\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-13 00:53:29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-08 17:51:05\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-07 16:18:28\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.1/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-01 07:05:22\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 10:35:28\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 01:27:19\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-10 03:23:14\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-11 16:53:14\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 16:11:10\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-29 11:56:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.3.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-10 16:26:11\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 06:13:24\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-09-28 12:14:59\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.3.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-07 16:11:57\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 13:38:47\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-06 12:53:44\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 16:16:50\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 17:25:30\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-11 16:19:53\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.3.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-30 12:28:12\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-11 12:21:07\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.3.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 17:36:02\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-08-29 22:20:22\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-05 19:21:30\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.3.1\";s:7:\"updated\";s:19:\"2023-10-08 21:42:02\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.3.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(302, '_site_transient_timeout_theme_roots', '1697078523', 'no'),
(303, '_site_transient_theme_roots', 'a:1:{s:6:\"oizumi\";s:7:\"/themes\";}', 'no'),
(304, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697076723;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.2.0\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_menu_item_type', 'custom'),
(4, 6, '_menu_item_menu_item_parent', '0'),
(5, 6, '_menu_item_object_id', '6'),
(6, 6, '_menu_item_object', 'custom'),
(7, 6, '_menu_item_target', ''),
(8, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 6, '_menu_item_xfn', ''),
(10, 6, '_menu_item_url', '#'),
(21, 8, '_menu_item_type', 'custom'),
(22, 8, '_menu_item_menu_item_parent', '6'),
(23, 8, '_menu_item_object_id', '8'),
(24, 8, '_menu_item_object', 'custom'),
(25, 8, '_menu_item_target', ''),
(26, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 8, '_menu_item_xfn', ''),
(28, 8, '_menu_item_url', '#'),
(30, 9, '_menu_item_type', 'custom'),
(31, 9, '_menu_item_menu_item_parent', '6'),
(32, 9, '_menu_item_object_id', '9'),
(33, 9, '_menu_item_object', 'custom'),
(34, 9, '_menu_item_target', ''),
(35, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 9, '_menu_item_xfn', ''),
(37, 9, '_menu_item_url', '#'),
(39, 10, '_menu_item_type', 'custom'),
(40, 10, '_menu_item_menu_item_parent', '6'),
(41, 10, '_menu_item_object_id', '10'),
(42, 10, '_menu_item_object', 'custom'),
(43, 10, '_menu_item_target', ''),
(44, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 10, '_menu_item_xfn', ''),
(46, 10, '_menu_item_url', '#'),
(48, 11, '_menu_item_type', 'custom'),
(49, 11, '_menu_item_menu_item_parent', '0'),
(50, 11, '_menu_item_object_id', '11'),
(51, 11, '_menu_item_object', 'custom'),
(52, 11, '_menu_item_target', ''),
(53, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 11, '_menu_item_xfn', ''),
(55, 11, '_menu_item_url', '#'),
(57, 12, '_menu_item_type', 'custom'),
(58, 12, '_menu_item_menu_item_parent', '0'),
(59, 12, '_menu_item_object_id', '12'),
(60, 12, '_menu_item_object', 'custom'),
(61, 12, '_menu_item_target', ''),
(62, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 12, '_menu_item_xfn', ''),
(64, 12, '_menu_item_url', '#'),
(66, 13, '_menu_item_type', 'custom'),
(67, 13, '_menu_item_menu_item_parent', '0'),
(68, 13, '_menu_item_object_id', '13'),
(69, 13, '_menu_item_object', 'custom'),
(70, 13, '_menu_item_target', ''),
(71, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 13, '_menu_item_xfn', ''),
(73, 13, '_menu_item_url', '#'),
(75, 14, '_menu_item_type', 'custom'),
(76, 14, '_menu_item_menu_item_parent', '0'),
(77, 14, '_menu_item_object_id', '14'),
(78, 14, '_menu_item_object', 'custom'),
(79, 14, '_menu_item_target', ''),
(80, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 14, '_menu_item_xfn', ''),
(82, 14, '_menu_item_url', '#'),
(84, 15, '_menu_item_type', 'custom'),
(85, 15, '_menu_item_menu_item_parent', '21'),
(86, 15, '_menu_item_object_id', '15'),
(87, 15, '_menu_item_object', 'custom'),
(88, 15, '_menu_item_target', ''),
(89, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 15, '_menu_item_xfn', ''),
(91, 15, '_menu_item_url', '#'),
(93, 16, '_menu_item_type', 'custom'),
(94, 16, '_menu_item_menu_item_parent', '21'),
(95, 16, '_menu_item_object_id', '16'),
(96, 16, '_menu_item_object', 'custom'),
(97, 16, '_menu_item_target', ''),
(98, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 16, '_menu_item_xfn', ''),
(100, 16, '_menu_item_url', '#'),
(102, 17, '_menu_item_type', 'custom'),
(103, 17, '_menu_item_menu_item_parent', '21'),
(104, 17, '_menu_item_object_id', '17'),
(105, 17, '_menu_item_object', 'custom'),
(106, 17, '_menu_item_target', ''),
(107, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 17, '_menu_item_xfn', ''),
(109, 17, '_menu_item_url', '#'),
(111, 18, '_menu_item_type', 'custom'),
(112, 18, '_menu_item_menu_item_parent', '21'),
(113, 18, '_menu_item_object_id', '18'),
(114, 18, '_menu_item_object', 'custom'),
(115, 18, '_menu_item_target', ''),
(116, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 18, '_menu_item_xfn', ''),
(118, 18, '_menu_item_url', '#'),
(120, 19, '_menu_item_type', 'custom'),
(121, 19, '_menu_item_menu_item_parent', '21'),
(122, 19, '_menu_item_object_id', '19'),
(123, 19, '_menu_item_object', 'custom'),
(124, 19, '_menu_item_target', ''),
(125, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 19, '_menu_item_xfn', ''),
(127, 19, '_menu_item_url', '#'),
(129, 20, '_menu_item_type', 'custom'),
(130, 20, '_menu_item_menu_item_parent', '21'),
(131, 20, '_menu_item_object_id', '20'),
(132, 20, '_menu_item_object', 'custom'),
(133, 20, '_menu_item_target', ''),
(134, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 20, '_menu_item_xfn', ''),
(136, 20, '_menu_item_url', '#'),
(138, 21, '_menu_item_type', 'custom'),
(139, 21, '_menu_item_menu_item_parent', '0'),
(140, 21, '_menu_item_object_id', '21'),
(141, 21, '_menu_item_object', 'custom'),
(142, 21, '_menu_item_target', ''),
(143, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 21, '_menu_item_xfn', ''),
(145, 21, '_menu_item_url', '#'),
(147, 22, '_menu_item_type', 'custom'),
(148, 22, '_menu_item_menu_item_parent', '0'),
(149, 22, '_menu_item_object_id', '22'),
(150, 22, '_menu_item_object', 'custom'),
(151, 22, '_menu_item_target', ''),
(152, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(153, 22, '_menu_item_xfn', ''),
(154, 22, '_menu_item_url', '#'),
(156, 23, '_menu_item_type', 'custom'),
(157, 23, '_menu_item_menu_item_parent', '22'),
(158, 23, '_menu_item_object_id', '23'),
(159, 23, '_menu_item_object', 'custom'),
(160, 23, '_menu_item_target', ''),
(161, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 23, '_menu_item_xfn', ''),
(163, 23, '_menu_item_url', '#'),
(165, 24, '_menu_item_type', 'custom'),
(166, 24, '_menu_item_menu_item_parent', '22'),
(167, 24, '_menu_item_object_id', '24'),
(168, 24, '_menu_item_object', 'custom'),
(169, 24, '_menu_item_target', ''),
(170, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 24, '_menu_item_xfn', ''),
(172, 24, '_menu_item_url', '#'),
(174, 25, '_menu_item_type', 'custom'),
(175, 25, '_menu_item_menu_item_parent', '0'),
(176, 25, '_menu_item_object_id', '25'),
(177, 25, '_menu_item_object', 'custom'),
(178, 25, '_menu_item_target', ''),
(179, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 25, '_menu_item_xfn', ''),
(181, 25, '_menu_item_url', '#'),
(183, 26, '_menu_item_type', 'custom'),
(184, 26, '_menu_item_menu_item_parent', '25'),
(185, 26, '_menu_item_object_id', '26'),
(186, 26, '_menu_item_object', 'custom'),
(187, 26, '_menu_item_target', ''),
(188, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 26, '_menu_item_xfn', ''),
(190, 26, '_menu_item_url', '#'),
(192, 27, '_menu_item_type', 'custom'),
(193, 27, '_menu_item_menu_item_parent', '25'),
(194, 27, '_menu_item_object_id', '27'),
(195, 27, '_menu_item_object', 'custom'),
(196, 27, '_menu_item_target', ''),
(197, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 27, '_menu_item_xfn', ''),
(199, 27, '_menu_item_url', '#'),
(201, 28, '_menu_item_type', 'custom'),
(202, 28, '_menu_item_menu_item_parent', '0'),
(203, 28, '_menu_item_object_id', '28'),
(204, 28, '_menu_item_object', 'custom'),
(205, 28, '_menu_item_target', ''),
(206, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 28, '_menu_item_xfn', ''),
(208, 28, '_menu_item_url', '#'),
(210, 29, '_menu_item_type', 'custom'),
(211, 29, '_menu_item_menu_item_parent', '28'),
(212, 29, '_menu_item_object_id', '29'),
(213, 29, '_menu_item_object', 'custom'),
(214, 29, '_menu_item_target', ''),
(215, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 29, '_menu_item_xfn', ''),
(217, 29, '_menu_item_url', '#'),
(219, 30, '_menu_item_type', 'custom'),
(220, 30, '_menu_item_menu_item_parent', '28'),
(221, 30, '_menu_item_object_id', '30'),
(222, 30, '_menu_item_object', 'custom'),
(223, 30, '_menu_item_target', ''),
(224, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 30, '_menu_item_xfn', ''),
(226, 30, '_menu_item_url', '#'),
(228, 31, '_menu_item_type', 'custom'),
(229, 31, '_menu_item_menu_item_parent', '0'),
(230, 31, '_menu_item_object_id', '31'),
(231, 31, '_menu_item_object', 'custom'),
(232, 31, '_menu_item_target', ''),
(233, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(234, 31, '_menu_item_xfn', ''),
(235, 31, '_menu_item_url', '#'),
(237, 32, '_menu_item_type', 'custom'),
(238, 32, '_menu_item_menu_item_parent', '0'),
(239, 32, '_menu_item_object_id', '32'),
(240, 32, '_menu_item_object', 'custom'),
(241, 32, '_menu_item_target', ''),
(242, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 32, '_menu_item_xfn', ''),
(244, 32, '_menu_item_url', '#'),
(246, 33, '_menu_item_type', 'custom'),
(247, 33, '_menu_item_menu_item_parent', '0'),
(248, 33, '_menu_item_object_id', '33'),
(249, 33, '_menu_item_object', 'custom'),
(250, 33, '_menu_item_target', ''),
(251, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 33, '_menu_item_xfn', ''),
(253, 33, '_menu_item_url', '#'),
(254, 33, '_menu_item_orphaned', '1696903790'),
(255, 34, '_menu_item_type', 'custom'),
(256, 34, '_menu_item_menu_item_parent', '32'),
(257, 34, '_menu_item_object_id', '34'),
(258, 34, '_menu_item_object', 'custom'),
(259, 34, '_menu_item_target', ''),
(260, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 34, '_menu_item_xfn', ''),
(262, 34, '_menu_item_url', '#'),
(264, 35, '_menu_item_type', 'custom'),
(265, 35, '_menu_item_menu_item_parent', '32'),
(266, 35, '_menu_item_object_id', '35'),
(267, 35, '_menu_item_object', 'custom'),
(268, 35, '_menu_item_target', ''),
(269, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 35, '_menu_item_xfn', ''),
(271, 35, '_menu_item_url', '#'),
(273, 36, '_menu_item_type', 'custom'),
(274, 36, '_menu_item_menu_item_parent', '32'),
(275, 36, '_menu_item_object_id', '36'),
(276, 36, '_menu_item_object', 'custom'),
(277, 36, '_menu_item_target', ''),
(278, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 36, '_menu_item_xfn', ''),
(280, 36, '_menu_item_url', '#'),
(282, 37, '_menu_item_type', 'custom'),
(283, 37, '_menu_item_menu_item_parent', '32'),
(284, 37, '_menu_item_object_id', '37'),
(285, 37, '_menu_item_object', 'custom'),
(286, 37, '_menu_item_target', ''),
(287, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 37, '_menu_item_xfn', ''),
(289, 37, '_menu_item_url', '#'),
(291, 38, '_menu_item_type', 'custom'),
(292, 38, '_menu_item_menu_item_parent', '31'),
(293, 38, '_menu_item_object_id', '38'),
(294, 38, '_menu_item_object', 'custom'),
(295, 38, '_menu_item_target', ''),
(296, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 38, '_menu_item_xfn', ''),
(298, 38, '_menu_item_url', '#'),
(300, 39, '_menu_item_type', 'custom'),
(301, 39, '_menu_item_menu_item_parent', '0'),
(302, 39, '_menu_item_object_id', '39'),
(303, 39, '_menu_item_object', 'custom'),
(304, 39, '_menu_item_target', ''),
(305, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(306, 39, '_menu_item_xfn', ''),
(307, 39, '_menu_item_url', '#'),
(309, 40, '_menu_item_type', 'custom'),
(310, 40, '_menu_item_menu_item_parent', '39'),
(311, 40, '_menu_item_object_id', '40'),
(312, 40, '_menu_item_object', 'custom'),
(313, 40, '_menu_item_target', ''),
(314, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(315, 40, '_menu_item_xfn', ''),
(316, 40, '_menu_item_url', '#'),
(318, 41, '_menu_item_type', 'custom'),
(319, 41, '_menu_item_menu_item_parent', '39'),
(320, 41, '_menu_item_object_id', '41'),
(321, 41, '_menu_item_object', 'custom'),
(322, 41, '_menu_item_target', ''),
(323, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(324, 41, '_menu_item_xfn', ''),
(325, 41, '_menu_item_url', '#'),
(327, 42, '_menu_item_type', 'custom'),
(328, 42, '_menu_item_menu_item_parent', '39'),
(329, 42, '_menu_item_object_id', '42'),
(330, 42, '_menu_item_object', 'custom'),
(331, 42, '_menu_item_target', ''),
(332, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(333, 42, '_menu_item_xfn', ''),
(334, 42, '_menu_item_url', '#'),
(336, 43, '_menu_item_type', 'custom'),
(337, 43, '_menu_item_menu_item_parent', '39'),
(338, 43, '_menu_item_object_id', '43'),
(339, 43, '_menu_item_object', 'custom'),
(340, 43, '_menu_item_target', ''),
(341, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 43, '_menu_item_xfn', ''),
(343, 43, '_menu_item_url', '#'),
(345, 44, '_menu_item_type', 'custom'),
(346, 44, '_menu_item_menu_item_parent', '39'),
(347, 44, '_menu_item_object_id', '44'),
(348, 44, '_menu_item_object', 'custom'),
(349, 44, '_menu_item_target', ''),
(350, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 44, '_menu_item_xfn', ''),
(352, 44, '_menu_item_url', '#'),
(354, 45, '_menu_item_type', 'custom'),
(355, 45, '_menu_item_menu_item_parent', '39'),
(356, 45, '_menu_item_object_id', '45'),
(357, 45, '_menu_item_object', 'custom'),
(358, 45, '_menu_item_target', ''),
(359, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 45, '_menu_item_xfn', ''),
(361, 45, '_menu_item_url', '#'),
(363, 46, '_menu_item_type', 'custom'),
(364, 46, '_menu_item_menu_item_parent', '0'),
(365, 46, '_menu_item_object_id', '46'),
(366, 46, '_menu_item_object', 'custom'),
(367, 46, '_menu_item_target', ''),
(368, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 46, '_menu_item_xfn', ''),
(370, 46, '_menu_item_url', '#'),
(372, 47, '_menu_item_type', 'custom'),
(373, 47, '_menu_item_menu_item_parent', '0'),
(374, 47, '_menu_item_object_id', '47'),
(375, 47, '_menu_item_object', 'custom'),
(376, 47, '_menu_item_target', ''),
(377, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(378, 47, '_menu_item_xfn', ''),
(379, 47, '_menu_item_url', '#'),
(381, 48, '_menu_item_type', 'custom'),
(382, 48, '_menu_item_menu_item_parent', '0'),
(383, 48, '_menu_item_object_id', '48'),
(384, 48, '_menu_item_object', 'custom'),
(385, 48, '_menu_item_target', ''),
(386, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 48, '_menu_item_xfn', ''),
(388, 48, '_menu_item_url', '#'),
(390, 49, '_menu_item_type', 'custom'),
(391, 49, '_menu_item_menu_item_parent', '0'),
(392, 49, '_menu_item_object_id', '49'),
(393, 49, '_menu_item_object', 'custom'),
(394, 49, '_menu_item_target', ''),
(395, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(396, 49, '_menu_item_xfn', ''),
(397, 49, '_menu_item_url', '#'),
(399, 50, '_menu_item_type', 'custom'),
(400, 50, '_menu_item_menu_item_parent', '0'),
(401, 50, '_menu_item_object_id', '50'),
(402, 50, '_menu_item_object', 'custom'),
(403, 50, '_menu_item_target', ''),
(404, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(405, 50, '_menu_item_xfn', ''),
(406, 50, '_menu_item_url', '#'),
(413, 53, '_wp_attached_file', '2023/10/cloud-blue.png'),
(414, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:250;s:6:\"height\";i:259;s:4:\"file\";s:22:\"2023/10/cloud-blue.png\";s:8:\"filesize\";i:38923;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"cloud-blue-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13590;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(415, 54, '_wp_attached_file', '2023/10/cloud-green.png'),
(416, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:254;s:6:\"height\";i:243;s:4:\"file\";s:23:\"2023/10/cloud-green.png\";s:8:\"filesize\";i:38084;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cloud-green-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14032;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(417, 55, '_wp_attached_file', '2023/10/cloud-red.png'),
(418, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:228;s:6:\"height\";i:237;s:4:\"file\";s:21:\"2023/10/cloud-red.png\";s:8:\"filesize\";i:32671;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"cloud-red-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13160;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(419, 56, '_wp_attached_file', '2023/10/facebook.svg'),
(420, 56, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:814;}'),
(423, 58, '_wp_attached_file', '2023/10/hero-mobile.png'),
(424, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:375;s:6:\"height\";i:368;s:4:\"file\";s:23:\"2023/10/hero-mobile.png\";s:8:\"filesize\";i:130961;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"hero-mobile-300x294.png\";s:5:\"width\";i:300;s:6:\"height\";i:294;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72139;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"hero-mobile-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24177;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 59, '_wp_attached_file', '2023/10/instagram.svg'),
(426, 59, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1866;}'),
(427, 60, '_wp_attached_file', '2023/10/linkedin.svg'),
(428, 60, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:763;}'),
(431, 62, '_wp_attached_file', '2023/10/x.svg'),
(432, 62, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1238;}'),
(435, 58, '_wp_attachment_image_alt', 'Tighter Spreads & Faster Execution'),
(437, 62, '_wp_attachment_image_alt', 'X Icon'),
(438, 60, '_wp_attachment_image_alt', 'LinkedIn Icon'),
(439, 59, '_wp_attachment_image_alt', 'Instagram Icon'),
(440, 56, '_wp_attachment_image_alt', 'Facebook Icon'),
(441, 55, '_wp_attachment_image_alt', 'Educational Resources'),
(442, 53, '_wp_attachment_image_alt', 'Trading Calculators'),
(443, 54, '_wp_attachment_image_alt', 'Economic Calendar'),
(444, 2, '_edit_lock', '1697083730:1'),
(445, 2, 'footnotes', ''),
(446, 74, '_menu_item_type', 'custom'),
(447, 74, '_menu_item_menu_item_parent', '0'),
(448, 74, '_menu_item_object_id', '74'),
(449, 74, '_menu_item_object', 'custom'),
(450, 74, '_menu_item_target', ''),
(451, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 74, '_menu_item_xfn', ''),
(453, 74, '_menu_item_url', '#'),
(455, 75, '_menu_item_type', 'custom'),
(456, 75, '_menu_item_menu_item_parent', '0'),
(457, 75, '_menu_item_object_id', '75'),
(458, 75, '_menu_item_object', 'custom'),
(459, 75, '_menu_item_target', ''),
(460, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(461, 75, '_menu_item_xfn', ''),
(462, 75, '_menu_item_url', '#'),
(464, 76, '_menu_item_type', 'custom'),
(465, 76, '_menu_item_menu_item_parent', '0'),
(466, 76, '_menu_item_object_id', '76'),
(467, 76, '_menu_item_object', 'custom'),
(468, 76, '_menu_item_target', ''),
(469, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(470, 76, '_menu_item_xfn', ''),
(471, 76, '_menu_item_url', '#'),
(473, 77, '_edit_lock', '1696914438:1'),
(474, 77, '_edit_last', '1'),
(475, 87, '_menu_item_type', 'custom'),
(476, 87, '_menu_item_menu_item_parent', '11'),
(477, 87, '_menu_item_object_id', '87'),
(478, 87, '_menu_item_object', 'custom'),
(479, 87, '_menu_item_target', ''),
(480, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(481, 87, '_menu_item_xfn', ''),
(482, 87, '_menu_item_url', '#'),
(484, 88, '_menu_item_type', 'custom'),
(485, 88, '_menu_item_menu_item_parent', '11'),
(486, 88, '_menu_item_object_id', '88'),
(487, 88, '_menu_item_object', 'custom'),
(488, 88, '_menu_item_target', ''),
(489, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(490, 88, '_menu_item_xfn', ''),
(491, 88, '_menu_item_url', '#'),
(493, 89, '_menu_item_type', 'custom'),
(494, 89, '_menu_item_menu_item_parent', '12'),
(495, 89, '_menu_item_object_id', '89'),
(496, 89, '_menu_item_object', 'custom'),
(497, 89, '_menu_item_target', ''),
(498, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(499, 89, '_menu_item_xfn', ''),
(500, 89, '_menu_item_url', '#'),
(502, 90, '_menu_item_type', 'custom'),
(503, 90, '_menu_item_menu_item_parent', '12'),
(504, 90, '_menu_item_object_id', '90'),
(505, 90, '_menu_item_object', 'custom'),
(506, 90, '_menu_item_target', ''),
(507, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(508, 90, '_menu_item_xfn', ''),
(509, 90, '_menu_item_url', '#'),
(511, 91, '_menu_item_type', 'custom'),
(512, 91, '_menu_item_menu_item_parent', '12'),
(513, 91, '_menu_item_object_id', '91'),
(514, 91, '_menu_item_object', 'custom'),
(515, 91, '_menu_item_target', ''),
(516, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(517, 91, '_menu_item_xfn', ''),
(518, 91, '_menu_item_url', '#'),
(520, 92, '_menu_item_type', 'custom'),
(521, 92, '_menu_item_menu_item_parent', '12'),
(522, 92, '_menu_item_object_id', '92'),
(523, 92, '_menu_item_object', 'custom'),
(524, 92, '_menu_item_target', ''),
(525, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(526, 92, '_menu_item_xfn', ''),
(527, 92, '_menu_item_url', '#'),
(529, 93, '_menu_item_type', 'custom'),
(530, 93, '_menu_item_menu_item_parent', '12'),
(531, 93, '_menu_item_object_id', '93'),
(532, 93, '_menu_item_object', 'custom'),
(533, 93, '_menu_item_target', ''),
(534, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(535, 93, '_menu_item_xfn', ''),
(536, 93, '_menu_item_url', '#'),
(538, 94, '_menu_item_type', 'custom'),
(539, 94, '_menu_item_menu_item_parent', '12'),
(540, 94, '_menu_item_object_id', '94'),
(541, 94, '_menu_item_object', 'custom'),
(542, 94, '_menu_item_target', ''),
(543, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(544, 94, '_menu_item_xfn', ''),
(545, 94, '_menu_item_url', '#'),
(547, 95, '_menu_item_type', 'custom'),
(548, 95, '_menu_item_menu_item_parent', '13'),
(549, 95, '_menu_item_object_id', '95'),
(550, 95, '_menu_item_object', 'custom'),
(551, 95, '_menu_item_target', ''),
(552, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(553, 95, '_menu_item_xfn', ''),
(554, 95, '_menu_item_url', '#'),
(556, 96, '_menu_item_type', 'custom'),
(557, 96, '_menu_item_menu_item_parent', '13'),
(558, 96, '_menu_item_object_id', '96'),
(559, 96, '_menu_item_object', 'custom'),
(560, 96, '_menu_item_target', ''),
(561, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(562, 96, '_menu_item_xfn', ''),
(563, 96, '_menu_item_url', '#'),
(565, 97, '_menu_item_type', 'custom'),
(566, 97, '_menu_item_menu_item_parent', '13'),
(567, 97, '_menu_item_object_id', '97'),
(568, 97, '_menu_item_object', 'custom'),
(569, 97, '_menu_item_target', ''),
(570, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(571, 97, '_menu_item_xfn', ''),
(572, 97, '_menu_item_url', '#'),
(574, 98, '_menu_item_type', 'custom'),
(575, 98, '_menu_item_menu_item_parent', '13'),
(576, 98, '_menu_item_object_id', '98'),
(577, 98, '_menu_item_object', 'custom'),
(578, 98, '_menu_item_target', ''),
(579, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(580, 98, '_menu_item_xfn', ''),
(581, 98, '_menu_item_url', '#'),
(583, 99, '_menu_item_type', 'custom'),
(584, 99, '_menu_item_menu_item_parent', '14'),
(585, 99, '_menu_item_object_id', '99'),
(586, 99, '_menu_item_object', 'custom'),
(587, 99, '_menu_item_target', ''),
(588, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(589, 99, '_menu_item_xfn', ''),
(590, 99, '_menu_item_url', '#'),
(592, 100, '_wp_trash_meta_status', 'publish'),
(593, 100, '_wp_trash_meta_time', '1696921309'),
(599, 103, '_wp_trash_meta_status', 'publish'),
(600, 103, '_wp_trash_meta_time', '1696921444'),
(601, 104, '_wp_attached_file', '2023/10/favicon.png'),
(602, 104, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2023/10/favicon.png\";s:8:\"filesize\";i:56692;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56346;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17917;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(603, 105, '_wp_attached_file', '2023/10/cropped-favicon.png'),
(604, 105, '_wp_attachment_context', 'site-icon'),
(605, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2023/10/cropped-favicon.png\";s:8:\"filesize\";i:129012;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56346;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17917;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46666;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26143;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23570;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1977;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(606, 106, '_wp_trash_meta_status', 'publish'),
(607, 106, '_wp_trash_meta_time', '1696921537'),
(608, 107, '_menu_item_type', 'post_type'),
(609, 107, '_menu_item_menu_item_parent', '6'),
(610, 107, '_menu_item_object_id', '1'),
(611, 107, '_menu_item_object', 'post'),
(612, 107, '_menu_item_target', ''),
(613, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(614, 107, '_menu_item_xfn', ''),
(615, 107, '_menu_item_url', ''),
(617, 1, '_edit_lock', '1697073019:1'),
(618, 108, '_wp_attached_file', '2023/10/logo-square.png'),
(619, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:67;s:6:\"height\";i:69;s:4:\"file\";s:23:\"2023/10/logo-square.png\";s:8:\"filesize\";i:4005;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 108, '_wp_attachment_image_alt', 'More Icon'),
(621, 104, '_wp_attachment_image_alt', 'More Favicon'),
(622, 105, '_wp_attachment_image_alt', 'More Favicon'),
(632, 110, '_wp_attached_file', '2023/10/hero-desktop.png'),
(633, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1130;s:6:\"height\";i:958;s:4:\"file\";s:24:\"2023/10/hero-desktop.png\";s:8:\"filesize\";i:524102;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"hero-desktop-300x254.png\";s:5:\"width\";i:300;s:6:\"height\";i:254;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40039;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"hero-desktop-1024x868.png\";s:5:\"width\";i:1024;s:6:\"height\";i:868;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:328293;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"hero-desktop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17308;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"hero-desktop-768x651.png\";s:5:\"width\";i:768;s:6:\"height\";i:651;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:192597;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(634, 110, '_wp_attachment_image_alt', 'Tighter Spreads & Faster Execution'),
(635, 6, '_wp_old_date', '2023-10-10'),
(636, 107, '_wp_old_date', '2023-10-10'),
(637, 8, '_wp_old_date', '2023-10-10'),
(638, 9, '_wp_old_date', '2023-10-10'),
(639, 10, '_wp_old_date', '2023-10-10'),
(640, 11, '_wp_old_date', '2023-10-10'),
(641, 87, '_wp_old_date', '2023-10-10'),
(642, 88, '_wp_old_date', '2023-10-10'),
(643, 12, '_wp_old_date', '2023-10-10'),
(644, 89, '_wp_old_date', '2023-10-10'),
(645, 90, '_wp_old_date', '2023-10-10'),
(646, 91, '_wp_old_date', '2023-10-10'),
(647, 92, '_wp_old_date', '2023-10-10'),
(648, 93, '_wp_old_date', '2023-10-10'),
(649, 94, '_wp_old_date', '2023-10-10'),
(650, 13, '_wp_old_date', '2023-10-10'),
(651, 95, '_wp_old_date', '2023-10-10'),
(652, 96, '_wp_old_date', '2023-10-10'),
(653, 97, '_wp_old_date', '2023-10-10'),
(654, 98, '_wp_old_date', '2023-10-10'),
(655, 14, '_wp_old_date', '2023-10-10'),
(656, 99, '_wp_old_date', '2023-10-10'),
(658, 1, '_edit_last', '1'),
(660, 1, '_wp_old_slug', 'hello-world'),
(661, 21, '_wp_old_date', '2023-10-10'),
(662, 15, '_wp_old_date', '2023-10-10'),
(663, 16, '_wp_old_date', '2023-10-10'),
(664, 17, '_wp_old_date', '2023-10-10'),
(665, 18, '_wp_old_date', '2023-10-10'),
(666, 19, '_wp_old_date', '2023-10-10'),
(667, 20, '_wp_old_date', '2023-10-10'),
(668, 22, '_wp_old_date', '2023-10-10'),
(669, 23, '_wp_old_date', '2023-10-10'),
(670, 24, '_wp_old_date', '2023-10-10'),
(671, 32, '_wp_old_date', '2023-10-10'),
(672, 34, '_wp_old_date', '2023-10-10'),
(673, 35, '_wp_old_date', '2023-10-10'),
(674, 36, '_wp_old_date', '2023-10-10'),
(675, 37, '_wp_old_date', '2023-10-10'),
(676, 28, '_wp_old_date', '2023-10-10'),
(677, 29, '_wp_old_date', '2023-10-10'),
(678, 30, '_wp_old_date', '2023-10-10'),
(679, 31, '_wp_old_date', '2023-10-10'),
(680, 38, '_wp_old_date', '2023-10-10'),
(681, 25, '_wp_old_date', '2023-10-10'),
(682, 26, '_wp_old_date', '2023-10-10'),
(683, 27, '_wp_old_date', '2023-10-10'),
(684, 116, '_wp_attached_file', '2023/10/logo-horizontal-204.png'),
(685, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:205;s:6:\"height\";i:95;s:4:\"file\";s:31:\"2023/10/logo-horizontal-204.png\";s:8:\"filesize\";i:8192;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"logo-horizontal-204-150x95.png\";s:5:\"width\";i:150;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(686, 116, '_wp_attachment_image_alt', 'More Logo'),
(687, 117, '_menu_item_type', 'custom'),
(688, 117, '_menu_item_menu_item_parent', '47'),
(689, 117, '_menu_item_object_id', '117'),
(690, 117, '_menu_item_object', 'custom'),
(691, 117, '_menu_item_target', ''),
(692, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(693, 117, '_menu_item_xfn', ''),
(694, 117, '_menu_item_url', '#'),
(696, 118, '_menu_item_type', 'custom'),
(697, 118, '_menu_item_menu_item_parent', '47'),
(698, 118, '_menu_item_object_id', '118'),
(699, 118, '_menu_item_object', 'custom'),
(700, 118, '_menu_item_target', ''),
(701, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(702, 118, '_menu_item_xfn', ''),
(703, 118, '_menu_item_url', '#'),
(705, 119, '_menu_item_type', 'custom'),
(706, 119, '_menu_item_menu_item_parent', '50'),
(707, 119, '_menu_item_object_id', '119'),
(708, 119, '_menu_item_object', 'custom'),
(709, 119, '_menu_item_target', ''),
(710, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(711, 119, '_menu_item_xfn', ''),
(712, 119, '_menu_item_url', '#'),
(714, 120, '_menu_item_type', 'custom'),
(715, 120, '_menu_item_menu_item_parent', '50'),
(716, 120, '_menu_item_object_id', '120'),
(717, 120, '_menu_item_object', 'custom'),
(718, 120, '_menu_item_target', ''),
(719, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(720, 120, '_menu_item_xfn', ''),
(721, 120, '_menu_item_url', '#'),
(723, 121, '_menu_item_type', 'custom'),
(724, 121, '_menu_item_menu_item_parent', '48'),
(725, 121, '_menu_item_object_id', '121'),
(726, 121, '_menu_item_object', 'custom'),
(727, 121, '_menu_item_target', ''),
(728, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(729, 121, '_menu_item_xfn', ''),
(730, 121, '_menu_item_url', '#'),
(732, 122, '_menu_item_type', 'custom'),
(733, 122, '_menu_item_menu_item_parent', '48'),
(734, 122, '_menu_item_object_id', '122'),
(735, 122, '_menu_item_object', 'custom'),
(736, 122, '_menu_item_target', ''),
(737, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(738, 122, '_menu_item_xfn', ''),
(739, 122, '_menu_item_url', '#'),
(741, 123, '_menu_item_type', 'custom'),
(742, 123, '_menu_item_menu_item_parent', '49'),
(743, 123, '_menu_item_object_id', '123'),
(744, 123, '_menu_item_object', 'custom'),
(745, 123, '_menu_item_target', ''),
(746, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(747, 123, '_menu_item_xfn', ''),
(748, 123, '_menu_item_url', '#'),
(750, 124, '_menu_item_type', 'custom'),
(751, 124, '_menu_item_menu_item_parent', '46'),
(752, 124, '_menu_item_object_id', '124'),
(753, 124, '_menu_item_object', 'custom'),
(754, 124, '_menu_item_target', ''),
(755, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(756, 124, '_menu_item_xfn', ''),
(757, 124, '_menu_item_url', '#'),
(759, 125, '_menu_item_type', 'custom'),
(760, 125, '_menu_item_menu_item_parent', '46'),
(761, 125, '_menu_item_object_id', '125'),
(762, 125, '_menu_item_object', 'custom'),
(763, 125, '_menu_item_target', ''),
(764, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(765, 125, '_menu_item_xfn', ''),
(766, 125, '_menu_item_url', '#'),
(768, 126, '_menu_item_type', 'custom'),
(769, 126, '_menu_item_menu_item_parent', '46'),
(770, 126, '_menu_item_object_id', '126'),
(771, 126, '_menu_item_object', 'custom'),
(772, 126, '_menu_item_target', ''),
(773, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(774, 126, '_menu_item_xfn', ''),
(775, 126, '_menu_item_url', '#'),
(777, 127, '_menu_item_type', 'custom'),
(778, 127, '_menu_item_menu_item_parent', '46'),
(779, 127, '_menu_item_object_id', '127'),
(780, 127, '_menu_item_object', 'custom'),
(781, 127, '_menu_item_target', ''),
(782, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(783, 127, '_menu_item_xfn', ''),
(784, 127, '_menu_item_url', '#'),
(786, 39, '_wp_old_date', '2023-10-10'),
(787, 40, '_wp_old_date', '2023-10-10'),
(788, 41, '_wp_old_date', '2023-10-10'),
(789, 42, '_wp_old_date', '2023-10-10'),
(790, 43, '_wp_old_date', '2023-10-10'),
(791, 44, '_wp_old_date', '2023-10-10'),
(792, 45, '_wp_old_date', '2023-10-10'),
(793, 46, '_wp_old_date', '2023-10-10'),
(794, 47, '_wp_old_date', '2023-10-10'),
(795, 48, '_wp_old_date', '2023-10-10'),
(796, 49, '_wp_old_date', '2023-10-10'),
(797, 50, '_wp_old_date', '2023-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-06 02:03:25', '2023-10-06 02:03:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Who We Are', '', 'publish', 'open', 'open', '', 'who-we-are', '', '', '2023-10-12 01:10:19', '2023-10-12 01:10:19', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-06 02:03:25', '2023-10-06 02:03:25', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment\\r\\nYour Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph\"} -->\n<p class=\"oizumi_paragraph\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-11 04:14:33', '2023-10-11 04:14:33', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-06 02:03:25', '2023-10-06 02:03:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-06 02:03:25', '2023-10-06 02:03:25', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-06 02:03:27', '2023-10-06 02:03:27', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-06 02:03:27', '2023-10-06 02:03:27', '', 0, 'http://localhost/2023/10/06/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2023-10-10 01:50:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-10 01:50:22', '0000-00-00 00:00:00', '', 0, 'https://oizumi-sample.ddev.site/?p=5', 0, 'post', '', 0),
(6, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=6', 1, 'nav_menu_item', '', 0),
(8, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=9', 4, 'nav_menu_item', '', 0),
(10, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=10', 5, 'nav_menu_item', '', 0),
(11, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Affiliates', '', 'publish', 'closed', 'closed', '', 'affiliates', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=11', 6, 'nav_menu_item', '', 0),
(12, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Trading', '', 'publish', 'closed', 'closed', '', 'trading', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=12', 9, 'nav_menu_item', '', 0),
(13, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=13', 16, 'nav_menu_item', '', 0),
(14, 1, '2023-10-12 01:09:52', '2023-10-10 02:01:23', '', 'Markets', '', 'publish', 'closed', 'closed', '', 'markets', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=14', 21, 'nav_menu_item', '', 0),
(15, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Products & Spreads', '', 'publish', 'closed', 'closed', '', 'products-spreads', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Account Types', '', 'publish', 'closed', 'closed', '', 'account-types', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=17', 4, 'nav_menu_item', '', 0),
(18, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Metatrader', '', 'publish', 'closed', 'closed', '', 'metatrader', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Demo Account', '', 'publish', 'closed', 'closed', '', 'demo-account', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2023-10-12 03:30:12', '2023-10-10 02:04:10', '', 'Funded Accounts', '', 'publish', 'closed', 'closed', '', 'funded-accounts', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=20', 7, 'nav_menu_item', '', 0),
(21, 1, '2023-10-12 03:30:12', '2023-10-10 02:05:07', '', 'Trading', '', 'publish', 'closed', 'closed', '', 'trading-2', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'Affiliate', '', 'publish', 'closed', 'closed', '', 'affiliate', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=22', 8, 'nav_menu_item', '', 0),
(23, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'Afilliate Program', '', 'publish', 'closed', 'closed', '', 'afilliate-program', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=23', 9, 'nav_menu_item', '', 0),
(24, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'PAMM Accounts', '', 'publish', 'closed', 'closed', '', 'pamm-accounts', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=24', 10, 'nav_menu_item', '', 0),
(25, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'Help', '', 'publish', 'closed', 'closed', '', 'help', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=25', 11, 'nav_menu_item', '', 0),
(26, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=26', 12, 'nav_menu_item', '', 0),
(27, 1, '2023-10-12 03:30:12', '2023-10-10 02:06:16', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=27', 13, 'nav_menu_item', '', 0),
(28, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Learn', '', 'publish', 'closed', 'closed', '', 'learn', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=28', 14, 'nav_menu_item', '', 0),
(29, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Education', '', 'publish', 'closed', 'closed', '', 'education', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=29', 15, 'nav_menu_item', '', 0),
(30, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=30', 16, 'nav_menu_item', '', 0),
(31, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-2', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=31', 17, 'nav_menu_item', '', 0),
(32, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'resources', '', 'publish', 'closed', 'closed', '', 'resources-2', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=32', 19, 'nav_menu_item', '', 0),
(33, 1, '2023-10-10 02:09:50', '0000-00-00 00:00:00', '', 'Affiliate', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-10 02:09:50', '0000-00-00 00:00:00', '', 0, 'https://oizumi-sample.ddev.site/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Economic Calculator', '', 'publish', 'closed', 'closed', '', 'economic-calculator', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=34', 20, 'nav_menu_item', '', 0),
(35, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Forex Calculators', '', 'publish', 'closed', 'closed', '', 'forex-calculators', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=35', 21, 'nav_menu_item', '', 0),
(36, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Interest Calculator', '', 'publish', 'closed', 'closed', '', 'interest-calculator', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=36', 22, 'nav_menu_item', '', 0),
(37, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'Educational Blogs', '', 'publish', 'closed', 'closed', '', 'educational-blogs', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=37', 23, 'nav_menu_item', '', 0),
(38, 1, '2023-10-12 03:30:12', '2023-10-10 02:11:37', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-10-12 03:30:12', '2023-10-12 03:30:12', '', 0, 'https://oizumi-sample.ddev.site/?p=38', 18, 'nav_menu_item', '', 0),
(39, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Trading', '', 'publish', 'closed', 'closed', '', 'trading-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Products & Spreads', '', 'publish', 'closed', 'closed', '', 'products-spreads-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=41', 3, 'nav_menu_item', '', 0),
(42, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Account Types', '', 'publish', 'closed', 'closed', '', 'account-types-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Metatrader', '', 'publish', 'closed', 'closed', '', 'metatrader-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Demo Account', '', 'publish', 'closed', 'closed', '', 'demo-account-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=44', 6, 'nav_menu_item', '', 0),
(45, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Funded Accounts', '', 'publish', 'closed', 'closed', '', 'funded-accounts-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=45', 7, 'nav_menu_item', '', 0),
(46, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'resources', '', 'publish', 'closed', 'closed', '', 'resources-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=46', 8, 'nav_menu_item', '', 0),
(47, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Affiliate', '', 'publish', 'closed', 'closed', '', 'affiliate-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=47', 13, 'nav_menu_item', '', 0),
(48, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Learn', '', 'publish', 'closed', 'closed', '', 'learn-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=48', 16, 'nav_menu_item', '', 0),
(49, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'About', '', 'publish', 'closed', 'closed', '', 'about-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=49', 19, 'nav_menu_item', '', 0),
(50, 1, '2023-10-12 07:20:57', '2023-10-10 02:14:18', '', 'Help', '', 'publish', 'closed', 'closed', '', 'help-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=50', 21, 'nav_menu_item', '', 0),
(53, 1, '2023-10-10 02:28:13', '2023-10-10 02:28:13', 'Make trading calculations in real-time & forecast the potential growth of your account.', 'Trading Calculators', 'Trading Calculators', 'inherit', 'open', 'closed', '', 'cloud-blue', '', '', '2023-10-10 02:31:51', '2023-10-10 02:31:51', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/cloud-blue.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2023-10-10 02:28:13', '2023-10-10 02:28:13', 'Access all major events & economic news that impact financial markets.', 'Economic Calendar', 'Economic Calendar', 'inherit', 'open', 'closed', '', 'cloud-green', '', '', '2023-10-10 02:32:10', '2023-10-10 02:32:10', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/cloud-green.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2023-10-10 02:28:13', '2023-10-10 02:28:13', 'From top tips & trading psychology to more ways to earn, we make learning more fun.', 'Educational Resources', 'Educational Resources', 'inherit', 'open', 'closed', '', 'cloud-red', '', '', '2023-10-10 02:31:36', '2023-10-10 02:31:36', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/cloud-red.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2023-10-10 02:28:13', '2023-10-10 02:28:13', 'Facebook Icon', 'Facebook Icon', 'Facebook Icon', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2023-10-10 02:30:56', '2023-10-10 02:30:56', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2023-10-10 02:28:15', '2023-10-10 02:28:15', 'With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.', 'Tighter Spreads & Faster Execution', 'Tighter Spreads & Faster Execution', 'inherit', 'open', 'closed', '', 'hero-mobile', '', '', '2023-10-10 02:32:28', '2023-10-10 02:32:28', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2023-10-10 02:28:15', '2023-10-10 02:28:15', 'Instagram Icon', 'Instagram Icon', 'Instagram Icon', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2023-10-10 02:30:44', '2023-10-10 02:30:44', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/instagram.svg', 0, 'attachment', 'image/svg+xml', 0),
(60, 1, '2023-10-10 02:28:15', '2023-10-10 02:28:15', 'LinkedIn Icon', 'LinkedIn Icon', 'LinkedIn Icon', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2023-10-10 02:30:12', '2023-10-10 02:30:12', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/linkedin.svg', 0, 'attachment', 'image/svg+xml', 0),
(62, 1, '2023-10-10 02:28:15', '2023-10-10 02:28:15', 'X  Icon', 'X  Icon', 'X  Icon', 'inherit', 'open', 'closed', '', 'x', '', '', '2023-10-10 02:30:32', '2023-10-10 02:30:32', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/x.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 1, '2023-10-10 02:35:12', '2023-10-10 02:35:12', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"data\":[],\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:35:12', '2023-10-10 02:35:12', '', 2, 'https://oizumi-sample.ddev.site/?p=63', 0, 'revision', '', 0),
(65, 1, '2023-10-10 02:39:37', '2023-10-10 02:39:37', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:39:37', '2023-10-10 02:39:37', '', 2, 'https://oizumi-sample.ddev.site/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-10-10 02:40:56', '2023-10-10 02:40:56', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\"/><figcaption class=\"wp-element-caption\">Tighter Spreads & Faster Execution</figcaption></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:40:56', '2023-10-10 02:40:56', '', 2, 'https://oizumi-sample.ddev.site/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-10-10 02:41:33', '2023-10-10 02:41:33', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"desktop-image\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:41:33', '2023-10-10 02:41:33', '', 2, 'https://oizumi-sample.ddev.site/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-10-10 02:41:39', '2023-10-10 02:41:39', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:41:39', '2023-10-10 02:41:39', '', 2, 'https://oizumi-sample.ddev.site/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-10-10 02:42:09', '2023-10-10 02:42:09', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment Your Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:42:09', '2023-10-10 02:42:09', '', 2, 'https://oizumi-sample.ddev.site/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-10-10 02:43:20', '2023-10-10 02:43:20', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment Your Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:43:20', '2023-10-10 02:43:20', '', 2, 'https://oizumi-sample.ddev.site/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-10-10 02:43:30', '2023-10-10 02:43:30', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-big\"} -->\n<p class=\"oizumi_paragraph-big\">With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment Your Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:43:30', '2023-10-10 02:43:30', '', 2, 'https://oizumi-sample.ddev.site/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-10-10 02:43:48', '2023-10-10 02:43:48', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment Your Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:43:48', '2023-10-10 02:43:48', '', 2, 'https://oizumi-sample.ddev.site/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-10-10 02:44:57', '2023-10-10 02:44:57', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment Your Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-10 02:44:57', '2023-10-10 02:44:57', '', 2, 'https://oizumi-sample.ddev.site/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 'Risk Disclosure', '', 'publish', 'closed', 'closed', '', 'risk-disclosure', '', '', '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 0, 'https://oizumi-sample.ddev.site/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions-2', '', '', '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 0, 'https://oizumi-sample.ddev.site/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2023-10-10 03:38:22', '2023-10-10 03:38:22', '', 0, 'https://oizumi-sample.ddev.site/?p=76', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"oizumi-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'General Options', 'general-options', 'publish', 'closed', 'closed', '', 'group_652384d0f054c', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 0, 'https://oizumi-sample.ddev.site/?p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Header Logo', '', 'publish', 'closed', 'closed', '', 'field_65238657985b8', '', '', '2023-10-10 05:08:09', '2023-10-10 05:08:09', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Mobile Logo', 'mobile_logo', 'publish', 'closed', 'closed', '', 'field_6523867bff67d', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Social Links', '', 'publish', 'closed', 'closed', '', 'field_652384d1bed6f', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&#038;p=80', 3, 'acf-field', '', 0),
(81, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";i:0;s:3:\"max\";i:0;s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:13:\"rows_per_page\";i:20;}', 'Social Links', 'social_links', 'publish', 'closed', 'closed', '', 'field_65238538fbf57', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&#038;p=81', 4, 'acf-field', '', 0),
(82, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:15:\"parent_repeater\";s:19:\"field_65238538fbf57\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_65238551fbf58', '', '', '2023-10-10 05:08:09', '2023-10-10 05:08:09', '', 81, 'https://oizumi-sample.ddev.site/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"parent_repeater\";s:19:\"field_65238538fbf57\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_65238587fbf59', '', '', '2023-10-10 05:08:09', '2023-10-10 05:08:09', '', 81, 'https://oizumi-sample.ddev.site/?post_type=acf-field&p=83', 1, 'acf-field', '', 0),
(84, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer Content', '', 'publish', 'closed', 'closed', '', 'field_652384ff7b2e4', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&#038;p=84', 5, 'acf-field', '', 0),
(85, 1, '2023-10-10 05:08:09', '2023-10-10 05:08:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Footer Content', 'footer_content', 'publish', 'closed', 'closed', '', 'field_6523861821a0d', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&#038;p=85', 6, 'acf-field', '', 0),
(86, 1, '2023-10-10 05:09:16', '2023-10-10 05:09:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Desktop Logo', 'desktop_logo', 'publish', 'closed', 'closed', '', 'field_6524dc718785d', '', '', '2023-10-10 05:09:16', '2023-10-10 05:09:16', '', 77, 'https://oizumi-sample.ddev.site/?post_type=acf-field&p=86', 2, 'acf-field', '', 0),
(87, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Afilliate Program', '', 'publish', 'closed', 'closed', '', 'afilliate-program-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=87', 7, 'nav_menu_item', '', 0),
(88, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'PAMM Accounts', '', 'publish', 'closed', 'closed', '', 'pamm-accounts-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=88', 8, 'nav_menu_item', '', 0),
(89, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=89', 10, 'nav_menu_item', '', 0),
(90, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Products & Spreads', '', 'publish', 'closed', 'closed', '', 'products-spreads-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=90', 11, 'nav_menu_item', '', 0),
(91, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Account Types', '', 'publish', 'closed', 'closed', '', 'account-types-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=91', 12, 'nav_menu_item', '', 0),
(92, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Metatrader', '', 'publish', 'closed', 'closed', '', 'metatrader-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=92', 13, 'nav_menu_item', '', 0),
(93, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Demo Account', '', 'publish', 'closed', 'closed', '', 'demo-account-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=93', 14, 'nav_menu_item', '', 0),
(94, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Funded Accounts', '', 'publish', 'closed', 'closed', '', 'funded-accounts-3', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=94', 15, 'nav_menu_item', '', 0),
(95, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Economic Calculator', '', 'publish', 'closed', 'closed', '', 'economic-calculator-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=95', 17, 'nav_menu_item', '', 0),
(96, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Forex Calculators', '', 'publish', 'closed', 'closed', '', 'forex-calculators-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=96', 18, 'nav_menu_item', '', 0),
(97, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Interest Calculator', '', 'publish', 'closed', 'closed', '', 'interest-calculator-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=97', 19, 'nav_menu_item', '', 0),
(98, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Educational Blogs', '', 'publish', 'closed', 'closed', '', 'educational-blogs-2', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=98', 20, 'nav_menu_item', '', 0),
(99, 1, '2023-10-12 01:09:52', '2023-10-10 06:47:23', '', 'Crypto', '', 'publish', 'closed', 'closed', '', 'crypto', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=99', 22, 'nav_menu_item', '', 0),
(100, 1, '2023-10-10 07:01:49', '2023-10-10 07:01:49', '{\n    \"site_icon\": {\n        \"value\": 61,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-10 07:01:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34b54c6f-e065-44f8-b30f-27bf20a9a892', '', '', '2023-10-10 07:01:49', '2023-10-10 07:01:49', '', 0, 'https://oizumi-sample.ddev.site/2023/10/10/34b54c6f-e065-44f8-b30f-27bf20a9a892/', 0, 'customize_changeset', '', 0),
(103, 1, '2023-10-10 07:04:04', '2023-10-10 07:04:04', '{\n    \"site_icon\": {\n        \"value\": 102,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-10 07:04:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f70773d-0dda-4808-8588-a28227bc30d3', '', '', '2023-10-10 07:04:04', '2023-10-10 07:04:04', '', 0, 'https://oizumi-sample.ddev.site/2023/10/10/0f70773d-0dda-4808-8588-a28227bc30d3/', 0, 'customize_changeset', '', 0),
(104, 1, '2023-10-10 07:05:32', '2023-10-10 07:05:32', 'More Favicon', 'More Favicon', 'More Favicon', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2023-10-10 19:43:09', '2023-10-10 19:43:09', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/favicon.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2023-10-10 07:05:34', '2023-10-10 07:05:34', 'More Favicon', 'More Favicon', 'More Favicon', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2023-10-10 19:43:17', '2023-10-10 19:43:17', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2023-10-10 07:05:37', '2023-10-10 07:05:37', '{\n    \"site_icon\": {\n        \"value\": 105,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-10 07:05:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '55aa3163-d101-4e13-923b-bc6791448f4b', '', '', '2023-10-10 07:05:37', '2023-10-10 07:05:37', '', 0, 'https://oizumi-sample.ddev.site/2023/10/10/55aa3163-d101-4e13-923b-bc6791448f4b/', 0, 'customize_changeset', '', 0),
(107, 1, '2023-10-12 01:09:52', '2023-10-10 17:03:01', '', 'Who We Are', '', 'publish', 'closed', 'closed', '', '107', '', '', '2023-10-12 01:09:52', '2023-10-12 01:09:52', '', 0, 'https://oizumi-sample.ddev.site/?p=107', 2, 'nav_menu_item', '', 0),
(108, 1, '2023-10-10 19:42:51', '2023-10-10 19:42:51', 'More Icon', 'More Icon', 'More Icon', 'inherit', 'open', 'closed', '', 'logo-square', '', '', '2023-10-10 19:42:58', '2023-10-10 19:42:58', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/logo-square.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2023-10-11 02:38:54', '2023-10-11 02:38:54', 'With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.', 'Tighter Spreads & Faster Execution', 'Tighter Spreads & Faster Execution', 'inherit', 'open', 'closed', '', 'hero-desktop', '', '', '2023-10-11 02:39:05', '2023-10-11 02:39:05', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2023-10-11 04:00:13', '2023-10-11 04:00:13', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment\\r\\nYour Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-11 04:00:13', '2023-10-11 04:00:13', '', 2, 'https://oizumi-sample.ddev.site/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-10-11 04:00:54', '2023-10-11 04:00:54', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment \\r\\nYour Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-11 04:00:54', '2023-10-11 04:00:54', '', 2, 'https://oizumi-sample.ddev.site/?p=112', 0, 'revision', '', 0),
(113, 1, '2023-10-11 04:01:34', '2023-10-11 04:01:34', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment\\r\\nYour Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph-medium\"} -->\n<p class=\"oizumi_paragraph-medium\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-11 04:01:34', '2023-10-11 04:01:34', '', 2, 'https://oizumi-sample.ddev.site/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-10-11 04:14:33', '2023-10-11 04:14:33', '<!-- wp:acf/hero {\"name\":\"acf/hero\",\"mode\":\"preview\"} -->\n<!-- wp:columns {\"className\":\"oizumi-hero-block\"} -->\n<div class=\"wp-block-columns oizumi-hero-block\"><!-- wp:column {\"className\":\"oizumi-hero-block-1\"} -->\n<div class=\"wp-block-column oizumi-hero-block-1\"><!-- wp:heading {\"className\":\"oizumi-hero-heading\"} -->\n<h2 class=\"wp-block-heading oizumi-hero-heading\">Tighter Spreads &amp; Faster Execution</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With Forex Bros you trade with the best in the biz! With quality execution and some of the best trading conditions in the industry, your trading experience will be none other than epic.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>No dealing desk or requotes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Commissions as low as $0</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"oizumi-hero-block-2\"} -->\n<div class=\"wp-block-column oizumi-hero-block-2\"><!-- wp:image {\"id\":58,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"mobile-image\"} -->\n<figure class=\"wp-block-image size-full mobile-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-mobile.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-58\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":57,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"desktop-image\"} -->\n<figure class=\"wp-block-image size-large desktop-image\"><img src=\"https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/hero-desktop-1024x868.png\" alt=\"Tighter Spreads &amp; Faster Execution\" class=\"wp-image-57\" title=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:acf/hero -->\n\n<!-- wp:acf/heading {\"name\":\"acf/heading\",\"data\":{\"heading_tag\":\"h2\",\"_heading_tag\":\"field_65231a01f93d9\",\"heading_text\":\"Tools to Compliment\\r\\nYour Trading\",\"_heading_text\":\"field_6523457e9edec\"},\"mode\":\"edit\"} /-->\n\n<!-- wp:paragraph {\"className\":\"oizumi_paragraph\"} -->\n<p class=\"oizumi_paragraph\">Access news &amp; economic calendar, technical indicators &amp; charts, Forex Calculators, educational resources and many more tools to help you excel.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/carousel {\"name\":\"acf/carousel\",\"data\":{\"carousel_0_item_image\":54,\"_carousel_0_item_image\":\"field_65231b90d819a\",\"carousel_0_item_title\":\" Economic Calendar\",\"_carousel_0_item_title\":\"field_65231b9bd819b\",\"carousel_0_item_text\":\"Access all major events \\u0026 economic news that impact financial markets.\",\"_carousel_0_item_text\":\"field_65231badd819c\",\"carousel_0_item\":\"\",\"_carousel_0_item\":\"field_65231b7dd8199\",\"carousel_1_item_image\":53,\"_carousel_1_item_image\":\"field_65231b90d819a\",\"carousel_1_item_title\":\"Trading Calculators\",\"_carousel_1_item_title\":\"field_65231b9bd819b\",\"carousel_1_item_text\":\"Make trading calculations in real-time \\u0026 forecast the potential growth of your account.\",\"_carousel_1_item_text\":\"field_65231badd819c\",\"carousel_1_item\":\"\",\"_carousel_1_item\":\"field_65231b7dd8199\",\"carousel_2_item_image\":55,\"_carousel_2_item_image\":\"field_65231b90d819a\",\"carousel_2_item_title\":\"Educational Resources\",\"_carousel_2_item_title\":\"field_65231b9bd819b\",\"carousel_2_item_text\":\"From top tips \\u0026 trading psychology to more ways to earn, we make learning more fun.\",\"_carousel_2_item_text\":\"field_65231badd819c\",\"carousel_2_item\":\"\",\"_carousel_2_item\":\"field_65231b7dd8199\",\"carousel\":3,\"_carousel\":\"field_65231b59d8198\"},\"mode\":\"edit\"} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-11 04:14:33', '2023-10-11 04:14:33', '', 2, 'https://oizumi-sample.ddev.site/?p=114', 0, 'revision', '', 0),
(115, 1, '2023-10-12 01:10:02', '2023-10-12 01:10:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-10-12 01:10:02', '2023-10-12 01:10:02', '', 1, 'https://oizumi-sample.ddev.site/?p=115', 0, 'revision', '', 0),
(116, 1, '2023-10-12 04:09:22', '2023-10-12 04:09:22', 'More Logo', 'logo-horizontal-204', 'More Logo', 'inherit', 'open', 'closed', '', 'logo-horizontal-204', '', '', '2023-10-12 04:09:29', '2023-10-12 04:09:29', '', 0, 'https://oizumi-sample.ddev.site/wp-content/uploads/2023/10/logo-horizontal-204.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Afilliate Program', '', 'publish', 'closed', 'closed', '', 'afilliate-program-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=117', 14, 'nav_menu_item', '', 0),
(118, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'PAMM Accounts', '', 'publish', 'closed', 'closed', '', 'pamm-accounts-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=118', 15, 'nav_menu_item', '', 0),
(119, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=119', 22, 'nav_menu_item', '', 0),
(120, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=120', 23, 'nav_menu_item', '', 0),
(121, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'News', '', 'publish', 'closed', 'closed', '', 'news-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=121', 18, 'nav_menu_item', '', 0),
(122, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Education', '', 'publish', 'closed', 'closed', '', 'education-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=122', 17, 'nav_menu_item', '', 0),
(123, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us-2', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=123', 20, 'nav_menu_item', '', 0),
(124, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Economic Calculator', '', 'publish', 'closed', 'closed', '', 'economic-calculator-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=124', 9, 'nav_menu_item', '', 0),
(125, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Forex Calculators', '', 'publish', 'closed', 'closed', '', 'forex-calculators-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=125', 10, 'nav_menu_item', '', 0),
(126, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Interest Calculator', '', 'publish', 'closed', 'closed', '', 'interest-calculator-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=126', 11, 'nav_menu_item', '', 0),
(127, 1, '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 'Educational Blogs', '', 'publish', 'closed', 'closed', '', 'educational-blogs-3', '', '', '2023-10-12 07:20:57', '2023-10-12 07:20:57', '', 0, 'https://oizumi-sample.ddev.site/?p=127', 12, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Mobile Footer Menu', 'mobile-footer-menu', 0),
(5, 'Links Menu', 'links-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 4, 0),
(40, 4, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(49, 4, 0),
(50, 4, 0),
(74, 5, 0),
(75, 5, 0),
(76, 5, 0),
(77, 1, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 2, 0),
(93, 2, 0),
(94, 2, 0),
(95, 2, 0),
(96, 2, 0),
(97, 2, 0),
(98, 2, 0),
(99, 2, 0),
(107, 2, 0),
(117, 4, 0),
(118, 4, 0),
(119, 4, 0),
(120, 4, 0),
(121, 4, 0),
(122, 4, 0),
(123, 4, 0),
(124, 4, 0),
(125, 4, 0),
(126, 4, 0),
(127, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 22),
(3, 3, 'nav_menu', '', 0, 23),
(4, 4, 'nav_menu', '', 0, 23),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"90975015ee4aff19b74564e265618d4766f2bd16375819d484f924f10183b27b\";a:4:{s:10:\"expiration\";i:1697250350;s:2:\"ip\";s:10:\"172.18.0.5\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1697077550;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.18.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1696904284'),
(24, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-10-12T02:25:58.542Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVHPOW210JsXC91VrC7CVk7q9ozrX0.', 'admin', 'daniel.oizumi@gmail.com', 'http://localhost', '2023-10-06 02:03:25', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
