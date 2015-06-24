-- phpMyAdmin SQL Dump
-- version 4.2.6deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 24 2015 г., 23:46
-- Версия сервера: 5.6.19-1~exp1ubuntu2
-- Версия PHP: 5.5.12-2ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `makemywedding`
--

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_assets`
--

CREATE TABLE IF NOT EXISTS `uclwy_assets` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Дамп данных таблицы `uclwy_assets`
--

INSERT INTO `uclwy_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 496, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 90, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 91, 92, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 93, 94, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 95, 96, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 97, 98, 1, 'com_login', 'com_login', '{}'),
(13, 1, 99, 100, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 101, 102, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 103, 104, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 105, 106, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 107, 108, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 109, 144, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 145, 146, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 147, 148, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 149, 150, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 151, 152, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(24, 1, 153, 154, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 155, 156, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 55, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 8, 56, 81, 2, 'com_content.category.7', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(33, 27, 21, 22, 3, 'com_content.article.1', 'Layouts', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(34, 27, 23, 24, 3, 'com_content.article.2', 'Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 27, 25, 26, 3, 'com_content.article.3', 'ZOO', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 27, 27, 28, 3, 'com_content.article.4', 'Built with UIkit', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 27, 29, 30, 3, 'com_content.article.5', 'Dummy Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 27, 31, 32, 3, 'com_content.article.6', 'Theme Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 27, 33, 34, 3, 'com_content.article.7', 'Home', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 32, 57, 58, 3, 'com_content.article.8', 'Joomla Templates', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 32, 59, 60, 3, 'com_content.article.9', 'Beautiful Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 32, 61, 62, 3, 'com_content.article.10', 'Warp Framework', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 32, 63, 64, 3, 'com_content.article.11', 'ZOO Extension', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(56, 7, 16, 17, 2, 'com_contact.category.8', 'Contacts', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(59, 1, 462, 463, 1, 'com_finder', 'com_finder', '{"core.admin":[],"core.manage":[]}'),
(63, 1, 466, 467, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.delete":{"6":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 1, 468, 469, 1, '#__ucm_content.1', '#__ucm_content.1', '[]'),
(66, 1, 470, 471, 1, '#__ucm_content.2', '#__ucm_content.2', '[]'),
(67, 1, 472, 473, 1, '#__ucm_content.3', '#__ucm_content.3', '[]'),
(68, 1, 474, 475, 1, '#__ucm_content.4', '#__ucm_content.4', '[]'),
(69, 1, 476, 477, 1, '#__ucm_content.5', '#__ucm_content.5', '[]'),
(70, 1, 478, 479, 1, '#__ucm_content.6', '#__ucm_content.6', '[]'),
(71, 1, 480, 481, 1, 'com_tags', 'com_tags', '{}'),
(72, 1, 482, 483, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(73, 1, 484, 485, 1, 'com_ajax', 'com_ajax', '{}'),
(74, 1, 486, 487, 1, 'com_postinstall', 'com_postinstall', '{}'),
(75, 18, 110, 145, 2, 'com_modules.module.1', 'Main Menu', ''),
(77, 18, 146, 147, 2, 'com_modules.module.19', 'Bottom A', ''),
(78, 18, 148, 149, 2, 'com_modules.module.20', 'Bottom A', ''),
(79, 18, 150, 151, 2, 'com_modules.module.21', 'Bottom A', ''),
(81, 18, 152, 153, 2, 'com_modules.module.23', 'Home Venice Theme', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 18, 154, 155, 2, 'com_modules.module.27', 'Bottom B', ''),
(86, 18, 156, 157, 2, 'com_modules.module.28', 'Bottom B', ''),
(90, 18, 158, 159, 2, 'com_modules.module.32', 'Footer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 18, 160, 161, 2, 'com_modules.module.33', 'Headerbar', ''),
(92, 18, 162, 163, 2, 'com_modules.module.34', 'Main Bottom', ''),
(93, 18, 164, 165, 2, 'com_modules.module.35', 'Main Bottom', ''),
(94, 18, 166, 167, 2, 'com_modules.module.36', ' Main Top', ''),
(95, 18, 168, 169, 2, 'com_modules.module.37', 'Main Top', ''),
(96, 18, 170, 171, 2, 'com_modules.module.38', 'Logo', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(98, 18, 172, 173, 2, 'com_modules.module.40', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 18, 174, 175, 2, 'com_modules.module.41', 'Sub Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 18, 176, 177, 2, 'com_modules.module.42', 'Sidebar Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(101, 18, 178, 179, 2, 'com_modules.module.43', 'Sidebar A', ''),
(102, 18, 180, 181, 2, 'com_modules.module.44', 'Sidebar A', ''),
(103, 18, 182, 183, 2, 'com_modules.module.48', 'Latest News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 18, 184, 185, 2, 'com_modules.module.49', 'Login', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(109, 18, 186, 187, 2, 'com_modules.module.57', 'Sidebar B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(110, 18, 188, 189, 2, 'com_modules.module.58', 'Sidebar B', ''),
(111, 18, 190, 191, 2, 'com_modules.module.59', 'Sidebar B', ''),
(112, 18, 192, 193, 2, 'com_modules.module.61', 'Top Menu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(113, 18, 194, 195, 2, 'com_modules.module.62', 'Top A', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(114, 18, 196, 197, 2, 'com_modules.module.63', 'Top A', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(115, 18, 198, 199, 2, 'com_modules.module.64', 'Top A', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(122, 18, 200, 201, 2, 'com_modules.module.71', 'Top B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(123, 18, 202, 203, 2, 'com_modules.module.72', 'Top B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(124, 18, 204, 205, 2, 'com_modules.module.73', 'Top B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(125, 18, 206, 207, 2, 'com_modules.module.74', 'Top B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(127, 18, 210, 211, 2, 'com_modules.module.76', 'Twitter List', ''),
(129, 18, 212, 213, 2, 'com_modules.module.78', 'Twitter Bubbles', ''),
(130, 18, 214, 215, 2, 'com_modules.module.79', 'Twitter Single', ''),
(132, 18, 216, 217, 2, 'com_modules.module.83', 'ZOO Item', ''),
(133, 18, 218, 219, 2, 'com_modules.module.84', 'ZOO Comment', ''),
(134, 18, 220, 221, 2, 'com_modules.module.85', 'ZOO Tag', ''),
(135, 18, 222, 223, 2, 'com_modules.module.86', 'ZOO Category', ''),
(141, 18, 224, 225, 2, 'com_modules.module.94', 'Offcanvas Menu', ''),
(142, 18, 226, 227, 2, 'com_modules.module.95', 'Offcanvas', ''),
(143, 18, 228, 229, 2, 'com_modules.module.96', 'Home Travel Diaries', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(147, 18, 230, 231, 2, 'com_modules.module.100', 'Social Icons', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(149, 18, 232, 233, 2, 'com_modules.module.102', 'Logo small', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(151, 32, 71, 72, 3, 'com_content.article.24', 'UIkit', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 1, 488, 489, 1, '#__ucm_content.7', '#__ucm_content.7', '[]'),
(153, 32, 73, 74, 3, 'com_content.article.25', 'Pagekit', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 1, 490, 491, 1, '#__ucm_content.8', '#__ucm_content.8', '[]'),
(156, 32, 77, 78, 3, 'com_content.article.26', 'Free Halloween Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 1, 492, 493, 1, '#__ucm_content.9', '#__ucm_content.9', '[]'),
(158, 18, 110, 111, 2, 'com_modules.module.103', 'Home Fullscreen Slideshow', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(159, 18, 112, 113, 2, 'com_modules.module.104', 'Home Get In Touch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(160, 18, 114, 115, 2, 'com_modules.module.105', 'Home Footer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(162, 8, 82, 89, 2, 'com_content.category.10', 'Frontpage Blog', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(163, 162, 83, 84, 3, 'com_content.article.27', 'The right Equipment', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(164, 162, 85, 86, 3, 'com_content.article.28', 'Local Cuisine', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(165, 162, 87, 88, 3, 'com_content.article.29', 'Insider Tips', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(166, 18, 116, 117, 2, 'com_modules.module.106', 'Bottom B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(167, 18, 118, 119, 2, 'com_modules.module.107', 'Bottom C', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(168, 18, 120, 121, 2, 'com_modules.module.108', 'Bottom C', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(169, 18, 122, 123, 2, 'com_modules.module.109', 'Bottom C', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(170, 18, 124, 125, 2, 'com_modules.module.110', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(171, 27, 47, 48, 3, 'com_content.article.13', 'Widgetkit', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(172, 18, 126, 127, 2, 'com_modules.module.111', 'Widgetkit', ''),
(174, 18, 128, 129, 2, 'com_modules.module.112', 'Widgetkit', ''),
(175, 27, 53, 54, 3, 'com_content.article.30', 'About', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(176, 27, 51, 52, 3, 'com_content.article.31', 'Features', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(177, 27, 49, 50, 3, 'com_content.article.32', 'Services', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(178, 18, 130, 131, 2, 'com_modules.module.113', 'About Contact us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(179, 18, 132, 133, 2, 'com_modules.module.114', 'Features Top Slideshow', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(180, 18, 134, 135, 2, 'com_modules.module.115', 'Services Purchase', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(181, 18, 136, 137, 2, 'com_modules.module.116', 'Login', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(182, 18, 138, 139, 2, 'com_modules.module.117', 'Sidebar A', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(183, 18, 140, 141, 2, 'com_modules.module.118', 'Sidebar B', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(184, 18, 142, 143, 2, 'com_modules.module.119', 'Get Widgetkit 2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(185, 1, 494, 495, 1, 'com_widgetkit', 'com_widgetkit', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_associations`
--

CREATE TABLE IF NOT EXISTS `uclwy_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_banners`
--

CREATE TABLE IF NOT EXISTS `uclwy_banners` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_banner_clients`
--

CREATE TABLE IF NOT EXISTS `uclwy_banner_clients` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `uclwy_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_categories`
--

CREATE TABLE IF NOT EXISTS `uclwy_categories` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned DEFAULT NULL,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `uclwy_categories`
--

INSERT INTO `uclwy_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 340, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 340, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 5, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 340, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 340, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 340, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 340, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 340, '2011-05-02 11:42:21', 0, '0000-00-00 00:00:00', 170, '*', 1),
(8, 56, 1, 13, 14, 1, 'contacts', 'com_contact', 'Contacts', 'contacts', '', '', 1, 42, '2012-01-23 15:30:29', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 340, '2011-11-18 16:32:10', 42, '2011-11-18 16:32:13', 0, '*', 1),
(9, 57, 1, 15, 16, 1, 'yootheme-links', 'com_weblinks', 'YOOtheme Links', 'yootheme-links', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 340, '2012-01-22 12:45:00', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 162, 1, 17, 18, 1, 'frontpage-blog', 'com_content', 'Frontpage Blog', 'frontpage-blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 340, '2014-07-30 07:54:19', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_contact_details`
--

CREATE TABLE IF NOT EXISTS `uclwy_contact_details` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `uclwy_contact_details`
--

INSERT INTO `uclwy_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'John Q. Public', 'john-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2011-11-18 16:33:47', 340, '', '2012-01-23 15:36:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(2, 'Jane Q. Public', 'jane-q-public', 'Chief Information Officer', '1 Infinite Loop', 'Cupertino', 'California', 'USA', '95014', '1-212-555555-1', '1-212-555555-2', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.', '', 'email@0.0.0.0', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 8, 1, '', '', '', '', '', '*', '2011-11-18 16:35:05', 340, '', '2012-01-19 16:37:23', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_content`
--

CREATE TABLE IF NOT EXISTS `uclwy_content` (
`id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `uclwy_content`
--

INSERT INTO `uclwy_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 33, 'Layouts', 'layouts', '<p>Warp comes with a sophisticated layout system to create any kind of sidebar or widget layout. You can easily manage the sidebar''s positions and widths in the theme administration. Widgets can have different styles and be placed in any position offered by this theme. Each position has its own layout. You can align widgets side-by-side, stack them or choose your own grid layout. Show or hide widgets on mobile devices, while the grid adapts perfectly to your layout.</p>\n\n<img src="images/yootheme/features_layouts.svg" width="560" height="320" alt="Warp Layout System" title="Warp Layout System" />', '', 1, 2, '2011-05-02 11:45:23', 340, '', '2013-06-25 15:34:27', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:45:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 13, '', '', 1, 1248, '{"robots":"","author":"","rights":"","xreference":"","tags":null}', 0, '*', ''),
(2, 34, 'Icons', 'icons', '<p class="uk-article-lead">YOOtheme is a well-known template and extension provider for Joomla and WordPress who helps you to create professional websites. But to make your website or interface design a real eye-catcher there was one thing missing: Icons! Icons are an essential tool to simplify user interfaces and today almost every major website uses icons to highlight important parts in their content.</p>\n\n<ul class="uk-grid uk-grid-width-medium-1-2 uk-grid-width-large-1-3 uk-margin-large" data-uk-grid-margin>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-1''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_buildings.png" width="600" height="400" alt="Building Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Building Icons</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-2''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_hosting.png" width="600" height="400" alt="Hosting Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Hosting Icons</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-3''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_tools.png" width="600" height="400" alt="Tool Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Tool Icons</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-4''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_shipping.png" width="600" height="400" alt="Shipping Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Shipping Icons</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-5''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_ecommerce.png" width="600" height="400" alt="E-Commerce Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">E-Commerce Icons</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" data-uk-modal="{target:''#modal-6''}">\n            <div class="uk-overlay">\n                <img src="images/yootheme/icons_space.png" width="600" height="400" alt="Space Icons">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Space Icons</div>\n        </a>\n    </li>\n</ul>\n\n<h2 class="uk-h3">Features</h2>\n\n<div class="uk-grid uk-grid-divider" data-uk-grid-margin>\n    <div class="uk-width-medium-1-3">\n       <div class="uk-grid">\n            <div class="uk-width-large-1-6 uk-vertical-align uk-text-center" style="height: 50px;">\n                <div class="uk-vertical-align-middle">\n                    <i class="uk-icon-paste uk-icon-medium uk-text-primary"></i>\n                </div>\n            </div>\n            <div class="uk-width-large-5-6 uk-text-center-small uk-text-center-medium">\n                <h3 class="uk-h4 uk-margin-bottom-remove">PNGs in 8 Sizes</h3>\n                <p class="uk-margin-top-remove">From 16x16 to 512x512 pixels. </p>\n            </div>\n        </div>\n    </div>\n\n    <div class="uk-width-medium-1-3">\n        <div class="uk-grid">\n            <div class="uk-width-large-1-6 uk-vertical-align uk-text-center" style="height: 50px;">\n                <div class="uk-vertical-align-middle">\n                    <i class="uk-icon-sort-amount-asc uk-icon-medium uk-text-primary"></i>\n                </div>\n            </div>\n            <div class="uk-width-large-5-6 uk-text-center-small uk-text-center-medium">\n                <h3 class="uk-h4 uk-margin-bottom-remove">Scalable vector sources</h3>\n                <p class="uk-margin-top-remove">Customizable PDF vector files.</p>\n            </div>\n        </div>\n    </div>\n\n    <div class="uk-width-medium-1-3">\n        <div class="uk-grid">\n            <div class="uk-width-large-1-6 uk-vertical-align uk-text-center" style="height: 50px;">\n                <div class="uk-vertical-align-middle">\n                    <i class="uk-icon-tint uk-icon-medium uk-text-primary"></i>\n                </div>\n            </div>\n            <div class="uk-width-large-5-6 uk-text-center-small uk-text-center-medium">\n                <h3 class="uk-h4 uk-margin-bottom-remove">Pixel perfect design</h3>\n                <p class="uk-margin-top-remove">Handcrafted every size.</p>\n            </div>\n        </div>\n    </div>\n\n    <div class="uk-width-medium-1-1">\n        <div class="uk-panel uk-panel-box uk-text-center">\n            <p><strong>YOOtheme Icons.</strong> Beautiful and handcrafted icons for web and print projects. <a class="uk-button uk-button-primary uk-margin-left" href="http://www.yootheme.com/icons" target="_blank">Visit Website</a></p>\n        </div>\n    </div>\n</div>\n\n<div id="modal-1" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_buildings.png" width="600" height="400" alt="Building Icons">\n    </div>\n</div>\n\n<div id="modal-2" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_hosting.png" width="600" height="400" alt="Hosting Icons">\n    </div>\n</div>\n\n<div id="modal-3" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_tools.png" width="600" height="400" alt="Tool Icons">\n    </div>\n</div>\n\n<div id="modal-4" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_shipping.png" width="600" height="400" alt="Shipping Icons">\n    </div>\n</div>\n\n<div id="modal-5" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_ecommerce.png" width="600" height="400" alt="E-Commerce Icons">\n    </div>\n</div>\n\n<div id="modal-6" class="uk-modal">\n    <div class="uk-modal-dialog uk-modal-dialog-lightbox">\n        <a href="" class="uk-modal-close uk-close uk-close-alt"></a>\n        <img src="images/yootheme/icons_space.png" width="600" height="400" alt="Space Icons">\n    </div>\n</div>', '', 1, 2, '2011-05-02 11:47:01', 340, '', '2014-11-04 10:33:09', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 49, 14, '', '', 1, 375, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 35, 'ZOO', 'zoo', '<div class="uk-grid" data-uk-grid-margin>\n    <div class="uk-width-medium-1-2">\n        <p class="uk-article-lead">ZOO is a flexible and powerful content application builder to manage your content. It provides a much improved Joomla experience.</p>\n        <p>The key feature is the ability to create your very own custom content types. You define what a type is made up of - e.g. text, images or a file download. Any combination is imaginable! You bring the content, ZOO brings the elements to structure it and make it look good!</p>\n        <p><a class="uk-button" href="http://www.yootheme.com/zoo" target="_blank">Visit Website</a></p>\n    </div>\n\n    <div class="uk-width-medium-1-2 uk-text-center-small">\n        <a data-lightbox="width:852;height:480;autoplay:true;" href="http://www.yootheme.com/videos/zoo_video_tour.mp4">\n            <img src="images/yootheme/zoo_video_tour.png" width="500" height="300" alt="Take the video tour on the ZOO!" title="Take the video tour on the ZOO!">\n        </a>\n    </div>\n</div>\n\n<h2 class="uk-marginlarge-top">Apps for every Purpose</h2>\n\n<p>ZOO moves from simply being a CCK to an Application Builder. Apps are extensions for ZOO which are optimized for different purposes and types of content catalogs. ZOO offers a wide range of apps to get you started right away. There is a blog, a product catalog, a cookbook, a business directory, a documentation, a download archive and a movie database app!</p>\n\n\n\n<h3>Joomla Integration</h3>\n\n<p>By now ZOO has developed a thriving ecosystem, with new ZOO extensions appearing regularly. It also integrates well with many popular Joomla extensions. Besides the ZOO component itself offers additional modules and plugins. They allow a seamless integration into Joomla and provide a richer tool set to create your website.</p>\n\n<div class="uk-grid" data-uk-grid-margin>\n    <div class="uk-width-medium-1-1">\n        <div class="uk-panel uk-panel-box uk-text-center">\n          <p><strong>Get ZOO.</strong> A flexible and powerful content application builder to manage your content. <a class="uk-button uk-button-primary uk-margin-left" href="http://www.yootheme.com/zoo" target="_blank">Download ZOO</a></p>\n        </div>\n    </div>\n</div>', '', 1, 2, '2011-05-02 11:47:22', 340, '', '2014-12-18 13:51:30', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 26, 15, '', '', 1, 235, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 36, 'Built with UIkit', 'uikit', '<div class="uk-grid" data-uk-grid-margin>\n    \n    <div class="uk-width-medium-2-3">\n        \n        <div class="uk-grid" data-uk-grid-margin>\n            \n            <div class="uk-width-1-1">\n                \n                <div class="uk-panel">\n                    \n                    <p class="uk-article-meta">Written by Super User on 12 April. Posted in Blog</p>\n                    \n                    <div class="uk-grid" data-uk-grid-margin>\n                        <div class="uk-width-1-1 uk-margin-small-bottom">\n                            <a class="uk-thumbnail uk-overlay-toggle" href="#" data-uk-modal="{target:''#modal-1''}">\n                                <div class="uk-overlay">\n                                    <img src="images/yootheme/uikit.jpg" width="1080" height="540" alt="UIkit">\n                                    <div class="uk-overlay-area"></div>\n                                </div>\n                                <div class="uk-thumbnail-caption">Caption with Modal</div>\n                            </a>\n                        </div>\n                    </div>\n                    \n                    <p class="uk-article-lead">A lightweight and modular front-end framework.</p>\n                    <p>UIkit is a lightweight and modular front-end framework for developing fast and powerful web interfaces. It comes with a wide range of reusable and combinable components. All UIkit classes are namespaced, so they won''t interfere with other frameworks and extensions you might be using. Here''s an overview of the different UIkit components, which you can easily modify using the customizer.</p>\n                    \n                    <div class="uk-margin-large" data-uk-margin>\n                        \n                        <div class="uk-button-group">\n                            <button class="uk-button">Button</button>\n                            <div data-uk-dropdown="{mode:''click''}">\n                                <button class="uk-button"><i class="uk-icon-caret-down"></i></button>\n                                <div class="uk-dropdown uk-dropdown-width-2">\n                                    \n                                    <div class="uk-grid">\n                                        \n                                        <div class="uk-width-1-2">\n                                            <ul class="uk-nav uk-nav-dropdown uk-panel">\n                                                <li class="uk-nav-header">Header</li>\n                                                <li><a href="#">Item</a></li>\n                                                <li><a href="#">Item</a></li>\n                                                <li class="uk-nav-divider"></li>\n                                                <li><a href="#">Separated item</a></li>\n                                                <li class="uk-parent">\n                                                    <a href="#">Parent</a>\n                                                    <ul class="uk-nav-sub">\n                                                        <li><a href="#">Sub item</a>\n                                                            <ul>\n                                                                <li><a href="#">Sub item</a></li>\n                                                            </ul>\n                                                        </li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </div>\n                                        \n                                        <div class="uk-width-1-2">\n                                            <ul class="uk-nav uk-nav-dropdown uk-panel">\n                                                <li class="uk-nav-header">Header</li>\n                                                <li><a href="#">Item</a></li>\n                                                <li><a href="#">Item</a></li>\n                                                <li class="uk-nav-divider"></li>\n                                                <li><a href="#">Separated item</a></li>\n                                                <li class="uk-parent">\n                                                    <a href="#">Parent</a>\n                                                    <ul class="uk-nav-sub">\n                                                        <li><a href="#">Sub item</a>\n                                                            <ul>\n                                                                <li><a href="#">Sub item</a></li>\n                                                            </ul>\n                                                        </li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </div>\n                                        \n                                    </div>\n                                    \n                                </div>\n                            </div>\n                        </div>\n                        \n                        <div class="uk-button-group">\n                            <button class="uk-button uk-button-primary">Primary</button>\n                            <div data-uk-dropdown="{mode:''click''}">\n                                <button class="uk-button uk-button-primary"><i class="uk-icon-caret-down"></i></button>\n                                <div class="uk-dropdown uk-dropdown-small">\n                                    <ul class="uk-nav uk-nav-dropdown">\n                                        <li class="uk-nav-header">Header</li>\n                                        <li><a href="#">Item</a></li>\n                                        <li><a href="#">Item</a></li>\n                                        <li class="uk-nav-divider"></li>\n                                        <li><a href="#">Separated item</a></li>\n                                        <li class="uk-parent">\n                                            <a href="#">Parent</a>\n                                            <ul class="uk-nav-sub">\n                                                <li><a href="#">Sub item</a>\n                                                    <ul>\n                                                        <li><a href="#">Sub item</a></li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        \n                        <div class="uk-button-group">\n                            <button class="uk-button uk-button-success">Success</button>\n                            <div data-uk-dropdown="{mode:''click''}">\n                                <button class="uk-button uk-button-success"><i class="uk-icon-caret-down"></i></button>\n                                <div class="uk-dropdown">\n                                    <ul class="uk-nav uk-nav-dropdown">\n                                        <li class="uk-nav-header">Header</li>\n                                        <li><a href="#">Item</a></li>\n                                        <li><a href="#">Item</a></li>\n                                        <li class="uk-nav-divider"></li>\n                                        <li><a href="#">Separated item</a></li>\n                                        <li class="uk-parent">\n                                            <a href="#">Parent</a>\n                                            <ul class="uk-nav-sub">\n                                                <li><a href="#">Sub item</a>\n                                                    <ul>\n                                                        <li><a href="#">Sub item</a></li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        \n                        <div class="uk-button-group">\n                            <button class="uk-button uk-button-danger">Danger</button>\n                            <div data-uk-dropdown="{mode:''click''}">\n                                <button class="uk-button uk-button-danger"><i class="uk-icon-caret-down"></i></button>\n                                <div class="uk-dropdown">\n                                    <ul class="uk-nav uk-nav-dropdown">\n                                        <li class="uk-nav-header">Header</li>\n                                        <li><a href="#">Item</a></li>\n                                        <li><a href="#">Item</a></li>\n                                        <li class="uk-nav-divider"></li>\n                                        <li><a href="#">Separated item</a></li>\n                                        <li class="uk-parent">\n                                            <a href="#">Parent</a>\n                                            <ul class="uk-nav-sub">\n                                                <li><a href="#">Sub item</a>\n                                                    <ul>\n                                                        <li><a href="#">Sub item</a></li>\n                                                    </ul>\n                                                </li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </div>\n                            </div>\n                        </div>\n                        \n                        <button class="uk-button" disabled>Disabled</button>\n                        <button class="uk-button uk-button-link">Button link</button>\n                        \n                    </div>\n                    \n                    <pre><code>&lt;div class="myclass"&gt;...&lt;/div&gt;</code></pre>\n                    \n                    <hr class="uk-article-divider">\n                    \n                    <div class="uk-grid" data-uk-grid-margin>\n                        \n                        <div class="uk-width-medium-1-3">\n                            <span class="uk-text-muted">text-muted</span><br>\n                            <span class="uk-text-primary">text-primary</span><br>\n                            <span class="uk-text-success">text-success</span><br>\n                            <span class="uk-text-warning">text-warning</span><br>\n                            <span class="uk-text-danger">text-danger</span>\n                        </div>\n                        \n                        <div class="uk-width-medium-1-3">\n                            <a href="#">a element</a><br>\n                            <em>em element</em><br>\n                            <strong>strong</strong><br>\n                            <code>code element</code><br>\n                            <del>del element</del>\n                        </div>\n                        \n                        <div class="uk-width-medium-1-3">\n                            <ins>ins element</ins><br>\n                            <mark>mark element</mark><br>\n                            <q>q <q>inside</q> a q element </q><br>\n                            <abbr title="Abbreviation Element">abbr element</abbr><br>\n                            <dfn title="Defines a definition term">dfn element</dfn>\n                        </div>\n                        \n                        <div class="uk-width-medium-1-2">\n                            <h1 class="uk-display-inline">h1</h1>\n                            <h2 class="uk-display-inline">h2</h2>\n                            <h3 class="uk-display-inline">h3</h3>\n                            <h4 class="uk-display-inline">h4</h4>\n                            <h5 class="uk-display-inline">h5</h5>\n                            <h6 class="uk-display-inline">h6</h6>\n                        </div>\n                        \n                        <div class="uk-width-medium-1-2">\n                            <blockquote>\n                                <p> Lorem ipsum dolor.</p>\n                                <small>Someone famous</small>\n                            </blockquote>\n                        </div>\n                        \n                    </div>\n                    \n                    <hr class="uk-article-divider">\n                    \n                    <div class="uk-width-1-1">\n                        <div class="uk-grid" data-uk-grid-margin>\n                            <div class="uk-width-medium-1-4">\n                                <span class="uk-badge">Badge</span>\n                                <span class="uk-badge uk-badge-notification">1</span>\n                            </div>\n                            <div class="uk-width-medium-1-4">\n                                <span class="uk-badge uk-badge-success">Success</span>\n                                <span class="uk-badge uk-badge-success uk-badge-notification">4</span>\n                            </div>\n                            <div class="uk-width-medium-1-4">\n                                <span class="uk-badge uk-badge-warning">Warning</span>\n                                <span class="uk-badge uk-badge-warning uk-badge-notification">3</span>\n                            </div>\n                            <div class="uk-width-medium-1-4">\n                                <span class="uk-badge uk-badge-danger">Danger</span>\n                                <span class="uk-badge uk-badge-danger uk-badge-notification">4</span>\n                            </div>\n                        </div>\n                    </div>\n                    \n                </div>\n                \n            </div>\n            \n            <div class="uk-width-1-1">\n                <ul class="uk-comment-list">\n                    <li>\n                        <article class="uk-comment">\n                            <header class="uk-comment-header">\n                                <img class="uk-comment-avatar" src="images/yootheme/uikit_avatar.svg" width="50" height="50" alt="">\n                                <h4 class="uk-comment-title">Author</h4>\n                                <p class="uk-comment-meta">May 2, 2090 at 1:55 pm</p>\n                            </header>\n                            <div class="uk-comment-body">\n                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.</p>\n                            </div>\n                        </article>\n                    </li>\n                </ul>\n            </div>\n            \n            <div class="uk-width-1-1">\n                <ul class="uk-pagination">\n                    <li class="uk-disabled"><span><i class="uk-icon-angle-double-left"></i></span></li>\n                    <li class="uk-active"><span>1</span></li>\n                    <li><a href="#">2</a></li>\n                    <li><a href="#">3</a></li>\n                    <li><a href="#">4</a></li>\n                    <li><span>...</span></li>\n                    <li><a href="#">20</a></li>\n                    <li><a href="#"><i class="uk-icon-angle-double-right"></i></a></li>\n                </ul>\n            </div>\n            \n        </div>\n      \n          <hr class="uk-grid-divider uk-margin-large">\n\n    <div class="uk-grid" data-uk-grid-margin>\n        \n        <div class="uk-width-medium-1-2">\n            \n            <div class="uk-margin">\n                <div class="uk-alert" data-uk-alert>\n                    <a class="uk-alert-close uk-close"></a>\n                    <p>Info message</p>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-alert uk-alert-success" data-uk-alert>\n                    <a class="uk-alert-close uk-close"></a>\n                    <p>Success message</p>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-alert uk-alert-warning" data-uk-alert>\n                    <a class="uk-alert-close uk-close"></a>\n                    <p>Warning message</p>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-alert uk-alert-danger" data-uk-alert>\n                    <a class="uk-alert-close uk-close"></a>\n                    <p>Danger message</p>\n                </div>\n            </div>\n            \n        </div>\n        \n        <div class="uk-width-medium-1-2">\n            \n            <div class="uk-margin">\n                <div class="uk-progress">\n                    <div class="uk-progress-bar" style="width: 55%;">55%</div>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-progress uk-progress-success">\n                    <div class="uk-progress-bar" style="width: 29%;">29%</div>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-progress uk-progress-warning">\n                    <div class="uk-progress-bar" style="width: 69%;">69%</div>\n                </div>\n            </div>\n            \n            <div class="uk-margin">\n                <div class="uk-progress uk-progress-danger">\n                    <div class="uk-progress-bar" style="width: 34%;">34%</div>\n                </div>\n            </div>\n            \n        </div>\n        \n    </div>\n        \n    </div>\n    \n    <div class="uk-width-medium-1-3">\n        \n        <div class="uk-grid" data-uk-grid-margin>\n            \n            <div class="uk-width-1-1">\n                \n                <div class="uk-panel">\n                    <ul class="uk-nav uk-nav-side uk-nav-parent-icon" data-uk-nav>\n                        <li class="uk-nav-header">Header</li>\n                        <li class="uk-nav-divider"></li>\n                        <li class="uk-active"><a href="#">Active</a></li>\n                        <li class="uk-parent">\n                            <a href="#">Parent</a>\n                            <ul class="uk-nav-sub">\n                                <li><a href="#">Sub item</a></li>\n                                <li><a href="#">Sub item</a>\n                                    <ul>\n                                        <li><a href="#">Sub item</a></li>\n                                        <li><a href="#">Sub item</a></li>\n                                    </ul>\n                                </li>\n                            </ul>\n                        </li>\n                        <li><a href="#">Item</a></li>\n                    </ul>\n                </div>\n                \n                <div class="uk-panel uk-panel-box">\n                    <h3 class="uk-panel-title">Box</h3>\n                    <p>Lorem ipsum <a href="#">dolor</a> sit amet, consectetur adipisicing elit.</p>\n                    <p><button class="uk-button" data-uk-offcanvas="{target:''#offcanvas-1''}">Off-canvas</button></p>\n                </div>\n                \n                <div class="uk-panel uk-panel-box uk-panel-box-primary">\n                    <h3 class="uk-panel-title">Box primary</h3>\n                    <p>Lorem ipsum <a href="#">dolor</a> sit amet, consectetur adipisicing elit.</p>\n                </div>\n                \n                <div class="uk-panel uk-panel-box uk-panel-box-secondary">\n                    <h3 class="uk-panel-title">Box secondary</h3>\n                    <p>Lorem ipsum <a href="#">dolor</a> sit amet, consectetur adipisicing elit.</p>\n                    <p><button class="uk-button" data-uk-tooltip title="Bazinga!">Tooltip</button></p>\n                </div>\n                \n                <div class="uk-panel uk-panel-header">\n                    <h3 class="uk-panel-title">Header</h3>\n                    <p>Lorem ipsum <a href="#">dolor</a> sit amet, consectetur adipisicing elit.</p>\n                </div>\n                \n                <div class="uk-panel uk-panel-divider">\n                    <h3 class="uk-panel-title">Divider</h3>\n                    <p>Lorem ipsum <a href="#">dolor</a> sit amet, consectetur adipisicing elit.</p>\n                      <p>\n                        <a href="#" class="uk-icon-button uk-icon-github"></a>\n                        <a href="#" class="uk-icon-button uk-icon-twitter"></a>\n                        <a href="#" class="uk-icon-button uk-icon-dribbble"></a>\n                        <a href="#" class="uk-icon-button uk-icon-html5"></a>\n                    </p>\n                  \n                </div>\n              \n                  <div class="uk-panel">\n                  \n                  <form class="uk-form">\n                      <fieldset class="uk-form">\n                          <legend>Form styles</legend>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form-large" class="uk-form-large uk-form-width-medium">\n                              <button class="uk-button uk-button-large" type="reset">Large</button>\n                          </div>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form-small" class="uk-form-small uk-form-width-medium">\n                              <button class="uk-button uk-button-small" type="reset">Small</button>\n                          </div>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form-blank" class="uk-form-width-medium uk-form-blank">\n                              <button class="uk-button uk-button-mini" type="reset">Mini</button>\n                          </div>\n                      </fieldset>\n                  </form>\n                  \n                  </div>\n              \n                  <div class="uk-panel">\n                  \n                  <form class="uk-form">\n                      <fieldset>\n                          <legend>Form states</legend>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="Text Input" class="uk-width-1-1">\n                          </div>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form-success" value="form-success" class="uk-width-1-1 uk-form-success">\n                          </div>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form-danger" value="form-danger" class="uk-width-1-1 uk-form-danger">\n                          </div>\n                          <div class="uk-form-row">\n                              <input type="text" placeholder="form disabled" class="uk-width-1-1" disabled>\n                          </div>\n                      </fieldset>\n                  </form>\n                  \n              </div>\n                \n            </div>\n            \n        </div>\n        \n    </div>\n        \n</div>\n\n<hr class="uk-grid-divider uk-margin-large">\n\n<div class="uk-grid" data-uk-grid-margin>\n    \n    <div class="uk-width-medium-1-3">\n        \n        <ul class="uk-subnav uk-subnav-line">\n            <li class="uk-active"><a href="#">Active</a></li>\n            <li><a href="#">Item</a></li>\n            <li><span>Disabled</span></li>\n        </ul>\n        \n    </div>\n    <div class="uk-width-medium-1-3">\n        \n        <ul class="uk-subnav uk-subnav-pill">\n            <li class="uk-active"><a href="#">Active</a></li>\n            <li><a href="#">Item</a></li>\n            <li><span>Disabled</span></li>\n        </ul>\n        \n    </div>\n    <div class="uk-width-medium-1-3">\n        \n        <ul class="uk-tab" data-uk-tab>\n            <li class="uk-active"><a href="#">Active</a></li>\n            <li><a href="#">Item</a></li>\n            <li class="uk-disabled"><a href="#">Disabled</a></li>\n        </ul>\n        \n    </div>\n    \n</div>\n\n<hr class="uk-grid-divider uk-margin-large">\n\n<div class="uk-grid uk-grid-divider uk-margin-large" data-uk-grid-margin>\n    <div class="uk-width-medium-1-4">\n        \n        <ul class="uk-list uk-list-line">\n            <li>List item 1</li>\n            <li>List item 2</li>\n            <li>List item 3</li>\n        </ul>\n        \n    </div>\n    \n    <div class="uk-width-medium-1-4">\n        \n        <ul class="uk-list uk-list-striped">\n            <li>List item 1</li>\n            <li>List item 2</li>\n            <li>List item 3</li>\n        </ul>\n        \n    </div>\n    <div class="uk-width-medium-1-4">\n        \n        <table class="uk-table uk-table-striped uk-table-condensed uk-table-hover">\n            <caption>Table caption</caption>\n            <thead>\n                <tr>\n                    <th>Table</th>\n                    <th>Heading</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <td>Table</td>\n                    <td>Data</td>\n                </tr>\n                <tr>\n                    <td>Table</td>\n                    <td>Data</td>\n                </tr>\n            </tbody>\n        </table>\n        \n    </div>\n    <div class="uk-width-medium-1-4">\n        \n        <dl class="uk-description-list uk-description-list-line">\n            <dt>Description lists</dt>\n            <dd>Description text.</dd>\n            <dt>Description lists</dt>\n            <dd>Description text.</dd>\n        </dl>\n        \n    </div>\n</div>\n\n<hr class="uk-grid-divider uk-margin-large">\n\n<div class="uk-width-1-1">\n    <ul class="uk-breadcrumb">\n        <li><a href="#">Home</a></li>\n        <li><a href="#">Blog</a></li>\n        <li><span>Category</span></li>\n        <li class="uk-active"><span>Post</span></li>\n    </ul>\n</div>\n\n<div id="offcanvas-1" class="uk-offcanvas">\n    <div class="uk-offcanvas-bar">\n        \n        <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav>\n            <li><a href="#">Item</a></li>\n            <li class="uk-active"><a href="#">Active</a></li>\n            \n            <li class="uk-parent">\n                <a href="#">Parent</a>\n                <ul class="uk-nav-sub">\n                    <li><a href="#">Sub item</a></li>\n                    <li><a href="#">Sub item</a>\n                        <ul>\n                            <li><a href="#">Sub item</a></li>\n                            <li><a href="#">Sub item</a></li>\n                        </ul>\n                    </li>\n                </ul>\n            </li>\n            \n            <li class="uk-parent">\n                <a href="#">Parent</a>\n                <ul class="uk-nav-sub">\n                    <li><a href="#">Sub item</a></li>\n                    <li><a href="#">Sub item</a></li>\n                </ul>\n            </li>\n            \n            <li><a href="#">Item</a></li>\n            \n            <li class="uk-nav-header">Header</li>\n            <li><a href="#"><i class="uk-icon-star"></i> Item</a></li>\n            <li><a href="#"><i class="uk-icon-twitter"></i> Item</a></li>\n            <li class="uk-nav-divider"></li>\n            <li><a href="#"><i class="uk-icon-rss"></i> Item</a></li>\n        </ul>\n        \n        <div class="uk-panel">\n            <h3 class="uk-panel-title">Title</h3>\n            Lorem ipsum dolor sit amet, <a href="#">consetetur</a> sadipscing elitr.\n        </div>\n        \n        <div class="uk-panel">\n            <h3 class="uk-panel-title">Title</h3>\n            Lorem ipsum dolor sit amet, <a href="#">consetetur</a> sadipscing elitr.\n        </div>\n        \n    </div>\n</div>\n\n<div id="modal-1" class="uk-modal">\n    <div class="uk-modal-dialog">\n        <button type="button" class="uk-modal-close uk-close"></button>\n        <h1>Headline</h1>\n        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n    </div>\n</div>', '', 1, 2, '2011-05-02 11:47:45', 340, '', '2014-12-16 17:09:34', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:47:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 48, 16, '', '', 1, 568, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 37, 'Dummy Content', 'dummy-content', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 1, 2, '2011-05-02 11:48:08', 340, '', '2011-05-02 13:45:48', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:08', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 17, '', '', 1, 31, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `uclwy_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(6, 38, 'Theme Features', 'theme-features', '<p class="uk-article-lead">This theme is built on the <a href="http://www.warp-framework.com">Warp framework</a>, a well-engineered theme framework for WordPress and Joomla, and utilizes all of its latest features. The user interface is powered by <a href="http://www.getuikit.com">UIkit</a>, a lightweight and modular front-end framework, which provides the theme''s styling. The theme also comes with a wide range of different <a href="index.php?option=com_content&amp;view=article&amp;id=1&amp;Itemid=103">layouts and widget variations</a>.</p>\n\n<hr class="uk-article-divider uk-margin-large">\n\n<h2>Styles</h2>\n\n<p>We provide lovingly crafted style variations to give you a glimpse of what is possible with this theme. The built-in theme customizer allows you to modify colors, fonts, sizes and much more without any CSS knowledge. Just choose your colors with the color picker and adjust the theme with only a few clicks. Click on one of the images to see the style.</p>\n\n<ul class="uk-grid uk-grid-width-small-1-2 uk-grid-width-large-1-3 uk-margin-large" data-uk-grid-margin>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=default">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_01.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Default</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=yellow-dark">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_03.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Yellow Dark</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=red">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_02.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Red</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=blue">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_04.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Blue</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=lilac">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_05.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Lilac</div>\n        </a>\n    </li>\n    <li>\n        <a class="uk-thumbnail uk-overlay-toggle" href="index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=102&amp;style=yellow-light">\n            <div class="uk-overlay">\n                <img src="images/yootheme/features_style_06.jpg" width="390" height="280" alt="Style">\n                <div class="uk-overlay-area"></div>\n            </div>\n            <div class="uk-thumbnail-caption">Yellow Light</div>\n        </a>\n    </li>\n</ul>\n\n<hr class="uk-article-divider uk-margin-large">\n\n<h2>Special Features</h2>\n\n[widgetkit id="19" widget="grid" columns_small="2" columns_medium="2" columns_large="2" columns_xlarge="2" panel="box" media_align="top"]\n\n<hr class="uk-article-divider uk-margin-large">\n\n<h2>Widgetkit 2</h2>\n\n<p>Venice Theme features new Widgetkit 2, a completely overhauled version of our toolkit. You can now insert and edit widgets, like a slideshow or media grid, directly inside articles and modules. You can organize your media through its integrated media manager and upload images and other binary files via drag and drop.</p>\n\n<p>The Widgetkit Slideshow supports videos as well as images and can be set to fullscreen mode. Additionally, Venice Theme includes its own Switcher that uses thumbnails to navigate through different content panes.</p>\n\n<hr class="uk-article-divider uk-margin-large">\n\n<h2>Social Icons</h2>\n<p>Use the modifier <code>.uk-icon-button</code> class to create an icon button.</p>\n\n<a href="#" class="uk-icon-button uk-icon-twitter"></a>\n<a href="#" class="uk-icon-button uk-icon-rss"></a>\n<a href="#" class="uk-icon-button uk-icon-facebook"></a>\n<a href="#" class="uk-icon-button uk-icon-flickr"></a>\n<a href="#" class="uk-icon-button uk-icon-xing"></a>\n<a href="#" class="uk-icon-button uk-icon-google-plus"></a>\n<a href="#" class="uk-icon-button uk-icon-youtube"></a>\n<a href="#" class="uk-icon-button uk-icon-dribbble "></a>\n<a href="#" class="uk-icon-button uk-icon-github"></a>\n\n<p>Here is a little code example how to add them:</p>\n<pre>&lt;a href="" class="uk-icon-button uk-icon-twitter"&gt;&lt;/a&gt;\n&lt;a href="" class="uk-icon-button uk-icon-facebook"&gt;&lt;/a&gt;\n&lt;a href="" class="uk-icon-button uk-icon-google-plus"&gt;&lt;/a&gt;\n</pre>\n<p><a href="http://www.getuikit.com/docs/icon.html" target="blank">Here</a> is an overview of all icons provided by <a href="http://fortawesome.github.io/Font-Awesome/" target="blank">Font Awesome</a>.</p>\n\n<h3>Socialbar</h3>\n<p>Venice Theme provides an additional Socialbar Position, integrated nicely into the header. You can modify it completely to add your own icons or apply a different toggler. Here''s an example of how we applied the <a href="http://getuikit.com/docs/toggle.html" target="blank">Toggle component</a> from UIkit to the Socialbar.</p>\n\n<pre>&lt;a class="tm-social-toggle" data-uk-toggle="{target:''#tm-social-icons > li'', animation:''uk-animation-slide-right''}"&gt;\n    &lt;i class="uk-icon-heart-o"&gt;&lt;/i&gt;\n&lt;/a&gt;\n&lt;ul id="tm-social-icons" class="uk-list"&gt;\n  &lt;li class="uk-hidden"&gt;&lt;a href="" class="uk-icon-button uk-icon-github uk-margin-small-top"&gt;&lt;/a&gt;&lt;/li&gt;\n  &lt;li class="uk-hidden"&gt;&lt;a href="" class="uk-icon-button uk-icon-twitter uk-margin-small-top"&gt;&lt;/a&gt;&lt;/li&gt;\n&lt;/ul&gt;\n</pre>\n\n<hr class="uk-article-divider uk-margin-large">\n\n<div class="uk-grid uk-margin-large" data-uk-grid-margin data-uk-grid-match="{target:''.uk-panel''}">\n    <div class="uk-width-medium-1-2">\n        <div class="uk-panel uk-panel-space">\n\n            <div class="uk-grid" data-uk-grid-margin>\n                <div class="uk-width-large-2-6 uk-text-center">\n                    <a class="uk-display-block" href="http://www.warp-framework.com" target="_blank">\n                        <img src="images/yootheme/features_icon_warp.svg" alt="Warp Framework" width="150" height="150">\n                    </a>\n                </div>\n                <div class="uk-width-large-4-6 uk-text-center-medium">\n                    <h2>Warp Framework</h2>\n                    <p>A fast and slick theme framework which is built on the latest web techniques like HTML5, CSS3 and PHP 5.3+</p>\n                    <p><a class="uk-button" href="http://www.warp-framework.com" target="_blank">Visit Website</a></p>\n                </div>\n            </div>\n\n        </div>\n    </div>\n    <div class="uk-width-medium-1-2">\n        <div class="uk-panel uk-panel-space">\n\n            <div class="uk-grid" data-uk-grid-margin>\n                <div class="uk-width-large-2-6 uk-text-center">\n                    <a class="uk-display-block" href="http://www.getuikit.com" target="_blank">\n                        <img src="images/yootheme/features_icon_uikit.svg" alt="UIkit" width="150" height="150">\n                    </a>\n                </div>\n                <div class="uk-width-large-4-6 uk-text-center-medium">\n                    <h2>UIkit</h2>\n                    <p>A lightweight and modular front-end framework for developing fast and powerful web interfaces.</p>\n                    <p><a class="uk-button" href="http://www.getuikit.com" target="_blank">Visit Website</a></p>\n                </div>\n            </div>\n\n        </div>\n    </div>\n</div>\n\n<div class="uk-grid" data-uk-grid-margin>\n    <div class="uk-width-medium-1-1">\n        <div class="uk-panel uk-panel-box uk-panel-box uk-text-center">\n            <p>This theme is available for <img src="images/yootheme/features_icon_joomla.svg" width="25" height="21" alt="Joomla">Joomla and <img src="images/yootheme/features_icon_wordpress.svg" width="23" height="22" alt="Wordpress">WordPress including the same features on each system.</p>\n        </div>\n    </div>\n</div>', '', 1, 2, '2011-05-02 11:48:41', 340, '', '2015-01-30 16:26:40', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:48:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 145, 18, '', '', 1, 1106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 39, 'Home', 'home', 'This is a hidden article.', '', 1, 2, '2011-05-02 11:49:24', 340, '', '2014-06-30 09:10:39', 42, 0, '0000-00-00 00:00:00', '2011-05-02 11:49:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 19, '', '', 1, 7622, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 40, 'Joomla Templates', 'joomla-templates', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-04-02 11:50:02', 340, '', '2014-11-04 13:41:00', 42, 0, '0000-00-00 00:00:00', '2014-04-02 11:50:02', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_themes.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_themes.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 74, 1, '', '', 1, 276, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 41, 'Beautiful Icons', 'beautiful-icons', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-03-15 11:50:30', 340, '', '2014-07-29 14:21:58', 42, 0, '0000-00-00 00:00:00', '2014-03-15 11:50:30', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_icons.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_icons.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 20, 4, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(10, 42, 'Warp Framework', 'warp-framework', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-03-12 11:50:55', 340, '', '2014-07-29 14:21:50', 42, 0, '0000-00-00 00:00:00', '2014-03-12 11:50:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_warp.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_warp.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 5, '', '', 1, 24, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(11, 43, 'ZOO Extension', 'zoo-extension', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-02-28 11:51:30', 340, '', '2014-07-29 14:21:34', 42, 0, '0000-00-00 00:00:00', '2014-02-28 11:51:30', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_zoo.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_zoo.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 6, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(13, 171, 'Widgetkit', 'widgetkit', '<div class="uk-align-center uk-text-center uk-width-1-1 uk-width-medium-2-3">\n  <img class="" src="images/yootheme/widgetkit_icon.svg" alt="Widgetkit" width="175" height="175">\n  \n  <h2 class="tm-heading-large uk-h1">Widgetkit</h2>\n  \n  <p class="uk-article-lead">Widgetkit 2 is the next generation toolkit for WordPress and Joomla. It provides a simple and user-friendly way to enrich your website experience with grids, switchers, slideshows and much more.</p>\n  \n  <p><a class="uk-button uk-margin-top" href="http://yootheme.com/widgetkit" target="_blank">Visit Website</a></p>\n</div>\n\n<hr class="uk-article-divider uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Widgets</h2>\n    <p class="uk-article-lead uk-margin-small-top">Currently available widgets</p>\n</div>\n\n[widgetkit id="16" widget="grid" columns_medium="3" columns_large="5" columns_xlarge="5" panel="box" animation="scale-up" text_align="center" title_size="h4" media_align="top"]\n\n<hr class="uk-article-divider uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">How to use</h2>\n    <p class="uk-article-lead uk-margin-small-top">Use a shortcode to display your widget anywhere on your website</p>\n</div>\n\n[widgetkit id="17" widget="grid-stack" align="right" divider=1 panel=0 title_size="h2"]\n\n<hr class="uk-article-divider uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Features</h2>\n    <p class="uk-article-lead uk-margin-small-top">All widgets make use of modern web technologies</p>\n</div>\n\n[widgetkit id="18" widget="grid" columns_medium="3" columns_large="3" columns_xlarge="3" title=0 media=0]', '', 1, 2, '2011-06-08 11:15:54', 340, '', '2014-12-18 10:39:06', 42, 0, '0000-00-00 00:00:00', '2011-06-08 11:15:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 63, 12, '', '', 1, 381, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 161, 'Widgetkit', 'widgetkit-extension', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-02-14 11:50:55', 340, '', '2014-07-29 14:21:26', 42, 0, '0000-00-00 00:00:00', '2014-02-14 11:50:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_widgetkit.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_widgetkit.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 21, 7, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(24, 151, 'UIkit', 'uikit', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-03-22 11:50:55', 340, '', '2014-07-29 14:20:41', 42, 0, '0000-00-00 00:00:00', '2014-03-22 11:50:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_uikit.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_uikit.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 22, 3, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 153, 'Pagekit', 'pagekit', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-03-28 15:50:55', 340, '', '2014-07-29 14:21:06', 42, 0, '0000-00-00 00:00:00', '2014-03-28 15:50:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_pagekit.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_pagekit.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 23, 2, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(26, 156, 'Free Halloween Icons', 'free-halloween-icons', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, '2014-01-18 14:50:55', 340, '', '2014-07-29 14:21:17', 42, 0, '0000-00-00 00:00:00', '2014-01-18 14:50:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/blog_halloween_icons.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/blog_halloween_icons.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 24, 8, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(27, 163, 'The right Equipment', 'the-right-equipment', '<p class="uk-article-lead">More and more people prefer backpacking. Find the perfect packing list here.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 10, '2014-07-30 11:00:00', 340, '', '2014-12-08 15:11:06', 42, 340, '2015-06-21 08:59:29', '2014-07-30 11:00:00', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/home_blog01.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/home_blog01_single.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 24, 1, '', '', 1, 164, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 164, 'Local Cuisine', 'local-cuisine', '<p class="uk-article-lead">Learn about the best delicious and authentic local restaurants for the small budget.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 10, '2014-07-30 10:00:00', 340, '', '2014-11-25 09:35:15', 42, 0, '0000-00-00 00:00:00', '2014-07-30 10:00:00', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/home_blog02.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/home_blog02_single.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 36, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 165, 'Insider Tips', 'insider-tips', '<p class="uk-article-lead">Tread off the beaten path and really get to know different countries and their people.</p>\n\n', '\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 10, '2014-07-30 09:00:00', 340, '', '2014-12-08 10:53:52', 42, 0, '0000-00-00 00:00:00', '2014-07-30 09:00:00', '0000-00-00 00:00:00', '{"image_intro":"images\\/yootheme\\/home_blog03.jpg","float_intro":"none","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/yootheme\\/home_blog03_single.jpg","float_fulltext":"none","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 3, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 175, 'About', 'about', '<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">About our Company</h2>\n    <p class="uk-article-lead uk-margin-small-top">Creative people. Coffee addicted. Forward thinking.</p>\n</div>\n<div class="uk-margin-large-bottom">\n  [widgetkit id="1" widget="slideshow" nav="none" class="tm-about-slideshow"]\n</div>\n\n[widgetkit id="2" widget="grid" columns_large="2"]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Our Team</h2>\n    <p class="uk-article-lead uk-margin-small-top">Award winning team with a passion for technology.</p>\n</div>\n<div class="uk-width-medium-2-3 uk-container-center">\n[widgetkit id="3" widget="switcher" nav="thumbnails" thumbnail_gutter="small" thumbnail_style="circle" thumbnail_width="60" thumbnail_height="60" position="bottom" alignment="center" animation="fade" text_align="center" media_width="1-3" media_border="circle" class="tm-switcher"]\n</div>\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Our Clients</h2>\n    <p class="uk-article-lead uk-margin-small-top">Well known clients from all over the world.</p>\n</div>\n\n[widgetkit id="4" widget="grid" columns_large="4" gutter="small" panel="box" text_align="center" media_align="top" title=0 content=0 link=0]', '', 1, 2, '2014-12-03 16:42:16', 340, '', '2014-12-19 09:22:43', 42, 0, '0000-00-00 00:00:00', '2014-12-03 16:42:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 58, 2, '', '', 1, 294, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 176, 'Features', 'features', '[widgetkit id="6" widget="grid-stack" divider=1 text_align="media" title_size="h2" media_overlay="none"]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">What makes us Unique</h2>\n    <p class="uk-article-lead uk-margin-small-top">Mastering state of the art technologies.</p>\n</div>\n\n[widgetkit id="7" widget="grid" columns_small="1" columns_medium="3" columns_large="3" columns_xlarge="3" gutter="small" panel="box" text_align="center" media_overlay="social-buttons"]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Overview</h2>\n    <p class="uk-article-lead uk-margin-small-top">Providing all you need to create powerful content.</p>\n</div>\n\n[widgetkit id="8" widget="grid" columns_large="3" text_align="center" media_align="top"]', '', 1, 2, '2014-12-03 16:44:54', 340, '', '2014-12-19 09:22:37', 42, 0, '0000-00-00 00:00:00', '2014-12-03 16:44:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 30, 1, '', '', 1, 321, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 177, 'Services', 'services', '<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Services</h2>\n    <p class="uk-article-lead uk-margin-small-top">Premium services that will exceed your expectations.</p>\n</div>\n\n[widgetkit id="9" widget="grid" columns_medium="3" columns_large="3" columns_xlarge="3" text_align="center" media_align="top" media_overlay="none"]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">What we do</h2>\n    <p class="uk-article-lead uk-margin-small-top">We are always trying to a be three steps ahead.</p>\n</div>\n\n[widgetkit id="10" widget="switcher" alignment="center" text_align="center" title=0 content=0]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">Why us</h2>\n    <p class="uk-article-lead uk-margin-small-top">Modern technologies, unique concepts and happy customers.</p>\n</div>\n\n[widgetkit id="11" widget="grid" columns_medium="4" columns_large="4" columns_xlarge="4" gutter="small" panel="box" text_align="center" media_align="top"]\n\n<hr class="uk-article-separator uk-margin-large">\n\n<div class="uk-margin-large uk-text-center">\n    <h2 class="uk-h1 uk-margin-bottom-remove">What our clients say</h2>\n    <p class="uk-article-lead uk-margin-small-top">We are proud to have well known and big business clients.</p>\n</div>\n<div class="uk-width-medium-2-3 uk-container-center">\n[widgetkit id="12" widget="switcher" nav="thumbnails" thumbnail_style="circle" thumbnail_width="50" thumbnail_height="50" alignment="center" panel=1 animation="fade" text_align="center" media_width="1-4" media_border="circle" media=0]</div>', '', 1, 2, '2014-12-03 16:45:57', 340, '', '2014-12-19 09:22:32', 42, 0, '0000-00-00 00:00:00', '2014-12-03 16:45:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 24, 0, '', '', 1, 209, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `uclwy_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `uclwy_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_content_frontpage`
--

INSERT INTO `uclwy_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 9),
(9, 8),
(10, 7),
(11, 6),
(12, 5),
(23, 4),
(24, 3),
(25, 2),
(26, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_content_rating`
--

CREATE TABLE IF NOT EXISTS `uclwy_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_content_types`
--

CREATE TABLE IF NOT EXISTS `uclwy_content_types` (
`type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `uclwy_content_types`
--

INSERT INTO `uclwy_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `uclwy_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_extensions`
--

CREATE TABLE IF NOT EXISTS `uclwy_extensions` (
`extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10054 ;

--
-- Дамп данных таблицы `uclwy_extensions`
--

INSERT INTO `uclwy_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","count_clicks":"1","icons":1,"link_icons":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","show_pagination_limit":"1","show_headings":"1","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"1","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"1","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"1","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"0","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"0","show_autosuggest":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"porter_en"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"sts","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{"mediaversion":"398e7bfd821289556cdc99d859613b46"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2014-03-09 12:54:48","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2014 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.2.1","description":"LIB_FOF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 0, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.2","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":",@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight],@[data-lightbox],@[data-spotlight]","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","safari":"0","custom_plugin":"","custom_button":""}', '', '', 42, '2013-01-07 08:47:05', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `uclwy_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 0, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"Se[ptember 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"September 2014","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.3.6","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'yoo_venice', 'template', 'yoo_venice', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_venice","type":"template","creationDate":"February 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"1.0.0","description":"Venice is the February 2015 theme of the YOOtheme club. It is based on YOOtheme''s Warp theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"config":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'com_widgetkit', 'component', 'com_widgetkit', '', 1, 1, 0, 0, '{"name":"com_widgetkit","type":"component","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'Widgetkit', 'module', 'mod_widgetkit', '', 0, 1, 0, 0, '{"name":"Widgetkit","type":"module","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{"widgetkit":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'Content - Widgetkit', 'plugin', 'widgetkit', 'content', 0, 1, 1, 0, '{"name":"Content - Widgetkit","type":"plugin","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'Editors-XTD - Widgetkit', 'plugin', 'widgetkit', 'editors-xtd', 0, 1, 1, 0, '{"name":"Editors-XTD - Widgetkit","type":"plugin","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'System - Widgetkit ZOO', 'plugin', 'widgetkit_zoo', 'system', 0, 1, 1, 0, '{"name":"System - Widgetkit ZOO","type":"plugin","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'System - Widgetkit K2', 'plugin', 'widgetkit_k2', 'system', 0, 0, 1, 0, '{"name":"System - Widgetkit K2","type":"plugin","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'Installer - YOOtheme', 'plugin', 'yootheme', 'installer', 0, 1, 1, 0, '{"name":"Installer - YOOtheme","type":"plugin","creationDate":"December 2014","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"1.0.0","description":"PLG_INSTALLER_YOOTHEME_DESCRIPTION","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'widgetkit', 'package', 'pkg_widgetkit', '', 0, 1, 1, 0, '{"name":"Widgetkit","type":"package","creationDate":"January 2015","author":"YOOtheme","copyright":"Copyright (C) YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/yootheme.com","version":"2.0.0","description":"A widget toolkit by YOOtheme.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (site) for Joomla! 3.4.1","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2015-05-29","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.4.1.3","description":"Russian language pack (administrator) for Joomla! 3.4.1","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"3.4.1.3","description":"Joomla 3.4 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_filters`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_filters` (
`filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links` (
`link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_taxonomy` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `uclwy_finder_taxonomy`
--

INSERT INTO `uclwy_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_terms`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_terms` (
`term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_finder_terms_common`
--

INSERT INTO `uclwy_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
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
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
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
('veri', 'en'),
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
('whi', 'en'),
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
-- Структура таблицы `uclwy_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_finder_types`
--

CREATE TABLE IF NOT EXISTS `uclwy_finder_types` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_languages`
--

CREATE TABLE IF NOT EXISTS `uclwy_languages` (
`lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `uclwy_languages`
--

INSERT INTO `uclwy_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_menu`
--

CREATE TABLE IF NOT EXISTS `uclwy_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned DEFAULT NULL,
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

--
-- Дамп данных таблицы `uclwy_menu`
--

INSERT INTO `uclwy_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 143, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 73, 78, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 74, 75, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 76, 77, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 79, 84, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 80, 81, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 82, 83, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 85, 90, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 86, 87, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 88, 89, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 99, 100, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 91, 92, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 93, 98, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 94, 95, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 96, 97, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 71, 72, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 67, 68, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 69, 70, 0, '', 1),
(101, 'mainmenu', 'Агенція', 'home', '', 'home', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"1","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 24, 1, '*', 0),
(102, 'mainmenu', 'Галерея', 'theme-features', '', 'theme-features', '#my', 'url', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 25, 32, 0, '*', 0),
(103, 'mainmenu', 'Layouts', 'layouts', '', 'theme-features/layouts', 'index.php?option=com_content&view=article&id=1', 'component', 0, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 26, 27, 0, '*', 0),
(104, 'mainmenu', 'UIkit', 'uikit', '', 'theme-features/uikit', 'index.php?option=com_content&view=article&id=4', 'component', 0, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 29, 0, '*', 0),
(105, 'mainmenu', 'Блог', 'icons', '', 'icons', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(106, 'mainmenu', '#SecretBridalClub', 'zoo', '', 'zoo', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(107, 'mainmenu', 'Blog', 'joomla', '', 'pages/joomla', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', 0, 214, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"0","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"order","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 34, 35, 0, '*', 0),
(108, 'topmenu', 'Features', 'features1', '', 'features1', 'index.php?option=com_content&view=article&id=6&Itemid=102', 'url', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 101, 102, 0, '*', 0),
(109, 'topmenu', 'Layouts', 'layouts1', '', 'layouts1', 'index.php?option=com_content&view=article&id=1&Itemid=103', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 103, 104, 0, '*', 0),
(110, 'topmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=7&Itemid=107', 'url', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 105, 106, 0, '*', 0),
(111, 'sidebarmenu', 'Sample Levels', 'sample-levels', '', 'sample-levels', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 107, 118, 0, '*', 0),
(112, 'sidebarmenu', 'Level 2', 'level-2', '', 'sample-levels/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 108, 109, 0, '*', 0),
(113, 'sidebarmenu', 'Level 2', 'level-21', '', 'sample-levels/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 110, 115, 0, '*', 0),
(114, 'sidebarmenu', 'Level 3', 'level-3', '', 'sample-levels/level-21/level-3', 'index.php?option=com_content&view=article&id=5', 'component', 1, 113, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 111, 114, 0, '*', 0),
(115, 'sidebarmenu', 'Level 4', 'level-4', '', 'sample-levels/level-21/level-3/level-4', 'index.php?option=com_content&view=article&id=5', 'component', 1, 114, 4, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 112, 113, 0, '*', 0),
(116, 'sidebarmenu', 'Level 2', 'level-22', '', 'sample-levels/level-22', 'index.php?option=com_content&view=article&id=5', 'component', 1, 111, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 116, 117, 0, '*', 0),
(117, 'sidebarmenu', 'Accordion A', 'accordion-a', '', 'accordion-a', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 119, 126, 0, '*', 0),
(118, 'sidebarmenu', 'Level 2', 'level-2', '', 'accordion-a/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 120, 121, 0, '*', 0),
(119, 'sidebarmenu', 'Level 2', 'level-21', '', 'accordion-a/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 124, 125, 0, '*', 0),
(120, 'sidebarmenu', 'Level 2', 'level-22', '', 'accordion-a/level-22', 'index.php?option=com_content&view=article&id=5', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 122, 123, 0, '*', 0),
(121, 'sidebarmenu', 'Accordion B', 'accordion-b', '', 'accordion-b', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 127, 132, 0, '*', 0),
(122, 'sidebarmenu', 'Level 2', 'level-2', '', 'accordion-b/level-2', 'index.php?option=com_content&view=article&id=5', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 128, 129, 0, '*', 0),
(123, 'sidebarmenu', 'Level 2', 'level-21', '', 'accordion-b/level-21', 'index.php?option=com_content&view=article&id=5', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 130, 131, 0, '*', 0),
(132, 'mainmenu', 'Widgetkit', 'widgetkit', '', 'theme-features/widgetkit', 'index.php?option=com_content&view=article&id=13', 'component', 0, 102, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 31, 0, '*', 0),
(189, 'mainmenu', 'Default', '2013-06-20-08-51-26', '', 'home/2013-06-20-08-51-26', '?style=default', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 12, 13, 0, '*', 0),
(190, 'mainmenu', 'Yellow Dark', '2013-06-20-08-52-12', '', 'home/2013-06-20-08-52-12', '?style=yellow-dark', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 14, 15, 0, '*', 0),
(191, 'mainmenu', 'Red', '2013-06-20-08-52-35', '', 'home/2013-06-20-08-52-35', '?style=red', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 16, 17, 0, '*', 0),
(193, 'mainmenu', 'Blue', '2013-06-20-08-52-53', '', 'home/2013-06-20-08-52-53', '?style=blue', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 18, 19, 0, '*', 0),
(194, 'mainmenu', 'Lilac', '2013-06-20-08-52-54', '', 'home/2013-06-20-08-52-54', '?style=lilac', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 20, 21, 0, '*', 0),
(195, 'mainmenu', 'Yellow Light', '2013-06-20-08-52-55', '', 'home/2013-06-20-08-52-55', '?style=yellow-light', 'url', 0, 101, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 22, 23, 0, '*', 0),
(202, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 65, 66, 0, '*', 1),
(211, 'hidden-menu', 'The right Equipment', 'the-right-equipment', '', 'the-right-equipment', 'index.php?option=com_content&view=article&id=27', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 135, 136, 0, '*', 0),
(212, 'hidden-menu', 'Local Cuisine', 'local-cuisine', '', 'local-cuisine', 'index.php?option=com_content&view=article&id=28', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 137, 138, 0, '*', 0),
(213, 'hidden-menu', 'Insider Tips', 'insider-tips', '', 'insider-tips', 'index.php?option=com_content&view=article&id=29', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 139, 140, 0, '*', 0),
(214, 'mainmenu', 'Організація Весілля', 'pages', '', 'pages', '', 'separator', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 33, 44, 0, '*', 0),
(215, 'mainmenu', 'About', 'about', '', 'pages/about', 'index.php?option=com_content&view=article&id=30', 'component', 0, 214, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 38, 39, 0, '*', 0),
(216, 'mainmenu', 'Features', 'features', '', 'pages/features', 'index.php?option=com_content&view=article&id=31', 'component', 0, 214, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 40, 41, 0, '*', 0),
(217, 'mainmenu', 'Services', 'services', '', 'pages/services', 'index.php?option=com_content&view=article&id=32', 'component', 0, 214, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(218, 'mainmenu', 'Blog Featured', 'blog-featured', '', 'pages/blog-featured', 'index.php?option=com_content&view=featured', 'component', 0, 214, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 36, 37, 0, '*', 0),
(219, 'main', 'COM_WIDGETKIT', 'com-widgetkit', '', 'com-widgetkit', 'index.php?option=com_widgetkit', 'component', 0, 1, 1, 10043, 0, '0000-00-00 00:00:00', 0, 1, 'class:widgetkit', 0, '', 141, 142, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_menu_types`
--

CREATE TABLE IF NOT EXISTS `uclwy_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `uclwy_menu_types`
--

INSERT INTO `uclwy_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'topmenu', 'Top Menu', ''),
(3, 'sidebarmenu', 'Sidebar Menu', ''),
(4, 'hidden-menu', 'Hidden Menu', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_messages`
--

CREATE TABLE IF NOT EXISTS `uclwy_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `uclwy_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_modules`
--

CREATE TABLE IF NOT EXISTS `uclwy_modules` (
`id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Дамп данных таблицы `uclwy_modules`
--

INSERT INTO `uclwy_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 0, 'Main Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 42, '2014-03-04 13:29:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 0, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 0, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(19, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(20, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 2, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(21, 0, 'Bottom A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 3, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(23, 81, 'Home Venice Theme', '', '<h3 class="tm-panel-title-large">Venice Theme</h3>\n<p class="uk-article-lead uk-margin-large-bottom">A versatile widescreen theme, built on the latest web technologies.</p>\n\n[widgetkit id="15" widget="grid" columns_medium="3" columns_large="3" animation="scale-up" text_align="center" title=0 media=0 link=0]', 1, 'bottom-b', 340, '2015-06-23 16:13:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 0, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(28, 0, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 2, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(32, 90, 'Footer', '', 'Built with HTML5 and CSS3 - Copyright &copy; 2015 <a href="http://www.yootheme.com" target="_blank">YOOtheme</a>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(33, 0, 'Headerbar', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'headerbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(34, 0, 'Main Bottom', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'main-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(35, 0, 'Main Bottom', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 2, 'main-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(36, 0, ' Main Top', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'main-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(37, 0, 'Main Top', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'main-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(38, 96, 'Logo', '', '<svg version="1.1" id="logo" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"\n	 width="105px" height="20px" viewBox="0 0.5 105 20" enable-background="new 0 0.5 105 20" xml:space="preserve">\n<path id="v" d="M11,20.5H8l-8-20h4l5.5,14l5.5-14h4L11,20.5z"/>\n<path id="e_1_" d="M23,0.5h14v3H23V0.5z M23,8.5h13v3H23V8.5z M37,17.5v3H23v-3H37z"/>\n<path id="n" d="M55,0.5h3v20h-3l-11-15v15h-3v-20h3l11,14V0.5z"/>\n<path id="i" d="M62,0.5h3v20h-3V0.5z"/>\n<path id="c" d="M79.055,17.324c1.125,0,2.092-0.189,2.9-0.567c0.812-0.376,1.656-0.979,2.542-1.81l2.101,2.156\n	C84.553,19.369,82.07,20.5,79.15,20.5s-5.342-0.938-7.264-2.814c-1.928-1.879-2.889-4.256-2.889-7.131\n	c0-2.872,0.979-5.267,2.941-7.182C73.9,1.458,76.379,0.5,79.372,0.5s5.491,1.104,7.501,3.314L84.801,6.08\n	c-0.922-0.884-1.791-1.5-2.609-1.851s-1.782-0.525-2.887-0.525c-1.953,0-3.594,0.632-4.918,1.894\n	c-1.326,1.261-1.988,2.872-1.988,4.833c0,1.961,0.658,3.602,1.976,4.918C75.688,16.666,77.249,17.324,79.055,17.324z"/>\n<path id="e" d="M91,0.5h14v3H91V0.5z M91,8.5h13v3H91V8.5z M105,17.5v3H91v-3H105z"/>\n</svg>\n', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(40, 98, 'Search', '', '', 1, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"107","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(41, 99, 'Sub Menu', '', '', 8, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"2","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(42, 100, 'Sidebar Menu', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"sidebarmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(43, 0, 'Sidebar A', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(44, 0, 'Sidebar A', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 2, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(48, 103, 'Latest News', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["7"],"count":"5","show_featured":"","ordering":"p_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(49, 104, 'Login', '', '', 1, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(57, 109, 'Sidebar B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 1, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(58, 0, 'Sidebar B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 2, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(59, 0, 'Sidebar B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(61, 112, 'Top Menu', '', '', 1, 'toolbar-l', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"topmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(62, 113, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(63, 114, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 2, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(64, 115, 'Top A', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 3, 'top-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(71, 122, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(72, 123, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 2, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(73, 124, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 3, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(74, 125, 'Top B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 4, 'top-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(80, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(81, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(94, 141, 'Offcanvas Menu', '', '', 2, 'offcanvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 0, 'Offcanvas', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 'offcanvas', 340, '2015-06-21 09:03:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 143, 'Home Travel Diaries', '', '<h3 class="tm-panel-title-large">Travel Diaries</h3>\n<p class="uk-article-lead uk-margin-large-bottom">Globetrotters share their amazing backpacking experiences and stories.</p>\n\n[widgetkit id="14" widget="switcher_venice" animation="none"]', 5, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 147, 'Social Icons', '', '<a class="tm-social-toggle" data-uk-toggle="{target:''#tm-social-icons > li'', animation:''uk-animation-slide-right''}"><i class="uk-icon-heart-o"></i></a>\n<ul id="tm-social-icons" class="uk-list">\n  <li class="uk-hidden"><a href="#" class="uk-icon-button uk-icon-github uk-margin-small-top"></a></li>\n  <li class="uk-hidden"><a href="#" class="uk-icon-button uk-icon-twitter uk-margin-small-top"></a></li>\n  <li class="uk-hidden"><a href="#" class="uk-icon-button uk-icon-dribbble uk-margin-small-top"></a></li>\n  <li class="uk-hidden"><a href="#" class="uk-icon-button uk-icon-facebook uk-margin-small-top"></a></li>\n</ul>', 1, 'socialbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 149, 'Logo small', '', '<svg version="1.1" id="logo_small" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"\n	 width="105px" height="20px" viewBox="0 0.5 105 20" enable-background="new 0 0.5 105 20" xml:space="preserve">\n<path id="v_small" d="M11,20.5H8l-8-20h4l5.5,14l5.5-14h4L11,20.5z"/>\n<path id="e_small" d="M23,0.5h14v3H23V0.5z M23,8.5h13v3H23V8.5z M37,17.5v3H23v-3H37z"/>\n<path id="n_small" d="M55,0.5h3v20h-3l-11-15v15h-3v-20h3l11,14V0.5z"/>\n<path id="i_small" d="M62,0.5h3v20h-3V0.5z"/>\n<path id="c_small" d="M79.055,17.324c1.125,0,2.092-0.189,2.9-0.567c0.812-0.376,1.656-0.979,2.542-1.81l2.101,2.156\n	C84.553,19.369,82.07,20.5,79.15,20.5s-5.342-0.938-7.264-2.814c-1.929-1.879-2.89-4.256-2.89-7.131c0-2.872,0.979-5.267,2.94-7.182\n	C73.9,1.458,76.379,0.5,79.372,0.5s5.491,1.104,7.501,3.314L84.801,6.08c-0.922-0.884-1.791-1.5-2.609-1.851\n	c-0.817-0.351-1.781-0.525-2.887-0.525c-1.953,0-3.594,0.632-4.918,1.894c-1.326,1.261-1.988,2.872-1.988,4.833\n	c0,1.961,0.658,3.602,1.977,4.918C75.688,16.666,77.249,17.324,79.055,17.324z"/>\n<path id="e_small_1_" d="M91,0.5h14v3H91V0.5z M91,8.5h13v3H91V8.5z M105,17.5v3H91v-3H105z"/>\n</svg>\n', 1, 'logo-small', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 158, 'Home Fullscreen Slideshow', '', '[widgetkit id="13" widget="slideshow" nav="none" animation="scroll" fullscreen=1 caption=1 caption_position="center" caption_panel=0 title=0 link=0 class="tm-slideshow-fullscreen"]', 1, 'fullscreen', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 159, 'Home Get In Touch', '', '<h3 class="tm-panel-title-large">Get In Touch</h3>\n<p class="uk-article-lead uk-margin-large-bottom">Subscribe to our newsletter for regular updates or contact us.</p>\n<form class="uk-form">\n  <fieldset data-uk-margin>\n    <input type="text" class="uk-form-large">\n    <button class="uk-button uk-button-large">Sign up</button>\n  </fieldset>\n</form>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 160, 'Home Footer', '', '<div class="uk-grid uk-flex-middle uk-margin-large-top tm-link-text-decoration-none" data-uk-grid-margin>\n  <div class="uk-width-medium-1-2">\n    <div class="uk-grid">\n      <div class="uk-width-1-3">\n          <h4>About</h4>\n        <ul class="uk-list">\n          <li><a href="#">Who we are</a></li>\n          <li><a href="#">Latest News</a></li>\n          <li><a href="#">Press</a></li>\n        </ul>\n      </div>\n      <div class="uk-width-1-3">\n        <h4>Members</h4>\n        <ul class="uk-list">\n          <li><a href="#">Login</a></li>\n          <li><a href="#">Terms of use</a></li>\n          <li><a href="#">Support</a></li>\n        </ul>\n      </div>\n      <div class="uk-width-1-3">\n          <h4>Shop</h4>\n        <ul class="uk-list">\n          <li><a href="#">Hiking & biking</a></li>\n          <li><a href="#">Camping</a></li>\n          <li><a href="#">Expedition</a></li>\n        </ul></div>\n    </div>\n  </div>\n  <div class="uk-width-medium-1-2 uk-text-center">\n    <div class="uk-grid">\n      <div class="uk-width-1-2">\n        <div class="uk-margin">\n            <svg version="1.1" id="icon_mail" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"\n                width="54px" height="40px" viewBox="0 0 54 40" enable-background="new 0 0 54 40" xml:space="preserve">\n                <path id="icon_mail_path_4" d="M52,5v30H2V5H52 M54,3h-2H2H0v2v30v2h2h50h2v-2V5V3L54,3z"/>\n                <path id="icon_mail_path_3" d="M43.279,16.908l-3.137-3.136C40.107,13.735,39,12.688,39,11.438C39,9.912,39.898,9,41.4,9\n                    c0.879,0,1.703,0.719,2.1,1.125C43.896,9.719,44.721,9,45.602,9C47.104,9,48,9.912,48,11.438c0,1.249-1.105,2.297-1.15,2.343\n                    l-3.127,3.126c-0.062,0.063-0.142,0.092-0.223,0.092C43.421,17.002,43.342,16.973,43.279,16.908L43.279,16.908z"/>\n                <rect id="icon_mail_path_2" x="18" y="18" width="17" height="2"/>\n                <rect id="icon_mail_path_1" x="18" y="22" width="17" height="2"/>\n                <rect id="icon_mail_path" x="18" y="26" width="17" height="2"/>\n            </svg>\n        </div>\n        <a href="mailto:email@example.com">email@example.com</a>\n      </div>\n      <div class="uk-width-1-2">\n          <div class="uk-margin">\n			<svg version="1.1" id="icon_phone" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"\n				 width="40px" height="40px" viewBox="0 0 40 40" enable-background="new 0 0 40 40" xml:space="preserve">\n				<path id="path" d="M30.271,39.318c-1.181,0-2.455-0.18-3.795-0.536c-5.941-1.581-13.704-7.519-17.99-12.304\n					c-5.496-6.136-7.37-12.818-7.566-13.561c-0.688-2.6-0.497-5.257,0.046-6.538C1.3,5.593,2.185,3.495,4.544,2.56\n					C5.917,2.015,8.118,1.366,8.97,1.177c0.295-0.065,0.54-0.096,0.772-0.096c0.965,0,1.662,0.521,2.411,1.304\n					c1.051,1.099,2.17,3.477,2.294,3.744c1.268,3.165,1.562,5.395,0.922,6.864c-0.33,0.757-0.914,1.314-1.688,1.613\n					c-1.369,0.528-1.191,1.015-1.047,1.405c0.614,1.35,9.118,10.291,11.173,11.112c0.754,0.301,1.035,0.029,1.469-1.114\n					c0.144-0.38,0.269-0.708,0.498-0.962c0.599-0.656,1.998-0.89,3.107-0.89c1.289,0,2.656,0.28,3.951,0.813\n					c3.061,1.262,4.238,2.18,5.338,3.434c1.219,1.385,0.336,3.637-0.441,5.623c-0.121,0.306-0.235,0.601-0.336,0.875\n					c-0.604,1.652-1.096,2.125-1.631,2.535c-0.047,0.037-0.094,0.071-0.141,0.111C34.34,38.691,32.439,39.318,30.271,39.318z\n					 M9.742,3.081c-0.083,0-0.19,0.016-0.338,0.049c-0.7,0.155-2.796,0.763-4.122,1.289C3.889,4.971,3.25,6.114,2.81,7.159\n					c-0.334,0.787-0.549,2.998,0.045,5.248c0.665,2.52,2.912,8.036,7.122,12.737C14.79,30.518,22.104,35.55,26.99,36.85\n					c3.129,0.834,5.838,0.508,7.303-0.793c0.082-0.074,0.166-0.139,0.254-0.205c0.252-0.193,0.514-0.395,0.967-1.633\n					c0.105-0.289,0.228-0.6,0.353-0.92c0.396-1.007,1.217-3.104,0.803-3.572c-0.787-0.896-1.625-1.681-4.599-2.903\n					c-1.334-0.55-2.471-0.664-3.188-0.664c-0.896,0-1.428,0.168-1.618,0.255c-0.037,0.085-0.072,0.189-0.117,0.305\n					c-0.312,0.823-0.959,2.535-2.789,2.535c-0.406,0-0.84-0.091-1.291-0.271c-2.666-1.064-11.71-10.646-12.31-12.28\n					c-0.3-0.818-0.687-2.844,2.206-3.96c0.279-0.108,0.456-0.276,0.574-0.547c0.231-0.529,0.418-1.918-0.924-5.272\n					c-0.278-0.594-1.207-2.425-1.904-3.153C10.051,3.081,9.842,3.081,9.742,3.081z"/>\n				<path id="icon_phone_path_1_" d="M31.67,19.789h-2c0-5.491-4.467-9.958-9.958-9.958v-2C26.305,7.831,31.67,13.195,31.67,19.789z"/>\n				<path id="icon_phone_path" d="M39.521,20.201h-2c0-9.661-7.859-17.521-17.521-17.521v-2C30.764,0.681,39.521,9.438,39.521,20.201z"\n					/>\n			</svg>\n        </div>\n        <p>+1 012 345 678</p>\n      </div>\n    </div>\n  </div>\n</div>', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 166, 'Bottom B', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 167, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 168, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 169, 'Bottom C', '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', 1, 'bottom-c', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 170, 'Search', '', '', 1, 'offcanvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"0","button_pos":"right","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"107","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 178, 'About Contact us', '', '<div class="uk-grid" data-uk-grid-margin>\n  <div class="uk-width-medium-3-4 uk-text-center-small">\n    <h2 class="uk-margin-top-remove uk-margin-bottom-remove">Want to find out more?</h2>\n  </div>\n  <div class="uk-width-medium-1-4 uk-text-right uk-text-center-small">\n    <a class="uk-button uk-button-large" href="#">Contact us</a>\n  </div>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 179, 'Features Top Slideshow', '', '[widgetkit id="5" widget="slideshow" nav="none" slidenav_inverted=1 caption=1 caption_position="center" caption_panel=0 title_size="large" link_style="button-large" class="tm-features-slideshow"]', 1, 'fullscreen', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 180, 'Services Purchase', '', '<div class="uk-grid" data-uk-grid-margin>\n  <div class="uk-width-medium-3-4 uk-text-center-small">\n    <h2 class="uk-margin-top-remove uk-margin-bottom-remove">Looking for good products?</h2>\n  </div>\n  <div class="uk-width-medium-1-4 uk-text-right uk-text-center-small">\n    <a class="uk-button uk-button-large" href="#">Purchase Now</a>\n  </div>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 181, 'Login', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 182, 'Sidebar A', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 3, 'sidebar-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 183, 'Sidebar B', '', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>', 3, 'sidebar-b', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(119, 184, 'Get Widgetkit 2', '', '<div class="uk-grid" data-uk-grid-margin>\n  <div class="uk-width-medium-3-4 uk-text-center-small">\n    <h2 class="uk-margin-top-remove uk-margin-bottom-remove">Get Widgetkit 2. The next generation tool set.</h2>\n  </div>\n  <div class="uk-width-medium-1-4 uk-text-right uk-text-center-small">\n    <a class="uk-button uk-button-large" href="http://www.yootheme.com/widgetkit" target="_blank">Download</a>\n  </div>\n</div>', 1, 'bottom-a', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_modules_menu`
--

CREATE TABLE IF NOT EXISTS `uclwy_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_modules_menu`
--

INSERT INTO `uclwy_modules_menu` (`moduleid`, `menuid`) VALUES
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
(19, 103),
(20, 103),
(21, 103),
(23, 101),
(27, 103),
(28, 103),
(32, 0),
(33, 103),
(34, 103),
(35, 103),
(36, 103),
(37, 103),
(38, 0),
(40, 103),
(40, 109),
(41, 107),
(41, 218),
(42, 103),
(42, 108),
(42, 109),
(42, 110),
(42, 111),
(42, 112),
(42, 113),
(42, 114),
(42, 115),
(42, 116),
(42, 117),
(42, 118),
(42, 119),
(42, 120),
(42, 121),
(42, 122),
(42, 123),
(43, 103),
(44, 103),
(48, 107),
(48, 218),
(49, 107),
(49, 218),
(57, 103),
(58, 103),
(59, 103),
(61, 103),
(62, 103),
(63, 103),
(64, 103),
(71, 103),
(72, 103),
(73, 103),
(74, 103),
(80, 0),
(81, 0),
(94, 0),
(95, 103),
(96, 101),
(100, 101),
(100, 103),
(100, 189),
(100, 190),
(100, 191),
(100, 193),
(100, 194),
(100, 195),
(100, 211),
(100, 212),
(100, 213),
(102, 0),
(103, 101),
(103, 189),
(103, 190),
(103, 191),
(103, 193),
(103, 194),
(103, 195),
(104, 101),
(104, 189),
(104, 190),
(104, 191),
(104, 192),
(104, 193),
(104, 194),
(104, 195),
(104, 196),
(105, 101),
(105, 189),
(105, 190),
(105, 191),
(105, 193),
(105, 194),
(105, 195),
(106, 103),
(107, 103),
(108, 103),
(109, 103),
(110, 101),
(110, 102),
(110, 103),
(110, 104),
(110, 105),
(110, 106),
(110, 107),
(110, 108),
(110, 109),
(110, 110),
(110, 111),
(110, 112),
(110, 113),
(110, 114),
(110, 115),
(110, 116),
(110, 117),
(110, 118),
(110, 119),
(110, 120),
(110, 121),
(110, 122),
(110, 123),
(110, 124),
(110, 125),
(110, 126),
(110, 127),
(110, 128),
(110, 129),
(110, 132),
(110, 133),
(110, 134),
(110, 135),
(110, 136),
(110, 140),
(110, 141),
(110, 142),
(110, 143),
(110, 144),
(110, 151),
(110, 155),
(110, 161),
(110, 162),
(110, 163),
(110, 164),
(110, 165),
(110, 166),
(110, 167),
(110, 168),
(110, 186),
(110, 189),
(110, 190),
(110, 191),
(110, 193),
(110, 194),
(110, 195),
(113, 215),
(114, 216),
(115, 216),
(115, 217),
(116, 0),
(117, 103),
(118, 103),
(119, 132);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `uclwy_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_overrider`
--

CREATE TABLE IF NOT EXISTS `uclwy_overrider` (
`id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `uclwy_postinstall_messages` (
`postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `uclwy_postinstall_messages`
--

INSERT INTO `uclwy_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_redirect_links`
--

CREATE TABLE IF NOT EXISTS `uclwy_redirect_links` (
`id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_schemas`
--

CREATE TABLE IF NOT EXISTS `uclwy_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_schemas`
--

INSERT INTO `uclwy_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.3.6-2014-09-30');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_session`
--

CREATE TABLE IF NOT EXISTS `uclwy_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_session`
--

INSERT INTO `uclwy_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('d218rn3d8f6pnte62rdc5bofs1', 1, 0, '1435076840', '__default|a:8:{s:15:"session.counter";i:16;s:19:"session.timer.start";i:1435075811;s:18:"session.timer.last";i:1435076068;s:17:"session.timer.now";i:1435076839;s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:11:"com_modules";O:8:"stdClass":2:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:23;}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":27:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"340";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:19:"romapaliy@gmail.com";s:8:"password";s:60:"$2y$10$gXP3vU.4IqGm189df3Du6eSPWBAcZ5JNY6EBOo76JQki4PZiGPY4a";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-06-20 20:46:29";s:13:"lastvisitDate";s:19:"2015-06-21 13:02:10";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"11a883c3ecf1db54eedf5d80eaec9267";}', 340, 'admin'),
('qi9ne0lmn27h8bprkdbsovc6f5', 0, 1, '1435076784', '__default|a:8:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1435075747;s:18:"session.timer.last";i:1435075942;s:17:"session.timer.now";i:1435076783;s:22:"session.client.browser";s:101:"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"1";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:1:{i:0;i:1;}s:14:"\\0\\0\\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"ff85118d4ff523bd2bc8bb52a7d0409a";}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_tags`
--

CREATE TABLE IF NOT EXISTS `uclwy_tags` (
`id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `uclwy_tags`
--

INSERT INTO `uclwy_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 33, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 340, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'cck', 'CCK', 'cck', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:19:42', '', 42, '2013-05-12 13:21:50', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 3, 4, 1, 'cms', 'CMS', 'cms', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:19:48', '', 42, '2013-05-12 13:21:57', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 5, 6, 1, 'content-application-builder', 'Content Application Builder', 'content-application-builder', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:19:57', '', 42, '2013-05-12 13:22:08', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 7, 8, 1, 'css', 'CSS', 'css', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:16', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 1, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 9, 10, 1, 'design', 'Design', 'design', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:22', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 11, 12, 1, 'framework', 'Framework', 'framework', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:28', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 13, 14, 1, 'icon', 'Icon', 'icon', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:43', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 15, 16, 1, 'icons', 'Icons', 'icons', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:46', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 17, 18, 1, 'illustrations', 'Illustrations', 'illustrations', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:54', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 2, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 19, 20, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:20:59', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 21, 22, 1, 'js', 'JavaScript', 'js', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:04', '', 42, '2013-05-12 13:25:27', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 23, 24, 1, 'php', 'PHP', 'php', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:09', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 25, 26, 1, 'theme', 'Theme', 'theme', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:19', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 27, 28, 1, 'themes', 'Themes', 'themes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:23', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 29, 30, 1, 'web-design', 'Web Design', 'web-design', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:30', '', 42, '2013-05-12 13:22:19', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 31, 32, 1, 'wordpress', 'Wordpress', 'wordpress', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '{"author":"","robots":"","tags":null}', 340, '2013-05-12 13:21:36', '', 0, '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_template_styles`
--

CREATE TABLE IF NOT EXISTS `uclwy_template_styles` (
`id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `uclwy_template_styles`
--

INSERT INTO `uclwy_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default-Fruit Shop', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Matuna Market ","sitedescription":"Fruit Shop Sample Site","navposition":"left","html5":"0"}'),
(7, 'yoo_venice', 0, '1', 'yoo_venice - Default', '{"config":""}'),
(8, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(9, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(10, 'beez3', 0, '0', 'beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_ucm_base`
--

CREATE TABLE IF NOT EXISTS `uclwy_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_ucm_content`
--

CREATE TABLE IF NOT EXISTS `uclwy_ucm_content` (
`core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_ucm_history`
--

CREATE TABLE IF NOT EXISTS `uclwy_ucm_history` (
`version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_updates`
--

CREATE TABLE IF NOT EXISTS `uclwy_updates` (
`update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `uclwy_updates`
--

INSERT INTO `uclwy_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.4.1', '', 'http://update.joomla.org/core/sts/extension_sts.xml', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_update_sites`
--

CREATE TABLE IF NOT EXISTS `uclwy_update_sites` (
`update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `uclwy_update_sites`
--

INSERT INTO `uclwy_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1435075870, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1435075870, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `uclwy_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `uclwy_update_sites_extensions`
--

INSERT INTO `uclwy_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10053),
(4, 28);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_usergroups`
--

CREATE TABLE IF NOT EXISTS `uclwy_usergroups` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `uclwy_usergroups`
--

INSERT INTO `uclwy_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
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
-- Структура таблицы `uclwy_users`
--

CREATE TABLE IF NOT EXISTS `uclwy_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=341 ;

--
-- Дамп данных таблицы `uclwy_users`
--

INSERT INTO `uclwy_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(340, 'Super User', 'admin', 'romapaliy@gmail.com', '$2y$10$gXP3vU.4IqGm189df3Du6eSPWBAcZ5JNY6EBOo76JQki4PZiGPY4a', 0, 1, '2015-06-20 20:46:29', '2015-06-23 16:10:21', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_user_keys`
--

CREATE TABLE IF NOT EXISTS `uclwy_user_keys` (
`id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `uclwy_user_keys`
--

INSERT INTO `uclwy_user_keys` (`id`, `user_id`, `token`, `series`, `invalid`, `time`, `uastring`) VALUES
(1, 'admin', '$2y$10$slZXmvHVD7l3n72U9xVkO.Zm48XHAz3ppLsNdvdnz5tTHRdTq/aEC', 'iaiE08cCUgRNJmKsiML3', 0, '1440019287', '72bc3999880b196d8299f62fa5e33361');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_user_notes`
--

CREATE TABLE IF NOT EXISTS `uclwy_user_notes` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_user_profiles`
--

CREATE TABLE IF NOT EXISTS `uclwy_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `uclwy_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uclwy_user_usergroup_map`
--

INSERT INTO `uclwy_user_usergroup_map` (`user_id`, `group_id`) VALUES
(340, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_viewlevels`
--

CREATE TABLE IF NOT EXISTS `uclwy_viewlevels` (
`id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `uclwy_viewlevels`
--

INSERT INTO `uclwy_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_weblinks`
--

CREATE TABLE IF NOT EXISTS `uclwy_weblinks` (
`id` int(10) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `uclwy_weblinks`
--

INSERT INTO `uclwy_weblinks` (`id`, `catid`, `title`, `alias`, `url`, `description`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `images`) VALUES
(1, 9, 'YOOtheme', 'yootheme', 'http://www.yootheme.com', '', 2, 1, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-22 12:45:30', 340, '', '2012-01-22 12:46:11', 42, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(2, 9, 'Icons', 'icons', 'http://www.yootheme.com/icons', '', 0, 1, 0, '0000-00-00 00:00:00', 2, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-22 12:45:46', 340, '', '2012-01-22 12:46:06', 42, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(3, 9, 'ZOO', 'zoo', 'http://www.yootheme.com/zoo', '', 0, 1, 0, '0000-00-00 00:00:00', 3, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2012-01-22 12:45:58', 340, '', '2012-01-22 12:46:15', 42, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `uclwy_widgetkit`
--

CREATE TABLE IF NOT EXISTS `uclwy_widgetkit` (
`id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `uclwy_widgetkit`
--

INSERT INTO `uclwy_widgetkit` (`id`, `name`, `type`, `data`) VALUES
(1, 'About Slideshow', 'custom', '{"items":[{"title":"lake.jpg","media":"images\\/yootheme\\/pages\\/about\\/about01.jpg","width":"1920","height":"1080","options":{"media":{"width":1150,"height":340}}},{"title":"mountains.jpg","media":"images\\/yootheme\\/pages\\/about\\/about02.jpg","width":"1920","height":"1080","options":{"media":{"width":1150,"height":340}}},{"title":"valley.jpg","media":"images\\/yootheme\\/pages\\/about\\/about03.jpg","width":"1920","height":"1080","options":{"media":{"width":1150,"height":340}}}],"_fields":[]}'),
(2, 'About Intro', 'custom', '{"items":[{"media":"","title":"Our Experience","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus","options":{"media":[]}},{"media":"","title":"Our Philosophy","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus"}],"_fields":[]}'),
(3, 'About Team', 'custom', '{"items":[{"title":"Susan McKenzie","media":"images\\/yootheme\\/pages\\/about\\/avatar01.jpg","width":"300","height":"300","content":"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo.<\\/p>","options":{"media":{"width":300,"height":300}}},{"title":"Brandon Cooper","media":"images\\/yootheme\\/pages\\/about\\/avatar02.jpg","width":"300","height":"300","content":"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo.<\\/p>","options":{"media":{"width":300,"height":300}}},{"title":"Ming Lee","media":"images\\/yootheme\\/pages\\/about\\/avatar03.jpg","width":"300","height":"300","content":"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo.<\\/p>","options":{"media":{"width":300,"height":300}}}],"_fields":[]}'),
(4, 'About Clients', 'custom', '{"items":[{"title":"Eat","media":"images\\/yootheme\\/pages\\/about\\/logo01.svg","width":"","content":"This is a logo demonstration.","options":{"media":{"width":130,"height":80}}},{"title":"Frequency","media":"images\\/yootheme\\/pages\\/about\\/logo02.svg","width":"","content":"This is a logo demonstration."},{"title":"Nite","media":"images\\/yootheme\\/pages\\/about\\/logo03.svg","width":"","content":"This is a logo demonstration."},{"title":"Lava","media":"images\\/yootheme\\/pages\\/about\\/logo04.svg","width":"","content":"This is a logo demonstration."},{"title":"Everest","media":"images\\/yootheme\\/pages\\/about\\/logo05.svg","width":"","content":"This is a logo demonstration."},{"title":"Unity","media":"images\\/yootheme\\/pages\\/about\\/logo06.svg","width":"","content":"This is a logo demonstration.","options":{"media":{"width":130,"height":80}}},{"media":"images\\/yootheme\\/pages\\/about\\/logo07.svg","options":{"media":{"width":178,"height":80}},"title":"Unity"},{"media":"images\\/yootheme\\/pages\\/about\\/logo08.svg","options":{"media":{"width":178,"height":80}},"title":"Unity"}],"_fields":[]}'),
(5, 'Features Top Slideshow', 'custom', '{"items":[{"title":"Features","media":"images\\/yootheme\\/pages\\/features\\/teaser01.jpg","width":"1080","height":"540","media_height":540,"media_width":1080,"content":"<p class=\\"uk-article-lead uk-text-contrast\\">We have some exclusive features that will blow your mind.<\\/p>","options":{"media":{"width":2560,"height":780}}},{"title":"You create content","media":"images\\/yootheme\\/pages\\/features\\/teaser02.jpg","width":"1080","height":"540","media_height":540,"media_width":1080,"content":"<p class=\\"uk-article-lead uk-text-contrast\\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr.<\\/p>","options":{"media":{"width":2560,"height":780}}},{"title":"We take care of the rest","media":"images\\/yootheme\\/pages\\/features\\/teaser03.jpg","width":"1080","height":"540","media_height":540,"media_width":1080,"content":"<p class=\\"uk-article-lead uk-text-contrast\\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr.<\\/p>","options":{"media":{"width":2560,"height":780}}}],"_fields":[]}'),
(6, 'Features Grid Stack', 'custom', '{"items":[{"title":"Handcrafted Websites","media":"images\\/yootheme\\/pages\\/features\\/grid01.png","width":"960","height":"640","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.","link":"#"},{"title":"Premium Themes","media":"images\\/yootheme\\/pages\\/features\\/grid02.png","width":"960","height":"640","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.","link":"#"},{"title":"Web Applications","media":"images\\/yootheme\\/pages\\/features\\/grid03.png","width":"960","height":"640","link":"#","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua."}],"_fields":[]}'),
(7, 'Features Grid Panel', 'custom', '{"items":[{"title":"Mobile First","media":"images\\/yootheme\\/pages\\/features\\/panel01.jpg","width":"800","height":"540","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod. Lorem ipsum dolor sit amet.","link":"#","options":{"media":{"width":800,"height":540}},"facebook":"#"},{"title":"Unique Design","media":"images\\/yootheme\\/pages\\/features\\/panel02.jpg","width":"800","height":"540","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod. Lorem ipsum dolor sit amet.","link":"#","options":{"media":{"width":800,"height":540}},"facebook":""},{"title":"Well Coded","media":"images\\/yootheme\\/pages\\/features\\/panel03.jpg","width":"800","height":"540","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod. Lorem ipsum dolor sit amet.","link":"#","options":{"media":{"width":800,"height":540}},"facebook":""}],"_fields":[{"name":"facebook","type":"text","label":"Facebook","core":true}]}'),
(8, 'Features Grid List', 'custom', '{"items":[{"media":"images\\/yootheme\\/pages\\/features\\/icon01.svg","options":{"media":{"width":80,"height":80}},"title":"Map Location","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor."},{"title":"Picture Filters","media":"images\\/yootheme\\/pages\\/features\\/icon02.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.","options":{"media":{"width":80,"height":80}}},{"title":"Mail System","media":"images\\/yootheme\\/pages\\/features\\/icon03.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.","options":{"media":{"width":80,"height":80}}},{"title":"Analytics","media":"images\\/yootheme\\/pages\\/features\\/icon04.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.","options":{"media":{"width":80,"height":80}}},{"media":"images\\/yootheme\\/pages\\/features\\/icon05.svg","options":{"media":{"width":80,"height":80}},"title":"Custom Pages","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor."},{"media":"images\\/yootheme\\/pages\\/features\\/icon06.svg","options":{"media":{"width":80,"height":80}},"title":"Manage Users","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor."}],"_fields":[]}'),
(9, 'Services Grid', 'custom', '{"items":[{"title":"UI Design","media":"images\\/yootheme\\/pages\\/services\\/icon_large01.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut et dolore magna.","link":"#","options":{"media":{"width":180,"height":180}}},{"title":"Development","media":"images\\/yootheme\\/pages\\/services\\/icon_large02.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut et dolore magna.","link":"#","options":{"media":{"width":180,"height":180}}},{"title":"Custom Content","media":"images\\/yootheme\\/pages\\/services\\/icon_large03.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut et dolore magna.","link":"#","options":{"media":{"width":180,"height":180}}}],"_fields":[]}'),
(10, 'Services Switcher', 'custom', '{"items":[{"title":"Research","media":"images\\/yootheme\\/pages\\/services\\/stats01.png","width":"1200","height":"400","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.","options":{"media":{"width":1260,"height":560}}},{"title":"Analytics","media":"images\\/yootheme\\/pages\\/services\\/stats02.png","width":"1200","height":"400","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.","options":{"media":{"width":1260,"height":560}}},{"title":"Results","media":"images\\/yootheme\\/pages\\/services\\/stats03.png","width":"1200","height":"400","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.","options":{"media":{"width":1260,"height":560}}}],"_fields":[]}'),
(11, 'Services Grid Icons', 'custom', '{"items":[{"title":"Gifts","media":"images\\/yootheme\\/pages\\/services\\/icon_small01.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"title":"Exclusive","media":"images\\/yootheme\\/pages\\/services\\/icon_small02.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"title":"Shopping","media":"images\\/yootheme\\/pages\\/services\\/icon_small03.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"title":"Hotline","media":"images\\/yootheme\\/pages\\/services\\/icon_small04.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"title":"Relax","media":"images\\/yootheme\\/pages\\/services\\/icon_small05.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"title":"Discuss","media":"images\\/yootheme\\/pages\\/services\\/icon_small06.svg","width":"","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy.","options":{"media":{"width":32,"height":32}}},{"media":"images\\/yootheme\\/pages\\/services\\/icon_small07.svg","options":{"media":{"width":32,"height":32}},"title":"Favorites","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."},{"media":"images\\/yootheme\\/pages\\/services\\/icon_small08.svg","options":{"media":{"width":32,"height":32}},"title":"Download","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy."}],"_fields":[]}'),
(12, 'Services Switcher', 'custom', '{"items":[{"title":"Awesome Design","media":"images\\/yootheme\\/pages\\/services\\/avatar01.jpg","width":"300","height":"300","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."},{"title":"Great Support","media":"images\\/yootheme\\/pages\\/services\\/avatar02.jpg","width":"300","height":"300","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."},{"title":"I am loving it!","media":"images\\/yootheme\\/pages\\/services\\/avatar03.jpg","width":"300","height":"300","content":"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum."}],"_fields":[]}'),
(13, 'Home Fullscreen Slideshow', 'custom', '{"items":[{"media":"http:\\/\\/www.youtube.com\\/watch?v=FoRmhWxmj70&autoplay=1&loop=1&controls=0&showinfo=0&playlist=FoRmhWxmj70&start=100","content":"<div class=\\"tm-cover-content uk-flex uk-flex-center uk-flex-middle\\">\\n      <div class=\\"uk-text-center\\">\\n            <h1>Experience the World<\\/h1>\\n      \\t    <p class=\\"uk-article-lead\\">Your adventure guide and store<\\/p>\\n      <\\/div>\\n<\\/div>","title":"Experience the World","media_height":90,"media_width":120,"options":{"media":{"width":"480","height":"270","poster":"images\\/yootheme\\/demo\\/default\\/home_fullscreen_image.jpg"}}},{"media":"images\\/yootheme\\/home_fullscreen_image2.jpg","title":"Widgetkit","height":"1000","width":"1600","content":"<div class=\\"tm-cover-content tm-cover-content-2 uk-flex uk-flex-center uk-flex-middle\\">\\n      <div class=\\"uk-text-center\\">\\n            <h1>Widgetkit<\\/h1>\\n      \\t    <p class=\\"uk-article-lead\\">Introducing the new, polished widget toolkit<\\/p>\\n      <\\/div>\\n<\\/div>","options":{"media":{"width":1600,"height":1000}}},{"media":"images\\/yootheme\\/home_fullscreen_image3.jpg","height":"1000","width":"1600","title":"Fullscreen Slideshow","content":"<div class=\\"tm-cover-content tm-cover-content-3 uk-flex uk-flex-center uk-flex-middle\\">\\n      <div class=\\"uk-text-center\\">\\n            <h1>Fullscreen Slideshow<\\/h1>\\n      \\t    <p class=\\"uk-article-lead\\">Your videos and images on the big stage<\\/p>\\n      <\\/div>\\n<\\/div>","options":{"media":{"width":1600,"height":1000}}}],"_fields":[]}'),
(14, 'Home Travel Diaries', 'custom', '{"items":[{"title":"Sa Pa, Vietnam","media":"images\\/yootheme\\/home_switcher_01.jpg","width":"445","height":"620","content":"Venice comes with a Fullscreen Position that allows you to create content which will fill the entire viewport.  This works great in combination with the <a href=\\"http:\\/\\/getuikit.com\\/docs\\/addons_cover.html\\" target=\\"blank\\">Cover component<\\/a> from UIkit or the Widgekit Slideshow. That way you can create fullscreen image and video headers with additional content.","link":"","options":{"media":{"width":445,"height":620}}},{"title":"New York, NY, USA","media":"images\\/yootheme\\/home_switcher_02.jpg","width":"445","height":"620","content":"The main navigation can be fixed to the top of the browser. Additionally you have the option to apply an alternative navbar, placing the logo between the items of a centered menu. When the Fullscreen Position is published, the navigation turns transparent and the logo is moved above the navbar.","link":"","options":{"media":{"width":445,"height":620}}},{"title":"Tuscany, Italy","media":"images\\/yootheme\\/home_switcher_03.jpg","width":"445","height":"620","content":"This theme features two different blog styles. The default layout places the featured image above the article and adds nicely designed meta data. You can also arrange them side by side in an alternating two column layout that is great for blog teasers and adapts smoothly to different device sizes.","link":"","options":{"media":{"width":445,"height":620}}},{"title":"Hana, Hawaii","media":"images\\/yootheme\\/home_switcher_04.jpg","width":"445","height":"620","content":"Venice comes with the new Widgetkit 2, including a Switcher Bonus Widget that fits perfectly into the theme''s design. Present images in a clean grid with a nice overlay in a primary color and reveal a bigger version of the image as well as additional content by clicking on each of the items.","link":"","options":{"media":{"width":445,"height":620}}},{"title":"Kanha National Park, India","media":"images\\/yootheme\\/home_switcher_05.jpg","width":"445","height":"620","content":"You can add a different background style to each section. Choose between two colors or use a fixed background image that matches your Fullscreen Position. Venice theme comes with 6 different style variations to give you a starting point and to show you what this theme is capable of.","link":"","options":{"media":{"width":445,"height":620}}}],"_fields":[]}'),
(15, 'Home Venice Theme', 'custom', '{"items":[{"media":"","title":"Warp 7","content":"<a href=\\"http:\\/\\/yootheme.com\\/themes\\/warp-framework\\" class=\\"tm-icon-yootheme\\" target=\\"_blank\\">\\n        <div class=\\"tm-icon-yootheme-warp\\"><\\/div>\\n      <\\/a>\\n      <h3 class=\\"uk-panel-title\\">Warp7<\\/h3>\\n      <p>Discover the fast and flexible<br class=\\"uk-hidden-medium\\"> Warp framework and start developing<br class=\\"uk-hidden-medium\\"> your own cross-platform themes.<\\/p>","options":{"media":[]}},{"media":"","title":"Pagekit","content":"<a href=\\"http:\\/\\/pagekit.com\\/\\" class=\\"tm-icon-yootheme\\" target=\\"_blank\\">\\n        <div class=\\"tm-icon-yootheme-pagekit\\"><\\/div>\\n      <\\/a>\\n      <h3 class=\\"uk-panel-title\\">Pagekit<\\/h3>\\n      <p>A new and intuitive CMS that<br class=\\"uk-hidden-medium\\"> gives you effective tools to manage<br class=\\"uk-hidden-medium\\"> what matters most: your content.<\\/p>"},{"media":"","content":"<a href=\\"http:\\/\\/getuikit.com\\/\\" class=\\"tm-icon-yootheme\\" target=\\"_blank\\">\\n          <div class=\\"tm-icon-yootheme-uikit\\"><\\/div>\\n        <\\/a>\\n        <h3 class=\\"uk-panel-title\\">UIkit<\\/h3>\\n        <p>A lightweight and modular<br class=\\"uk-hidden-medium\\"> front-end framework for developing<br class=\\"uk-hidden-medium\\"> fast and powerful web interfaces.<\\/p>","title":"UIkit"},{"media":"","title":"my","content":"<a href=\\"http:\\/\\/getuikit.com\\/\\" class=\\"tm-icon-yootheme\\" target=\\"_blank\\">\\n          <div class=\\"tm-icon-yootheme-uikit\\"><\\/div>\\n        <\\/a>\\n        <h3 class=\\"uk-panel-title\\">UIkit<\\/h3>\\n        <p>A lightweight and modular<br class=\\"uk-hidden-medium\\"> front-end framework for developing<br class=\\"uk-hidden-medium\\"> fast and powerful web interfaces.<\\/p>"}],"_fields":[]}'),
(16, 'Widgetkit 2 Widgets', 'custom', '{"items":[{"media":"images\\/yootheme\\/widget_slideshow.svg","options":{"media":{"width":40,"height":40}},"title":"Slideshow"},{"media":"images\\/yootheme\\/widget_grid.svg","options":{"media":{"width":40,"height":40}},"title":"Grid"},{"media":"images\\/yootheme\\/widget_grid-stack.svg","options":{"media":{"width":40,"height":40}},"title":"Grid Stack"},{"media":"images\\/yootheme\\/widget_switcher.svg","options":{"media":{"width":40,"height":40}},"title":"Switcher"},{"media":"images\\/yootheme\\/widget_map.svg","options":{"media":{"width":40,"height":40}},"title":"Map"}],"_fields":[]}'),
(17, 'Widgetkit 2 Tutorial', 'custom', '{"items":[{"media":"images\\/yootheme\\/widgetkit2_create.png","options":{"media":{"width":700,"height":480}},"title":"Start in the editor","content":"<p>To get started, click on the <strong>Widgetkit<\\/strong> button in your CMS edit view. Now choose the widget you would like to render, for example <strong>Grid<\\/strong>. To create content for your widget, hit the <strong>New<\\/strong> button and select the content type, for example <strong>custom<\\/strong>."},{"media":"images\\/yootheme\\/widgetkit2_add.png","options":{"media":{"width":700,"height":480}},"title":"Explore the Interface","content":"<p>To create your content, you can add single content items by using <strong>Add Item<\\/strong>. Alternatively you can use <strong>Add Media<\\/strong> to select multiple items at once through the media library or manager of your CMS. Don\\u2019t forget to hit <strong>Save<\\/strong> after you have created your items and then <strong>Close<\\/strong>.<\\/p>"},{"media":"images\\/yootheme\\/widgetkit2_insert.png","options":{"media":{"width":700,"height":480}},"title":"Using the shortcodes","content":"<p>To finalize your widget, hit <strong>Insert<\\/strong>. Now you will see a <strong>shortcode<\\/strong> with the ID and settings of your widget. If you have changed the default settings of your widget, the updated settings will be added to the shortcode. To select a different widget, click inside the shortcode and hit the <strong>Widgetkit<\\/strong> button. Now click <strong>Change Widget<\\/strong>.<\\/p>"}],"_fields":[]}'),
(18, 'Widgetkit 2 Features', 'custom', '{"items":[{"media":"","options":{"media":[]},"title":"Features 1","content":"<ul class=\\"uk-list uk-list-space\\">\\n    <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> All widgets are fully responsive<\\/li>\\n    <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> Use shortcodes to show widgets anywhere<\\/li>\\n<\\/ul>"},{"media":"","options":{"media":[]},"title":"Features 2","content":"<ul class=\\"uk-list uk-list-space\\">\\n    <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> Supports touch gestures for mobile devices<\\/li>\\n    <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> Clean and lightweight code<\\/li>\\n<\\/ul>"},{"media":"","content":"<ul class=\\"uk-list uk-list-space\\">\\n     <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> User friendly interface<\\/li>\\n    <li><i class=\\"uk-icon uk-icon-check\\"><\\/i> Built with the UIkit framework<\\/li>\\n<\\/ul>","title":"Features 3"}],"_fields":[]}'),
(19, 'Features', 'custom', '{"items":[{"title":"Fullscreen Position","media":"images\\/yootheme\\/features_fullscreen.jpg","width":"555","height":"300","options":{"media":{"width":555,"height":300}},"content":"Venice comes with a Fullscreen Position to create content that will fill the entire viewport. This works great in combination with the Widgetkit Slideshow or the <a href=\\"http:\\/\\/getuikit.com\\/docs\\/addons_cover.html\\" target=\\"blank\\">Cover component<\\/a> from UIkit."},{"title":"Section Backgrounds","media":"images\\/yootheme\\/features_sections.jpg","width":"555","height":"300","options":{"media":{"width":555,"height":300}},"content":"You can choose between two different background colors or use a fixed background image that matches your Fullscreen Position in each section."},{"title":"Adaptive Navbar","media":"images\\/yootheme\\/features_navbar.jpg","width":"555","height":"300","options":{"media":{"width":555,"height":300}},"content":"The main navigation can be fixed to the top of the browser. Additionally you have the option to apply an alternative navbar, placing the logo between the items of a centered menu. When the Fullscreen Position is published, the navigation turns transparent and the logo is moved above the navbar."},{"title":"Blog Layouts","media":"images\\/yootheme\\/features_blog.jpg","width":"555","height":"300","options":{"media":{"width":555,"height":300}},"content":"This theme features two different blog styles. The default layout places the featured image above the article and adds nicely designed meta data. You apply an alternating two column grid layout that places image and article side by side and adapts smoothly to different device sizes."}],"_fields":[]}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uclwy_assets`
--
ALTER TABLE `uclwy_assets`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `uclwy_associations`
--
ALTER TABLE `uclwy_associations`
 ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `uclwy_banners`
--
ALTER TABLE `uclwy_banners`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `uclwy_banner_clients`
--
ALTER TABLE `uclwy_banner_clients`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `uclwy_banner_tracks`
--
ALTER TABLE `uclwy_banner_tracks`
 ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `uclwy_categories`
--
ALTER TABLE `uclwy_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `uclwy_contact_details`
--
ALTER TABLE `uclwy_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `uclwy_content`
--
ALTER TABLE `uclwy_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `uclwy_contentitem_tag_map`
--
ALTER TABLE `uclwy_contentitem_tag_map`
 ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `uclwy_content_frontpage`
--
ALTER TABLE `uclwy_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uclwy_content_rating`
--
ALTER TABLE `uclwy_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `uclwy_content_types`
--
ALTER TABLE `uclwy_content_types`
 ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `uclwy_extensions`
--
ALTER TABLE `uclwy_extensions`
 ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `uclwy_finder_filters`
--
ALTER TABLE `uclwy_finder_filters`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `uclwy_finder_links`
--
ALTER TABLE `uclwy_finder_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `uclwy_finder_links_terms0`
--
ALTER TABLE `uclwy_finder_links_terms0`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms1`
--
ALTER TABLE `uclwy_finder_links_terms1`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms2`
--
ALTER TABLE `uclwy_finder_links_terms2`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms3`
--
ALTER TABLE `uclwy_finder_links_terms3`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms4`
--
ALTER TABLE `uclwy_finder_links_terms4`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms5`
--
ALTER TABLE `uclwy_finder_links_terms5`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms6`
--
ALTER TABLE `uclwy_finder_links_terms6`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms7`
--
ALTER TABLE `uclwy_finder_links_terms7`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms8`
--
ALTER TABLE `uclwy_finder_links_terms8`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_terms9`
--
ALTER TABLE `uclwy_finder_links_terms9`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termsa`
--
ALTER TABLE `uclwy_finder_links_termsa`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termsb`
--
ALTER TABLE `uclwy_finder_links_termsb`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termsc`
--
ALTER TABLE `uclwy_finder_links_termsc`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termsd`
--
ALTER TABLE `uclwy_finder_links_termsd`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termse`
--
ALTER TABLE `uclwy_finder_links_termse`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_links_termsf`
--
ALTER TABLE `uclwy_finder_links_termsf`
 ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `uclwy_finder_taxonomy`
--
ALTER TABLE `uclwy_finder_taxonomy`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `uclwy_finder_taxonomy_map`
--
ALTER TABLE `uclwy_finder_taxonomy_map`
 ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `uclwy_finder_terms`
--
ALTER TABLE `uclwy_finder_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `uclwy_finder_terms_common`
--
ALTER TABLE `uclwy_finder_terms_common`
 ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `uclwy_finder_tokens`
--
ALTER TABLE `uclwy_finder_tokens`
 ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `uclwy_finder_tokens_aggregate`
--
ALTER TABLE `uclwy_finder_tokens_aggregate`
 ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `uclwy_finder_types`
--
ALTER TABLE `uclwy_finder_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `uclwy_languages`
--
ALTER TABLE `uclwy_languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `uclwy_menu`
--
ALTER TABLE `uclwy_menu`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `uclwy_menu_types`
--
ALTER TABLE `uclwy_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `uclwy_messages`
--
ALTER TABLE `uclwy_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `uclwy_messages_cfg`
--
ALTER TABLE `uclwy_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `uclwy_modules`
--
ALTER TABLE `uclwy_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `uclwy_modules_menu`
--
ALTER TABLE `uclwy_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `uclwy_newsfeeds`
--
ALTER TABLE `uclwy_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `uclwy_overrider`
--
ALTER TABLE `uclwy_overrider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uclwy_postinstall_messages`
--
ALTER TABLE `uclwy_postinstall_messages`
 ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `uclwy_redirect_links`
--
ALTER TABLE `uclwy_redirect_links`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `uclwy_schemas`
--
ALTER TABLE `uclwy_schemas`
 ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `uclwy_session`
--
ALTER TABLE `uclwy_session`
 ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `uclwy_tags`
--
ALTER TABLE `uclwy_tags`
 ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `uclwy_template_styles`
--
ALTER TABLE `uclwy_template_styles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `uclwy_ucm_base`
--
ALTER TABLE `uclwy_ucm_base`
 ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `uclwy_ucm_content`
--
ALTER TABLE `uclwy_ucm_content`
 ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `uclwy_ucm_history`
--
ALTER TABLE `uclwy_ucm_history`
 ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `uclwy_updates`
--
ALTER TABLE `uclwy_updates`
 ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `uclwy_update_sites`
--
ALTER TABLE `uclwy_update_sites`
 ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `uclwy_update_sites_extensions`
--
ALTER TABLE `uclwy_update_sites_extensions`
 ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `uclwy_usergroups`
--
ALTER TABLE `uclwy_usergroups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `uclwy_users`
--
ALTER TABLE `uclwy_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `uclwy_user_keys`
--
ALTER TABLE `uclwy_user_keys`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `uclwy_user_notes`
--
ALTER TABLE `uclwy_user_notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `uclwy_user_profiles`
--
ALTER TABLE `uclwy_user_profiles`
 ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `uclwy_user_usergroup_map`
--
ALTER TABLE `uclwy_user_usergroup_map`
 ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `uclwy_viewlevels`
--
ALTER TABLE `uclwy_viewlevels`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `uclwy_weblinks`
--
ALTER TABLE `uclwy_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `uclwy_widgetkit`
--
ALTER TABLE `uclwy_widgetkit`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uclwy_assets`
--
ALTER TABLE `uclwy_assets`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `uclwy_banners`
--
ALTER TABLE `uclwy_banners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_banner_clients`
--
ALTER TABLE `uclwy_banner_clients`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_categories`
--
ALTER TABLE `uclwy_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `uclwy_contact_details`
--
ALTER TABLE `uclwy_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `uclwy_content`
--
ALTER TABLE `uclwy_content`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `uclwy_content_types`
--
ALTER TABLE `uclwy_content_types`
MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `uclwy_extensions`
--
ALTER TABLE `uclwy_extensions`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10054;
--
-- AUTO_INCREMENT for table `uclwy_finder_filters`
--
ALTER TABLE `uclwy_finder_filters`
MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_finder_links`
--
ALTER TABLE `uclwy_finder_links`
MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_finder_taxonomy`
--
ALTER TABLE `uclwy_finder_taxonomy`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uclwy_finder_terms`
--
ALTER TABLE `uclwy_finder_terms`
MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_finder_types`
--
ALTER TABLE `uclwy_finder_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_languages`
--
ALTER TABLE `uclwy_languages`
MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uclwy_menu`
--
ALTER TABLE `uclwy_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `uclwy_menu_types`
--
ALTER TABLE `uclwy_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uclwy_messages`
--
ALTER TABLE `uclwy_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_modules`
--
ALTER TABLE `uclwy_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `uclwy_newsfeeds`
--
ALTER TABLE `uclwy_newsfeeds`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_overrider`
--
ALTER TABLE `uclwy_overrider`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `uclwy_postinstall_messages`
--
ALTER TABLE `uclwy_postinstall_messages`
MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uclwy_redirect_links`
--
ALTER TABLE `uclwy_redirect_links`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_tags`
--
ALTER TABLE `uclwy_tags`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `uclwy_template_styles`
--
ALTER TABLE `uclwy_template_styles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `uclwy_ucm_content`
--
ALTER TABLE `uclwy_ucm_content`
MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_ucm_history`
--
ALTER TABLE `uclwy_ucm_history`
MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_updates`
--
ALTER TABLE `uclwy_updates`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uclwy_update_sites`
--
ALTER TABLE `uclwy_update_sites`
MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uclwy_usergroups`
--
ALTER TABLE `uclwy_usergroups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `uclwy_users`
--
ALTER TABLE `uclwy_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=341;
--
-- AUTO_INCREMENT for table `uclwy_user_keys`
--
ALTER TABLE `uclwy_user_keys`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uclwy_user_notes`
--
ALTER TABLE `uclwy_user_notes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uclwy_viewlevels`
--
ALTER TABLE `uclwy_viewlevels`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `uclwy_weblinks`
--
ALTER TABLE `uclwy_weblinks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `uclwy_widgetkit`
--
ALTER TABLE `uclwy_widgetkit`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
