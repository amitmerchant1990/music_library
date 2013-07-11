-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2013 at 03:20 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music_lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE IF NOT EXISTS `login_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`, `duration`, `used`, `created`, `expires`) VALUES
(1, 1, 'bdc006f0a272d11b4612f3ff10444845', '2 weeks', 0, '2013-07-11 00:54:24', '2013-07-25 00:54:24'),
(2, 1, '8732a1ff549a5a4e3a43865e3bb926e5', '2 weeks', 0, '2013-07-11 00:57:20', '2013-07-25 00:57:20'),
(3, 1, 'c78a3157c899dd004b334ecf9454c5fd', '2 weeks', 0, '2013-07-11 00:57:26', '2013-07-25 00:57:26'),
(4, 2, '9c68f413228b53ba186d7089ed733f02', '2 weeks', 0, '2013-07-11 01:06:55', '2013-07-25 01:06:55'),
(5, 1, '2c75d7ac35570802f0fdb758db35fe9d', '2 weeks', 0, '2013-07-11 01:13:15', '2013-07-25 01:13:15'),
(6, 2, '68e7f88ed0d608bd3999e36db81a3154', '2 weeks', 0, '2013-07-11 01:13:30', '2013-07-25 01:13:30'),
(7, 1, '0ce9508032685a52e5283fb3e8e4af62', '2 weeks', 0, '2013-07-11 01:16:10', '2013-07-25 01:16:10'),
(8, 2, '9b00d97c884ba46671cfb4cc57e228c7', '2 weeks', 0, '2013-07-11 01:16:23', '2013-07-25 01:16:23'),
(9, 1, 'aacc108a74359263d5c0e3672fc2ef00', '2 weeks', 0, '2013-07-11 01:39:44', '2013-07-25 01:39:44'),
(10, 2, 'a2a86a199ebb9d0fbf19555f9c9f59a2', '2 weeks', 0, '2013-07-11 01:39:58', '2013-07-25 01:39:58'),
(11, 2, 'c6c5443ce9b6257777eda024e2a19375', '2 weeks', 0, '2013-07-11 01:47:42', '2013-07-25 01:47:42'),
(12, 2, '181cb18ed8d9d472e3f90b92328af452', '2 weeks', 0, '2013-07-11 01:48:31', '2013-07-25 01:48:31'),
(13, 2, 'bed95a7e8f5ba3644d42c86df8f0053b', '2 weeks', 0, '2013-07-11 02:04:49', '2013-07-25 02:04:49'),
(14, 1, 'c14b77d7d6d95c3ea8ba80805adf7250', '2 weeks', 0, '2013-07-11 02:16:20', '2013-07-25 02:16:20'),
(15, 1, 'c9e588be1946ca0bc05d451c4dc289f8', '2 weeks', 0, '2013-07-11 02:18:17', '2013-07-25 02:18:17'),
(16, 1, '605c2265f36c31a78ba0c5c8c857f1d0', '2 weeks', 0, '2013-07-11 02:18:20', '2013-07-25 02:18:20'),
(17, 2, '853b8a5b3d1b8319c24885f7e46d619b', '2 weeks', 0, '2013-07-11 02:19:19', '2013-07-25 02:19:19'),
(18, 2, 'f3bbac9603e9c4fb6365fcfcfaaf1d65', '2 weeks', 0, '2013-07-11 02:31:37', '2013-07-25 02:31:37'),
(19, 2, '0f694841ab7d2ae7a97e821cc91efe5b', '2 weeks', 0, '2013-07-11 03:00:51', '2013-07-25 03:00:51'),
(20, 2, 'e20fae17444ab73f93624e0c321a1eb2', '2 weeks', 1, '2013-07-11 03:11:44', '2013-07-25 03:11:44'),
(21, 2, '30c0326270db6f2e45c86b04c39b0aab', '2 weeks', 1, '2013-07-11 04:42:39', '2013-07-25 04:42:39'),
(22, 2, 'cf392a253563ccccfe13cda21b0dea97', '2 weeks', 0, '2013-07-11 05:00:38', '2013-07-25 05:00:38');

-- --------------------------------------------------------

--
-- Table structure for table `store_musics`
--

CREATE TABLE IF NOT EXISTS `store_musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `da_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `store_musics`
--

INSERT INTO `store_musics` (`id`, `id_user`, `title`, `file_name`, `da_time`) VALUES
(2, 2, 'Kabira', 'Kabira.mp3', '2013-07-11 05:29:02'),
(4, 2, 'Castel Of Glass', 'Castle Of Glass.mp3', '2013-07-11 05:30:57'),
(6, 2, 'Muskaanien Joothi Hai - Talaash', 'Muskaanein Jhooti Hai.mp3', '2013-07-11 06:44:42'),
(7, 2, 'Jiya laage na - Talaash', 'Jiya Lage Na.mp3', '2013-07-11 06:50:26'),
(8, 2, 'TroubleMaker - Akon', 'Troublemaker- Akon Ft. Sweet Rush.mp3', '2013-07-11 07:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) unsigned DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` text,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email_verified` int(1) DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`username`),
  KEY `mail` (`email`),
  KEY `users_FKIndex1` (`user_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `salt`, `email`, `first_name`, `last_name`, `email_verified`, `active`, `ip_address`, `created`, `modified`) VALUES
(1, 1, 'admin', '365caef7fccbdb1ee711f084be9317a7', '1e6d99570a4d37cc29b18c4a6b06e6ed', 'admin@admin.com', 'Admin', '', 1, 1, '', '2013-07-11 10:10:46', '2013-07-11 10:10:46'),
(2, 2, 'amit', '8a6067141f3b632682ff22dee150788d', '2aec387cc380a1dff07c7dcd2b64d0fd', 'am.narola@narolainfotech.com', 'Amit', 'Merchant', 1, 1, '127.0.0.1', '2013-07-11 01:06:19', '2013-07-11 01:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `alias_name`, `allowRegistration`, `created`, `modified`) VALUES
(1, 'Admin', 'Admin', 0, '2013-07-11 10:10:47', '2013-07-11 10:10:47'),
(2, 'User', 'User', 1, '2013-07-11 10:10:47', '2013-07-11 10:10:47'),
(3, 'Guest', 'Guest', 0, '2013-07-11 10:10:47', '2013-07-11 10:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE IF NOT EXISTS `user_group_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(10) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `user_group_id`, `controller`, `action`, `allowed`) VALUES
(1, 1, 'Pages', 'display', 1),
(2, 2, 'Pages', 'display', 1),
(3, 3, 'Pages', 'display', 1),
(4, 1, 'UserGroupPermissions', 'index', 1),
(5, 2, 'UserGroupPermissions', 'index', 0),
(6, 3, 'UserGroupPermissions', 'index', 0),
(7, 1, 'UserGroupPermissions', 'update', 1),
(8, 2, 'UserGroupPermissions', 'update', 0),
(9, 3, 'UserGroupPermissions', 'update', 0),
(10, 1, 'UserGroups', 'index', 1),
(11, 2, 'UserGroups', 'index', 0),
(12, 3, 'UserGroups', 'index', 0),
(13, 1, 'UserGroups', 'addGroup', 1),
(14, 2, 'UserGroups', 'addGroup', 0),
(15, 3, 'UserGroups', 'addGroup', 0),
(16, 1, 'UserGroups', 'editGroup', 1),
(17, 2, 'UserGroups', 'editGroup', 0),
(18, 3, 'UserGroups', 'editGroup', 0),
(19, 1, 'UserGroups', 'deleteGroup', 1),
(20, 2, 'UserGroups', 'deleteGroup', 0),
(21, 3, 'UserGroups', 'deleteGroup', 0),
(22, 1, 'Users', 'index', 1),
(23, 2, 'Users', 'index', 0),
(24, 3, 'Users', 'index', 0),
(25, 1, 'Users', 'viewUser', 1),
(26, 2, 'Users', 'viewUser', 0),
(27, 3, 'Users', 'viewUser', 0),
(28, 1, 'Users', 'myprofile', 1),
(29, 2, 'Users', 'myprofile', 1),
(30, 3, 'Users', 'myprofile', 0),
(31, 1, 'Users', 'login', 1),
(32, 2, 'Users', 'login', 1),
(33, 3, 'Users', 'login', 1),
(34, 1, 'Users', 'logout', 1),
(35, 2, 'Users', 'logout', 1),
(36, 3, 'Users', 'logout', 1),
(37, 1, 'Users', 'register', 1),
(38, 2, 'Users', 'register', 1),
(39, 3, 'Users', 'register', 1),
(40, 1, 'Users', 'changePassword', 1),
(41, 2, 'Users', 'changePassword', 1),
(42, 3, 'Users', 'changePassword', 0),
(43, 1, 'Users', 'changeUserPassword', 1),
(44, 2, 'Users', 'changeUserPassword', 0),
(45, 3, 'Users', 'changeUserPassword', 0),
(46, 1, 'Users', 'addUser', 1),
(47, 2, 'Users', 'addUser', 0),
(48, 3, 'Users', 'addUser', 0),
(49, 1, 'Users', 'editUser', 1),
(50, 2, 'Users', 'editUser', 0),
(51, 3, 'Users', 'editUser', 0),
(52, 1, 'Users', 'dashboard', 1),
(53, 2, 'Users', 'dashboard', 1),
(54, 3, 'Users', 'dashboard', 0),
(55, 1, 'Users', 'deleteUser', 1),
(56, 2, 'Users', 'deleteUser', 0),
(57, 3, 'Users', 'deleteUser', 0),
(58, 1, 'Users', 'makeActive', 1),
(59, 2, 'Users', 'makeActive', 0),
(60, 3, 'Users', 'makeActive', 0),
(61, 1, 'Users', 'accessDenied', 1),
(62, 2, 'Users', 'accessDenied', 1),
(63, 3, 'Users', 'accessDenied', 1),
(64, 1, 'Users', 'userVerification', 1),
(65, 2, 'Users', 'userVerification', 1),
(66, 3, 'Users', 'userVerification', 1),
(67, 1, 'Users', 'forgotPassword', 1),
(68, 2, 'Users', 'forgotPassword', 1),
(69, 3, 'Users', 'forgotPassword', 1),
(70, 1, 'Users', 'makeActiveInactive', 1),
(71, 2, 'Users', 'makeActiveInactive', 0),
(72, 3, 'Users', 'makeActiveInactive', 0),
(73, 1, 'Users', 'verifyEmail', 1),
(74, 2, 'Users', 'verifyEmail', 0),
(75, 3, 'Users', 'verifyEmail', 0),
(76, 1, 'Users', 'activatePassword', 1),
(77, 2, 'Users', 'activatePassword', 1),
(78, 3, 'Users', 'activatePassword', 1),
(79, 1, 'Home', 'index', 1),
(80, 2, 'Home', 'index', 1),
(81, 3, 'Home', 'index', 1),
(82, 1, 'YourMusic', 'index', 0),
(83, 2, 'YourMusic', 'index', 1),
(84, 3, 'YourMusic', 'index', 0),
(85, 1, 'YourMusic', 'upload_files', 0),
(86, 2, 'YourMusic', 'upload_files', 1),
(87, 3, 'YourMusic', 'upload_files', 0),
(88, 1, 'YourMusic', 'upload', 0),
(89, 2, 'YourMusic', 'upload', 1),
(90, 3, 'YourMusic', 'upload', 0),
(91, 1, 'YourMusic', 'delete', 0),
(92, 2, 'YourMusic', 'delete', 1),
(93, 3, 'YourMusic', 'delete', 0),
(94, 1, 'Music', 'index', 0),
(95, 2, 'Music', 'index', 1),
(96, 3, 'Music', 'index', 1),
(97, 1, 'Music', 'download', 0),
(98, 2, 'Music', 'download', 1),
(99, 3, 'Music', 'download', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
