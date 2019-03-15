/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2018-01-03 03:05:14 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_responsive_menu_pro` (
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "A WordPress Commenter", "wapuu@wordpress.example", "https://wordpress.org/", "", "2017-12-31 17:50:50", "2017-12-31 17:50:50", "Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "", "0", "0");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("10", "20180103_tro", "d78a42b5fbdf72e19180180103030329", "20", "2018-01-03 03:03:33", "julian", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:03:29\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:10;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"d78a42b5fbdf72e19180180103030329\";s:8:\"NameHash\";s:45:\"20180103_tro_d78a42b5fbdf72e19180180103030329\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";s:55:\"20180103_tro_d78a42b5fbdf72e19180180103030329_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:6:\"julian\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:1;s:4:\"File\";s:57:\"20180103_tro_d78a42b5fbdf72e19180180103030329_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/tro\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:03:29\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"d78a42b5fbdf72e19180180103030329\";s:8:\"NameHash\";s:45:\"20180103_tro_d78a42b5fbdf72e19180180103030329\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:59:\"20180103_tro_d78a42b5fbdf72e19180180103030329_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:58:\"20180103_tro_d78a42b5fbdf72e19180180103030329_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";s:1:\"1\";}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:38:\"/Applications/MAMP/htdocs/tro/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/tro/wp-content/languages\";i:3;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/plugins\";i:4;s:47:\"/Applications/MAMP/htdocs/tro/wp-content/themes\";i:5;s:41:\"/Applications/MAMP/htdocs/tro/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}");
INSERT INTO `wp_duplicator_packages` VALUES("11", "20180103_tro", "090ab73b728f51bc7958180103030510", "20", "2018-01-03 03:05:14", "julian", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:05:10\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:11;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"090ab73b728f51bc7958180103030510\";s:8:\"NameHash\";s:45:\"20180103_tro_090ab73b728f51bc7958180103030510\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";s:55:\"20180103_tro_090ab73b728f51bc7958180103030510_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:6:\"julian\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:1;s:4:\"File\";s:57:\"20180103_tro_090ab73b728f51bc7958180103030510_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/tro\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:05:10\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"090ab73b728f51bc7958180103030510\";s:8:\"NameHash\";s:45:\"20180103_tro_090ab73b728f51bc7958180103030510\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:59:\"20180103_tro_090ab73b728f51bc7958180103030510_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:58:\"20180103_tro_090ab73b728f51bc7958180103030510_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";s:1:\"1\";}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:38:\"/Applications/MAMP/htdocs/tro/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/tro/wp-content/languages\";i:3;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/plugins\";i:4;s:47:\"/Applications/MAMP/htdocs/tro/wp-content/themes\";i:5;s:41:\"/Applications/MAMP/htdocs/tro/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://tro:8888", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://tro:8888", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "TRO", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Just another WordPress site", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "clarky667@hotmail.com", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "0", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "F j, Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "g:i a", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "F j, Y g:i a", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/index.php/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:6:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:25:\"duplicator/duplicator.php\";i:4;s:43:\"responsive-menu-pro/responsive-menu-pro.php\";i:5;s:39:\"uk-cookie-consent/uk-cookie-consent.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "tro", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "tro", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_whitelist", "1", "yes");
INSERT INTO `wp_options` VALUES("43", "blacklist_keys", "", "no");
INSERT INTO `wp_options` VALUES("44", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("46", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("47", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("48", "db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("49", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("51", "blog_public", "0", "yes");
INSERT INTO `wp_options` VALUES("52", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("53", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("54", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("55", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("56", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("57", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("59", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("60", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("61", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("62", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("63", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("64", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("65", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("68", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("69", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("70", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("71", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("72", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("73", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("74", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("75", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("76", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("77", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_categories", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "widget_text", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("80", "widget_rss", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("81", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("82", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("83", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "page_on_front", "5", "yes");
INSERT INTO `wp_options` VALUES("85", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("86", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("88", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("90", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("91", "initial_db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("92", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("93", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("94", "widget_search", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("95", "widget_recent-posts", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("96", "widget_recent-comments", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("97", "widget_archives", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_meta", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "sidebars_widgets", "a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("100", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("104", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "nonce_key", ".=C2~Fk;qKjW+.(v+fC+vOb0)4S.ft.Re<r/sBd|.P6S=o7Vm?k<~h;B42K&[JY ", "no");
INSERT INTO `wp_options` VALUES("107", "nonce_salt", "q1ixhZ]fzDJ.x3q8{9ssyJhXh!D7j+K0s(7!<m1jAIZ0oGAd%!/v}Y2oXCAK)W-U", "no");
INSERT INTO `wp_options` VALUES("108", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_nav_menu", "a:3:{i:2;a:1:{s:8:\"nav_menu\";i:2;}i:3;a:1:{s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("111", "cron", "a:7:{i:1514954707;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"77bfea138af154ec45b266ee439b4c6c\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:86;}}}}i:1514954762;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"3e8d8c2966a4b2c8853c021c20c64617\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:87;}}}}i:1514958650;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515001861;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515004557;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515004780;a:1:{s:20:\"put_do_weekly_action\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("112", "theme_mods_twentyseventeen", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514742710;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("116", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1514947509;s:15:\"version_checked\";s:5:\"4.9.1\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("121", "_site_transient_update_themes", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1514947565;s:7:\"checked\";a:1:{s:3:\"tro\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("123", "auth_key", "_^kJKPmO@$z2EC}|R!Mh]%J50rhjg%@&J{{],No~, jYj*[;rP+bVKau$]Yb*^Sd", "no");
INSERT INTO `wp_options` VALUES("124", "auth_salt", "?uP%_I%z:$;iis,3,aGf>fIW)e0g?bck~)/VUaxR%zU8-PIq<wnoSBpM}T-uVMB?", "no");
INSERT INTO `wp_options` VALUES("125", "logged_in_key", "2)G {qS_ Mhz1yM%ytv(f`V@CI1:^ bf$a?A#sC1m$a#z-_fjEVawO)4_G!Pn#AA", "no");
INSERT INTO `wp_options` VALUES("126", "logged_in_salt", "~O2WG#5QxB43->>y3=w[gp!!ho,T~K#4eFV[v[J<oA@1r:]8h&kY5=<1Ay.cw(T8", "no");
INSERT INTO `wp_options` VALUES("127", "_site_transient_timeout_browser_24b4ef28d88ba7c099658e04e3166d29", "1515347462", "no");
INSERT INTO `wp_options` VALUES("128", "_site_transient_browser_24b4ef28d88ba7c099658e04e3166d29", "a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"63.0.3239.84\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}", "no");
INSERT INTO `wp_options` VALUES("132", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("144", "current_theme", "Twenty Sixteen/tro", "yes");
INSERT INTO `wp_options` VALUES("145", "theme_mods_tro", "a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514744797;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"nora-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"nora-sidebar-page\";a:0:{}s:19:\"nora-sidebar-footer\";a:0:{}s:19:\"nora-sidebar-drawer\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("146", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("147", "widget_nora_social_widget", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("150", "recently_activated", "a:1:{s:35:\"responsive-menu/responsive-menu.php\";i:1514758539;}", "yes");
INSERT INTO `wp_options` VALUES("156", "theme_mods_twentysixteen", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1514744862;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("160", "acf_version", "5.6.7", "yes");
INSERT INTO `wp_options` VALUES("161", "cptui_new_install", "false", "yes");
INSERT INTO `wp_options` VALUES("163", "ctcc_more_info_page", "19", "yes");
INSERT INTO `wp_options` VALUES("165", "ctcc_options_settings", "a:9:{s:7:\"closure\";s:5:\"click\";s:13:\"scroll_height\";i:200;s:10:\"first_page\";i:0;s:16:\"enable_metafield\";i:0;s:10:\"zones_only\";s:0:\"\";s:8:\"duration\";i:60;s:13:\"cookie_expiry\";i:30;s:14:\"cookie_version\";i:1;s:25:\"wisdom_registered_setting\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("166", "ctcc_content_settings", "a:7:{s:12:\"heading_text\";s:7:\"Cookies\";s:17:\"notification_text\";s:24:\"This site uses cookies: \";s:11:\"accept_text\";s:12:\"Okay, thanks\";s:14:\"more_info_text\";s:14:\"Find out more.\";s:14:\"more_info_page\";s:2:\"19\";s:13:\"more_info_url\";s:0:\"\";s:16:\"more_info_target\";s:6:\"_blank\";}", "yes");
INSERT INTO `wp_options` VALUES("167", "ctcc_styles_settings", "a:12:{s:8:\"position\";s:10:\"bottom-bar\";s:15:\"container_class\";s:0:\"\";s:14:\"enqueue_styles\";s:1:\"1\";s:15:\"rounded_corners\";s:1:\"1\";s:11:\"drop_shadow\";s:1:\"1\";s:24:\"display_accept_with_text\";s:1:\"1\";s:10:\"text_color\";s:7:\"#ffffff\";s:8:\"bg_color\";s:7:\"#00aeef\";s:10:\"link_color\";s:4:\"#fff\";s:12:\"button_color\";s:0:\"\";s:15:\"button_bg_color\";s:0:\"\";s:11:\"flat_button\";s:1:\"1\";}", "yes");
INSERT INTO `wp_options` VALUES("168", "wisdom_block_notice", "a:1:{s:17:\"uk-cookie-consent\";s:17:\"uk-cookie-consent\";}", "yes");
INSERT INTO `wp_options` VALUES("169", "nav_menu_options", "a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("171", "responsive_menu_version", "3.1.11", "yes");
INSERT INTO `wp_options` VALUES("172", "responsive_menu_current_page", "initial-setup", "yes");
INSERT INTO `wp_options` VALUES("173", "hide_pro_options", "no", "yes");
INSERT INTO `wp_options` VALUES("175", "responsive_menu_pro_version", "3.1.11", "yes");
INSERT INTO `wp_options` VALUES("176", "responsive_menu_pro_current_page", "advanced", "yes");
INSERT INTO `wp_options` VALUES("177", "responsive_menu_pro_license_type", "", "yes");
INSERT INTO `wp_options` VALUES("178", "responsive_menu_pro_license_key", "5d4e8f96a6459e7001f8afa0050ebec6", "yes");
INSERT INTO `wp_options` VALUES("180", "options_header_logo", "69", "no");
INSERT INTO `wp_options` VALUES("181", "_options_header_logo", "field_5a497f3b33034", "no");
INSERT INTO `wp_options` VALUES("197", "options_header_social_0_social_image", "56", "no");
INSERT INTO `wp_options` VALUES("198", "_options_header_social_0_social_image", "field_5a4995aa21df9", "no");
INSERT INTO `wp_options` VALUES("199", "options_header_social_0_social_link", "https://www.linkedin.com/company/tro", "no");
INSERT INTO `wp_options` VALUES("200", "_options_header_social_0_social_link", "field_5a4995bc21dfa", "no");
INSERT INTO `wp_options` VALUES("201", "options_header_social_1_social_image", "54", "no");
INSERT INTO `wp_options` VALUES("202", "_options_header_social_1_social_image", "field_5a4995aa21df9", "no");
INSERT INTO `wp_options` VALUES("203", "options_header_social_1_social_link", "https://www.facebook.com/TROExperiential", "no");
INSERT INTO `wp_options` VALUES("204", "_options_header_social_1_social_link", "field_5a4995bc21dfa", "no");
INSERT INTO `wp_options` VALUES("205", "options_header_social_2_social_image", "55", "no");
INSERT INTO `wp_options` VALUES("206", "_options_header_social_2_social_image", "field_5a4995aa21df9", "no");
INSERT INTO `wp_options` VALUES("207", "options_header_social_2_social_link", "https://twitter.com/TROexperiential", "no");
INSERT INTO `wp_options` VALUES("208", "_options_header_social_2_social_link", "field_5a4995bc21dfa", "no");
INSERT INTO `wp_options` VALUES("209", "options_header_social_3_social_image", "57", "no");
INSERT INTO `wp_options` VALUES("210", "_options_header_social_3_social_image", "field_5a4995aa21df9", "no");
INSERT INTO `wp_options` VALUES("211", "options_header_social_3_social_link", "https://plus.google.com/+TRO", "no");
INSERT INTO `wp_options` VALUES("212", "_options_header_social_3_social_link", "field_5a4995bc21dfa", "no");
INSERT INTO `wp_options` VALUES("213", "options_header_social_4_social_image", "58", "no");
INSERT INTO `wp_options` VALUES("214", "_options_header_social_4_social_image", "field_5a4995aa21df9", "no");
INSERT INTO `wp_options` VALUES("215", "options_header_social_4_social_link", "https://www.youtube.com/user/TROAgency", "no");
INSERT INTO `wp_options` VALUES("216", "_options_header_social_4_social_link", "field_5a4995bc21dfa", "no");
INSERT INTO `wp_options` VALUES("217", "options_header_social", "5", "no");
INSERT INTO `wp_options` VALUES("218", "_options_header_social", "field_5a49958a21df8", "no");
INSERT INTO `wp_options` VALUES("231", "category_children", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("245", "_transient_is_multi_author", "0", "yes");
INSERT INTO `wp_options` VALUES("246", "_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a", "1514958275", "no");
INSERT INTO `wp_options` VALUES("247", "_site_transient_poptags_40cd750bba9870f18aada2478b24840a", "O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4419;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2526;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2495;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2387;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1854;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1624;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1616;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1441;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1374;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1372;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1359;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1285;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1282;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1166;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1076;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1056;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1007;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:976;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:849;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:841;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:818;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:789;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:782;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:683;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:678;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:675;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:669;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:666;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:652;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:643;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:639;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:622;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:619;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:600;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:595;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:594;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:591;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:584;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:572;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:572;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:551;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:541;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:530;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:514;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:506;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:506;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:499;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:485;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:483;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:482;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:474;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:465;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:463;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:458;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:452;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:451;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:447;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:431;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:417;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:417;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:416;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:411;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:410;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:407;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:404;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:402;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:393;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:387;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:379;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:359;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:356;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:353;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:348;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:339;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:337;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:336;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:335;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:331;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:331;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:328;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:327;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:325;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:325;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:321;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:311;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:310;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:303;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:300;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:300;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:299;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:294;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:290;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:287;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:286;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:285;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:284;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:282;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:282;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:280;}}", "no");
INSERT INTO `wp_options` VALUES("248", "_site_transient_timeout_theme_roots", "1514949307", "no");
INSERT INTO `wp_options` VALUES("249", "_site_transient_theme_roots", "a:1:{s:3:\"tro\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("252", "duplicator_settings", "a:13:{s:7:\"version\";s:6:\"1.2.30\";s:18:\"uninstall_settings\";s:1:\"1\";s:15:\"uninstall_files\";s:1:\"1\";s:16:\"uninstall_tables\";s:1:\"0\";s:13:\"package_debug\";s:1:\"0\";s:17:\"package_mysqldump\";s:1:\"0\";s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:4:\"2000\";s:17:\"package_zip_flush\";s:1:\"1\";s:20:\"storage_htaccess_off\";s:1:\"0\";s:12:\"last_updated\";s:19:\"2018-01-03-03-04-56\";s:18:\"package_ui_created\";s:1:\"1\";s:17:\"wpfront_integrate\";s:1:\"0\";}", "yes");
INSERT INTO `wp_options` VALUES("253", "duplicator_version_plugin", "1.2.30", "yes");
INSERT INTO `wp_options` VALUES("254", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1514947570;s:7:\"checked\";a:6:{s:29:\"acf-repeater/acf-repeater.php\";s:5:\"2.0.1\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.6.7\";s:39:\"uk-cookie-consent/uk-cookie-consent.php\";s:5:\"2.3.7\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.6\";s:25:\"duplicator/duplicator.php\";s:6:\"1.2.30\";s:43:\"responsive-menu-pro/responsive-menu-pro.php\";s:6:\"3.1.11\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:39:\"uk-cookie-consent/uk-cookie-consent.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/uk-cookie-consent\";s:4:\"slug\";s:17:\"uk-cookie-consent\";s:6:\"plugin\";s:39:\"uk-cookie-consent/uk-cookie-consent.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/uk-cookie-consent/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/uk-cookie-consent.2.3.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:70:\"https://ps.w.org/uk-cookie-consent/assets/icon-128x128.png?rev=1326394\";s:2:\"2x\";s:70:\"https://ps.w.org/uk-cookie-consent/assets/icon-256x256.png?rev=1326394\";s:7:\"default\";s:70:\"https://ps.w.org/uk-cookie-consent/assets/icon-256x256.png?rev=1326394\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/uk-cookie-consent/assets/banner-1544x500.jpg?rev=1326394\";s:2:\"1x\";s:72:\"https://ps.w.org/uk-cookie-consent/assets/banner-772x250.jpg?rev=1326394\";s:7:\"default\";s:73:\"https://ps.w.org/uk-cookie-consent/assets/banner-1544x500.jpg?rev=1326394\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:7:\"default\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";s:7:\"default\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.30\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.30.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:7:\"default\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";s:7:\"default\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("255", "_transient_timeout_plugin_slugs", "1515033972", "no");
INSERT INTO `wp_options` VALUES("256", "_transient_plugin_slugs", "a:6:{i:0;s:29:\"acf-repeater/acf-repeater.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:39:\"uk-cookie-consent/uk-cookie-consent.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:25:\"duplicator/duplicator.php\";i:5;s:43:\"responsive-menu-pro/responsive-menu-pro.php\";}", "no");
INSERT INTO `wp_options` VALUES("257", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:05:10\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"090ab73b728f51bc7958180103030510\";s:8:\"NameHash\";s:45:\"20180103_tro_090ab73b728f51bc7958180103030510\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";s:55:\"20180103_tro_090ab73b728f51bc7958180103030510_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:1;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:29:\"/Applications/MAMP/htdocs/tro\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-01-03 03:05:10\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:5:\"4.9.1\";s:9:\"VersionDB\";s:6:\"5.6.25\";s:10:\"VersionPHP\";s:5:\"7.0.0\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:12:\"20180103_tro\";s:4:\"Hash\";s:32:\"090ab73b728f51bc7958180103030510\";s:8:\"NameHash\";s:45:\"20180103_tro_090ab73b728f51bc7958180103030510\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:46:\"/Applications/MAMP/htdocs/tro/wp-snapshots/tmp\";s:8:\"StoreURL\";s:29:\"http://tro:8888/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:57;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";s:1:\"1\";}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:38:\"/Applications/MAMP/htdocs/tro/wp-admin\";i:1;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/uploads\";i:2;s:50:\"/Applications/MAMP/htdocs/tro/wp-content/languages\";i:3;s:48:\"/Applications/MAMP/htdocs/tro/wp-content/plugins\";i:4;s:47:\"/Applications/MAMP/htdocs/tro/wp-content/themes\";i:5;s:41:\"/Applications/MAMP/htdocs/tro/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}", "yes");
INSERT INTO `wp_options` VALUES("258", "duplicator_ui_view_state", "a:8:{s:19:\"dup-pack-build-try3\";s:1:\"1\";s:19:\"dup-pack-build-try1\";s:1:\"0\";s:19:\"dup-pack-build-try2\";s:1:\"0\";s:28:\"dup-settings-diag-opts-panel\";s:1:\"1\";s:27:\"dup-settings-diag-srv-panel\";s:1:\"1\";s:22:\"dup-pack-storage-panel\";s:1:\"0\";s:22:\"dup-pack-archive-panel\";s:1:\"0\";s:24:\"dup-pack-installer-panel\";s:1:\"0\";}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("2", "2", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("3", "2", "_wp_trash_meta_time", "1514745354");
INSERT INTO `wp_postmeta` VALUES("4", "2", "_wp_desired_post_slug", "sample-page");
INSERT INTO `wp_postmeta` VALUES("5", "5", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("6", "5", "_edit_lock", "1514853424:1");
INSERT INTO `wp_postmeta` VALUES("7", "7", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("8", "7", "_edit_lock", "1514889549:1");
INSERT INTO `wp_postmeta` VALUES("9", "9", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("10", "9", "_edit_lock", "1514947330:1");
INSERT INTO `wp_postmeta` VALUES("11", "11", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("12", "11", "_edit_lock", "1514745290:1");
INSERT INTO `wp_postmeta` VALUES("13", "13", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("14", "13", "_edit_lock", "1514745318:1");
INSERT INTO `wp_postmeta` VALUES("15", "15", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("16", "15", "_edit_lock", "1514745345:1");
INSERT INTO `wp_postmeta` VALUES("17", "17", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("18", "17", "_edit_lock", "1514745359:1");
INSERT INTO `wp_postmeta` VALUES("19", "20", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("20", "20", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("21", "20", "_menu_item_object_id", "13");
INSERT INTO `wp_postmeta` VALUES("22", "20", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("23", "20", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("24", "20", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("25", "20", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("26", "20", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("28", "21", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("29", "21", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("30", "21", "_menu_item_object_id", "11");
INSERT INTO `wp_postmeta` VALUES("31", "21", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("32", "21", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("33", "21", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("34", "21", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("35", "21", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("37", "22", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("38", "22", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("39", "22", "_menu_item_object_id", "9");
INSERT INTO `wp_postmeta` VALUES("40", "22", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("41", "22", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("42", "22", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("43", "22", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("44", "22", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("46", "23", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("47", "23", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("48", "23", "_menu_item_object_id", "7");
INSERT INTO `wp_postmeta` VALUES("49", "23", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("50", "23", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("51", "23", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("52", "23", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("53", "23", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("55", "24", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("56", "24", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("57", "24", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("58", "24", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("59", "24", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("60", "24", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("61", "24", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("62", "24", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("64", "25", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("65", "25", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("66", "25", "_menu_item_object_id", "19");
INSERT INTO `wp_postmeta` VALUES("67", "25", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("68", "25", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("69", "25", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("70", "25", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("71", "25", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("73", "26", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("74", "26", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("75", "26", "_menu_item_object_id", "17");
INSERT INTO `wp_postmeta` VALUES("76", "26", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("77", "26", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("78", "26", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("79", "26", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("80", "26", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("82", "27", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("83", "27", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("84", "27", "_menu_item_object_id", "15");
INSERT INTO `wp_postmeta` VALUES("85", "27", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("86", "27", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("87", "27", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("88", "27", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("89", "27", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("118", "31", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("119", "31", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("120", "31", "_menu_item_object_id", "13");
INSERT INTO `wp_postmeta` VALUES("121", "31", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("122", "31", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("123", "31", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("124", "31", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("125", "31", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("127", "32", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("128", "32", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("129", "32", "_menu_item_object_id", "11");
INSERT INTO `wp_postmeta` VALUES("130", "32", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("131", "32", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("132", "32", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("133", "32", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("134", "32", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("136", "33", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("137", "33", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("138", "33", "_menu_item_object_id", "9");
INSERT INTO `wp_postmeta` VALUES("139", "33", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("140", "33", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("141", "33", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("142", "33", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("143", "33", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("145", "34", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("146", "34", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("147", "34", "_menu_item_object_id", "7");
INSERT INTO `wp_postmeta` VALUES("148", "34", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("149", "34", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("150", "34", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("151", "34", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("152", "34", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("154", "35", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("155", "35", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("156", "35", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("157", "35", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("158", "35", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("159", "35", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("160", "35", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("161", "35", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("163", "36", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("164", "36", "_edit_lock", "1514766034:1");
INSERT INTO `wp_postmeta` VALUES("165", "38", "_wp_attached_file", "2018/01/logo.png");
INSERT INTO `wp_postmeta` VALUES("166", "38", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:595;s:6:\"height\";i:278;s:4:\"file\";s:16:\"2018/01/logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x140.png\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("167", "39", "_wp_attached_file", "2018/01/tro_logo.png");
INSERT INTO `wp_postmeta` VALUES("168", "39", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:638;s:6:\"height\";i:322;s:4:\"file\";s:20:\"2018/01/tro_logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tro_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tro_logo-300x151.png\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"tro_logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("169", "40", "_wp_attached_file", "2018/01/tro_logo-1.png");
INSERT INTO `wp_postmeta` VALUES("170", "40", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:638;s:6:\"height\";i:322;s:4:\"file\";s:22:\"2018/01/tro_logo-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tro_logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tro_logo-1-300x151.png\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"tro_logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("171", "41", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("172", "41", "_edit_lock", "1514805575:1");
INSERT INTO `wp_postmeta` VALUES("173", "45", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("174", "45", "_edit_lock", "1514857901:1");
INSERT INTO `wp_postmeta` VALUES("175", "48", "_wp_attached_file", "2018/01/platinum-award.jpg");
INSERT INTO `wp_postmeta` VALUES("176", "48", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1773;s:6:\"height\";i:1182;s:4:\"file\";s:26:\"2018/01/platinum-award.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"platinum-award-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"platinum-award-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"platinum-award-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"platinum-award-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"platinum-award-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("177", "49", "_wp_attached_file", "2018/01/telstra-christmas-windows.jpg");
INSERT INTO `wp_postmeta` VALUES("178", "49", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:37:\"2018/01/telstra-christmas-windows.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"telstra-christmas-windows-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"telstra-christmas-windows-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"telstra-christmas-windows-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"telstra-christmas-windows-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:37:\"telstra-christmas-windows-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("179", "50", "_wp_attached_file", "2018/01/campfire.jpg");
INSERT INTO `wp_postmeta` VALUES("180", "50", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:20:\"2018/01/campfire.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"campfire-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"campfire-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"campfire-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"campfire-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:22:\"campfire-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"campfire-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("181", "5", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("182", "5", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("183", "5", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("184", "5", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("185", "5", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("186", "5", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("187", "5", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("188", "5", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("189", "51", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("190", "51", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("191", "51", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("192", "51", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("193", "51", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("194", "51", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("195", "51", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("196", "51", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("197", "5", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("198", "5", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("199", "5", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("200", "5", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("201", "5", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("202", "5", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("203", "53", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("204", "53", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("205", "53", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("206", "53", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("207", "53", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("208", "53", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("209", "53", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("210", "53", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("211", "53", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("212", "53", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("213", "53", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("214", "53", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("215", "53", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("216", "53", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("217", "54", "_wp_attached_file", "2018/01/facebook-letter-logo.svg");
INSERT INTO `wp_postmeta` VALUES("218", "55", "_wp_attached_file", "2018/01/twitter-logo.svg");
INSERT INTO `wp_postmeta` VALUES("219", "56", "_wp_attached_file", "2018/01/linkedin-logo.svg");
INSERT INTO `wp_postmeta` VALUES("220", "57", "_wp_attached_file", "2018/01/google-logo.svg");
INSERT INTO `wp_postmeta` VALUES("221", "58", "_wp_attached_file", "2018/01/youtube-play-button.svg");
INSERT INTO `wp_postmeta` VALUES("222", "60", "_wp_attached_file", "2018/01/tro-logo.svg");
INSERT INTO `wp_postmeta` VALUES("223", "61", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("224", "61", "_edit_lock", "1514852145:1");
INSERT INTO `wp_postmeta` VALUES("225", "5", "home_page_sections_0_section_button_link", "7");
INSERT INTO `wp_postmeta` VALUES("226", "5", "_home_page_sections_0_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("227", "5", "home_page_sections_1_section_button_link", "9");
INSERT INTO `wp_postmeta` VALUES("228", "5", "_home_page_sections_1_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("229", "5", "home_page_sections_2_section_button_link", "11");
INSERT INTO `wp_postmeta` VALUES("230", "5", "_home_page_sections_2_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("231", "5", "home_top_slider_0_slide_image", "49");
INSERT INTO `wp_postmeta` VALUES("232", "5", "_home_top_slider_0_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("233", "5", "home_top_slider_1_slide_image", "48");
INSERT INTO `wp_postmeta` VALUES("234", "5", "_home_top_slider_1_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("235", "5", "home_top_slider_2_slide_image", "50");
INSERT INTO `wp_postmeta` VALUES("236", "5", "_home_top_slider_2_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("237", "5", "home_top_slider", "3");
INSERT INTO `wp_postmeta` VALUES("238", "5", "_home_top_slider", "field_5a4ac58714dcd");
INSERT INTO `wp_postmeta` VALUES("239", "64", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("240", "64", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("241", "64", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("242", "64", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("243", "64", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("244", "64", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("245", "64", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("246", "64", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("247", "64", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("248", "64", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("249", "64", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("250", "64", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("251", "64", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("252", "64", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("253", "64", "home_page_sections_0_section_button_link", "");
INSERT INTO `wp_postmeta` VALUES("254", "64", "_home_page_sections_0_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("255", "64", "home_page_sections_1_section_button_link", "");
INSERT INTO `wp_postmeta` VALUES("256", "64", "_home_page_sections_1_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("257", "64", "home_page_sections_2_section_button_link", "");
INSERT INTO `wp_postmeta` VALUES("258", "64", "_home_page_sections_2_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("259", "64", "home_top_slider_0_slide_image", "49");
INSERT INTO `wp_postmeta` VALUES("260", "64", "_home_top_slider_0_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("261", "64", "home_top_slider_1_slide_image", "48");
INSERT INTO `wp_postmeta` VALUES("262", "64", "_home_top_slider_1_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("263", "64", "home_top_slider_2_slide_image", "50");
INSERT INTO `wp_postmeta` VALUES("264", "64", "_home_top_slider_2_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("265", "64", "home_top_slider", "3");
INSERT INTO `wp_postmeta` VALUES("266", "64", "_home_top_slider", "field_5a4ac58714dcd");
INSERT INTO `wp_postmeta` VALUES("267", "65", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("268", "65", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("269", "65", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("270", "65", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("271", "65", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("272", "65", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("273", "65", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("274", "65", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("275", "65", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("276", "65", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("277", "65", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("278", "65", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("279", "65", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("280", "65", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("281", "65", "home_page_sections_0_section_button_link", "7");
INSERT INTO `wp_postmeta` VALUES("282", "65", "_home_page_sections_0_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("283", "65", "home_page_sections_1_section_button_link", "9");
INSERT INTO `wp_postmeta` VALUES("284", "65", "_home_page_sections_1_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("285", "65", "home_page_sections_2_section_button_link", "11");
INSERT INTO `wp_postmeta` VALUES("286", "65", "_home_page_sections_2_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("287", "65", "home_top_slider_0_slide_image", "49");
INSERT INTO `wp_postmeta` VALUES("288", "65", "_home_top_slider_0_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("289", "65", "home_top_slider_1_slide_image", "48");
INSERT INTO `wp_postmeta` VALUES("290", "65", "_home_top_slider_1_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("291", "65", "home_top_slider_2_slide_image", "50");
INSERT INTO `wp_postmeta` VALUES("292", "65", "_home_top_slider_2_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("293", "65", "home_top_slider", "3");
INSERT INTO `wp_postmeta` VALUES("294", "65", "_home_top_slider", "field_5a4ac58714dcd");
INSERT INTO `wp_postmeta` VALUES("295", "5", "home_top_slider_0_slide_title", "Our Story");
INSERT INTO `wp_postmeta` VALUES("296", "5", "_home_top_slider_0_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("297", "5", "home_top_slider_1_slide_title", "Slide title 2");
INSERT INTO `wp_postmeta` VALUES("298", "5", "_home_top_slider_1_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("299", "5", "home_top_slider_2_slide_title", "Slide title 3");
INSERT INTO `wp_postmeta` VALUES("300", "5", "_home_top_slider_2_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("301", "67", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("302", "67", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("303", "67", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("304", "67", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("305", "67", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("306", "67", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("307", "67", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("308", "67", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("309", "67", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("310", "67", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("311", "67", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("312", "67", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("313", "67", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("314", "67", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("315", "67", "home_page_sections_0_section_button_link", "7");
INSERT INTO `wp_postmeta` VALUES("316", "67", "_home_page_sections_0_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("317", "67", "home_page_sections_1_section_button_link", "9");
INSERT INTO `wp_postmeta` VALUES("318", "67", "_home_page_sections_1_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("319", "67", "home_page_sections_2_section_button_link", "11");
INSERT INTO `wp_postmeta` VALUES("320", "67", "_home_page_sections_2_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("321", "67", "home_top_slider_0_slide_image", "49");
INSERT INTO `wp_postmeta` VALUES("322", "67", "_home_top_slider_0_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("323", "67", "home_top_slider_1_slide_image", "48");
INSERT INTO `wp_postmeta` VALUES("324", "67", "_home_top_slider_1_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("325", "67", "home_top_slider_2_slide_image", "50");
INSERT INTO `wp_postmeta` VALUES("326", "67", "_home_top_slider_2_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("327", "67", "home_top_slider", "3");
INSERT INTO `wp_postmeta` VALUES("328", "67", "_home_top_slider", "field_5a4ac58714dcd");
INSERT INTO `wp_postmeta` VALUES("329", "67", "home_top_slider_0_slide_title", "Our Story");
INSERT INTO `wp_postmeta` VALUES("330", "67", "_home_top_slider_0_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("331", "67", "home_top_slider_1_slide_title", "");
INSERT INTO `wp_postmeta` VALUES("332", "67", "_home_top_slider_1_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("333", "67", "home_top_slider_2_slide_title", "");
INSERT INTO `wp_postmeta` VALUES("334", "67", "_home_top_slider_2_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("335", "68", "home_page_sections_0_image", "48");
INSERT INTO `wp_postmeta` VALUES("336", "68", "_home_page_sections_0_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("337", "68", "home_page_sections_1_image", "49");
INSERT INTO `wp_postmeta` VALUES("338", "68", "_home_page_sections_1_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("339", "68", "home_page_sections_2_image", "50");
INSERT INTO `wp_postmeta` VALUES("340", "68", "_home_page_sections_2_image", "field_5a499f3981a00");
INSERT INTO `wp_postmeta` VALUES("341", "68", "home_page_sections", "3");
INSERT INTO `wp_postmeta` VALUES("342", "68", "_home_page_sections", "field_5a499f21819ff");
INSERT INTO `wp_postmeta` VALUES("343", "68", "home_page_sections_0_section_title", "About us");
INSERT INTO `wp_postmeta` VALUES("344", "68", "_home_page_sections_0_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("345", "68", "home_page_sections_1_section_title", "Our Work");
INSERT INTO `wp_postmeta` VALUES("346", "68", "_home_page_sections_1_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("347", "68", "home_page_sections_2_section_title", "Our Family");
INSERT INTO `wp_postmeta` VALUES("348", "68", "_home_page_sections_2_section_title", "field_5a49afd01a33d");
INSERT INTO `wp_postmeta` VALUES("349", "68", "home_page_sections_0_section_button_link", "7");
INSERT INTO `wp_postmeta` VALUES("350", "68", "_home_page_sections_0_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("351", "68", "home_page_sections_1_section_button_link", "9");
INSERT INTO `wp_postmeta` VALUES("352", "68", "_home_page_sections_1_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("353", "68", "home_page_sections_2_section_button_link", "11");
INSERT INTO `wp_postmeta` VALUES("354", "68", "_home_page_sections_2_section_button_link", "field_5a4a9352ede20");
INSERT INTO `wp_postmeta` VALUES("355", "68", "home_top_slider_0_slide_image", "49");
INSERT INTO `wp_postmeta` VALUES("356", "68", "_home_top_slider_0_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("357", "68", "home_top_slider_1_slide_image", "48");
INSERT INTO `wp_postmeta` VALUES("358", "68", "_home_top_slider_1_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("359", "68", "home_top_slider_2_slide_image", "50");
INSERT INTO `wp_postmeta` VALUES("360", "68", "_home_top_slider_2_slide_image", "field_5a4ac5b714dce");
INSERT INTO `wp_postmeta` VALUES("361", "68", "home_top_slider", "3");
INSERT INTO `wp_postmeta` VALUES("362", "68", "_home_top_slider", "field_5a4ac58714dcd");
INSERT INTO `wp_postmeta` VALUES("363", "68", "home_top_slider_0_slide_title", "Our Story");
INSERT INTO `wp_postmeta` VALUES("364", "68", "_home_top_slider_0_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("365", "68", "home_top_slider_1_slide_title", "Slide title 2");
INSERT INTO `wp_postmeta` VALUES("366", "68", "_home_top_slider_1_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("367", "68", "home_top_slider_2_slide_title", "Slide title 3");
INSERT INTO `wp_postmeta` VALUES("368", "68", "_home_top_slider_2_slide_title", "field_5a4acfb172d2c");
INSERT INTO `wp_postmeta` VALUES("369", "69", "_wp_attached_file", "2018/01/tro-logo-1.svg");
INSERT INTO `wp_postmeta` VALUES("370", "70", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("371", "70", "_edit_lock", "1514941832:1");
INSERT INTO `wp_postmeta` VALUES("372", "7", "about_us_content_0_section_image", "50");
INSERT INTO `wp_postmeta` VALUES("373", "7", "_about_us_content_0_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("374", "7", "about_us_content_0_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("375", "7", "_about_us_content_0_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("376", "7", "about_us_content_1_section_image", "48");
INSERT INTO `wp_postmeta` VALUES("377", "7", "_about_us_content_1_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("378", "7", "about_us_content_1_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("379", "7", "_about_us_content_1_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("380", "7", "about_us_content_2_section_image", "49");
INSERT INTO `wp_postmeta` VALUES("381", "7", "_about_us_content_2_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("382", "7", "about_us_content_2_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("383", "7", "_about_us_content_2_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("384", "7", "about_us_content", "3");
INSERT INTO `wp_postmeta` VALUES("385", "7", "_about_us_content", "field_5a4b610387361");
INSERT INTO `wp_postmeta` VALUES("386", "74", "about_us_content_0_section_image", "50");
INSERT INTO `wp_postmeta` VALUES("387", "74", "_about_us_content_0_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("388", "74", "about_us_content_0_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("389", "74", "_about_us_content_0_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("390", "74", "about_us_content_1_section_image", "48");
INSERT INTO `wp_postmeta` VALUES("391", "74", "_about_us_content_1_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("392", "74", "about_us_content_1_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("393", "74", "_about_us_content_1_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("394", "74", "about_us_content_2_section_image", "49");
INSERT INTO `wp_postmeta` VALUES("395", "74", "_about_us_content_2_section_image", "field_5a4b612887362");
INSERT INTO `wp_postmeta` VALUES("396", "74", "about_us_content_2_section_text", "Lorem ipsum dolor sit amonsectetuer adipis ipsum dolor sit amet, consectetuer adipiscdiam nonummy nibh euismod tincidunt");
INSERT INTO `wp_postmeta` VALUES("397", "74", "_about_us_content_2_section_text", "field_5a4b613e87363");
INSERT INTO `wp_postmeta` VALUES("398", "74", "about_us_content", "3");
INSERT INTO `wp_postmeta` VALUES("399", "74", "_about_us_content", "field_5a4b610387361");
INSERT INTO `wp_postmeta` VALUES("400", "75", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("401", "75", "_edit_lock", "1514942123:1");
INSERT INTO `wp_postmeta` VALUES("402", "9", "our_work_box_0_work_image", "84");
INSERT INTO `wp_postmeta` VALUES("403", "9", "_our_work_box_0_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("404", "9", "our_work_box_0_work_text", "FDJ – Annual Summer Beach Tour Event");
INSERT INTO `wp_postmeta` VALUES("405", "9", "_our_work_box_0_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("406", "9", "our_work_box_1_work_image", "83");
INSERT INTO `wp_postmeta` VALUES("407", "9", "_our_work_box_1_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("408", "9", "our_work_box_1_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("409", "9", "_our_work_box_1_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("410", "9", "our_work_box_2_work_image", "81");
INSERT INTO `wp_postmeta` VALUES("411", "9", "_our_work_box_2_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("412", "9", "our_work_box_2_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("413", "9", "_our_work_box_2_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("414", "9", "our_work_box_3_work_image", "84");
INSERT INTO `wp_postmeta` VALUES("415", "9", "_our_work_box_3_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("416", "9", "our_work_box_3_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("417", "9", "_our_work_box_3_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("418", "9", "our_work_box", "6");
INSERT INTO `wp_postmeta` VALUES("419", "9", "_our_work_box", "field_5a4c2e530a9e2");
INSERT INTO `wp_postmeta` VALUES("420", "79", "our_work_box_0_work_image", "50");
INSERT INTO `wp_postmeta` VALUES("421", "79", "_our_work_box_0_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("422", "79", "our_work_box_0_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("423", "79", "_our_work_box_0_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("424", "79", "our_work_box_1_work_image", "49");
INSERT INTO `wp_postmeta` VALUES("425", "79", "_our_work_box_1_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("426", "79", "our_work_box_1_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("427", "79", "_our_work_box_1_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("428", "79", "our_work_box_2_work_image", "48");
INSERT INTO `wp_postmeta` VALUES("429", "79", "_our_work_box_2_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("430", "79", "our_work_box_2_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("431", "79", "_our_work_box_2_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("432", "79", "our_work_box_3_work_image", "50");
INSERT INTO `wp_postmeta` VALUES("433", "79", "_our_work_box_3_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("434", "79", "our_work_box_3_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("435", "79", "_our_work_box_3_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("436", "79", "our_work_box", "4");
INSERT INTO `wp_postmeta` VALUES("437", "79", "_our_work_box", "field_5a4c2e530a9e2");
INSERT INTO `wp_postmeta` VALUES("438", "9", "our_work_box_4_work_image", "81");
INSERT INTO `wp_postmeta` VALUES("439", "9", "_our_work_box_4_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("440", "9", "our_work_box_4_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("441", "9", "_our_work_box_4_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("442", "9", "our_work_box_5_work_image", "83");
INSERT INTO `wp_postmeta` VALUES("443", "9", "_our_work_box_5_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("444", "9", "our_work_box_5_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("445", "9", "_our_work_box_5_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("446", "80", "our_work_box_0_work_image", "50");
INSERT INTO `wp_postmeta` VALUES("447", "80", "_our_work_box_0_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("448", "80", "our_work_box_0_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("449", "80", "_our_work_box_0_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("450", "80", "our_work_box_1_work_image", "49");
INSERT INTO `wp_postmeta` VALUES("451", "80", "_our_work_box_1_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("452", "80", "our_work_box_1_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("453", "80", "_our_work_box_1_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("454", "80", "our_work_box_2_work_image", "48");
INSERT INTO `wp_postmeta` VALUES("455", "80", "_our_work_box_2_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("456", "80", "our_work_box_2_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("457", "80", "_our_work_box_2_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("458", "80", "our_work_box_3_work_image", "50");
INSERT INTO `wp_postmeta` VALUES("459", "80", "_our_work_box_3_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("460", "80", "our_work_box_3_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("461", "80", "_our_work_box_3_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("462", "80", "our_work_box", "6");
INSERT INTO `wp_postmeta` VALUES("463", "80", "_our_work_box", "field_5a4c2e530a9e2");
INSERT INTO `wp_postmeta` VALUES("464", "80", "our_work_box_4_work_image", "49");
INSERT INTO `wp_postmeta` VALUES("465", "80", "_our_work_box_4_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("466", "80", "our_work_box_4_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("467", "80", "_our_work_box_4_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("468", "80", "our_work_box_5_work_image", "48");
INSERT INTO `wp_postmeta` VALUES("469", "80", "_our_work_box_5_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("470", "80", "our_work_box_5_work_text", "Lorem ipsum dolor sit amet, amet deseruisse ex pri. Partiendo percipitur mea eu. Ne sea ullum regione vivendo, ut duo sumo solum splendide. Ei alia mollis expetenda eam, mel an vide dicat.");
INSERT INTO `wp_postmeta` VALUES("471", "80", "_our_work_box_5_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("472", "81", "_wp_attached_file", "2018/01/Grutage_QashQai_Rooftopping-publicis.jpg");
INSERT INTO `wp_postmeta` VALUES("473", "81", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:48:\"2018/01/Grutage_QashQai_Rooftopping-publicis.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Grutage_QashQai_Rooftopping-publicis-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Grutage_QashQai_Rooftopping-publicis-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:48:\"Grutage_QashQai_Rooftopping-publicis-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("474", "82", "_wp_attached_file", "2018/01/telstra-christmas-windows-1.jpg");
INSERT INTO `wp_postmeta` VALUES("475", "82", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:39:\"2018/01/telstra-christmas-windows-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"telstra-christmas-windows-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"telstra-christmas-windows-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"telstra-christmas-windows-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"telstra-christmas-windows-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:39:\"telstra-christmas-windows-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("476", "83", "_wp_attached_file", "2018/01/TO-BHV03_Copyright-Salah-Alaoui_thumb.jpg");
INSERT INTO `wp_postmeta` VALUES("477", "83", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:49:\"2018/01/TO-BHV03_Copyright-Salah-Alaoui_thumb.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"TO-BHV03_Copyright-Salah-Alaoui_thumb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"TO-BHV03_Copyright-Salah-Alaoui_thumb-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:49:\"TO-BHV03_Copyright-Salah-Alaoui_thumb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("478", "84", "_wp_attached_file", "2018/01/tournee-evenementielle-des-plages-FDJ.jpg");
INSERT INTO `wp_postmeta` VALUES("479", "84", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:600;s:6:\"height\";i:450;s:4:\"file\";s:49:\"2018/01/tournee-evenementielle-des-plages-FDJ.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"tournee-evenementielle-des-plages-FDJ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"tournee-evenementielle-des-plages-FDJ-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:49:\"tournee-evenementielle-des-plages-FDJ-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("480", "85", "our_work_box_0_work_image", "84");
INSERT INTO `wp_postmeta` VALUES("481", "85", "_our_work_box_0_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("482", "85", "our_work_box_0_work_text", "FDJ – Annual Summer Beach Tour Event");
INSERT INTO `wp_postmeta` VALUES("483", "85", "_our_work_box_0_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("484", "85", "our_work_box_1_work_image", "83");
INSERT INTO `wp_postmeta` VALUES("485", "85", "_our_work_box_1_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("486", "85", "our_work_box_1_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("487", "85", "_our_work_box_1_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("488", "85", "our_work_box_2_work_image", "81");
INSERT INTO `wp_postmeta` VALUES("489", "85", "_our_work_box_2_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("490", "85", "our_work_box_2_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("491", "85", "_our_work_box_2_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("492", "85", "our_work_box_3_work_image", "84");
INSERT INTO `wp_postmeta` VALUES("493", "85", "_our_work_box_3_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("494", "85", "our_work_box_3_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("495", "85", "_our_work_box_3_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("496", "85", "our_work_box", "6");
INSERT INTO `wp_postmeta` VALUES("497", "85", "_our_work_box", "field_5a4c2e530a9e2");
INSERT INTO `wp_postmeta` VALUES("498", "85", "our_work_box_4_work_image", "81");
INSERT INTO `wp_postmeta` VALUES("499", "85", "_our_work_box_4_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("500", "85", "our_work_box_4_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("501", "85", "_our_work_box_4_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("502", "85", "our_work_box_5_work_image", "83");
INSERT INTO `wp_postmeta` VALUES("503", "85", "_our_work_box_5_work_image", "field_5a4c2e740a9e3");
INSERT INTO `wp_postmeta` VALUES("504", "85", "our_work_box_5_work_text", "Project title");
INSERT INTO `wp_postmeta` VALUES("505", "85", "_our_work_box_5_work_text", "field_5a4c2e930a9e4");
INSERT INTO `wp_postmeta` VALUES("506", "86", "_wp_attached_file", "2018/01/duplicator.1.2.30.zip");
INSERT INTO `wp_postmeta` VALUES("507", "86", "_wp_attachment_context", "upgrader");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2017-12-31 17:50:50", "2017-12-31 17:50:50", "Welcome to WordPress. This is your first post. Edit or delete it, then start writing!", "Hello world!", "", "publish", "open", "open", "", "hello-world", "", "", "2017-12-31 17:50:50", "2017-12-31 17:50:50", "", "0", "http://tro:8888/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("2", "1", "2017-12-31 17:50:50", "2017-12-31 17:50:50", "This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://tro:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!", "Sample Page", "", "trash", "closed", "open", "", "sample-page__trashed", "", "", "2017-12-31 18:35:54", "2017-12-31 18:35:54", "", "0", "http://tro:8888/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("3", "1", "2017-12-31 17:51:02", "0000-00-00 00:00:00", "", "Auto Draft", "", "auto-draft", "open", "open", "", "", "", "", "2017-12-31 17:51:02", "0000-00-00 00:00:00", "", "0", "http://tro:8888/?p=3", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("4", "1", "2017-12-31 18:35:54", "2017-12-31 18:35:54", "This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://tro:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!", "Sample Page", "", "inherit", "closed", "closed", "", "2-revision-v1", "", "", "2017-12-31 18:35:54", "2017-12-31 18:35:54", "", "2", "http://tro:8888/index.php/2017/12/31/2-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("5", "1", "2017-12-31 18:36:10", "2017-12-31 18:36:10", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2018-01-02 00:36:55", "2018-01-02 00:36:55", "", "0", "http://tro:8888/?page_id=5", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("6", "1", "2017-12-31 18:36:10", "2017-12-31 18:36:10", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-31 18:36:10", "2017-12-31 18:36:10", "", "5", "http://tro:8888/index.php/2017/12/31/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("7", "1", "2017-12-31 18:36:19", "2017-12-31 18:36:19", "", "About Us", "", "publish", "closed", "closed", "", "about-us", "", "", "2018-01-02 10:40:57", "2018-01-02 10:40:57", "", "0", "http://tro:8888/?page_id=7", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("8", "1", "2017-12-31 18:36:19", "2017-12-31 18:36:19", "", "About Us", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2017-12-31 18:36:19", "2017-12-31 18:36:19", "", "7", "http://tro:8888/index.php/2017/12/31/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2017-12-31 18:36:34", "2017-12-31 18:36:34", "", "Our Work", "", "publish", "closed", "closed", "", "our-work", "", "", "2018-01-03 02:16:57", "2018-01-03 02:16:57", "", "0", "http://tro:8888/?page_id=9", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2017-12-31 18:36:34", "2017-12-31 18:36:34", "", "Our Work", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2017-12-31 18:36:34", "2017-12-31 18:36:34", "", "9", "http://tro:8888/index.php/2017/12/31/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2017-12-31 18:37:06", "2017-12-31 18:37:06", "", "Our Family", "", "publish", "closed", "closed", "", "our-family", "", "", "2017-12-31 18:37:06", "2017-12-31 18:37:06", "", "0", "http://tro:8888/?page_id=11", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("12", "1", "2017-12-31 18:37:06", "2017-12-31 18:37:06", "", "Our Family", "", "inherit", "closed", "closed", "", "11-revision-v1", "", "", "2017-12-31 18:37:06", "2017-12-31 18:37:06", "", "11", "http://tro:8888/index.php/2017/12/31/11-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("13", "1", "2017-12-31 18:37:36", "2017-12-31 18:37:36", "", "Contact Us", "", "publish", "closed", "closed", "", "contact-us", "", "", "2017-12-31 18:37:36", "2017-12-31 18:37:36", "", "0", "http://tro:8888/?page_id=13", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("14", "1", "2017-12-31 18:37:36", "2017-12-31 18:37:36", "", "Contact Us", "", "inherit", "closed", "closed", "", "13-revision-v1", "", "", "2017-12-31 18:37:36", "2017-12-31 18:37:36", "", "13", "http://tro:8888/index.php/2017/12/31/13-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2017-12-31 18:37:48", "2017-12-31 18:37:48", "", "Privacy", "", "publish", "closed", "closed", "", "privacy", "", "", "2017-12-31 18:37:48", "2017-12-31 18:37:48", "", "0", "http://tro:8888/?page_id=15", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2017-12-31 18:37:48", "2017-12-31 18:37:48", "", "Privacy", "", "inherit", "closed", "closed", "", "15-revision-v1", "", "", "2017-12-31 18:37:48", "2017-12-31 18:37:48", "", "15", "http://tro:8888/index.php/2017/12/31/15-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2017-12-31 18:38:20", "2017-12-31 18:38:20", "", "Terms and Conditions", "", "publish", "closed", "closed", "", "terms-and-conditions", "", "", "2017-12-31 18:38:20", "2017-12-31 18:38:20", "", "0", "http://tro:8888/?page_id=17", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2017-12-31 18:38:20", "2017-12-31 18:38:20", "", "Terms and Conditions", "", "inherit", "closed", "closed", "", "17-revision-v1", "", "", "2017-12-31 18:38:20", "2017-12-31 18:38:20", "", "17", "http://tro:8888/index.php/2017/12/31/17-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2017-12-31 18:39:40", "2017-12-31 18:39:40", "This site uses cookies - small text files that are placed on your machine to help the site provide a better user experience. In general, cookies are used to retain user preferences, store information for things like shopping carts, and provide anonymised tracking data to third party applications like Google Analytics. As a rule, cookies will make your browsing experience better. However, you may prefer to disable cookies on this site and on others. The most effective way to do this is to disable cookies in your browser. We suggest consulting the Help section of your browser or taking a look at <a href=\"http://www.aboutcookies.org\">the About Cookies website</a> which offers guidance for all modern browsers", "Cookie Policy", "", "publish", "closed", "closed", "", "cookie-policy", "", "", "2017-12-31 18:39:40", "2017-12-31 18:39:40", "", "0", "http://tro:8888/index.php/cookie-policy/", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("20", "1", "2017-12-31 18:41:20", "2017-12-31 18:41:20", " ", "", "", "publish", "closed", "closed", "", "20", "", "", "2017-12-31 18:41:20", "2017-12-31 18:41:20", "", "0", "http://tro:8888/?p=20", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("21", "1", "2017-12-31 18:41:20", "2017-12-31 18:41:20", " ", "", "", "publish", "closed", "closed", "", "21", "", "", "2017-12-31 18:41:20", "2017-12-31 18:41:20", "", "0", "http://tro:8888/?p=21", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("22", "1", "2017-12-31 18:41:20", "2017-12-31 18:41:20", " ", "", "", "publish", "closed", "closed", "", "22", "", "", "2017-12-31 18:41:20", "2017-12-31 18:41:20", "", "0", "http://tro:8888/?p=22", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("23", "1", "2017-12-31 18:41:20", "2017-12-31 18:41:20", " ", "", "", "publish", "closed", "closed", "", "23", "", "", "2017-12-31 18:41:20", "2017-12-31 18:41:20", "", "0", "http://tro:8888/?p=23", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2017-12-31 18:41:20", "2017-12-31 18:41:20", " ", "", "", "publish", "closed", "closed", "", "24", "", "", "2017-12-31 18:41:20", "2017-12-31 18:41:20", "", "0", "http://tro:8888/?p=24", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2017-12-31 18:41:44", "2017-12-31 18:41:44", " ", "", "", "publish", "closed", "closed", "", "25", "", "", "2017-12-31 18:41:44", "2017-12-31 18:41:44", "", "0", "http://tro:8888/?p=25", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2017-12-31 18:41:44", "2017-12-31 18:41:44", " ", "", "", "publish", "closed", "closed", "", "26", "", "", "2017-12-31 18:41:44", "2017-12-31 18:41:44", "", "0", "http://tro:8888/?p=26", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("27", "1", "2017-12-31 18:41:44", "2017-12-31 18:41:44", " ", "", "", "publish", "closed", "closed", "", "27", "", "", "2017-12-31 18:41:44", "2017-12-31 18:41:44", "", "0", "http://tro:8888/?p=27", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2017-12-31 22:04:12", "2017-12-31 22:04:12", " ", "", "", "publish", "closed", "closed", "", "31", "", "", "2018-01-01 02:31:03", "2018-01-01 02:31:03", "", "0", "http://tro:8888/?p=31", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("32", "1", "2017-12-31 22:04:12", "2017-12-31 22:04:12", " ", "", "", "publish", "closed", "closed", "", "32", "", "", "2018-01-01 02:31:03", "2018-01-01 02:31:03", "", "0", "http://tro:8888/?p=32", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2017-12-31 22:04:12", "2017-12-31 22:04:12", " ", "", "", "publish", "closed", "closed", "", "33", "", "", "2018-01-01 02:31:03", "2018-01-01 02:31:03", "", "0", "http://tro:8888/?p=33", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2017-12-31 22:04:12", "2017-12-31 22:04:12", " ", "", "", "publish", "closed", "closed", "", "34", "", "", "2018-01-01 02:31:03", "2018-01-01 02:31:03", "", "0", "http://tro:8888/?p=34", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2017-12-31 22:04:12", "2017-12-31 22:04:12", " ", "", "", "publish", "closed", "closed", "", "35", "", "", "2018-01-01 02:31:03", "2018-01-01 02:31:03", "", "0", "http://tro:8888/?p=35", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2018-01-01 00:22:49", "2018-01-01 00:22:49", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"acf-options-tro-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Header Logo", "header-logo", "publish", "closed", "closed", "", "group_5a497f282c756", "", "", "2018-01-01 00:22:49", "2018-01-01 00:22:49", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=36", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2018-01-01 00:22:49", "2018-01-01 00:22:49", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Header Logo", "header_logo", "publish", "closed", "closed", "", "field_5a497f3b33034", "", "", "2018-01-01 00:22:49", "2018-01-01 00:22:49", "", "36", "http://tro:8888/?post_type=acf-field&p=37", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2018-01-01 01:11:29", "2018-01-01 01:11:29", "", "logo", "", "inherit", "open", "closed", "", "logo", "", "", "2018-01-01 01:11:32", "2018-01-01 01:11:32", "", "0", "http://tro:8888/wp-content/uploads/2018/01/logo.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2018-01-01 01:45:39", "2018-01-01 01:45:39", "", "tro_logo", "", "inherit", "open", "closed", "", "tro_logo", "", "", "2018-01-01 01:45:40", "2018-01-01 01:45:40", "", "0", "http://tro:8888/wp-content/uploads/2018/01/tro_logo.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("40", "1", "2018-01-01 01:49:41", "2018-01-01 01:49:41", "", "tro_logo", "", "inherit", "open", "closed", "", "tro_logo-2", "", "", "2018-01-01 01:49:43", "2018-01-01 01:49:43", "", "0", "http://tro:8888/wp-content/uploads/2018/01/tro_logo-1.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"acf-options-tro-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Header Social", "header-social", "publish", "closed", "closed", "", "group_5a49957cf1a2b", "", "", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=41", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("42", "1", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:5;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}", "Header Social", "header_social", "publish", "closed", "closed", "", "field_5a49958a21df8", "", "", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "", "41", "http://tro:8888/?post_type=acf-field&p=42", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Social Image", "social_image", "publish", "closed", "closed", "", "field_5a4995aa21df9", "", "", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "", "42", "http://tro:8888/?post_type=acf-field&p=43", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Social Link", "social_link", "publish", "closed", "closed", "", "field_5a4995bc21dfa", "", "", "2018-01-01 01:58:49", "2018-01-01 01:58:49", "", "42", "http://tro:8888/?post_type=acf-field&p=44", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2018-01-01 02:39:20", "2018-01-01 02:39:20", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";}", "Home sections", "home-sections", "publish", "closed", "closed", "", "group_5a499f075f9f2", "", "", "2018-01-02 00:17:05", "2018-01-02 00:17:05", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=45", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2018-01-01 02:39:20", "2018-01-01 02:39:20", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}", "Home Page Sections", "home_page_sections", "publish", "closed", "closed", "", "field_5a499f21819ff", "", "", "2018-01-01 02:39:20", "2018-01-01 02:39:20", "", "45", "http://tro:8888/?post_type=acf-field&p=46", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2018-01-01 02:39:20", "2018-01-01 02:39:20", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Image", "image", "publish", "closed", "closed", "", "field_5a499f3981a00", "", "", "2018-01-01 02:39:20", "2018-01-01 02:39:20", "", "46", "http://tro:8888/?post_type=acf-field&p=47", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2018-01-01 02:42:08", "2018-01-01 02:42:08", "", "platinum-award", "", "inherit", "open", "closed", "", "platinum-award", "", "", "2018-01-03 01:52:00", "2018-01-03 01:52:00", "", "5", "http://tro:8888/wp-content/uploads/2018/01/platinum-award.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2018-01-01 02:42:21", "2018-01-01 02:42:21", "", "telstra-christmas-windows", "", "inherit", "open", "closed", "", "telstra-christmas-windows", "", "", "2018-01-03 01:51:51", "2018-01-03 01:51:51", "", "5", "http://tro:8888/wp-content/uploads/2018/01/telstra-christmas-windows.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2018-01-01 02:42:32", "2018-01-01 02:42:32", "", "campfire", "", "inherit", "open", "closed", "", "campfire", "", "", "2018-01-03 01:16:37", "2018-01-03 01:16:37", "", "5", "http://tro:8888/wp-content/uploads/2018/01/campfire.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2018-01-01 02:42:37", "2018-01-01 02:42:37", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-01 02:42:37", "2018-01-01 02:42:37", "", "5", "http://tro:8888/index.php/2018/01/01/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2018-01-01 03:49:52", "2018-01-01 03:49:52", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Section Title", "section_title", "publish", "closed", "closed", "", "field_5a49afd01a33d", "", "", "2018-01-01 03:49:52", "2018-01-01 03:49:52", "", "46", "http://tro:8888/?post_type=acf-field&p=52", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2018-01-01 03:50:43", "2018-01-01 03:50:43", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-01 03:50:43", "2018-01-01 03:50:43", "", "5", "http://tro:8888/index.php/2018/01/01/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("54", "1", "2018-01-01 11:32:26", "2018-01-01 11:32:26", "", "facebook-letter-logo", "", "inherit", "open", "closed", "", "facebook-letter-logo", "", "", "2018-01-01 11:32:26", "2018-01-01 11:32:26", "", "0", "http://tro:8888/wp-content/uploads/2018/01/facebook-letter-logo.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("55", "1", "2018-01-01 11:33:22", "2018-01-01 11:33:22", "", "twitter-logo", "", "inherit", "open", "closed", "", "twitter-logo", "", "", "2018-01-01 11:33:22", "2018-01-01 11:33:22", "", "0", "http://tro:8888/wp-content/uploads/2018/01/twitter-logo.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("56", "1", "2018-01-01 11:34:29", "2018-01-01 11:34:29", "", "linkedin-logo", "", "inherit", "open", "closed", "", "linkedin-logo", "", "", "2018-01-01 11:34:29", "2018-01-01 11:34:29", "", "0", "http://tro:8888/wp-content/uploads/2018/01/linkedin-logo.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("57", "1", "2018-01-01 11:35:16", "2018-01-01 11:35:16", "", "google-logo", "", "inherit", "open", "closed", "", "google-logo", "", "", "2018-01-01 11:35:16", "2018-01-01 11:35:16", "", "0", "http://tro:8888/wp-content/uploads/2018/01/google-logo.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("58", "1", "2018-01-01 11:36:25", "2018-01-01 11:36:25", "", "youtube-play-button", "", "inherit", "open", "closed", "", "youtube-play-button", "", "", "2018-01-01 11:36:25", "2018-01-01 11:36:25", "", "0", "http://tro:8888/wp-content/uploads/2018/01/youtube-play-button.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("59", "1", "2018-01-01 20:01:15", "2018-01-01 20:01:15", "a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:0:{}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}", "Section Button Link", "section_button_link", "publish", "closed", "closed", "", "field_5a4a9352ede20", "", "", "2018-01-02 00:17:05", "2018-01-02 00:17:05", "", "46", "http://tro:8888/?post_type=acf-field&#038;p=59", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("60", "1", "2018-01-01 21:44:46", "2018-01-01 21:44:46", "", "tro-logo", "", "inherit", "open", "closed", "", "tro-logo", "", "", "2018-01-01 21:44:46", "2018-01-01 21:44:46", "", "0", "http://tro:8888/wp-content/uploads/2018/01/tro-logo.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("61", "1", "2018-01-01 23:36:03", "2018-01-01 23:36:03", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Home Slider", "home-slider", "publish", "closed", "closed", "", "group_5a4ac57b2dc38", "", "", "2018-01-02 00:18:07", "2018-01-02 00:18:07", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=61", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("62", "1", "2018-01-01 23:36:03", "2018-01-01 23:36:03", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:9:\"Add slide\";}", "Top Slider", "home_top_slider", "publish", "closed", "closed", "", "field_5a4ac58714dcd", "", "", "2018-01-01 23:36:03", "2018-01-01 23:36:03", "", "61", "http://tro:8888/?post_type=acf-field&p=62", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("63", "1", "2018-01-01 23:36:03", "2018-01-01 23:36:03", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Slide Image", "slide_image", "publish", "closed", "closed", "", "field_5a4ac5b714dce", "", "", "2018-01-01 23:36:03", "2018-01-01 23:36:03", "", "62", "http://tro:8888/?post_type=acf-field&p=63", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2018-01-01 23:36:35", "2018-01-01 23:36:35", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-01 23:36:35", "2018-01-01 23:36:35", "", "5", "http://tro:8888/index.php/2018/01/01/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("65", "1", "2018-01-02 00:17:35", "2018-01-02 00:17:35", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-02 00:17:35", "2018-01-02 00:17:35", "", "5", "http://tro:8888/index.php/2018/01/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("66", "1", "2018-01-02 00:18:07", "2018-01-02 00:18:07", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Slide Title", "slide_title", "publish", "closed", "closed", "", "field_5a4acfb172d2c", "", "", "2018-01-02 00:18:07", "2018-01-02 00:18:07", "", "62", "http://tro:8888/?post_type=acf-field&p=66", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2018-01-02 00:18:56", "2018-01-02 00:18:56", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-02 00:18:56", "2018-01-02 00:18:56", "", "5", "http://tro:8888/index.php/2018/01/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("68", "1", "2018-01-02 00:19:16", "2018-01-02 00:19:16", "", "Home", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2018-01-02 00:19:16", "2018-01-02 00:19:16", "", "5", "http://tro:8888/index.php/2018/01/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("69", "1", "2018-01-02 01:54:26", "2018-01-02 01:54:26", "", "tro-logo", "", "inherit", "open", "closed", "", "tro-logo-2", "", "", "2018-01-02 01:54:26", "2018-01-02 01:54:26", "", "0", "http://tro:8888/wp-content/uploads/2018/01/tro-logo-1.svg", "0", "attachment", "image/svg+xml", "0");
INSERT INTO `wp_posts` VALUES("70", "1", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:6:\"format\";i:6;s:14:\"featured_image\";i:7;s:10:\"categories\";i:8;s:4:\"tags\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "About us content", "about-us-content", "publish", "closed", "closed", "", "group_5a4b60f70045d", "", "", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=70", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("71", "1", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}", "About us content", "about_us_content", "publish", "closed", "closed", "", "field_5a4b610387361", "", "", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "", "70", "http://tro:8888/?post_type=acf-field&p=71", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("72", "1", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Section Image", "section_image", "publish", "closed", "closed", "", "field_5a4b612887362", "", "", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "", "71", "http://tro:8888/?post_type=acf-field&p=72", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("73", "1", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}", "Section Text", "section_text", "publish", "closed", "closed", "", "field_5a4b613e87363", "", "", "2018-01-02 10:39:41", "2018-01-02 10:39:41", "", "71", "http://tro:8888/?post_type=acf-field&p=73", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("74", "1", "2018-01-02 10:40:57", "2018-01-02 10:40:57", "", "About Us", "", "inherit", "closed", "closed", "", "7-revision-v1", "", "", "2018-01-02 10:40:57", "2018-01-02 10:40:57", "", "7", "http://tro:8888/index.php/2018/01/02/7-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("75", "1", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:6:\"format\";i:6;s:14:\"featured_image\";i:7;s:10:\"categories\";i:8;s:4:\"tags\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}", "Our work Box\'s", "our-work-boxs", "publish", "closed", "closed", "", "group_5a4c2e1d47833", "", "", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "", "0", "http://tro:8888/?post_type=acf-field-group&#038;p=75", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("76", "1", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}", "Our Work Box", "our_work_box", "publish", "closed", "closed", "", "field_5a4c2e530a9e2", "", "", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "", "75", "http://tro:8888/?post_type=acf-field&p=76", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("77", "1", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}", "Work Image", "work_image", "publish", "closed", "closed", "", "field_5a4c2e740a9e3", "", "", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "", "76", "http://tro:8888/?post_type=acf-field&p=77", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("78", "1", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}", "Work Text", "work_text", "publish", "closed", "closed", "", "field_5a4c2e930a9e4", "", "", "2018-01-03 01:15:22", "2018-01-03 01:15:22", "", "76", "http://tro:8888/?post_type=acf-field&p=78", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("79", "1", "2018-01-03 01:16:40", "2018-01-03 01:16:40", "", "Our Work", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2018-01-03 01:16:40", "2018-01-03 01:16:40", "", "9", "http://tro:8888/index.php/2018/01/03/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("80", "1", "2018-01-03 01:52:05", "2018-01-03 01:52:05", "", "Our Work", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2018-01-03 01:52:05", "2018-01-03 01:52:05", "", "9", "http://tro:8888/index.php/2018/01/03/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("81", "1", "2018-01-03 02:15:25", "2018-01-03 02:15:25", "", "Grutage_QashQai_Rooftopping-publicis", "", "inherit", "open", "closed", "", "grutage_qashqai_rooftopping-publicis", "", "", "2018-01-03 02:16:47", "2018-01-03 02:16:47", "", "9", "http://tro:8888/wp-content/uploads/2018/01/Grutage_QashQai_Rooftopping-publicis.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("82", "1", "2018-01-03 02:15:26", "2018-01-03 02:15:26", "", "telstra-christmas-windows", "", "inherit", "open", "closed", "", "telstra-christmas-windows-2", "", "", "2018-01-03 02:15:26", "2018-01-03 02:15:26", "", "9", "http://tro:8888/wp-content/uploads/2018/01/telstra-christmas-windows-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("83", "1", "2018-01-03 02:15:27", "2018-01-03 02:15:27", "", "TO-BHV03_Copyright-Salah-Alaoui_thumb", "", "inherit", "open", "closed", "", "to-bhv03_copyright-salah-alaoui_thumb", "", "", "2018-01-03 02:16:54", "2018-01-03 02:16:54", "", "9", "http://tro:8888/wp-content/uploads/2018/01/TO-BHV03_Copyright-Salah-Alaoui_thumb.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("84", "1", "2018-01-03 02:15:27", "2018-01-03 02:15:27", "", "tournee-evenementielle-des-plages-FDJ", "", "inherit", "open", "closed", "", "tournee-evenementielle-des-plages-fdj", "", "", "2018-01-03 02:16:39", "2018-01-03 02:16:39", "", "9", "http://tro:8888/wp-content/uploads/2018/01/tournee-evenementielle-des-plages-FDJ.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("85", "1", "2018-01-03 02:16:57", "2018-01-03 02:16:57", "", "Our Work", "", "inherit", "closed", "closed", "", "9-revision-v1", "", "", "2018-01-03 02:16:57", "2018-01-03 02:16:57", "", "9", "http://tro:8888/index.php/2018/01/03/9-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("86", "1", "2018-01-03 02:45:07", "2018-01-03 02:45:07", "http://tro:8888/wp-content/uploads/2018/01/duplicator.1.2.30.zip", "duplicator.1.2.30.zip", "", "private", "open", "closed", "", "duplicator-1-2-30-zip", "", "", "2018-01-03 02:45:07", "2018-01-03 02:45:07", "", "0", "http://tro:8888/wp-content/uploads/2018/01/duplicator.1.2.30.zip", "0", "attachment", "", "0");

/* INSERT TABLE DATA: wp_responsive_menu */
INSERT INTO `wp_responsive_menu` VALUES("accordion_animation", "off");
INSERT INTO `wp_responsive_menu` VALUES("active_arrow_font_icon", "");
INSERT INTO `wp_responsive_menu` VALUES("active_arrow_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu` VALUES("active_arrow_image", "");
INSERT INTO `wp_responsive_menu` VALUES("active_arrow_image_alt", "");
INSERT INTO `wp_responsive_menu` VALUES("active_arrow_shape", "▲");
INSERT INTO `wp_responsive_menu` VALUES("admin_theme", "dark");
INSERT INTO `wp_responsive_menu` VALUES("animation_speed", "0.5");
INSERT INTO `wp_responsive_menu` VALUES("animation_type", "slide");
INSERT INTO `wp_responsive_menu` VALUES("arrow_position", "right");
INSERT INTO `wp_responsive_menu` VALUES("auto_expand_all_submenus", "off");
INSERT INTO `wp_responsive_menu` VALUES("auto_expand_current_submenus", "off");
INSERT INTO `wp_responsive_menu` VALUES("breakpoint", "1000000000000");
INSERT INTO `wp_responsive_menu` VALUES("button_background_colour", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("button_background_colour_active", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("button_background_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("button_click_animation", "boring");
INSERT INTO `wp_responsive_menu` VALUES("button_click_trigger", "#responsive-menu-button");
INSERT INTO `wp_responsive_menu` VALUES("button_distance_from_side", "5");
INSERT INTO `wp_responsive_menu` VALUES("button_distance_from_side_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("button_font", "");
INSERT INTO `wp_responsive_menu` VALUES("button_font_icon", "");
INSERT INTO `wp_responsive_menu` VALUES("button_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu` VALUES("button_font_icon_when_clicked", "");
INSERT INTO `wp_responsive_menu` VALUES("button_font_icon_when_clicked_type", "font-awesome");
INSERT INTO `wp_responsive_menu` VALUES("button_font_size", "14");
INSERT INTO `wp_responsive_menu` VALUES("button_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_height", "55");
INSERT INTO `wp_responsive_menu` VALUES("button_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_image", "");
INSERT INTO `wp_responsive_menu` VALUES("button_image_alt", "");
INSERT INTO `wp_responsive_menu` VALUES("button_image_alt_when_clicked", "");
INSERT INTO `wp_responsive_menu` VALUES("button_image_when_clicked", "");
INSERT INTO `wp_responsive_menu` VALUES("button_left_or_right", "right");
INSERT INTO `wp_responsive_menu` VALUES("button_line_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("button_line_colour_active", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("button_line_colour_hover", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("button_line_height", "3");
INSERT INTO `wp_responsive_menu` VALUES("button_line_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_line_margin", "5");
INSERT INTO `wp_responsive_menu` VALUES("button_line_margin_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_line_width", "25");
INSERT INTO `wp_responsive_menu` VALUES("button_line_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_position_type", "fixed");
INSERT INTO `wp_responsive_menu` VALUES("button_push_with_animation", "off");
INSERT INTO `wp_responsive_menu` VALUES("button_text_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("button_title", "");
INSERT INTO `wp_responsive_menu` VALUES("button_title_line_height", "13");
INSERT INTO `wp_responsive_menu` VALUES("button_title_line_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_title_open", "");
INSERT INTO `wp_responsive_menu` VALUES("button_title_position", "left");
INSERT INTO `wp_responsive_menu` VALUES("button_top", "15");
INSERT INTO `wp_responsive_menu` VALUES("button_top_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("button_transparent_background", "off");
INSERT INTO `wp_responsive_menu` VALUES("button_trigger_type", "click");
INSERT INTO `wp_responsive_menu` VALUES("button_width", "55");
INSERT INTO `wp_responsive_menu` VALUES("button_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("custom_css", "");
INSERT INTO `wp_responsive_menu` VALUES("custom_walker", "");
INSERT INTO `wp_responsive_menu` VALUES("desktop_menu_options", "{\"35\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"34\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"33\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"32\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"31\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"28\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"29\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"30\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"}}");
INSERT INTO `wp_responsive_menu` VALUES("desktop_menu_positioning", "fixed");
INSERT INTO `wp_responsive_menu` VALUES("desktop_menu_side", "");
INSERT INTO `wp_responsive_menu` VALUES("desktop_menu_width", "");
INSERT INTO `wp_responsive_menu` VALUES("desktop_menu_width_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("enable_touch_gestures", "");
INSERT INTO `wp_responsive_menu` VALUES("external_files", "off");
INSERT INTO `wp_responsive_menu` VALUES("fade_submenus", "off");
INSERT INTO `wp_responsive_menu` VALUES("fade_submenus_delay", "100");
INSERT INTO `wp_responsive_menu` VALUES("fade_submenus_side", "left");
INSERT INTO `wp_responsive_menu` VALUES("fade_submenus_speed", "500");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_background_color", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_breakpoint", "800");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_font", "");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_font_size", "14");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_height", "80");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_html_content", "");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_items_order", "{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_logo", "");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_logo_alt", "");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_logo_link", "");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_position_type", "fixed");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_text_color", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("header_bar_title", "");
INSERT INTO `wp_responsive_menu` VALUES("inactive_arrow_font_icon", "");
INSERT INTO `wp_responsive_menu` VALUES("inactive_arrow_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu` VALUES("inactive_arrow_image", "");
INSERT INTO `wp_responsive_menu` VALUES("inactive_arrow_image_alt", "");
INSERT INTO `wp_responsive_menu` VALUES("inactive_arrow_shape", "▼");
INSERT INTO `wp_responsive_menu` VALUES("items_order", "{\"title\":\"on\",\"menu\":\"on\",\"search\":\"on\",\"additional content\":\"on\"}");
INSERT INTO `wp_responsive_menu` VALUES("keyboard_shortcut_close_menu", "27,37");
INSERT INTO `wp_responsive_menu` VALUES("keyboard_shortcut_open_menu", "32,39");
INSERT INTO `wp_responsive_menu` VALUES("menu_additional_content", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_additional_content_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_adjust_for_wp_admin_bar", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_appear_from", "left");
INSERT INTO `wp_responsive_menu` VALUES("menu_auto_height", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_background_image", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_border_width", "1");
INSERT INTO `wp_responsive_menu` VALUES("menu_border_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_close_on_body_click", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_close_on_link_click", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_container_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_item_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_item_background_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_item_border_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_item_border_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_link_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_current_link_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth", "5");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_0", "5");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_0_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_1", "10");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_1_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_2", "15");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_2_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_3", "20");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_3_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_4", "25");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_4_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_5", "30");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_5_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_depth_side", "left");
INSERT INTO `wp_responsive_menu` VALUES("menu_disable_scrolling", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_font", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_font_icons", "{\"id\":[\"\"],\"icon\":[\"\"],\"type\":[\"\"]}");
INSERT INTO `wp_responsive_menu` VALUES("menu_font_size", "13");
INSERT INTO `wp_responsive_menu` VALUES("menu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_item_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_item_background_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_item_border_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_item_border_colour_hover", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_item_click_to_trigger_submenu", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_link_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_link_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_links_height", "40");
INSERT INTO `wp_responsive_menu` VALUES("menu_links_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_maximum_width", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_maximum_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_minimum_width", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_minimum_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_overlay", "off");
INSERT INTO `wp_responsive_menu` VALUES("menu_overlay_colour", "rgba(0, 0, 0, 0.7)");
INSERT INTO `wp_responsive_menu` VALUES("menu_search_box_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_search_box_border_colour", "#dadada");
INSERT INTO `wp_responsive_menu` VALUES("menu_search_box_placeholder_colour", "#c7c7cd");
INSERT INTO `wp_responsive_menu` VALUES("menu_search_box_text", "Search");
INSERT INTO `wp_responsive_menu` VALUES("menu_search_box_text_colour", "#333333");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_background_colour_active", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_background_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_background_hover_colour_active", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_border_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_border_colour_active", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_border_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_border_hover_colour_active", "#3f3f3f");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_shape_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_shape_colour_active", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_shape_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_sub_arrow_shape_hover_colour_active", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_text_alignment", "left");
INSERT INTO `wp_responsive_menu` VALUES("menu_title", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_background_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_background_hover_colour", "#212121");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_font_icon", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_font_size", "13");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_image", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_image_alt", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_link", "");
INSERT INTO `wp_responsive_menu` VALUES("menu_title_link_location", "_self");
INSERT INTO `wp_responsive_menu` VALUES("menu_to_hide", "Header menu");
INSERT INTO `wp_responsive_menu` VALUES("menu_to_use", "header-menu");
INSERT INTO `wp_responsive_menu` VALUES("menu_width", "75");
INSERT INTO `wp_responsive_menu` VALUES("menu_width_unit", "%");
INSERT INTO `wp_responsive_menu` VALUES("menu_word_wrap", "off");
INSERT INTO `wp_responsive_menu` VALUES("minify_scripts", "off");
INSERT INTO `wp_responsive_menu` VALUES("mobile_only", "off");
INSERT INTO `wp_responsive_menu` VALUES("page_wrapper", "");
INSERT INTO `wp_responsive_menu` VALUES("remove_bootstrap", "");
INSERT INTO `wp_responsive_menu` VALUES("remove_fontawesome", "");
INSERT INTO `wp_responsive_menu` VALUES("scripts_in_footer", "off");
INSERT INTO `wp_responsive_menu` VALUES("shortcode", "off");
INSERT INTO `wp_responsive_menu` VALUES("show_menu_on_page_load", "");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_font", "");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_font_size", "14");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_height", "80");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_background_colour_hover", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_link_colour", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_link_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_submenu_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_submenu_background_colour_hover", "#ffffff");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_submenu_link_colour", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_item_submenu_link_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_submenu_font", "");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_submenu_font_size", "12");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_submenu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_submenu_height", "40");
INSERT INTO `wp_responsive_menu` VALUES("single_menu_submenu_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("slide_effect_back_to_text", "Back");
INSERT INTO `wp_responsive_menu` VALUES("submenu_arrow_height", "40");
INSERT INTO `wp_responsive_menu` VALUES("submenu_arrow_height_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("submenu_arrow_width", "40");
INSERT INTO `wp_responsive_menu` VALUES("submenu_arrow_width_unit", "px");
INSERT INTO `wp_responsive_menu` VALUES("submenu_descriptions_on", "");
INSERT INTO `wp_responsive_menu` VALUES("theme_location_menu", "");
INSERT INTO `wp_responsive_menu` VALUES("transition_speed", "0.5");
INSERT INTO `wp_responsive_menu` VALUES("use_desktop_menu", "");
INSERT INTO `wp_responsive_menu` VALUES("use_header_bar", "off");
INSERT INTO `wp_responsive_menu` VALUES("use_slide_effect", "off");

/* INSERT TABLE DATA: wp_responsive_menu_pro */
INSERT INTO `wp_responsive_menu_pro` VALUES("accordion_animation", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("active_arrow_font_icon", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("active_arrow_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu_pro` VALUES("active_arrow_image", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("active_arrow_image_alt", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("active_arrow_shape", "▲");
INSERT INTO `wp_responsive_menu_pro` VALUES("admin_theme", "dark");
INSERT INTO `wp_responsive_menu_pro` VALUES("animation_speed", "0.5");
INSERT INTO `wp_responsive_menu_pro` VALUES("animation_type", "slide");
INSERT INTO `wp_responsive_menu_pro` VALUES("arrow_position", "right");
INSERT INTO `wp_responsive_menu_pro` VALUES("auto_expand_all_submenus", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("auto_expand_current_submenus", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("breakpoint", "8000");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_background_colour", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_background_colour_active", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_background_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_click_animation", "spin-r");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_click_trigger", "#responsive-menu-pro-button");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_distance_from_side", "170");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_distance_from_side_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_icon", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_icon_when_clicked", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_icon_when_clicked_type", "font-awesome");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_size", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_height", "55");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_image", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_image_alt", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_image_alt_when_clicked", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_image_when_clicked", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_left_or_right", "left");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_colour", "rgba(0, 0, 0, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_colour_active", "rgba(255, 255, 255, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_colour_hover", "rgba(0, 174, 239, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_height", "3");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_margin", "5");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_margin_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_width", "25");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_line_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_position_type", "fixed");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_push_with_animation", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_text_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_title", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_title_line_height", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_title_line_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_title_open", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_title_position", "left");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_top", "26");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_top_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_transparent_background", "on");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_trigger_type", "click");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_width", "55");
INSERT INTO `wp_responsive_menu_pro` VALUES("button_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("custom_css", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("custom_walker", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("desktop_menu_options", "{\"35\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"34\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"33\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"32\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"},\"31\":{\"type\":\"standard\",\"width\":\"auto\",\"parent_background_colour\":\"\",\"parent_background_image\":\"\"}}");
INSERT INTO `wp_responsive_menu_pro` VALUES("desktop_menu_positioning", "fixed");
INSERT INTO `wp_responsive_menu_pro` VALUES("desktop_menu_side", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("desktop_menu_width", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("desktop_menu_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("enable_touch_gestures", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("external_files", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("fade_submenus", "on");
INSERT INTO `wp_responsive_menu_pro` VALUES("fade_submenus_delay", "100");
INSERT INTO `wp_responsive_menu_pro` VALUES("fade_submenus_side", "left");
INSERT INTO `wp_responsive_menu_pro` VALUES("fade_submenus_speed", "500");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_background_color", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_breakpoint", "80000");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_font", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_font_size", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_height", "80");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_html_content", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_items_order", "{\"logo\":\"on\",\"title\":\"\",\"search\":\"\",\"html content\":\"on\"}");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_logo", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_logo_alt", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_logo_link", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_position_type", "fixed");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_text_color", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("header_bar_title", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("inactive_arrow_font_icon", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("inactive_arrow_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu_pro` VALUES("inactive_arrow_image", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("inactive_arrow_image_alt", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("inactive_arrow_shape", "▼");
INSERT INTO `wp_responsive_menu_pro` VALUES("items_order", "{\"menu\":\"on\",\"title\":\"\",\"search\":\"\",\"additional content\":\"\"}");
INSERT INTO `wp_responsive_menu_pro` VALUES("keyboard_shortcut_close_menu", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("keyboard_shortcut_open_menu", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_additional_content", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_additional_content_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_adjust_for_wp_admin_bar", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_appear_from", "left");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_auto_height", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_background_colour", "rgba(33, 33, 33, 0)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_background_image", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_border_width", "1");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_border_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_close_on_body_click", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_close_on_link_click", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_container_background_colour", "rgba(33, 33, 33, 0)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_item_background_colour", "rgba(33, 33, 33, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_item_background_hover_colour", "rgba(63, 63, 63, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_item_border_colour", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_item_border_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_link_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_current_link_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth", "5");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_0", "5");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_0_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_1", "10");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_1_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_2", "15");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_2_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_3", "20");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_3_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_4", "25");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_4_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_5", "30");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_5_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_depth_side", "left");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_disable_scrolling", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_font", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_font_icons", "{\"id\":[\"\"],\"icon\":[\"\"],\"type\":[\"\"]}");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_font_size", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_item_background_colour", "rgba(0, 0, 0, 0)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_item_background_hover_colour", "rgba(0, 174, 239, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_item_border_colour", "rgba(33, 33, 33, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_item_border_colour_hover", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_item_click_to_trigger_submenu", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_link_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_link_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_links_height", "100");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_links_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_maximum_width", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_maximum_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_minimum_width", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_minimum_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_overlay", "on");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_overlay_colour", "rgba(74, 71, 71, 0.9)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_search_box_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_search_box_border_colour", "#dadada");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_search_box_placeholder_colour", "#c7c7cd");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_search_box_text", "Search");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_search_box_text_colour", "#333333");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_background_colour", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_background_colour_active", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_background_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_background_hover_colour_active", "#3f3f3f");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_border_colour", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_border_colour_active", "#212121");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_border_hover_colour", "#3f3f3f");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_border_hover_colour_active", "#3f3f3f");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_shape_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_shape_colour_active", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_shape_hover_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_sub_arrow_shape_hover_colour_active", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_text_alignment", "center");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_background_colour", "rgba(33, 33, 33, 0.58)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_background_hover_colour", "rgba(33, 33, 33, 0.58)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_font_icon", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_font_icon_type", "font-awesome");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_font_size", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_hover_colour", "rgba(242, 242, 242, 1)");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_image", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_image_alt", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_link", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_title_link_location", "_self");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_to_hide", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_to_use", "header-menu");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_width", "100");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_width_unit", "%");
INSERT INTO `wp_responsive_menu_pro` VALUES("menu_word_wrap", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("minify_scripts", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("mobile_only", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("page_wrapper", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("remove_bootstrap", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("remove_fontawesome", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("scripts_in_footer", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("shortcode", "on");
INSERT INTO `wp_responsive_menu_pro` VALUES("show_menu_on_page_load", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_font", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_font_size", "14");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_height", "80");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_background_colour_hover", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_link_colour", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_link_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_submenu_background_colour", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_submenu_background_colour_hover", "#ffffff");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_submenu_link_colour", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_item_submenu_link_colour_hover", "#000000");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_submenu_font", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_submenu_font_size", "12");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_submenu_font_size_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_submenu_height", "40");
INSERT INTO `wp_responsive_menu_pro` VALUES("single_menu_submenu_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("slide_effect_back_to_text", "Back");
INSERT INTO `wp_responsive_menu_pro` VALUES("submenu_arrow_height", "40");
INSERT INTO `wp_responsive_menu_pro` VALUES("submenu_arrow_height_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("submenu_arrow_width", "40");
INSERT INTO `wp_responsive_menu_pro` VALUES("submenu_arrow_width_unit", "px");
INSERT INTO `wp_responsive_menu_pro` VALUES("submenu_descriptions_on", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("theme_location_menu", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("transition_speed", "0.5");
INSERT INTO `wp_responsive_menu_pro` VALUES("use_desktop_menu", "");
INSERT INTO `wp_responsive_menu_pro` VALUES("use_header_bar", "off");
INSERT INTO `wp_responsive_menu_pro` VALUES("use_slide_effect", "off");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("20", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("21", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("22", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("23", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("24", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("25", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("26", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("27", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("31", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("32", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("33", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("34", "4", "0");
INSERT INTO `wp_term_relationships` VALUES("35", "4", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "nav_menu", "", "0", "5");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "nav_menu", "", "0", "3");
INSERT INTO `wp_term_taxonomy` VALUES("4", "4", "nav_menu", "", "0", "5");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Uncategorized", "uncategorized", "0");
INSERT INTO `wp_terms` VALUES("2", "Footer Menu 1", "footer-menu-1", "0");
INSERT INTO `wp_terms` VALUES("3", "Footer Menu 2", "footer-menu-2", "0");
INSERT INTO `wp_terms` VALUES("4", "Header menu", "header-menu", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "julian");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "false");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"db1804a5fcef28e4745cb8e86212385cd7ee27d0f02df82a12bb6644bd7d0d45\";a:4:{s:10:\"expiration\";i:1515952261;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36\";s:5:\"login\";i:1514742661;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "3");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:2:\"::\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("20", "1", "metaboxhidden_nav-menus", "a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}");
INSERT INTO `wp_usermeta` VALUES("21", "1", "wp_user-settings", "widgets_access=off&libraryContent=browse");
INSERT INTO `wp_usermeta` VALUES("22", "1", "wp_user-settings-time", "1514806604");
INSERT INTO `wp_usermeta` VALUES("23", "1", "nav_menu_recently_edited", "4");
INSERT INTO `wp_usermeta` VALUES("24", "1", "acf_user_settings", "a:0:{}");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "julian", "$P$Ba9ZMW9OuxE6dXawOBI/4u7BxMWAtd/", "julian", "clarky667@hotmail.com", "", "2017-12-31 17:50:50", "", "0", "julian");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2018-01-03 03:05:15*/
/* DUPLICATOR_MYSQLDUMP_EOF */
