-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2018 at 03:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomlagroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_assets`
--

CREATE TABLE `ahqb3_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_assets`
--

INSERT INTO `ahqb3_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 147, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(8, 1, 17, 30, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(9, 1, 31, 32, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 33, 34, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 35, 36, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
(12, 1, 37, 38, 1, 'com_login', 'com_login', '{}'),
(13, 1, 39, 40, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 41, 42, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 43, 44, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 45, 50, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
(17, 1, 51, 52, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 53, 106, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
(19, 1, 107, 110, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(20, 1, 111, 112, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
(21, 1, 113, 114, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
(22, 1, 115, 116, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 117, 118, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
(24, 1, 119, 122, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
(26, 1, 123, 124, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 108, 109, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 120, 121, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 125, 126, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 127, 128, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 129, 130, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 131, 132, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 133, 134, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 135, 136, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 54, 55, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 56, 57, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 58, 59, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 60, 61, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 62, 63, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 64, 65, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 66, 67, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 68, 69, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 70, 71, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 72, 73, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 74, 75, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 76, 77, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 78, 79, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 80, 81, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 82, 83, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 46, 47, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 84, 85, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(57, 18, 86, 87, 2, 'com_modules.module.89', 'Homepage portfolio', '{}'),
(58, 18, 88, 89, 2, 'com_modules.module.90', 'Homepage method', '{}'),
(59, 18, 90, 91, 2, 'com_modules.module.91', 'Hompage Numbers', '{}'),
(60, 18, 92, 93, 2, 'com_modules.module.92', 'Homepage our blog', '{}'),
(61, 18, 94, 95, 2, 'com_modules.module.93', 'Homepage map & contact', '{}'),
(62, 16, 48, 49, 2, 'com_menus.menu.2', 'Menu Bottom', '{}'),
(63, 18, 96, 97, 2, 'com_modules.module.94', 'Menu Footer', '{}'),
(64, 18, 98, 99, 2, 'com_modules.module.95', 'Footer bottom', '{}'),
(65, 18, 100, 101, 2, 'com_modules.module.96', 'Homepage banner', '{}'),
(82, 8, 20, 29, 2, 'com_content.category.8', 'news', '{}'),
(83, 82, 21, 22, 3, 'com_content.article.1', 'new articles', '{}'),
(84, 1, 137, 138, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(85, 82, 23, 24, 3, 'com_content.article.2', 'Joomla 3.8.12 Release ', '{}'),
(86, 1, 139, 140, 1, '#__ucm_content.2', '#__ucm_content.2', '{}'),
(87, 18, 102, 103, 2, 'com_modules.module.111', 'Popular News', '{}'),
(88, 82, 25, 26, 3, 'com_content.article.3', '13 Reasons to Love Joomla! ', '{}'),
(89, 1, 141, 142, 1, '#__ucm_content.3', '#__ucm_content.3', '{}'),
(90, 18, 104, 105, 2, 'com_modules.module.112', 'Tags', '{}'),
(91, 82, 27, 28, 3, 'com_content.article.4', 'Java vs. Node.js: Huynh đệ tương tàn', '{}'),
(92, 1, 143, 144, 1, 'com_fields', 'com_fields', '{}'),
(93, 1, 145, 146, 1, 'com_associations', 'com_associations', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_associations`
--

CREATE TABLE `ahqb3_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_banners`
--

CREATE TABLE `ahqb3_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_banner_clients`
--

CREATE TABLE `ahqb3_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_banner_tracks`
--

CREATE TABLE `ahqb3_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_categories`
--

CREATE TABLE `ahqb3_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_categories`
--

INSERT INTO `ahqb3_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-27 03:29:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 82, 1, 11, 12, 1, 'news', 'com_content', 'news', 'news', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 240, '2018-08-30 09:38:12', 0, '2018-08-30 09:38:12', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_contact_details`
--

CREATE TABLE `ahqb3_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_contact_details`
--

INSERT INTO `ahqb3_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'contact', 'contact', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_info":"","show_name":"","show_position":"","show_email":"","add_mailto_link":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_image":"","show_misc":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 240, 4, 1, '', '', '', '', '', '*', '2018-09-03 03:58:00', 240, '', '2018-09-03 03:58:00', 0, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 198);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_content`
--

CREATE TABLE `ahqb3_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_content`
--

INSERT INTO `ahqb3_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 83, 'new articles', 'new-articles', '<p>this is content of articles</p>', '', 1, 8, '2018-08-30 09:39:23', 240, '', '2018-08-30 09:41:42', 240, 0, '0000-00-00 00:00:00', '2018-08-30 09:39:23', '0000-00-00 00:00:00', '{"image_intro":"images\\/custom\\/webdesign-stage1-1024x768.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 85, 'Joomla 3.8.12 Release ', 'joomla-3-8-12-release', '<p class="lead">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.</p>\r\n<h5>What''s in 3.8.12?</h5>\r\n', '\r\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:</p>\r\n<h3>Security Issues Fixed</h3>\r\n<ul>\r\n<li>Low Priority - Core -  Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href="https://developer.joomla.org/security-centre/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html">More information »</a></li>\r\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href="https://developer.joomla.org/security-centre/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html">More information »</a></li>\r\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href="https://developer.joomla.org/security-centre/745-20180803-core-acl-violation-in-custom-fields.html">More information »</a></li>\r\n</ul>\r\n<h3>Bug fixes and Improvements</h3>\r\n<ul>\r\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href="https://github.com/joomla/joomla-cms/pull/21336">#21336</a></li>\r\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href="https://github.com/joomla/joomla-cms/pull/21275">#21275</a></li>\r\n<li>com_tags: All Tags default layout <a href="https://github.com/joomla/joomla-cms/pull/21031">#21031</a></li>\r\n<li>Allows filtering by the archived state in the redirect component <a href="https://github.com/joomla/joomla-cms/pull/21673">#21673</a></li>\r\n</ul>\r\n<p>Visit GitHub for the full list of<a href="https://github.com/joomla/joomla-cms/milestone/38?closed=1"> bug fixes</a>.</p>', 1, 8, '2018-08-30 09:44:16', 240, '', '2018-09-07 10:41:18', 240, 0, '0000-00-00 00:00:00', '2018-08-30 09:44:16', '0000-00-00 00:00:00', '{"image_intro":"images\\/news\\/thumbs\\/hinh_350x262.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/news\\/thumbs\\/hinh_730x488.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 32, 1, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 88, '13 Reasons to Love Joomla! ', '13-reasons-to-love-joomla', '<p class="lead">13 years ago, we set out with a vision – to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us – with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we’ve come a long way. 14 versions in (major/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.</p>\r\n', '\r\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018…</p>\r\n<h3>1. Joomla! is Fully OpenSource – for Freedom to build, and Freedom to Scale</h3>\r\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).</p>\r\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over</h3>\r\n<p>Reliability – it’s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable – and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.</p>\r\n<h3>3. Joomla! Award-winning (x20)</h3>\r\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let’s just say that our trophy cabinet will soon need an upgrade!</p>\r\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)</h3>\r\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they’re to compete.</p>\r\n<h3>5. Extensions, Extensions Everywhere</h3>\r\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).</p>\r\n<h3>6. Joomla! has an Incredibly Flexible UI</h3>\r\n<p>Joomla! can transform into whatever you want and need it to be – brochure site, eCommerce, portfolio showcase – with a design style to suit.<br />With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.</p>\r\n<h3>7. Joomla! has One Powerful MVC</h3>\r\n<p>A predictable core code base is all well and good, but if it can’t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.</p>\r\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)</h3>\r\n<p>We’ve always moved with the times – ensuring that Joomla! looks fabulous no matter the device – desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be – with code that can be traversed by those rather demanding Googlebots.</p>\r\n<h3>9. Always Security Conscious</h3>\r\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we’ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.</p>\r\n<h3>10. Joomla! Speaks your Language</h3>\r\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we’re guessing). That’s why Joomla! is multilingual – with more than 70 languages available.</p>\r\n<h3>11. A Growing Community That Reaches Right Around the World</h3>\r\n<p>We’d be nothing without our army of volunteers, developers and designers behind us. It’s all part of the OpenSource ethos (just call us one big happy family).</p>\r\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard</h3>\r\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it’s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.</p>\r\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.</h3>\r\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it’s fair to say that there’s never been a better time to become a Joomla! fan.</p>\r\n<p class="lead">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here’s to the next 13 years of innovation and growth! Cheers!</p>', 1, 8, '2018-08-30 09:52:52', 240, '', '2018-09-07 10:52:12', 240, 0, '0000-00-00 00:00:00', '2018-08-30 09:52:52', '0000-00-00 00:00:00', '{"image_intro":"images\\/news\\/thumbs\\/pewdiepie-1_350x262.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/news\\/thumbs\\/pewdiepie-1_730x488.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, '', '', 1, 22, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 91, 'Java vs. Node.js: Huynh đệ tương tàn', 'java-vs-node-js-huynh-d-tuong-tan', '<p>1995 là một trong những năm điên rồ nhất lịch sử máy tính. Phiên bản Java đầu tiên xuất hiện, và rồi lòi ra thêm cậu em JavaScript. Hai cái tên “na ná” nhau làm mọi người lầm tưởng cả hai là “anh em song sinh dính liền” vừa mới tách ra vậy, nhưng thực tế cả hai chả giống gì nhau cả. Một cái theo kiểu compiled và stactical, cái kia thì interpreted và dynamical. Và đây chỉ là khởi đầu cho sự khác biệt “trời-vực” giữa hai ngôn ngữ này. Sau này, sự xuất hiện của Node.js sẽ càng khiến người ta điên đầu.</p>\r\n', '\r\n<p>Có lẽ, những bạn lập trình viên “già” vẫn còn nhớ ngày xưa, thời đỉnh điểm mà Java còn làm mưa làm gió trước khi dần nhường sân khấu cho những đàn em khác. Ngày ấy, mọi người cứ tưởng Java sẽ bất bại và thống trị cả thế giới máy tính cơ, nhưng đự đoán này <a href="http://www.infoworld.com/article/2612433/java/java-forever--12-keys-to-java-s-enduring-dominance.html" target="_new" rel="nofollow" data-wpel-link="external">chỉ đúng một nửa</a>. Ngày nay, Java vẫn thống trị, nhưng chủ yếu trên Android, môi trường doanh nghiệp và thế giới embed (như blu-ray chẳng hạn).</p>\r\n<p>Dù đã có nhiều thành công như vậy, Java chưa bao giờ có sức ảnh hưởng quá lớn trên môi trường desktop hay trình duyệt. Người ta cứ hay ca tụng sức mạnh của applets và những công cụ dựa trên Java khác, nhưng lại hay kết hợp loạn xạ cả lên. Và rồi server dần chuyển thành “điểm G” của Java.</p>', 1, 8, '2018-08-31 02:44:33', 240, '', '2018-09-07 10:47:59', 240, 240, '2018-09-13 01:26:35', '2018-08-31 02:44:33', '0000-00-00 00:00:00', '{"image_intro":"images\\/news\\/thumbs\\/hinh_350x262.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/news\\/thumbs\\/hinh_730x488.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 0, '', '', 1, 28, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_contentitem_tag_map`
--

CREATE TABLE `ahqb3_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `ahqb3_contentitem_tag_map`
--

INSERT INTO `ahqb3_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2018-08-30 09:41:44', 1),
('com_content.article', 2, 2, 3, '2018-09-07 10:41:19', 1),
('com_content.article', 3, 3, 2, '2018-09-07 10:52:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_content_frontpage`
--

CREATE TABLE `ahqb3_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_content_rating`
--

CREATE TABLE `ahqb3_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_content_types`
--

CREATE TABLE `ahqb3_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_content_types`
--

INSERT INTO `ahqb3_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_core_log_searches`
--

CREATE TABLE `ahqb3_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_extensions`
--

CREATE TABLE `ahqb3_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_extensions`
--

INSERT INTO `ahqb3_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","captcha":"","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"none","float_fulltext":"none","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"0","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"0","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"c.core_title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"1","tag_list_show_item_description":"1","tag_list_item_maximum_characters":0,"min_term_length":"3","return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"1","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"86f502102c41f1ff7dc17c7be5b7efac"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.38.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `ahqb3_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.8","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1536801679}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"c0ad236a514569fbeb73f449108120ef1a9728ae","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{"name":"plg_system_sessiongc","type":"plugin","creationDate":"February 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION","group":"","filename":"sessiongc"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.12","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"August 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.12","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.12","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"August 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.12.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'ruby_template', 'template', 'ruby_template', '', 0, 1, 1, 0, '{"name":"ruby_template","type":"template","creationDate":"April 2015","author":"Du Nguyen","copyright":"Copyright (C) 2015 Du Nguyen. All rights reserved.","authorEmail":"nguyenvuledu@gmail.com","authorUrl":"http:\\/\\/www.stroff.com","version":"1.0.0","description":"Template for Joomla 3.x.x","group":"","filename":"templateDetails"}', '{"menutype":"mainmenu","loadjquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'mod_footer_bottom', 'module', 'mod_homepage_portfolio', '', 0, 1, 0, 0, '{"name":"mod_footer_bottom","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage footer bottom","group":"","filename":"mod_footer_bottom"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'mod_homepage_method', 'module', 'mod_homepage_method', '', 0, 1, 0, 0, '{"name":"mod_homepage_method","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage method","group":"","filename":"mod_homepage_method"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'mod_homepage_our_blog', 'module', 'mod_homepage_our_blog', '', 0, 1, 0, 0, '{"name":"mod_homepage_our_blog","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage our blog","group":"","filename":"mod_homepage_our_blog"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'mod_homepage_map_contact', 'module', 'mod_homepage_map_contact', '', 0, 1, 0, 0, '{"name":"mod_homepage_map_contact","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage method","group":"","filename":"mod_homepage_map_contact"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'mod_footer_bottom', 'module', 'mod_footer_bottom', '', 0, 1, 0, 0, '{"name":"mod_footer_bottom","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage footer bottom","group":"","filename":"mod_footer_bottom"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'mod_homepage_banner', 'module', 'mod_homepage_banner', '', 0, 1, 0, 0, '{"name":"mod_homepage_banner","type":"module","creationDate":"July 2018","author":"trancong","copyright":"Copyright (C) 2018 Joomla Group team.","authorEmail":"","authorUrl":"","version":"3.0.0","description":"Mod homepage method","group":"","filename":"mod_homepage_banner"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'Content - Automatic Intro Image', 'plugin', 'automaticintroimage', 'content', 0, 1, 1, 0, '{"name":"Content - Automatic Intro Image","type":"plugin","creationDate":"2 July 2017","author":"Mattia Verga","copyright":"Copyright (C) 2017 Mattia Verga. All rights reserved.","authorEmail":"mattia.verga@tiscali.it","authorUrl":"","version":"1.3.2","description":"PLG_CONTENT_AUTOMATICINTROIMAGE_XML_DESCRIPTION","group":"","filename":"automaticintroimage"}', '{"width_thumb":350,"height_thumb":262,"width_full":730,"height_full":488}', '', '', 240, '2018-09-07 08:27:31', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_fields`
--

CREATE TABLE `ahqb3_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_fields_categories`
--

CREATE TABLE `ahqb3_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_fields_groups`
--

CREATE TABLE `ahqb3_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_fields_values`
--

CREATE TABLE `ahqb3_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_filters`
--

CREATE TABLE `ahqb3_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links`
--

CREATE TABLE `ahqb3_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms0`
--

CREATE TABLE `ahqb3_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms1`
--

CREATE TABLE `ahqb3_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms2`
--

CREATE TABLE `ahqb3_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms3`
--

CREATE TABLE `ahqb3_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms4`
--

CREATE TABLE `ahqb3_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms5`
--

CREATE TABLE `ahqb3_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms6`
--

CREATE TABLE `ahqb3_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms7`
--

CREATE TABLE `ahqb3_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms8`
--

CREATE TABLE `ahqb3_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_terms9`
--

CREATE TABLE `ahqb3_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termsa`
--

CREATE TABLE `ahqb3_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termsb`
--

CREATE TABLE `ahqb3_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termsc`
--

CREATE TABLE `ahqb3_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termsd`
--

CREATE TABLE `ahqb3_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termse`
--

CREATE TABLE `ahqb3_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_links_termsf`
--

CREATE TABLE `ahqb3_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_taxonomy`
--

CREATE TABLE `ahqb3_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ahqb3_finder_taxonomy`
--

INSERT INTO `ahqb3_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_taxonomy_map`
--

CREATE TABLE `ahqb3_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_terms`
--

CREATE TABLE `ahqb3_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_terms_common`
--

CREATE TABLE `ahqb3_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ahqb3_finder_terms_common`
--

INSERT INTO `ahqb3_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_tokens`
--

CREATE TABLE `ahqb3_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_tokens_aggregate`
--

CREATE TABLE `ahqb3_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_finder_types`
--

CREATE TABLE `ahqb3_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ahqb3_finder_types`
--

INSERT INTO `ahqb3_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_k2_log`
--

CREATE TABLE `ahqb3_k2_log` (
  `status` int(11) NOT NULL,
  `response` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ahqb3_k2_log`
--

INSERT INTO `ahqb3_k2_log` (`status`, `response`, `timestamp`) VALUES
(200, 'OK', '2018-08-30 04:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_languages`
--

CREATE TABLE `ahqb3_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_languages`
--

INSERT INTO `ahqb3_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_menu`
--

CREATE TABLE `ahqb3_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_menu`
--

INSERT INTO `ahqb3_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 83, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'mainmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=category&layout=blog', 'heading', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 43, 48, 0, '*', 0),
(103, 'mainmenu', 'SERVICES', 'services', '', 'services', '', 'heading', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 49, 56, 0, '*', 0),
(104, 'mainmenu', 'PORTFOLIO ', 'portfolio', '', 'portfolio', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 57, 58, 0, '*', 0),
(105, 'mainmenu', 'REVIEWS', 'reviews', '', 'reviews', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 59, 60, 0, '*', 0),
(106, 'mainmenu', 'CONTACT', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_info":"","show_name":"","show_position":"","show_email":"","add_mailto_link":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_image":"","allow_vcard":"","show_misc":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(107, 'mainmenu', 'Graphic Design', 'graphic-design', '', 'services/graphic-design', '#', 'url', 1, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 50, 51, 0, '*', 0),
(108, 'mainmenu', 'Logo & Identity Design', 'logo-identity-design', '', 'services/logo-identity-design', '#', 'url', 1, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 52, 53, 0, '*', 0),
(109, 'mainmenu', 'eCommerce Design & Development', 'ecommerce-design-development', '', 'services/ecommerce-design-development', '#', 'url', 1, 103, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 54, 55, 0, '*', 0),
(110, 'menu-bottom', 'About', 'about-bottom', '', 'about-bottom', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 63, 64, 0, '*', 0),
(111, 'menu-bottom', 'Blog', 'blog', '', 'blog', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 65, 66, 0, '*', 0),
(112, 'menu-bottom', 'Maketing', 'maketing', '', 'maketing', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 67, 68, 0, '*', 0),
(113, 'menu-bottom', 'UX & Design', 'ux-design', '', 'ux-design', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 69, 70, 0, '*', 0),
(114, 'menu-bottom', 'Request a Quote', 'request-a-quote', '', 'request-a-quote', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 71, 72, 0, '*', 0),
(115, 'menu-bottom', 'Portfolio', 'portfolio-bottom', '', 'portfolio-bottom', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 73, 74, 0, '*', 0),
(116, 'menu-bottom', 'Careers', 'careers', '', 'careers', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 75, 76, 0, '*', 0),
(117, 'menu-bottom', 'Contact Us', 'contact-us', '', 'contact-us', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 77, 78, 0, '*', 0),
(118, 'menu-bottom', 'Privacy Policy', 'privacy-policy', '', 'privacy-policy', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 79, 80, 0, '*', 0),
(119, 'menu-bottom', 'Terms of Use', 'terms-of-use', '', 'terms-of-use', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1}', 81, 82, 0, '*', 0),
(142, 'mainmenu', 'Joomla', 'joomla', '', 'news/joomla', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","article_layout":"_:default","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(143, 'mainmenu', 'Uncategory', 'uncategory', '', 'news/uncategory', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', 1, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_featured":"","article_layout":"_:default","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_menu_types`
--

CREATE TABLE `ahqb3_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_menu_types`
--

INSERT INTO `ahqb3_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 62, 'menu-bottom', 'Menu Bottom', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_messages`
--

CREATE TABLE `ahqb3_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_messages_cfg`
--

CREATE TABLE `ahqb3_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_modules`
--

CREATE TABLE `ahqb3_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_modules`
--

INSERT INTO `ahqb3_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"","class_sfx":"nav navbar-nav","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(89, 57, 'Homepage portfolio', '', '', 6, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_homepage_portfolio', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'Homepage method', '', '', 6, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_homepage_method', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 59, 'Hompage Numbers', '', '<section class="numbers">\r\n<div class="numbers__img"><img src="images/custom/chicago.jpg" alt="Chicago based team" /></div>\r\n<div class="numbers__item">\r\n<div class="numbers__num">9</div>\r\n<div class="numbers__desc">years of experience</div>\r\n</div>\r\n<div class="numbers__item">\r\n<div class="numbers__num">65,000+</div>\r\n<div class="numbers__desc">leads generated</div>\r\n</div>\r\n<div class="numbers__item">\r\n<div class="numbers__num">200+</div>\r\n<div class="numbers__desc">websites built</div>\r\n</div>\r\n</section>', 6, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 60, 'Homepage our blog', '', '', 6, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_homepage_our_blog', 1, 1, '{"catid":[2,8],"count":4,"show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 61, 'Homepage map & contact', '', '', 6, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_homepage_map_contact', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 63, 'Menu Footer', '', '', 1, 'menu_footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menu-bottom","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"menu-footer-navigation","class_sfx":"_menu_botoom","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 64, 'Footer bottom', '', '', 1, 'footer_bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer_bottom', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 65, 'Homepage banner', '', '', 1, 'homepage', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_homepage_banner', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 87, 'Popular News', '', '', 1, 'right_sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":[2,8],"count":4,"show_front":0,"date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":30,"layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 90, 'Tags', '', '', 1, 'right_sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{"maximum":5,"timeframe":"alltime","order_value":"count","order_direction":1,"display_count":0,"no_results_text":0,"minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":1,"cache_time":900,"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_modules_menu`
--

CREATE TABLE `ahqb3_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_modules_menu`
--

INSERT INTO `ahqb3_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(89, 101),
(90, 101),
(91, 101),
(92, 101),
(93, 101),
(94, 0),
(95, 0),
(96, 101),
(111, 0),
(112, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_newsfeeds`
--

CREATE TABLE `ahqb3_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_overrider`
--

CREATE TABLE `ahqb3_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_postinstall_messages`
--

CREATE TABLE `ahqb3_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_postinstall_messages`
--

INSERT INTO `ahqb3_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_redirect_links`
--

CREATE TABLE `ahqb3_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_schemas`
--

CREATE TABLE `ahqb3_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_schemas`
--

INSERT INTO `ahqb3_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_session`
--

CREATE TABLE `ahqb3_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_session`
--

INSERT INTO `ahqb3_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('2v7gbkd7c6kuh8h0ngo4gbj4b7', 0, 1, '1536386690', 'joomla|s:880:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjU7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTM2MzY5Njk5O3M6NDoibGFzdCI7aToxNTM2Mzg2NjE2O3M6Mzoibm93IjtpOjE1MzYzODY2ODk7fXM6NToidG9rZW4iO3M6MzI6IjNGd0RkSVlKOE0wajY2MTI0NEczOGZjd2h3RDAxeFg3Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6ImNvbV9jb250YWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImNvbnRhY3QiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7YToxOntzOjU6ImNhdGlkIjtzOjE6IjQiO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
('busmg2k2giasgruh5bjjgros23', 0, 1, '1536317537', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzYzMDcwMTE7czo0OiJsYXN0IjtpOjE1MzYzMTczMjQ7czozOiJub3ciO2k6MTUzNjMxNzUzNzt9czo1OiJ0b2tlbiI7czozMjoiM3FPcTVFMGd0R0tPbXBMSWNsM1g3VEdqSlFLOFh3NUgiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 0, ''),
('qfnqj57rrt3q6n00p9r7ia11f6', 0, 1, '1536802031', 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzNjgwMjAwNDtzOjQ6Imxhc3QiO2k6MTUzNjgwMjAxNztzOjM6Im5vdyI7aToxNTM2ODAyMDMwO31zOjU6InRva2VuIjtzOjMyOiI0c0FuRWlzMmVOQTRUUjlIUk5SMzBDYzA0dlhONTlCQyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('quk64es0gotdloosfsilc2fbp7', 1, 0, '1536381841', 'joomla|s:1244:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzYzODE3ODE7czo0OiJsYXN0IjtpOjE1MzYzODE4NDA7czozOiJub3ciO2k6MTUzNjM4MTg0MTt9czo1OiJ0b2tlbiI7czozMjoiOVFJRWRxamhYRmRTQWtmc1VmenphZGFnU2k3bkRpWjYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjI0MCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 240, 'admin'),
('r0mbu9k7mbj5e0l3q8n8q9uk13', 1, 0, '1536801997', 'joomla|s:1268:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzY4MDE2NzQ7czo0OiJsYXN0IjtpOjE1MzY4MDE5OTU7czozOiJub3ciO2k6MTUzNjgwMTk5NTt9czo1OiJ0b2tlbiI7czozMjoiNnZNRkxkRUplZ0xxZ2hnMkxyV1ROQ2Izd1A4RVRxMEoiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxNjoiY29tX2pvb21sYXVwZGF0ZSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo2OiJtZXRob2QiO3M6NjoiZGlyZWN0IjtzOjQ6ImZpbGUiO047czo4OiJwYXNzd29yZCI7czozMjoic1BBRmhBU1czVXVrdHE2OEIwbDFYNUY4dG4wQkdja1QiO3M6ODoiZmlsZXNpemUiO2k6MTE5MjUwODg7fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aTo0O31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiMjQwIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 240, 'admin'),
('v7q5aiklu68igtdijdk443n0u5', 1, 0, '1536317570', 'joomla|s:1940:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNDg7czo1OiJ0b2tlbiI7czozMjoicGxyS29sdXZCVFdkU3JJN3pHWWZTQkZzaUlvcHlHeGMiO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzNjMwNzQ0NDtzOjQ6Imxhc3QiO2k6MTUzNjMxNzUzMztzOjM6Im5vdyI7aToxNTM2MzE3NTY5O319czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7fXM6MTE6ImNvbV9wbHVnaW5zIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InBsdWdpbnMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjQ6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo3OiJlbmFibGVkIjtzOjA6IiI7czo2OiJmb2xkZXIiO3M6NzoiY29udGVudCI7czo2OiJhY2Nlc3MiO3M6MDoiIjt9czo0OiJsaXN0IjthOjQ6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxMDoiZm9sZGVyIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo5OiJzb3J0VGFibGUiO3M6NjoiZm9sZGVyIjtzOjE0OiJkaXJlY3Rpb25UYWJsZSI7czozOiJBU0MiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJwbHVnaW4iO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTAwMDk7fXM6NDoiZGF0YSI7Tjt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiIyNDAiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fXM6OToiY29tX21lZGlhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJyZXR1cm5fdXJsIjtzOjExNzoiaW5kZXgucGhwP29wdGlvbj1jb21fbWVkaWEmdmlldz1pbWFnZXMmdG1wbD1jb21wb25lbnQmZmllbGRpZD1qZm9ybV9pbWFnZXNfaW1hZ2VfZnVsbHRleHQmZV9uYW1lPSZhc3NldD04OCZhdXRob3I9MjQwIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=";', 240, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_tags`
--

CREATE TABLE `ahqb3_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_tags`
--

INSERT INTO `ahqb3_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 5, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 240, '2018-08-27 03:29:58', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'joomla', 'joomla', '', '', 1, 0, '2018-08-30 09:41:42', 1, '{}', '', '', '{}', 240, '2018-08-30 09:41:42', '', 0, '2018-08-30 09:41:42', '{}', '{}', 112, '*', 1, '2018-08-30 09:41:42', '2018-08-30 09:41:42'),
(3, 1, 3, 4, 1, 'news', 'News', 'news', '', '', 1, 0, '2018-08-30 09:44:34', 1, '{}', '', '', '{}', 240, '2018-08-30 09:44:34', '', 0, '2018-08-30 09:44:34', '{}', '{}', 9, '*', 1, '2018-08-30 09:44:34', '2018-08-30 09:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_template_styles`
--

CREATE TABLE `ahqb3_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_template_styles`
--

INSERT INTO `ahqb3_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'ruby_template', 0, '1', 'ruby_template - Default', '{"menutype":"mainmenu","loadjquery":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_ucm_base`
--

CREATE TABLE `ahqb3_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_ucm_base`
--

INSERT INTO `ahqb3_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_ucm_content`
--

CREATE TABLE `ahqb3_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Dumping data for table `ahqb3_ucm_content`
--

INSERT INTO `ahqb3_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'new articles', 'new-articles', '<p>this is content of articles</p>', 1, '0000-00-00 00:00:00', 0, 1, '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 240, '', '2018-08-30 09:39:23', 240, '2018-08-30 09:41:42', '*', '2018-08-30 09:39:23', '0000-00-00 00:00:00', 1, 84, '{"image_intro":"images\\/custom\\/webdesign-stage1-1024x768.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 0, 2, 0, '', '', 8, '', 1),
(2, 'com_content.article', 'Joomla 3.8.12 Release ', 'joomla-3-8-12-release', '<p class="lead">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.</p>\r\n<h5>What''s in 3.8.12?</h5>\r\n', 1, '0000-00-00 00:00:00', 0, 1, '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 240, '', '2018-08-30 09:44:16', 240, '2018-09-07 10:41:18', '*', '2018-08-30 09:44:16', '0000-00-00 00:00:00', 2, 86, '{"image_intro":"images\\/news\\/thumbs\\/hinh_350x262.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/news\\/thumbs\\/hinh_730x488.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 13, 32, 1, '', '', 8, '', 1),
(3, 'com_content.article', '13 Reasons to Love Joomla! ', '13-reasons-to-love-joomla', '<p class="lead">13 years ago, we set out with a vision – to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us – with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we’ve come a long way. 14 versions in (major/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.</p>\r\n', 1, '0000-00-00 00:00:00', 0, 1, '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 0, '{"robots":"","author":"","rights":"","xreference":""}', 240, '', '2018-08-30 09:52:52', 240, '2018-09-07 10:52:12', '*', '2018-08-30 09:52:52', '0000-00-00 00:00:00', 3, 89, '{"image_intro":"images\\/news\\/thumbs\\/pewdiepie-1_350x262.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/news\\/thumbs\\/pewdiepie-1_730x488.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', 22, 10, 0, '', '', 8, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_ucm_history`
--

CREATE TABLE `ahqb3_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_ucm_history`
--

INSERT INTO `ahqb3_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2018-08-30 09:38:12', 240, 545, 'd3b924c4f78b493a8f19eea6d7c271b2ef7bd293', '{"id":8,"asset_id":82,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"news","alias":"news","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"240","created_time":"2018-08-30 09:38:12","modified_user_id":null,"modified_time":"2018-08-30 09:38:12","hits":"0","language":"*","version":null}', 0),
(2, 1, 1, '', '2018-08-30 09:39:23', 240, 1834, '88b3b716cb1bc376c00cf20185f0e37d91238b7f', '{"id":1,"asset_id":83,"title":"new articles","alias":"new-articles","introtext":"<p>this is content of articles<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-08-30 09:39:23","created_by":"240","created_by_alias":"","modified":"2018-08-30 09:39:23","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-08-30 09:39:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/custom\\\\\\/webdesign-stage1-1024x768.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 2, 8, '', '2018-08-30 09:41:42', 240, 554, '78f27b8f106ec3263dea6281c6c561b46c6e121b', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"joomla","title":"joomla","alias":"joomla","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-08-30 09:41:42","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"240","created_time":"2018-08-30 09:41:42","created_by_alias":"","modified_user_id":"0","modified_time":"2018-08-30 09:41:42","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-08-30 09:41:42","publish_down":"2018-08-30 09:41:42"}', 0),
(5, 3, 8, '', '2018-08-30 09:44:34', 240, 548, '55c2c7719a32056e27a026d1784c7e197212bfa4', '{"id":3,"parent_id":"1","lft":"3","rgt":4,"level":1,"path":"news","title":"News","alias":"news","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-08-30 09:44:34","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"240","created_time":"2018-08-30 09:44:34","created_by_alias":"","modified_user_id":"0","modified_time":"2018-08-30 09:44:34","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-08-30 09:44:34","publish_down":"2018-08-30 09:44:34"}', 0),
(6, 3, 1, '', '2018-08-30 09:52:52', 240, 6641, '65dcfaab9d599173279c8a3b16f4e1297f94c998', '{"id":3,"asset_id":88,"title":"13 Reasons to Love Joomla! ","alias":"13-reasons-to-love-joomla","introtext":"<p class=\\"lead\\">13 years ago, we set out with a vision \\u2013 to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us \\u2013 with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we\\u2019ve come a long way. 14 versions in (major\\/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.<\\/p>\\r\\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018\\u2026<\\/p>\\r\\n<h3>1. Joomla! is Fully OpenSource \\u2013 for Freedom to build, and Freedom to Scale<\\/h3>\\r\\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).<\\/p>\\r\\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over<\\/h3>\\r\\n<p>Reliability \\u2013 it\\u2019s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable \\u2013 and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.<\\/p>\\r\\n<h3>3. Joomla! Award-winning (x20)<\\/h3>\\r\\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let\\u2019s just say that our trophy cabinet will soon need an upgrade!<\\/p>\\r\\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)<\\/h3>\\r\\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they\\u2019re to compete.<\\/p>\\r\\n<h3>5. Extensions, Extensions Everywhere<\\/h3>\\r\\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).<\\/p>\\r\\n<h3>6. Joomla! has an Incredibly Flexible UI<\\/h3>\\r\\n<p>Joomla! can transform into whatever you want and need it to be \\u2013 brochure site, eCommerce, portfolio showcase \\u2013 with a design style to suit.<br \\/>With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.<\\/p>\\r\\n<h3>7. Joomla! has One Powerful MVC<\\/h3>\\r\\n<p>A predictable core code base is all well and good, but if it can\\u2019t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.<\\/p>\\r\\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)<\\/h3>\\r\\n<p>We\\u2019ve always moved with the times \\u2013 ensuring that Joomla! looks fabulous no matter the device \\u2013 desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be \\u2013 with code that can be traversed by those rather demanding Googlebots.<\\/p>\\r\\n<h3>9. Always Security Conscious<\\/h3>\\r\\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we\\u2019ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.<\\/p>\\r\\n<h3>10. Joomla! Speaks your Language<\\/h3>\\r\\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we\\u2019re guessing). That\\u2019s why Joomla! is multilingual \\u2013 with more than 70 languages available.<\\/p>\\r\\n<h3>11. A Growing Community That Reaches Right Around the World<\\/h3>\\r\\n<p>We\\u2019d be nothing without our army of volunteers, developers and designers behind us. It\\u2019s all part of the OpenSource ethos (just call us one big happy family).<\\/p>\\r\\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard<\\/h3>\\r\\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it\\u2019s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.<\\/p>\\r\\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.<\\/h3>\\r\\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it\\u2019s fair to say that there\\u2019s never been a better time to become a Joomla! fan.<\\/p>\\r\\n<p class=\\"lead\\">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here\\u2019s to the next 13 years of innovation and growth! Cheers!<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-08-30 09:52:52","created_by":"240","created_by_alias":"","modified":"2018-08-30 09:52:52","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-08-30 09:52:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/joomla-3812-sr.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(7, 3, 1, '', '2018-08-31 02:37:49', 240, 6664, 'f1425f910c4c812630cef17b70e0127afd4b2879', '{"id":3,"asset_id":"88","title":"13 Reasons to Love Joomla! ","alias":"13-reasons-to-love-joomla","introtext":"<p class=\\"lead\\">13 years ago, we set out with a vision \\u2013 to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us \\u2013 with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we\\u2019ve come a long way. 14 versions in (major\\/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.<\\/p>\\r\\n","fulltext":"\\r\\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018\\u2026<\\/p>\\r\\n<h3>1. Joomla! is Fully OpenSource \\u2013 for Freedom to build, and Freedom to Scale<\\/h3>\\r\\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).<\\/p>\\r\\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over<\\/h3>\\r\\n<p>Reliability \\u2013 it\\u2019s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable \\u2013 and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.<\\/p>\\r\\n<h3>3. Joomla! Award-winning (x20)<\\/h3>\\r\\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let\\u2019s just say that our trophy cabinet will soon need an upgrade!<\\/p>\\r\\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)<\\/h3>\\r\\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they\\u2019re to compete.<\\/p>\\r\\n<h3>5. Extensions, Extensions Everywhere<\\/h3>\\r\\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).<\\/p>\\r\\n<h3>6. Joomla! has an Incredibly Flexible UI<\\/h3>\\r\\n<p>Joomla! can transform into whatever you want and need it to be \\u2013 brochure site, eCommerce, portfolio showcase \\u2013 with a design style to suit.<br \\/>With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.<\\/p>\\r\\n<h3>7. Joomla! has One Powerful MVC<\\/h3>\\r\\n<p>A predictable core code base is all well and good, but if it can\\u2019t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.<\\/p>\\r\\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)<\\/h3>\\r\\n<p>We\\u2019ve always moved with the times \\u2013 ensuring that Joomla! looks fabulous no matter the device \\u2013 desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be \\u2013 with code that can be traversed by those rather demanding Googlebots.<\\/p>\\r\\n<h3>9. Always Security Conscious<\\/h3>\\r\\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we\\u2019ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.<\\/p>\\r\\n<h3>10. Joomla! Speaks your Language<\\/h3>\\r\\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we\\u2019re guessing). That\\u2019s why Joomla! is multilingual \\u2013 with more than 70 languages available.<\\/p>\\r\\n<h3>11. A Growing Community That Reaches Right Around the World<\\/h3>\\r\\n<p>We\\u2019d be nothing without our army of volunteers, developers and designers behind us. It\\u2019s all part of the OpenSource ethos (just call us one big happy family).<\\/p>\\r\\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard<\\/h3>\\r\\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it\\u2019s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.<\\/p>\\r\\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.<\\/h3>\\r\\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it\\u2019s fair to say that there\\u2019s never been a better time to become a Joomla! fan.<\\/p>\\r\\n<p class=\\"lead\\">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here\\u2019s to the next 13 years of innovation and growth! Cheers!<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:52:52","created_by":"240","created_by_alias":"","modified":"2018-08-31 02:37:49","modified_by":"240","checked_out":"240","checked_out_time":"2018-08-31 02:29:36","publish_up":"2018-08-30 09:52:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/joomla-3812-sr.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 4, 1, '', '2018-08-31 02:44:33', 240, 4481, '1597fe5e7fafeda75e4be6fbc207b8861a0f516c', '{"id":4,"asset_id":91,"title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"2","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-08-31 02:44:33","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/custom\\\\\\/pewdiepie-1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/custom\\\\\\/pewdiepie-1.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 4, 1, '', '2018-08-31 02:44:53', 240, 4500, '614265614da26b46c8d772247e6e4ff781a977b8', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-08-31 02:44:53","modified_by":"240","checked_out":"240","checked_out_time":"2018-08-31 02:44:46","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/custom\\\\\\/pewdiepie-1.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/custom\\\\\\/pewdiepie-1.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 1, 2, '', '2018-09-03 03:58:00', 240, 1692, 'de1214f881004407c8de647c9731b761a3eadddc', '{"id":1,"name":"contact","alias":"contact","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"240","catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-09-03 03:58:00","created_by":"240","created_by_alias":"","modified":"2018-09-03 03:58:00","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(13, 2, 1, '', '2018-09-07 04:42:12', 240, 3842, '89a634893ef4d6772b95961daf870b273b9c169f', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 04:42:12","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 04:39:25","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/custom\\\\\\/bya-device.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 2, 1, '', '2018-09-07 04:44:31', 240, 3878, 'c7dd2002f8bea2e92393498d819e5e3ae50a42e0', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 04:44:31","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 04:42:12","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/custom\\\\\\/bya-device.png\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/uiux-1024x683.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"9","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 2, 1, '', '2018-09-07 08:10:24', 240, 3810, '9cf338d6bd20fa3e28bfa59a73c8ee8d301986ba', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 08:10:24","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 08:09:44","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 2, 1, '', '2018-09-07 08:34:33', 240, 3836, '7adb18c9e204426aca23622b4b1aa0e04978524e', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 08:34:33","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 08:24:39","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/hinh.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":14,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ahqb3_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(17, 2, 1, '', '2018-09-07 09:44:01', 240, 3898, '173a1b9f1479967a3205eefc9e88d4004c228b42', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:44:01","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:43:43","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":18,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"12","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 3, 1, '', '2018-09-07 09:46:05', 240, 6637, 'd08888edd6bcfd4824666c7de20dff08205229b4', '{"id":3,"asset_id":"88","title":"13 Reasons to Love Joomla! ","alias":"13-reasons-to-love-joomla","introtext":"<p class=\\"lead\\">13 years ago, we set out with a vision \\u2013 to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us \\u2013 with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we\\u2019ve come a long way. 14 versions in (major\\/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.<\\/p>\\r\\n","fulltext":"\\r\\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018\\u2026<\\/p>\\r\\n<h3>1. Joomla! is Fully OpenSource \\u2013 for Freedom to build, and Freedom to Scale<\\/h3>\\r\\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).<\\/p>\\r\\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over<\\/h3>\\r\\n<p>Reliability \\u2013 it\\u2019s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable \\u2013 and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.<\\/p>\\r\\n<h3>3. Joomla! Award-winning (x20)<\\/h3>\\r\\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let\\u2019s just say that our trophy cabinet will soon need an upgrade!<\\/p>\\r\\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)<\\/h3>\\r\\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they\\u2019re to compete.<\\/p>\\r\\n<h3>5. Extensions, Extensions Everywhere<\\/h3>\\r\\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).<\\/p>\\r\\n<h3>6. Joomla! has an Incredibly Flexible UI<\\/h3>\\r\\n<p>Joomla! can transform into whatever you want and need it to be \\u2013 brochure site, eCommerce, portfolio showcase \\u2013 with a design style to suit.<br \\/>With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.<\\/p>\\r\\n<h3>7. Joomla! has One Powerful MVC<\\/h3>\\r\\n<p>A predictable core code base is all well and good, but if it can\\u2019t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.<\\/p>\\r\\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)<\\/h3>\\r\\n<p>We\\u2019ve always moved with the times \\u2013 ensuring that Joomla! looks fabulous no matter the device \\u2013 desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be \\u2013 with code that can be traversed by those rather demanding Googlebots.<\\/p>\\r\\n<h3>9. Always Security Conscious<\\/h3>\\r\\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we\\u2019ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.<\\/p>\\r\\n<h3>10. Joomla! Speaks your Language<\\/h3>\\r\\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we\\u2019re guessing). That\\u2019s why Joomla! is multilingual \\u2013 with more than 70 languages available.<\\/p>\\r\\n<h3>11. A Growing Community That Reaches Right Around the World<\\/h3>\\r\\n<p>We\\u2019d be nothing without our army of volunteers, developers and designers behind us. It\\u2019s all part of the OpenSource ethos (just call us one big happy family).<\\/p>\\r\\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard<\\/h3>\\r\\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it\\u2019s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.<\\/p>\\r\\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.<\\/h3>\\r\\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it\\u2019s fair to say that there\\u2019s never been a better time to become a Joomla! fan.<\\/p>\\r\\n<p class=\\"lead\\">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here\\u2019s to the next 13 years of innovation and growth! Cheers!<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:52:52","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:46:05","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:45:58","publish_up":"2018-08-30 09:52:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 3, 1, '', '2018-09-07 09:46:24', 240, 6739, '1cca1b2aab0761924a18185a27050942b8a5332f', '{"id":3,"asset_id":"88","title":"13 Reasons to Love Joomla! ","alias":"13-reasons-to-love-joomla","introtext":"<p class=\\"lead\\">13 years ago, we set out with a vision \\u2013 to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us \\u2013 with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we\\u2019ve come a long way. 14 versions in (major\\/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.<\\/p>\\r\\n","fulltext":"\\r\\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018\\u2026<\\/p>\\r\\n<h3>1. Joomla! is Fully OpenSource \\u2013 for Freedom to build, and Freedom to Scale<\\/h3>\\r\\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).<\\/p>\\r\\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over<\\/h3>\\r\\n<p>Reliability \\u2013 it\\u2019s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable \\u2013 and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.<\\/p>\\r\\n<h3>3. Joomla! Award-winning (x20)<\\/h3>\\r\\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let\\u2019s just say that our trophy cabinet will soon need an upgrade!<\\/p>\\r\\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)<\\/h3>\\r\\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they\\u2019re to compete.<\\/p>\\r\\n<h3>5. Extensions, Extensions Everywhere<\\/h3>\\r\\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).<\\/p>\\r\\n<h3>6. Joomla! has an Incredibly Flexible UI<\\/h3>\\r\\n<p>Joomla! can transform into whatever you want and need it to be \\u2013 brochure site, eCommerce, portfolio showcase \\u2013 with a design style to suit.<br \\/>With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.<\\/p>\\r\\n<h3>7. Joomla! has One Powerful MVC<\\/h3>\\r\\n<p>A predictable core code base is all well and good, but if it can\\u2019t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.<\\/p>\\r\\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)<\\/h3>\\r\\n<p>We\\u2019ve always moved with the times \\u2013 ensuring that Joomla! looks fabulous no matter the device \\u2013 desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be \\u2013 with code that can be traversed by those rather demanding Googlebots.<\\/p>\\r\\n<h3>9. Always Security Conscious<\\/h3>\\r\\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we\\u2019ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.<\\/p>\\r\\n<h3>10. Joomla! Speaks your Language<\\/h3>\\r\\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we\\u2019re guessing). That\\u2019s why Joomla! is multilingual \\u2013 with more than 70 languages available.<\\/p>\\r\\n<h3>11. A Growing Community That Reaches Right Around the World<\\/h3>\\r\\n<p>We\\u2019d be nothing without our army of volunteers, developers and designers behind us. It\\u2019s all part of the OpenSource ethos (just call us one big happy family).<\\/p>\\r\\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard<\\/h3>\\r\\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it\\u2019s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.<\\/p>\\r\\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.<\\/h3>\\r\\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it\\u2019s fair to say that there\\u2019s never been a better time to become a Joomla! fan.<\\/p>\\r\\n<p class=\\"lead\\">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here\\u2019s to the next 13 years of innovation and growth! Cheers!<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:52:52","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:46:24","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:46:05","publish_up":"2018-08-30 09:52:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 4, 1, '', '2018-09-07 09:48:43', 240, 4431, '2479b6858be4058461f8cd6c6a70a66093552b76', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:48:43","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:48:32","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 4, 1, '', '2018-09-07 09:49:05', 240, 4533, '9d68dcb8f38aed4d4867ab97cf634ee7be682cd1', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:49:05","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:48:43","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 4, 1, '', '2018-09-07 09:58:05', 240, 4549, '10ff2d5b02ee4221b61f01465a3c848b1d3b70bc', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-09-07 09:58:05","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 09:55:40","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 4, 1, '', '2018-09-07 10:06:49', 240, 4457, '40ae466c1f194276a39c8ca5fa0c7b43900c894c', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:06:49","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:06:07","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/hinh.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 2, 1, '', '2018-09-07 10:08:28', 240, 3854, 'a867b6cca205daf65d82235a92b16301d375bacb', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:08:28","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:08:22","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":19,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 2, 1, '', '2018-09-07 10:08:50', 240, 3843, '56c5e52190669f3a426e327d36941e9686dc72b5', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:08:50","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:08:35","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/pewdiepie-1.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":21,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `ahqb3_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(26, 2, 1, '', '2018-09-07 10:18:22', 240, 3609, '70d7e011b1802059ad788caff1f90315aa95f939', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:18:22","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:17:13","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"null","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":26,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 2, 1, '', '2018-09-07 10:20:32', 240, 3912, 'fc5b31c07584897e5943f9f99ac79041372fdaf2', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:20:32","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:18:34","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":28,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 2, 1, '', '2018-09-07 10:20:45', 240, 3928, '06541ea523533f8e1f58c255f533ad6bb31676fc', '{"id":2,"asset_id":"85","title":"Joomla 3.8.12 Release ","alias":"joomla-3-8-12-release","introtext":"<p class=\\"lead\\">Joomla 3.8.12 is now available. This is a security release for the 3.x series of Joomla which addresses 3 security vulnerabilities and contains over 20 bug fixes and improvements.<\\/p>\\r\\n<h5>What''s in 3.8.12?<\\/h5>\\r\\n","fulltext":"\\r\\n<p>Joomla 3.8.12 includes three security vulnerability fixes, several bug fixes and improvements:<\\/p>\\r\\n<h3>Security Issues Fixed<\\/h3>\\r\\n<ul>\\r\\n<li>Low Priority - Core - \\u00a0Hardening the InputFilter for phar stubs (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/743-20180801-core-hardening-the-inputfilter-for-phar-stubs.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - Stored XSS vulnerability in the frontend profile (affecting Joomla 1.5.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/744-20180802-core-stored-xss-vulnerability-in-the-frontend-profile.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<li>Low Priority - Core - ACL Violation in custom fields (affecting Joomla 3.7.0 through 3.8.11) <a href=\\"https:\\/\\/developer.joomla.org\\/security-centre\\/745-20180803-core-acl-violation-in-custom-fields.html\\">More information \\u00bb<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<h3>Bug fixes and Improvements<\\/h3>\\r\\n<ul>\\r\\n<li>mod_articles_latest and mod_articles_news: fix to show featured articles <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21336\\">#21336<\\/a><\\/li>\\r\\n<li>Tags in com_content: fix to display tags when other item info are set to hidden <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21275\\">#21275<\\/a><\\/li>\\r\\n<li>com_tags: All Tags default layout <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21031\\">#21031<\\/a><\\/li>\\r\\n<li>Allows filtering by the archived state in the redirect component <a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/pull\\/21673\\">#21673<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<p>Visit GitHub for the full list of<a href=\\"https:\\/\\/github.com\\/joomla\\/joomla-cms\\/milestone\\/38?closed=1\\"> bug fixes<\\/a>.<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:44:16","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:20:45","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:20:32","publish_up":"2018-08-30 09:44:16","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/pewdiepie-1_730x488_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":29,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"13","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 3, 1, '', '2018-09-07 10:37:00', 240, 6725, '6e200f35c86d3b2c04a347f037df571d7d34399e', '{"id":3,"asset_id":"88","title":"13 Reasons to Love Joomla! ","alias":"13-reasons-to-love-joomla","introtext":"<p class=\\"lead\\">13 years ago, we set out with a vision \\u2013 to develop a CMS that stood firm on its Open Source values. Instantly, the community was behind us \\u2013 with more than a thousand people joining our project within just one day. Fast forward 13 years and you could say that we\\u2019ve come a long way. 14 versions in (major\\/minor), Joomla! now powers millions of websites, with more than 7950 extensions lining the digital shelves of our extension directory.<\\/p>\\r\\n","fulltext":"\\r\\n<p>To celebrate Joomla! hitting our teenage years, we want to share 13 reasons to love our platform in 2018\\u2026<\\/p>\\r\\n<h3>1. Joomla! is Fully OpenSource \\u2013 for Freedom to build, and Freedom to Scale<\\/h3>\\r\\n<p>Joomla! is, and always will be, proudly OpenSource (and totally FREE).<\\/p>\\r\\n<h3>2. Joomla! is Established, Stable and Trusted by Businesses the World Over<\\/h3>\\r\\n<p>Reliability \\u2013 it\\u2019s mission-critical for businesses the world over that rely on their website for sales, enquiries and conversions. Since day dot we were focused on creating a platform that was strong and stable \\u2013 and we believe our success in this area is just one of many reasons why we now power nearly 10% of all websites worldwide.<\\/p>\\r\\n<h3>3. Joomla! Award-winning (x20)<\\/h3>\\r\\n<p>Joomla! continues to pick up gong after gong, with almost 20 awards to our name, including: CMS Critic People''s Choice Awards - Best Free CMS, Packt Open Source Awards - Best Open Source CMS, and Infoworld Bossie Awards - Best Open Source Application. Let\\u2019s just say that our trophy cabinet will soon need an upgrade!<\\/p>\\r\\n<h3>4. Joomla! has a Feature-Packed Core (That Just Gets Better, and Better)<\\/h3>\\r\\n<p>With every version we release, we aim to add something worth shouting about. This has led us to a CMS that now features out-of-the-box functionality that other platforms need a long list of plugins for if they\\u2019re to compete.<\\/p>\\r\\n<h3>5. Extensions, Extensions Everywhere<\\/h3>\\r\\n<p>From event calendars and inline editing, to newsletters and form makers, the extended website features you need are but a single click away (and our extension library grows by the day!).<\\/p>\\r\\n<h3>6. Joomla! has an Incredibly Flexible UI<\\/h3>\\r\\n<p>Joomla! can transform into whatever you want and need it to be \\u2013 brochure site, eCommerce, portfolio showcase \\u2013 with a design style to suit.<br \\/>With a flexible UI supercharged with endless themes and plugins, the online world is your oyster.<\\/p>\\r\\n<h3>7. Joomla! has One Powerful MVC<\\/h3>\\r\\n<p>A predictable core code base is all well and good, but if it can\\u2019t flex and fit to the needs of developers, what use is it? Our multi-talented MVC strikes the balance just right.<\\/p>\\r\\n<h3>8. Joomla! is Mobile Responsive and SEO Friendly (Right from the Get Go)<\\/h3>\\r\\n<p>We\\u2019ve always moved with the times \\u2013 ensuring that Joomla! looks fabulous no matter the device \\u2013 desktop, smartphone or tablet (right out of the box). Part and parcel of this is also ensuring that our platform is easily navigated by the SEO powers that be \\u2013 with code that can be traversed by those rather demanding Googlebots.<\\/p>\\r\\n<h3>9. Always Security Conscious<\\/h3>\\r\\n<p>Never ones for resting on our laurels, we take security seriously. In fact, we\\u2019ve got a dedicated Strike Team, who have the sole mission of finding and patching exploits before they become widely known.<\\/p>\\r\\n<h3>10. Joomla! Speaks your Language<\\/h3>\\r\\n<p>Urgh. Who wants to wrestle with plugins to simply get your CMS to talk in your own language? Certainly not us (or you, we\\u2019re guessing). That\\u2019s why Joomla! is multilingual \\u2013 with more than 70 languages available.<\\/p>\\r\\n<h3>11. A Growing Community That Reaches Right Around the World<\\/h3>\\r\\n<p>We\\u2019d be nothing without our army of volunteers, developers and designers behind us. It\\u2019s all part of the OpenSource ethos (just call us one big happy family).<\\/p>\\r\\n<h3>12. Beer, Cookies and Song - We Work Hard, and Play Hard<\\/h3>\\r\\n<p>As you may have guessed, our community lives and breathes code and CMS innovation. But it\\u2019s not all work, work, work. For all their efforts, they deserve copious amounts of beer, cookies and song.<\\/p>\\r\\n<h3>13. Joomla! 4 is on the Horizon - Lighter Code Base, Tighter Security, Better Accessibility.<\\/h3>\\r\\n<p>Great things come to those who wait, and just around the corner is Joomla! 4. Featuring a fresh user interface, a lighter code base, tighter security and better accessibility, it\\u2019s fair to say that there\\u2019s never been a better time to become a Joomla! fan.<\\/p>\\r\\n<p class=\\"lead\\">Unlucky for some, but wonderful for us, 13 has been great for Joomla! and its loyal users. So here\\u2019s to the next 13 years of innovation and growth! Cheers!<\\/p>","state":1,"catid":"8","created":"2018-08-30 09:52:52","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:37:00","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:36:41","publish_up":"2018-08-30 09:52:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 4, 1, '', '2018-09-07 10:38:23', 240, 4520, '89f6442018b0ae060e987964631f771b5b29704a', '{"id":4,"asset_id":"91","title":"Java vs. Node.js: Huynh \\u0111\\u1ec7 t\\u01b0\\u01a1ng t\\u00e0n","alias":"java-vs-node-js-huynh-d-tuong-tan","introtext":"<p>1995 l\\u00e0 m\\u1ed9t trong nh\\u1eefng n\\u0103m \\u0111i\\u00ean r\\u1ed3 nh\\u1ea5t l\\u1ecbch s\\u1eed m\\u00e1y t\\u00ednh. Phi\\u00ean b\\u1ea3n Java \\u0111\\u1ea7u ti\\u00ean xu\\u1ea5t hi\\u1ec7n, v\\u00e0 r\\u1ed3i l\\u00f2i ra th\\u00eam c\\u1eadu em JavaScript. Hai c\\u00e1i t\\u00ean \\u201cna n\\u00e1\\u201d nhau l\\u00e0m m\\u1ecdi ng\\u01b0\\u1eddi l\\u1ea7m t\\u01b0\\u1edfng c\\u1ea3 hai l\\u00e0 \\u201canh em song sinh d\\u00ednh li\\u1ec1n\\u201d v\\u1eeba m\\u1edbi t\\u00e1ch ra v\\u1eady, nh\\u01b0ng th\\u1ef1c t\\u1ebf c\\u1ea3 hai ch\\u1ea3 gi\\u1ed1ng g\\u00ec nhau c\\u1ea3. M\\u1ed9t c\\u00e1i theo ki\\u1ec3u compiled v\\u00e0 stactical, c\\u00e1i kia th\\u00ec interpreted v\\u00e0 dynamical. V\\u00e0 \\u0111\\u00e2y ch\\u1ec9 l\\u00e0 kh\\u1edfi \\u0111\\u1ea7u cho s\\u1ef1 kh\\u00e1c bi\\u1ec7t \\u201ctr\\u1eddi-v\\u1ef1c\\u201d gi\\u1eefa hai ng\\u00f4n ng\\u1eef n\\u00e0y. Sau n\\u00e0y, s\\u1ef1 xu\\u1ea5t hi\\u1ec7n c\\u1ee7a Node.js s\\u1ebd c\\u00e0ng khi\\u1ebfn ng\\u01b0\\u1eddi ta \\u0111i\\u00ean \\u0111\\u1ea7u.<\\/p>\\r\\n","fulltext":"\\r\\n<p>C\\u00f3 l\\u1ebd, nh\\u1eefng b\\u1ea1n l\\u1eadp tr\\u00ecnh vi\\u00ean \\u201cgi\\u00e0\\u201d v\\u1eabn c\\u00f2n nh\\u1edb ng\\u00e0y x\\u01b0a, th\\u1eddi \\u0111\\u1ec9nh \\u0111i\\u1ec3m m\\u00e0 Java c\\u00f2n l\\u00e0m m\\u01b0a l\\u00e0m gi\\u00f3 tr\\u01b0\\u1edbc khi d\\u1ea7n nh\\u01b0\\u1eddng s\\u00e2n kh\\u1ea5u cho nh\\u1eefng \\u0111\\u00e0n em kh\\u00e1c. Ng\\u00e0y \\u1ea5y, m\\u1ecdi ng\\u01b0\\u1eddi c\\u1ee9 t\\u01b0\\u1edfng Java s\\u1ebd b\\u1ea5t b\\u1ea1i v\\u00e0 th\\u1ed1ng tr\\u1ecb c\\u1ea3 th\\u1ebf gi\\u1edbi m\\u00e1y t\\u00ednh c\\u01a1, nh\\u01b0ng \\u0111\\u1ef1 \\u0111o\\u00e1n n\\u00e0y <a href=\\"http:\\/\\/www.infoworld.com\\/article\\/2612433\\/java\\/java-forever--12-keys-to-java-s-enduring-dominance.html\\" target=\\"_new\\" rel=\\"nofollow\\" data-wpel-link=\\"external\\">ch\\u1ec9 \\u0111\\u00fang m\\u1ed9t n\\u1eeda<\\/a>. Ng\\u00e0y nay, Java v\\u1eabn th\\u1ed1ng tr\\u1ecb, nh\\u01b0ng ch\\u1ee7 y\\u1ebfu tr\\u00ean Android, m\\u00f4i tr\\u01b0\\u1eddng doanh nghi\\u1ec7p v\\u00e0 th\\u1ebf gi\\u1edbi embed (nh\\u01b0 blu-ray ch\\u1eb3ng h\\u1ea1n).<\\/p>\\r\\n<p>D\\u00f9 \\u0111\\u00e3 c\\u00f3 nhi\\u1ec1u th\\u00e0nh c\\u00f4ng nh\\u01b0 v\\u1eady, Java ch\\u01b0a bao gi\\u1edd c\\u00f3 s\\u1ee9c \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 l\\u1edbn tr\\u00ean m\\u00f4i tr\\u01b0\\u1eddng desktop hay tr\\u00ecnh duy\\u1ec7t. Ng\\u01b0\\u1eddi ta c\\u1ee9 hay ca t\\u1ee5ng s\\u1ee9c m\\u1ea1nh c\\u1ee7a applets v\\u00e0 nh\\u1eefng c\\u00f4ng c\\u1ee5 d\\u1ef1a tr\\u00ean Java kh\\u00e1c, nh\\u01b0ng l\\u1ea1i hay k\\u1ebft h\\u1ee3p lo\\u1ea1n x\\u1ea1 c\\u1ea3 l\\u00ean. V\\u00e0 r\\u1ed3i server d\\u1ea7n chuy\\u1ec3n th\\u00e0nh \\u201c\\u0111i\\u1ec3m G\\u201d c\\u1ee7a Java.<\\/p>","state":1,"catid":"8","created":"2018-08-31 02:44:33","created_by":"240","created_by_alias":"","modified":"2018-09-07 10:38:23","modified_by":"240","checked_out":"240","checked_out_time":"2018-09-07 10:38:11","publish_up":"2018-08-31 02:44:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_350x262.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/news\\\\\\/thumbs\\\\\\/hinh_730x488.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"22","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_updates`
--

CREATE TABLE `ahqb3_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `ahqb3_updates`
--

INSERT INTO `ahqb3_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(2, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(3, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(4, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(5, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(6, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(7, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(8, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(9, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(10, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(11, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(12, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(13, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(14, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.11.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(15, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(16, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(17, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(18, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(19, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(20, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(21, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(22, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(23, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(24, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(25, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(26, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(27, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(28, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(29, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(30, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(31, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(32, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(33, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.12.2', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(34, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(35, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(36, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(37, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(38, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(39, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(40, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(41, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(42, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(43, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(44, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(45, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(46, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(47, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(48, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(49, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(50, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(51, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(52, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_update_sites`
--

CREATE TABLE `ahqb3_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `ahqb3_update_sites`
--

INSERT INTO `ahqb3_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1536801982, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(4, 'Automatic Inro Image Update Site', 'extension', 'https://raw.githubusercontent.com/mattiaverga/JAutomaticIntroImage/master/manifest.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_update_sites_extensions`
--

CREATE TABLE `ahqb3_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `ahqb3_update_sites_extensions`
--

INSERT INTO `ahqb3_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10009);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_usergroups`
--

CREATE TABLE `ahqb3_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_usergroups`
--

INSERT INTO `ahqb3_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_users`
--

CREATE TABLE `ahqb3_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_users`
--

INSERT INTO `ahqb3_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(240, 'Super User', 'admin', 'trancong.joomla@gmail.com', '$2y$10$jH/ybJnqUf/lb/tasqmG.uXjzUf/s1MHIjOSkHfeZaWGc96n8gZ/G', 0, 1, '2018-08-27 03:29:59', '2018-09-13 01:21:29', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_user_keys`
--

CREATE TABLE `ahqb3_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_user_notes`
--

CREATE TABLE `ahqb3_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_user_profiles`
--

CREATE TABLE `ahqb3_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_user_usergroup_map`
--

CREATE TABLE `ahqb3_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_user_usergroup_map`
--

INSERT INTO `ahqb3_user_usergroup_map` (`user_id`, `group_id`) VALUES
(240, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_utf8_conversion`
--

CREATE TABLE `ahqb3_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_utf8_conversion`
--

INSERT INTO `ahqb3_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `ahqb3_viewlevels`
--

CREATE TABLE `ahqb3_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ahqb3_viewlevels`
--

INSERT INTO `ahqb3_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahqb3_assets`
--
ALTER TABLE `ahqb3_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `ahqb3_associations`
--
ALTER TABLE `ahqb3_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `ahqb3_banners`
--
ALTER TABLE `ahqb3_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_banner_clients`
--
ALTER TABLE `ahqb3_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `ahqb3_banner_tracks`
--
ALTER TABLE `ahqb3_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `ahqb3_categories`
--
ALTER TABLE `ahqb3_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_contact_details`
--
ALTER TABLE `ahqb3_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `ahqb3_content`
--
ALTER TABLE `ahqb3_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `ahqb3_contentitem_tag_map`
--
ALTER TABLE `ahqb3_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `ahqb3_content_frontpage`
--
ALTER TABLE `ahqb3_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `ahqb3_content_rating`
--
ALTER TABLE `ahqb3_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `ahqb3_content_types`
--
ALTER TABLE `ahqb3_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `ahqb3_extensions`
--
ALTER TABLE `ahqb3_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `ahqb3_fields`
--
ALTER TABLE `ahqb3_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_fields_categories`
--
ALTER TABLE `ahqb3_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `ahqb3_fields_groups`
--
ALTER TABLE `ahqb3_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_fields_values`
--
ALTER TABLE `ahqb3_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `ahqb3_finder_filters`
--
ALTER TABLE `ahqb3_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `ahqb3_finder_links`
--
ALTER TABLE `ahqb3_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `ahqb3_finder_links_terms0`
--
ALTER TABLE `ahqb3_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms1`
--
ALTER TABLE `ahqb3_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms2`
--
ALTER TABLE `ahqb3_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms3`
--
ALTER TABLE `ahqb3_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms4`
--
ALTER TABLE `ahqb3_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms5`
--
ALTER TABLE `ahqb3_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms6`
--
ALTER TABLE `ahqb3_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms7`
--
ALTER TABLE `ahqb3_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms8`
--
ALTER TABLE `ahqb3_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_terms9`
--
ALTER TABLE `ahqb3_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termsa`
--
ALTER TABLE `ahqb3_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termsb`
--
ALTER TABLE `ahqb3_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termsc`
--
ALTER TABLE `ahqb3_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termsd`
--
ALTER TABLE `ahqb3_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termse`
--
ALTER TABLE `ahqb3_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_links_termsf`
--
ALTER TABLE `ahqb3_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `ahqb3_finder_taxonomy`
--
ALTER TABLE `ahqb3_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `ahqb3_finder_taxonomy_map`
--
ALTER TABLE `ahqb3_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `ahqb3_finder_terms`
--
ALTER TABLE `ahqb3_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `ahqb3_finder_terms_common`
--
ALTER TABLE `ahqb3_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `ahqb3_finder_tokens`
--
ALTER TABLE `ahqb3_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `ahqb3_finder_tokens_aggregate`
--
ALTER TABLE `ahqb3_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `ahqb3_finder_types`
--
ALTER TABLE `ahqb3_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `ahqb3_languages`
--
ALTER TABLE `ahqb3_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `ahqb3_menu`
--
ALTER TABLE `ahqb3_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_menu_types`
--
ALTER TABLE `ahqb3_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `ahqb3_messages`
--
ALTER TABLE `ahqb3_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `ahqb3_messages_cfg`
--
ALTER TABLE `ahqb3_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `ahqb3_modules`
--
ALTER TABLE `ahqb3_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_modules_menu`
--
ALTER TABLE `ahqb3_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `ahqb3_newsfeeds`
--
ALTER TABLE `ahqb3_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `ahqb3_overrider`
--
ALTER TABLE `ahqb3_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ahqb3_postinstall_messages`
--
ALTER TABLE `ahqb3_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `ahqb3_redirect_links`
--
ALTER TABLE `ahqb3_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `ahqb3_schemas`
--
ALTER TABLE `ahqb3_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `ahqb3_session`
--
ALTER TABLE `ahqb3_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `ahqb3_tags`
--
ALTER TABLE `ahqb3_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `ahqb3_template_styles`
--
ALTER TABLE `ahqb3_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `ahqb3_ucm_base`
--
ALTER TABLE `ahqb3_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `ahqb3_ucm_content`
--
ALTER TABLE `ahqb3_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `ahqb3_ucm_history`
--
ALTER TABLE `ahqb3_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `ahqb3_updates`
--
ALTER TABLE `ahqb3_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `ahqb3_update_sites`
--
ALTER TABLE `ahqb3_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `ahqb3_update_sites_extensions`
--
ALTER TABLE `ahqb3_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `ahqb3_usergroups`
--
ALTER TABLE `ahqb3_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `ahqb3_users`
--
ALTER TABLE `ahqb3_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ahqb3_user_keys`
--
ALTER TABLE `ahqb3_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ahqb3_user_notes`
--
ALTER TABLE `ahqb3_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `ahqb3_user_profiles`
--
ALTER TABLE `ahqb3_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `ahqb3_user_usergroup_map`
--
ALTER TABLE `ahqb3_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `ahqb3_viewlevels`
--
ALTER TABLE `ahqb3_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ahqb3_assets`
--
ALTER TABLE `ahqb3_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `ahqb3_banners`
--
ALTER TABLE `ahqb3_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_banner_clients`
--
ALTER TABLE `ahqb3_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_categories`
--
ALTER TABLE `ahqb3_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ahqb3_contact_details`
--
ALTER TABLE `ahqb3_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ahqb3_content`
--
ALTER TABLE `ahqb3_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ahqb3_content_types`
--
ALTER TABLE `ahqb3_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ahqb3_extensions`
--
ALTER TABLE `ahqb3_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;
--
-- AUTO_INCREMENT for table `ahqb3_fields`
--
ALTER TABLE `ahqb3_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_fields_groups`
--
ALTER TABLE `ahqb3_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_finder_filters`
--
ALTER TABLE `ahqb3_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_finder_links`
--
ALTER TABLE `ahqb3_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_finder_taxonomy`
--
ALTER TABLE `ahqb3_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ahqb3_finder_terms`
--
ALTER TABLE `ahqb3_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_finder_types`
--
ALTER TABLE `ahqb3_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ahqb3_languages`
--
ALTER TABLE `ahqb3_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ahqb3_menu`
--
ALTER TABLE `ahqb3_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `ahqb3_menu_types`
--
ALTER TABLE `ahqb3_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ahqb3_messages`
--
ALTER TABLE `ahqb3_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_modules`
--
ALTER TABLE `ahqb3_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `ahqb3_newsfeeds`
--
ALTER TABLE `ahqb3_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_overrider`
--
ALTER TABLE `ahqb3_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `ahqb3_postinstall_messages`
--
ALTER TABLE `ahqb3_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ahqb3_redirect_links`
--
ALTER TABLE `ahqb3_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_tags`
--
ALTER TABLE `ahqb3_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ahqb3_template_styles`
--
ALTER TABLE `ahqb3_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ahqb3_ucm_content`
--
ALTER TABLE `ahqb3_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ahqb3_ucm_history`
--
ALTER TABLE `ahqb3_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ahqb3_updates`
--
ALTER TABLE `ahqb3_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `ahqb3_update_sites`
--
ALTER TABLE `ahqb3_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ahqb3_usergroups`
--
ALTER TABLE `ahqb3_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ahqb3_users`
--
ALTER TABLE `ahqb3_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `ahqb3_user_keys`
--
ALTER TABLE `ahqb3_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_user_notes`
--
ALTER TABLE `ahqb3_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ahqb3_viewlevels`
--
ALTER TABLE `ahqb3_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
