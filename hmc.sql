-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2015 at 12:18 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_p2p`
--

CREATE TABLE IF NOT EXISTS `da_hmc_p2p` (
  `p2p_id` bigint(20) unsigned NOT NULL,
  `p2p_from` bigint(20) unsigned NOT NULL,
  `p2p_to` bigint(20) unsigned NOT NULL,
  `p2p_type` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `da_hmc_p2p`
--

INSERT INTO `da_hmc_p2p` (`p2p_id`, `p2p_from`, `p2p_to`, `p2p_type`) VALUES
(1, 15, 1, 'contact_to_user');

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_p2pmeta`
--

CREATE TABLE IF NOT EXISTS `da_hmc_p2pmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `p2p_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `da_hmc_p2pmeta`
--

INSERT INTO `da_hmc_p2pmeta` (`meta_id`, `p2p_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'date', '2015-09-22 20:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_pieregister_code`
--

CREATE TABLE IF NOT EXISTS `da_hmc_pieregister_code` (
  `id` int(5) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  `name` text NOT NULL,
  `count` int(5) NOT NULL,
  `status` int(2) NOT NULL,
  `code_usage` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_pmxe_exports`
--

CREATE TABLE IF NOT EXISTS `da_hmc_pmxe_exports` (
  `id` bigint(20) unsigned NOT NULL,
  `attch_id` bigint(20) unsigned NOT NULL,
  `options` longtext,
  `scheduled` varchar(64) NOT NULL DEFAULT '',
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `friendly_name` varchar(64) NOT NULL DEFAULT '',
  `exported` bigint(20) NOT NULL DEFAULT '0',
  `canceled` tinyint(1) NOT NULL DEFAULT '0',
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processing` tinyint(1) NOT NULL DEFAULT '0',
  `executing` tinyint(1) NOT NULL DEFAULT '0',
  `triggered` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_pmxe_exports`
--

INSERT INTO `da_hmc_pmxe_exports` (`id`, `attch_id`, `options`, `scheduled`, `registered_on`, `friendly_name`, `exported`, `canceled`, `canceled_on`, `settings_update_on`, `last_activity`, `processing`, `executing`, `triggered`) VALUES
(2, 0, 'a:38:{s:14:"is_user_export";b:0;s:11:"whereclause";s:172:" AND (da_hmc_term_relationships.term_taxonomy_id IN (29) AND da_hmc_postmeta.meta_key = ''_wpas_status'' AND da_hmc_postmeta.meta_value != ''closed'' ) GROUP BY da_hmc_posts.ID";s:10:"joinclause";a:2:{i:0;s:96:" INNER JOIN da_hmc_term_relationships ON (da_hmc_posts.ID = da_hmc_term_relationships.object_id)";i:1;s:75:" INNER JOIN da_hmc_postmeta ON (da_hmc_posts.ID = da_hmc_postmeta.post_id) ";}s:3:"cpt";a:1:{i:0;s:6:"ticket";}s:11:"found_posts";s:1:"3";s:11:"export_type";s:8:"specific";s:21:"filter_rules_hierarhy";s:343:"[{"item_id":"1","left":2,"right":3,"parent_id":null,"element":"tx_custom_complain_department","title":"custom_complain_department","condition":"in","value":"Electric","clause":"AND"},{"item_id":"3","left":4,"right":5,"parent_id":null,"element":"cf__wpas_status","title":"_wpas_status","condition":"not_equals","value":"closed","clause":false}]";s:21:"product_matching_mode";s:6:"strict";s:17:"wp_query_selector";s:8:"wp_query";s:18:"order_item_per_row";i:1;s:8:"filepath";s:68:"/wpallexport/uploads/e36063148c52c8288af2be4059db4555/1444333797.csv";s:8:"wp_query";s:0:"";s:9:"export_to";s:3:"csv";s:9:"delimiter";s:1:",";s:8:"encoding";s:5:"UTF-8";s:21:"is_generate_templates";i:1;s:18:"is_generate_import";i:1;s:9:"import_id";i:0;s:13:"template_name";s:38:"Tickets Export - 2015 October 08 19:49";s:12:"is_scheduled";i:0;s:16:"scheduled_period";s:0:"";s:15:"scheduled_email";s:0:"";s:8:"cc_label";a:6:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:12:"_wpas_status";i:5;s:0:"";}s:7:"cc_type";a:6:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:2:"cf";i:3;s:2:"cf";i:4;s:2:"cf";i:5;s:0:"";}s:8:"cc_value";a:6:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:12:"_wpas_status";i:5;s:0:"";}s:7:"cc_name";a:6:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:12:"_wpas_status";i:5;s:0:"";}s:6:"cc_php";a:6:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}s:7:"cc_code";a:6:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}s:6:"cc_sql";a:6:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}s:10:"cc_options";a:6:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";}s:13:"friendly_name";s:13:"Electric/Open";s:6:"fields";a:4:{i:0;s:7:"default";i:1;s:5:"other";i:2;s:2:"cf";i:3;s:4:"cats";}s:3:"ids";a:6:{i:0;s:1:"1";i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}s:5:"rules";a:0:{}s:21:"records_per_iteration";s:2:"50";s:4:"file";s:111:"/home/intranet_users/hmc/wp-content/uploads/wpallexport/uploads/e36063148c52c8288af2be4059db4555/1444333797.csv";s:15:"update_previous";i:2;s:5:"count";s:1:"3";}', '', '2015-10-08 19:49:56', 'Electric/Open', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-10-08 19:49:56', 0, 0, 0),
(3, 0, 'a:38:{s:14:"is_user_export";b:0;s:11:"whereclause";s:172:" AND (da_hmc_term_relationships.term_taxonomy_id IN (30) AND da_hmc_postmeta.meta_key = ''_wpas_status'' AND da_hmc_postmeta.meta_value != ''closed'' ) GROUP BY da_hmc_posts.ID";s:10:"joinclause";a:2:{i:0;s:96:" INNER JOIN da_hmc_term_relationships ON (da_hmc_posts.ID = da_hmc_term_relationships.object_id)";i:1;s:75:" INNER JOIN da_hmc_postmeta ON (da_hmc_posts.ID = da_hmc_postmeta.post_id) ";}s:3:"cpt";a:1:{i:0;s:6:"ticket";}s:11:"found_posts";s:1:"1";s:11:"export_type";s:8:"specific";s:21:"filter_rules_hierarhy";s:343:"[{"item_id":"1","left":2,"right":3,"parent_id":null,"element":"tx_custom_complain_department","title":"custom_complain_department","condition":"in","value":"Plumbing","clause":"AND"},{"item_id":"2","left":4,"right":5,"parent_id":null,"element":"cf__wpas_status","title":"_wpas_status","condition":"not_equals","value":"closed","clause":false}]";s:21:"product_matching_mode";s:6:"strict";s:17:"wp_query_selector";s:8:"wp_query";s:18:"order_item_per_row";i:1;s:8:"filepath";s:68:"/wpallexport/uploads/4968667fd076a45b02d4d70cf3fffe68/1444334208.csv";s:8:"wp_query";s:0:"";s:9:"export_to";s:3:"csv";s:9:"delimiter";s:1:",";s:8:"encoding";s:5:"UTF-8";s:21:"is_generate_templates";i:1;s:18:"is_generate_import";i:1;s:9:"import_id";i:0;s:13:"template_name";s:38:"Tickets Export - 2015 October 08 19:51";s:12:"is_scheduled";i:0;s:16:"scheduled_period";s:0:"";s:15:"scheduled_email";s:0:"";s:8:"cc_label";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_type";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:2:"cf";i:3;s:2:"cf";i:4;s:4:"cats";i:5;s:2:"cf";i:6;s:0:"";}s:8:"cc_value";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_name";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:6:"cc_php";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:7:"cc_code";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:6:"cc_sql";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:10:"cc_options";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:13:"friendly_name";s:13:"Plumbing/open";s:6:"fields";a:4:{i:0;s:7:"default";i:1;s:5:"other";i:2;s:2:"cf";i:3;s:4:"cats";}s:3:"ids";a:7:{i:0;s:1:"1";i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:5:"rules";a:0:{}s:21:"records_per_iteration";s:2:"50";s:4:"file";s:111:"/home/intranet_users/hmc/wp-content/uploads/wpallexport/uploads/4968667fd076a45b02d4d70cf3fffe68/1444334208.csv";s:15:"update_previous";s:1:"3";s:5:"count";s:1:"1";}', '', '2015-10-08 19:56:47', 'Plumbing/open', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-10-08 19:56:47', 0, 0, 0),
(4, 0, 'a:38:{s:14:"is_user_export";b:0;s:11:"whereclause";s:172:" AND (da_hmc_term_relationships.term_taxonomy_id IN (31) AND da_hmc_postmeta.meta_key = ''_wpas_status'' AND da_hmc_postmeta.meta_value != ''closed'' ) GROUP BY da_hmc_posts.ID";s:10:"joinclause";a:2:{i:0;s:96:" INNER JOIN da_hmc_term_relationships ON (da_hmc_posts.ID = da_hmc_term_relationships.object_id)";i:1;s:75:" INNER JOIN da_hmc_postmeta ON (da_hmc_posts.ID = da_hmc_postmeta.post_id) ";}s:3:"cpt";a:1:{i:0;s:6:"ticket";}s:11:"found_posts";s:1:"2";s:11:"export_type";s:8:"specific";s:21:"filter_rules_hierarhy";s:344:"[{"item_id":"1","left":2,"right":3,"parent_id":null,"element":"tx_custom_complain_department","title":"custom_complain_department","condition":"in","value":"Carpentry","clause":"AND"},{"item_id":"2","left":4,"right":5,"parent_id":null,"element":"cf__wpas_status","title":"_wpas_status","condition":"not_equals","value":"closed","clause":false}]";s:21:"product_matching_mode";s:6:"strict";s:17:"wp_query_selector";s:8:"wp_query";s:18:"order_item_per_row";i:1;s:8:"filepath";s:68:"/wpallexport/uploads/816e7059e31fd23f8739f5f62d384808/1444807776.csv";s:8:"wp_query";s:0:"";s:9:"export_to";s:3:"csv";s:9:"delimiter";s:1:",";s:8:"encoding";s:5:"UTF-8";s:21:"is_generate_templates";i:1;s:18:"is_generate_import";i:1;s:9:"import_id";i:0;s:13:"template_name";s:38:"Tickets Export - 2015 October 08 19:55";s:12:"is_scheduled";i:0;s:16:"scheduled_period";s:0:"";s:15:"scheduled_email";s:0:"";s:8:"cc_label";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_type";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:2:"cf";i:3;s:2:"cf";i:4;s:4:"cats";i:5;s:2:"cf";i:6;s:0:"";}s:8:"cc_value";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_name";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:6:"cc_php";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:7:"cc_code";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:6:"cc_sql";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:10:"cc_options";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:13:"friendly_name";s:14:"Carpentry/Open";s:6:"fields";a:4:{i:0;s:7:"default";i:1;s:5:"other";i:2;s:2:"cf";i:3;s:4:"cats";}s:3:"ids";a:7:{i:0;s:1:"1";i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:5:"rules";a:0:{}s:21:"records_per_iteration";s:2:"50";s:4:"file";s:111:"/home/intranet_users/hmc/wp-content/uploads/wpallexport/uploads/816e7059e31fd23f8739f5f62d384808/1444807776.csv";s:15:"update_previous";s:1:"4";s:5:"count";s:1:"2";}', '', '2015-10-14 07:29:35', 'Carpentry/Open', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-10-14 07:29:35', 0, 0, 0),
(5, 0, 'a:38:{s:14:"is_user_export";b:0;s:11:"whereclause";s:172:" AND (da_hmc_term_relationships.term_taxonomy_id IN (28) AND da_hmc_postmeta.meta_key = ''_wpas_status'' AND da_hmc_postmeta.meta_value != ''closed'' ) GROUP BY da_hmc_posts.ID";s:10:"joinclause";a:2:{i:0;s:96:" INNER JOIN da_hmc_term_relationships ON (da_hmc_posts.ID = da_hmc_term_relationships.object_id)";i:1;s:75:" INNER JOIN da_hmc_postmeta ON (da_hmc_posts.ID = da_hmc_postmeta.post_id) ";}s:3:"cpt";a:1:{i:0;s:6:"ticket";}s:11:"found_posts";s:1:"2";s:11:"export_type";s:8:"specific";s:21:"filter_rules_hierarhy";s:341:"[{"item_id":"1","left":2,"right":3,"parent_id":null,"element":"tx_custom_complain_department","title":"custom_complain_department","condition":"in","value":"Others","clause":"AND"},{"item_id":"2","left":4,"right":5,"parent_id":null,"element":"cf__wpas_status","title":"_wpas_status","condition":"not_equals","value":"closed","clause":false}]";s:21:"product_matching_mode";s:6:"strict";s:17:"wp_query_selector";s:8:"wp_query";s:18:"order_item_per_row";i:1;s:8:"filepath";s:68:"/wpallexport/uploads/2c6ce95e07487a5e96a52c7b698edbf9/1444334191.csv";s:8:"wp_query";s:0:"";s:9:"export_to";s:3:"csv";s:9:"delimiter";s:1:",";s:8:"encoding";s:5:"UTF-8";s:21:"is_generate_templates";i:1;s:18:"is_generate_import";i:1;s:9:"import_id";i:0;s:13:"template_name";s:38:"Tickets Export - 2015 October 08 19:56";s:12:"is_scheduled";i:0;s:16:"scheduled_period";s:0:"";s:15:"scheduled_email";s:0:"";s:8:"cc_label";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_type";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:2:"cf";i:3;s:2:"cf";i:4;s:4:"cats";i:5;s:2:"cf";i:6;s:0:"";}s:8:"cc_value";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:7:"cc_name";a:7:{i:0;s:2:"id";i:1;s:5:"title";i:2;s:10:"_wpas_wing";i:3;s:13:"_wpas_room_no";i:4;s:26:"custom_complain_department";i:5;s:12:"_wpas_status";i:6;s:0:"";}s:6:"cc_php";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:7:"cc_code";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:6:"cc_sql";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:10:"cc_options";a:7:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";}s:13:"friendly_name";s:11:"Others/Open";s:6:"fields";a:4:{i:0;s:7:"default";i:1;s:5:"other";i:2;s:2:"cf";i:3;s:4:"cats";}s:3:"ids";a:7:{i:0;s:1:"1";i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:5:"rules";a:0:{}s:21:"records_per_iteration";s:2:"50";s:4:"file";s:111:"/home/intranet_users/hmc/wp-content/uploads/wpallexport/uploads/2c6ce95e07487a5e96a52c7b698edbf9/1444334191.csv";s:15:"update_previous";i:5;s:5:"count";s:1:"2";}', '', '2015-10-08 19:56:30', 'Others/Open', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-10-08 19:56:30', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_postmeta`
--

CREATE TABLE IF NOT EXISTS `da_hmc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_postmeta`
--

INSERT INTO `da_hmc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 6, '_edit_last', '9'),
(7, 6, '_edit_lock', '1444666678:9'),
(8, 8, '_action', 'cjsupport_ajax'),
(9, 8, '_callback', 'create_ticket'),
(10, 8, '_attachments', 'a:1:{i:0;s:0:"";}'),
(11, 8, '_content', '<p>Sir,</p>\n<p>Socket in my room is not working. Please send the electrician as soon as possible.</p>\n<p>Shreyans</p>\n<p>G-212</p>'),
(12, 8, '_department', 'electric'),
(13, 8, '_subject', 'Socket Broken'),
(14, 8, '_priority', '48'),
(15, 8, '_product', 'null'),
(16, 8, '_post_visibility', 'private'),
(18, 8, '_awaiting_response_from', '1'),
(19, 8, 'ticket_status', 'publish'),
(20, 8, '_starred_by', 'none'),
(21, 8, '_envato_verified', ''),
(22, 8, '_uid', '60269ADF168'),
(23, 8, '_next_auto_close_check', '1442389162'),
(24, 8, '_next_unattended_check', '1442393401'),
(25, 8, '_product_term_id', 'null'),
(26, 8, '_department_term_id', 'electric'),
(27, 8, '_ticket_status', 'closed'),
(28, 9, '_action', 'cjsupport_ajax'),
(29, 9, '_callback', 'create_ticket'),
(30, 9, '_attachments', 'a:1:{i:0;s:0:"";}'),
(31, 9, '_content', '<p>Test Compaint.</p>'),
(32, 9, '_department', 'electric'),
(33, 9, '_subject', 'Test'),
(34, 9, '_product', 'null'),
(35, 9, '_post_visibility', 'private'),
(37, 9, '_awaiting_response_from', '1'),
(38, 9, 'ticket_status', 'publish'),
(39, 9, '_starred_by', 'none'),
(40, 9, '_envato_verified', ''),
(41, 9, '_uid', 'NKGI9J995C9'),
(42, 9, '_next_auto_close_check', '1442480037'),
(43, 9, '_next_auto_close_check', '1442480037'),
(44, 9, '_next_unattended_check', '1442393637'),
(45, 9, '_next_unattended_check', '1442393637'),
(46, 9, '_product_term_id', 'null'),
(47, 9, '_department_term_id', 'electric'),
(48, 9, '_ticket_status', 'closed'),
(49, 9, '_closed_by', '1'),
(50, 8, '_closed_by', '1'),
(52, 11, '_action', 'cjsupport_ajax'),
(53, 11, '_callback', 'create_ticket_client'),
(54, 11, '_client_email', 'test@test.com'),
(55, 11, '_attachments', 'a:1:{i:0;s:0:"";}'),
(56, 11, '_client_string', ''),
(57, 11, '_content', '<p>Test</p>'),
(58, 11, '_department', 'carpentry'),
(59, 11, '_subject', 'Test'),
(60, 11, '_act', 'create-client-ticket'),
(61, 11, '_product', 'null'),
(62, 11, '_post_visibility', 'private'),
(63, 11, '_awaiting_response_from', '1'),
(64, 11, 'ticket_status', 'publish'),
(65, 11, '_starred_by', 'none'),
(66, 11, '_envato_verified', ''),
(67, 11, '_uid', 'H0VLS2EB2211'),
(68, 11, '_next_auto_close_check', '1443126536'),
(69, 11, '_next_unattended_check', '1443040136'),
(70, 11, '_edit_lock', '1442579801:1'),
(71, 13, '_wp_page_template', 'default'),
(72, 14, '_wp_page_template', 'edit-profile.php'),
(73, 15, '_rtbiz_contact_primary_email', 'spgandhi@live.com'),
(74, 17, '_wp_page_template', 'form-login.php'),
(75, 18, '_wp_page_template', 'form-registration.php'),
(76, 19, '_wp_page_template', 'default'),
(77, 20, '_wp_page_template', 'form-password-reset.php'),
(78, 27, '_edit_last', '1'),
(79, 27, '_edit_lock', '1443635707:1'),
(80, 29, '_edit_last', '1'),
(81, 29, '_edit_lock', '1444666550:9'),
(82, 26, '_edit_last', '1'),
(83, 26, '_edit_lock', '1443284428:1'),
(84, 28, '_edit_last', '1'),
(85, 28, '_edit_lock', '1443284437:1'),
(86, 34, '_menu_item_type', 'post_type'),
(87, 34, '_menu_item_menu_item_parent', '0'),
(88, 34, '_menu_item_object_id', '29'),
(89, 34, '_menu_item_object', 'page'),
(90, 34, '_menu_item_target', ''),
(91, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 34, '_menu_item_xfn', ''),
(93, 34, '_menu_item_url', ''),
(95, 35, '_menu_item_type', 'post_type'),
(96, 35, '_menu_item_menu_item_parent', '0'),
(97, 35, '_menu_item_object_id', '27'),
(98, 35, '_menu_item_object', 'page'),
(99, 35, '_menu_item_target', ''),
(100, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 35, '_menu_item_xfn', ''),
(102, 35, '_menu_item_url', ''),
(104, 36, '_menu_item_type', 'post_type'),
(105, 36, '_menu_item_menu_item_parent', '0'),
(106, 36, '_menu_item_object_id', '26'),
(107, 36, '_menu_item_object', 'page'),
(108, 36, '_menu_item_target', ''),
(109, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 36, '_menu_item_xfn', ''),
(111, 36, '_menu_item_url', ''),
(113, 37, '_menu_item_type', 'post_type'),
(114, 37, '_menu_item_menu_item_parent', '0'),
(115, 37, '_menu_item_object_id', '25'),
(116, 37, '_menu_item_object', 'page'),
(117, 37, '_menu_item_target', ''),
(118, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 37, '_menu_item_xfn', ''),
(120, 37, '_menu_item_url', ''),
(122, 38, '_menu_item_type', 'post_type'),
(123, 38, '_menu_item_menu_item_parent', '0'),
(124, 38, '_menu_item_object_id', '24'),
(125, 38, '_menu_item_object', 'page'),
(126, 38, '_menu_item_target', ''),
(127, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 38, '_menu_item_xfn', ''),
(129, 38, '_menu_item_url', ''),
(131, 39, '_menu_item_type', 'post_type'),
(132, 39, '_menu_item_menu_item_parent', '0'),
(133, 39, '_menu_item_object_id', '6'),
(134, 39, '_menu_item_object', 'page'),
(135, 39, '_menu_item_target', ''),
(136, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 39, '_menu_item_xfn', ''),
(138, 39, '_menu_item_url', ''),
(140, 22, '_edit_lock', '1443292471:1'),
(141, 22, '_edit_last', '1'),
(142, 22, '_wpas_status', 'open'),
(143, 22, '_wpas_wing', 'G'),
(144, 22, '_wpas_room_no', '212'),
(145, 22, '_wpas_assignee', '1'),
(146, 13, '_edit_last', '1'),
(147, 13, '_edit_lock', '1443288749:1'),
(150, 24, '_edit_last', '1'),
(151, 24, '_edit_lock', '1444819171:33'),
(152, 25, '_edit_last', '4'),
(153, 25, '_edit_lock', '1443603056:9'),
(154, 45, '_wpas_status', 'open'),
(155, 45, '_wpas_wing', 'G'),
(156, 45, '_wpas_room_no', '212'),
(157, 46, '_wpas_status', 'closed'),
(158, 46, '_wpas_wing', 'G'),
(159, 46, '_wpas_room_no', '212'),
(160, 49, '_wpas_status', 'open'),
(161, 49, '_wpas_wing', 'G'),
(162, 49, '_wpas_room_no', '212'),
(163, 37, '_menu_item_visibility', 'is_user_logged_in()'),
(164, 38, '_menu_item_visibility', 'is_user_logged_in()'),
(165, 34, '_menu_item_visibility', 'is_user_logged_in()'),
(166, 36, '_menu_item_visibility', '!is_user_logged_in()'),
(167, 35, '_menu_item_visibility', '!is_user_logged_in()'),
(168, 52, '_menu_item_type', 'custom'),
(169, 52, '_menu_item_menu_item_parent', '0'),
(170, 52, '_menu_item_object_id', '52'),
(171, 52, '_menu_item_object', 'custom'),
(172, 52, '_menu_item_target', ''),
(173, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(174, 52, '_menu_item_xfn', ''),
(175, 52, '_menu_item_url', 'http://hmc.daiict.ac.in/wp-login.php?action=logout'),
(177, 52, '_menu_item_visibility', 'is_user_logged_in()'),
(214, 71, '_wpas_status', 'open'),
(215, 71, '_wpas_assignee', '5'),
(216, 71, '_wpas_wing', 'G'),
(217, 71, '_wpas_room_no', '212'),
(218, 71, '_edit_lock', '1443538442:1'),
(219, 71, '_edit_last', '1'),
(236, 82, '_wpas_status', 'closed'),
(237, 82, '_wpas_assignee', '5'),
(238, 82, '_wpas_wing', 'G'),
(239, 82, '_wpas_room_no', '312'),
(240, 82, '_edit_lock', '1443354548:5'),
(241, 82, '_edit_last', '5'),
(242, 89, '_wpas_status', 'open'),
(243, 89, '_wpas_assignee', '5'),
(244, 89, '_wpas_wing', 'G'),
(245, 89, '_wpas_room_no', '307'),
(246, 90, '_wpas_status', 'closed'),
(247, 90, '_wpas_assignee', '5'),
(248, 90, '_wpas_wing', 'H'),
(249, 90, '_wpas_room_no', '117'),
(256, 89, '_edit_lock', '1443538348:5'),
(257, 102, '_wpas_status', 'open'),
(258, 102, '_wpas_assignee', '5'),
(259, 102, '_wpas_wing', 'D'),
(260, 102, '_wpas_room_no', '219'),
(261, 103, '_wpas_status', 'open'),
(262, 103, '_wpas_assignee', '5'),
(263, 103, '_wpas_wing', 'D'),
(264, 103, '_wpas_room_no', '219'),
(265, 90, '_edit_lock', '1443538295:5'),
(266, 90, '_edit_last', '5'),
(267, 89, '_edit_last', '5'),
(268, 102, '_edit_lock', '1443538485:1'),
(269, 102, '_edit_last', '1'),
(270, 119, '_wpas_status', 'open'),
(271, 119, '_wpas_assignee', '5'),
(272, 119, '_wpas_wing', 'E'),
(273, 119, '_wpas_room_no', '112'),
(274, 121, '_wpas_status', 'open'),
(275, 121, '_wpas_assignee', '5'),
(276, 121, '_wpas_wing', 'A'),
(277, 121, '_wpas_room_no', '107'),
(278, 121, '_edit_lock', '1443724392:1'),
(279, 18, '_edit_lock', '1443634304:1'),
(280, 121, '_edit_last', '1'),
(281, 137, '_wpas_status', 'open'),
(282, 137, '_wpas_assignee', '5'),
(283, 137, '_wpas_wing', 'G'),
(284, 137, '_wpas_room_no', '212'),
(285, 137, '_edit_lock', '1443724863:5'),
(286, 137, '_edit_last', '5'),
(287, 119, '_edit_lock', '1444921238:30'),
(288, 103, '_edit_lock', '1444334010:5'),
(289, 164, '_edit_last', '37'),
(290, 164, '_wpas_status', 'open'),
(291, 164, '_wpas_wing', 'G'),
(292, 164, '_wpas_room_no', '212'),
(293, 164, '_wpas_assignee', '37'),
(294, 164, '_edit_lock', '1444807572:1'),
(295, 166, '_wpas_status', 'closed'),
(296, 166, '_wpas_assignee', '5'),
(297, 166, '_wpas_wing', 'G'),
(298, 166, '_wpas_room_no', '212'),
(299, 166, '_edit_lock', '1444807504:5'),
(300, 166, '_edit_last', '5'),
(301, 177, '_edit_last', '33'),
(302, 177, '_wpas_status', 'open'),
(303, 177, '_wpas_wing', 'F'),
(304, 177, '_wpas_room_no', '317'),
(305, 177, '_wpas_assignee', '5'),
(306, 177, '_edit_lock', '1444819261:33'),
(307, 166, '_wp_trash_meta_status', 'queued'),
(308, 166, '_wp_trash_meta_time', '1444808113');

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_posts`
--

CREATE TABLE IF NOT EXISTS `da_hmc_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_posts`
--

INSERT INTO `da_hmc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-09-14 07:21:00', '2015-09-14 07:21:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-09-14 07:21:00', '2015-09-14 07:21:00', '', 0, 'http://findskill.in/hmc/?p=1', 0, 'post', '', 1),
(2, 1, '2015-09-14 07:21:00', '2015-09-14 07:21:00', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://findskill.in/hmc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun![rtbiz_hd_support_form]', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-09-15 15:06:51', '2015-09-15 15:06:51', '', 0, 'http://findskill.in/hmc/?page_id=2', 0, 'page', '', 0),
(6, 1, '2015-09-14 07:26:49', '2015-09-14 07:26:49', 'Welcome to DAIICT HMC COMPLAINT SYSTEM.\r\n\r\nPlease register to submit your complain. <strong>Make sure you use you Webmail ID</strong>.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-10-12 21:50:17', '2015-10-12 16:20:17', '', 0, 'http://findskill.in/hmc/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-09-14 07:26:49', '2015-09-14 07:26:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-14 07:26:49', '2015-09-14 07:26:49', '', 6, 'http://findskill.in/hmc/index.php/2015/09/14/6-revision-v1/', 0, 'revision', '', 0),
(8, 2, '2015-09-14 07:39:22', '2015-09-14 07:39:22', '<p>Sir,</p>\n<p>Socket in my room is not working. Please send the electrician as soon as possible.</p>\n<p>Shreyans</p>\n<p>G-212</p>', 'Socket Broken', 'Sir,\nSocket in my room is not working. Please send the electrician as soon as possible.\nShreyans\nG-212', 'closed', 'open', 'closed', '', 'socket-broken', '', '', '2015-09-15 08:58:58', '2015-09-15 08:58:58', '', 0, 'http://findskill.in/hmc/index.php/tickets/socket-broken/', 0, 'cjsupport', '', 3),
(9, 2, '2015-09-15 08:53:56', '2015-09-15 08:53:56', '<p>Test Compaint.</p>', 'Test', 'Test Compaint.', 'closed', 'open', 'closed', '', 'test', '', '', '2015-09-15 08:58:37', '2015-09-15 08:58:37', '', 0, 'http://findskill.in/hmc/index.php/tickets/test/', 0, 'cjsupport', '', 1),
(10, 1, '2015-09-15 15:06:51', '2015-09-15 15:06:51', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://findskill.in/hmc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun![rtbiz_hd_support_form]', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-09-15 15:06:51', '2015-09-15 15:06:51', '', 2, 'http://findskill.in/hmc/index.php/2015/09/15/2-revision-v1/', 0, 'revision', '', 0),
(11, 2, '2015-09-18 11:27:49', '2015-09-18 11:27:49', '<p>Test</p>', 'Test', 'Test', 'publish', 'open', 'closed', '', 'test-2', '', '', '2015-09-18 11:27:49', '2015-09-18 11:27:49', '', 0, 'http://findskill.in/hmc/index.php/tickets/test-2/', 0, 'cjsupport', '', 0),
(13, 1, '2015-09-22 20:37:03', '2015-09-22 20:37:03', '', 'Create Complain', '', 'publish', 'closed', 'closed', '', 'create-complain', '', '', '2015-09-26 17:32:29', '2015-09-26 17:32:29', '', 0, 'http://hmc.daiict.ac.in/create-ticket/', 0, 'page', '', 0),
(14, 1, '2015-09-22 20:37:03', '2015-09-22 20:37:03', '', 'Edit Profile', '', 'publish', 'closed', 'closed', '', 'edit-profile', '', '', '2015-09-22 20:37:03', '2015-09-22 20:37:03', '', 0, 'http://hmc.daiict.ac.in/edit-profile/', 0, 'page', '', 0),
(15, 1, '2015-09-22 20:38:39', '2015-09-22 20:38:39', '', 'spgandhi', '', 'publish', 'open', 'closed', '', 'spgandhi', '', '', '2015-09-22 20:38:39', '2015-09-22 20:38:39', '', 0, 'http://hmc.daiict.ac.in/contact/spgandhi/', 0, 'contact', '', 0),
(17, 1, '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 0, 'http://hmc.daiict.ac.in/login/', 0, 'page', '', 0),
(18, 1, '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 0, 'http://hmc.daiict.ac.in/register/', 0, 'page', '', 0),
(19, 1, '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 'Password Recovery', '', 'publish', 'closed', 'closed', '', 'password-recovery', '', '', '2015-09-26 17:31:59', '2015-09-26 17:31:59', '', 0, 'http://hmc.daiict.ac.in/password-recovery/', 0, 'page', '', 0),
(20, 1, '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2015-09-23 06:12:57', '2015-09-23 06:12:57', '', 0, 'http://hmc.daiict.ac.in/password-reset/', 0, 'page', '', 0),
(24, 1, '2015-09-26 16:05:15', '2015-09-26 16:05:15', '[tickets]', 'My Complains', '', 'publish', 'closed', 'closed', '', 'my-complains', '', '', '2015-09-26 17:32:21', '2015-09-26 17:32:21', '', 0, 'http://hmc.daiict.ac.in/my-tickets/', 0, 'page', '', 0),
(25, 1, '2015-09-26 16:05:15', '2015-09-26 10:35:15', '[ticket-submit]', 'Submit Complaint', '', 'publish', 'closed', 'closed', '', 'submit-complaint', '', '', '2015-09-29 16:23:01', '2015-09-29 10:53:01', '', 0, 'http://hmc.daiict.ac.in/submit-ticket/', 0, 'page', '', 0),
(26, 1, '2015-09-26 16:10:04', '2015-09-26 16:10:04', '[pie_register_login]', 'Login', '', 'publish', 'closed', 'closed', '', 'login-2', '', '', '2015-09-26 16:20:28', '2015-09-26 16:20:28', '', 0, 'http://hmc.daiict.ac.in/pie-register-login/', 0, 'page', '', 0),
(27, 1, '2015-09-26 16:10:04', '2015-09-26 16:10:04', 'Email verification required to complete registration.\r\n\r\n[pie_register_form]', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2015-09-30 23:25:06', '2015-09-30 17:55:06', '', 0, 'http://hmc.daiict.ac.in/pie-register-registration/', 0, 'page', '', 0),
(28, 1, '2015-09-26 16:10:04', '2015-09-26 16:10:04', '[pie_register_forgot_password]', 'Forgot Password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2015-09-26 16:20:37', '2015-09-26 16:20:37', '', 0, 'http://hmc.daiict.ac.in/pie-register-forgot-password/', 0, 'page', '', 0),
(29, 1, '2015-09-26 16:10:04', '2015-09-26 16:10:04', '[pie_register_profile]', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2015-09-26 16:20:20', '2015-09-26 16:20:20', '', 0, 'http://hmc.daiict.ac.in/pie-register-profile/', 0, 'page', '', 0),
(30, 1, '2015-09-26 16:20:11', '2015-09-26 16:20:11', '[pie_register_form]', 'Registration', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2015-09-26 16:20:11', '2015-09-26 16:20:11', '', 27, 'http://hmc.daiict.ac.in/27-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-09-26 16:20:20', '2015-09-26 16:20:20', '[pie_register_profile]', 'Profile', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2015-09-26 16:20:20', '2015-09-26 16:20:20', '', 29, 'http://hmc.daiict.ac.in/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-09-26 16:20:28', '2015-09-26 16:20:28', '[pie_register_login]', 'Login', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-09-26 16:20:28', '2015-09-26 16:20:28', '', 26, 'http://hmc.daiict.ac.in/26-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-09-26 16:20:37', '2015-09-26 16:20:37', '[pie_register_forgot_password]', 'Forgot Password', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-09-26 16:20:37', '2015-09-26 16:20:37', '', 28, 'http://hmc.daiict.ac.in/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=35', 6, 'nav_menu_item', '', 0),
(36, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2015-09-26 16:21:31', '2015-09-26 16:21:31', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2015-09-26 16:23:16', '2015-09-26 16:23:16', '<ul class="wpas-log-list"><li>updated Support Staff to spgandhi</li></ul>', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-09-26 16:23:16', '2015-09-26 16:23:16', '', 22, 'http://hmc.daiict.ac.in/ticket_history/40/', 0, 'ticket_history', '', 0),
(41, 1, '2015-09-26 17:31:47', '2015-09-26 17:31:47', '', 'Create Complain', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2015-09-26 17:31:47', '2015-09-26 17:31:47', '', 13, 'http://hmc.daiict.ac.in/13-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-09-26 17:31:54', '2015-09-26 17:31:54', '', 'Password Recovery', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2015-09-26 17:31:54', '2015-09-26 17:31:54', '', 19, 'http://hmc.daiict.ac.in/19-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-09-26 17:32:21', '2015-09-26 17:32:21', '[tickets]', 'My Complains', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-09-26 17:32:21', '2015-09-26 17:32:21', '', 24, 'http://hmc.daiict.ac.in/24-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-09-26 17:32:54', '2015-09-26 17:32:54', '[ticket-submit]', 'Submit Complain', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2015-09-26 17:32:54', '2015-09-26 17:32:54', '', 25, 'http://hmc.daiict.ac.in/25-revision-v1/', 0, 'revision', '', 0),
(47, 2, '2015-09-26 17:51:46', '2015-09-26 17:51:46', 'Problem solved', 'Reply to ticket #46', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-46', '', '', '2015-09-26 17:51:46', '2015-09-26 17:51:46', '', 46, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-46/', 0, 'ticket_reply', '', 0),
(48, 2, '2015-09-26 17:51:46', '2015-09-26 17:51:46', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2015-09-26 17:51:46', '2015-09-26 17:51:46', '', 46, 'http://hmc.daiict.ac.in/ticket_history/48/', 0, 'ticket_history', '', 0),
(50, 1, '2015-09-26 18:10:22', '2015-09-26 18:10:22', '[tickets]', 'My Tickets', '', 'publish', 'closed', 'closed', '', 'my-tickets', '', '', '2015-09-26 18:10:22', '2015-09-26 18:10:22', '', 0, 'http://hmc.daiict.ac.in/my-tickets/', 0, 'page', '', 0),
(51, 1, '2015-09-26 18:10:22', '2015-09-26 18:10:22', '[ticket-submit]', 'Submit Ticket', '', 'publish', 'closed', 'closed', '', 'submit-ticket', '', '', '2015-09-26 18:10:22', '2015-09-26 18:10:22', '', 0, 'http://hmc.daiict.ac.in/submit-ticket/', 0, 'page', '', 0),
(52, 1, '2015-09-26 18:22:34', '2015-09-26 18:22:34', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2015-09-26 18:23:09', '2015-09-26 18:23:09', '', 0, 'http://hmc.daiict.ac.in/?p=52', 7, 'nav_menu_item', '', 0),
(53, 1, '2015-09-26 18:25:30', '2015-09-26 18:25:30', 'Welcome to DAIICT HMC COMPLAINT SYSTEM.\n\nPlease register to submit your com', 'Home', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2015-09-26 18:25:30', '2015-09-26 18:25:30', '', 6, 'http://hmc.daiict.ac.in/6-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2015-09-26 18:26:15', '2015-09-26 18:26:15', 'Welcome to DAIICT HMC COMPLAINT SYSTEM.\r\n\r\nPlease register to submit your complain. <strong>Make sure you use you webmail id</strong>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-26 18:26:15', '2015-09-26 18:26:15', '', 6, 'http://hmc.daiict.ac.in/6-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2015-09-26 18:26:34', '2015-09-26 18:26:34', 'Welcome to DAIICT HMC COMPLAINT SYSTEM.\r\n\r\nPlease register to submit your complain. <strong>Make sure you use you Webmail ID</strong>.', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2015-09-26 18:26:34', '2015-09-26 18:26:34', '', 6, 'http://hmc.daiict.ac.in/6-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2015-09-26 18:42:23', '2015-09-26 18:42:23', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2015-09-26 18:42:23', '2015-09-26 18:42:23', '', 62, 'http://hmc.daiict.ac.in/ticket_history/63/', 0, 'ticket_history', '', 0),
(65, 1, '2015-09-26 18:48:25', '2015-09-26 18:48:25', '<ul class="wpas-log-list"><li>updated Support Staff to spgandhi</li></ul>', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2015-09-26 18:48:25', '2015-09-26 18:48:25', '', 64, 'http://hmc.daiict.ac.in/ticket_history/65/', 0, 'ticket_history', '', 0),
(66, 1, '2015-09-26 18:48:53', '2015-09-26 18:48:53', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2015-09-26 18:48:53', '2015-09-26 18:48:53', '', 64, 'http://hmc.daiict.ac.in/66/', 0, 'ticket_history', '', 0),
(67, 1, '2015-09-26 18:49:54', '2015-09-26 18:49:54', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2015-09-26 18:49:54', '2015-09-26 18:49:54', '', 62, 'http://hmc.daiict.ac.in/67/', 0, 'ticket_history', '', 0),
(70, 1, '2015-09-27 09:46:49', '2015-09-27 09:46:49', '<ul class="wpas-log-list"><li>updated Support Staff to spgandhi</li></ul>', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2015-09-27 09:46:49', '2015-09-27 09:46:49', '', 69, 'http://hmc.daiict.ac.in/ticket_history/70/', 0, 'ticket_history', '', 0),
(71, 1, '2015-09-27 10:31:24', '2015-09-27 10:31:24', '', 'Fan working slow.', '', 'processing', 'closed', 'closed', '', 'fan-working-slow', '', '', '2015-09-29 20:24:02', '2015-09-29 14:54:02', '', 0, 'http://hmc.daiict.ac.in/ticket/fan-working-slow/', 0, 'ticket', '', 0),
(73, 1, '2015-09-27 10:38:32', '2015-09-27 10:38:32', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2015-09-27 10:38:32', '2015-09-27 10:38:32', '', 71, 'http://hmc.daiict.ac.in/ticket_history/73/', 0, 'ticket_history', '', 0),
(74, 1, '2015-09-27 10:38:32', '2015-09-27 10:38:32', '<ul class="wpas-log-list"><li>updated Support Staff to Jitendra Parmar</li></ul>', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2015-09-27 10:38:32', '2015-09-27 10:38:32', '', 71, 'http://hmc.daiict.ac.in/ticket_history/74/', 0, 'ticket_history', '', 0),
(75, 1, '2015-09-27 10:38:42', '2015-09-27 10:38:42', '<ul class="wpas-log-list"><li>updated Support Staff to Jitendra Parmar</li></ul>', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2015-09-27 10:38:42', '2015-09-27 10:38:42', '', 69, 'http://hmc.daiict.ac.in/ticket_history/75/', 0, 'ticket_history', '', 0),
(79, 1, '2015-09-27 11:19:30', '2015-09-27 11:19:30', '<ul class="wpas-log-list"><li>updated Support Staff to Jitendra Parmar</li></ul>', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2015-09-27 11:19:30', '2015-09-27 11:19:30', '', 78, 'http://hmc.daiict.ac.in/ticket_history/79/', 0, 'ticket_history', '', 0),
(80, 1, '2015-09-27 11:36:20', '2015-09-27 11:36:20', 'Solved', 'Reply to ticket #78', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-78', '', '', '2015-09-27 11:36:20', '2015-09-27 11:36:20', '', 78, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-78/', 0, 'ticket_reply', '', 0),
(81, 1, '2015-09-27 11:36:20', '2015-09-27 11:36:20', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2015-09-27 11:36:20', '2015-09-27 11:36:20', '', 78, 'http://hmc.daiict.ac.in/ticket_history/81/', 0, 'ticket_history', '', 0),
(82, 6, '2015-09-27 11:43:21', '2015-09-27 11:43:21', '', 'Chair Broken', '', 'processing', 'closed', 'closed', '', 'chair-broken', '', '', '2015-09-27 17:19:08', '2015-09-27 11:49:08', '', 0, 'http://hmc.daiict.ac.in/ticket/chair-broken/', 0, 'ticket', '', 0),
(84, 5, '2015-09-27 17:18:03', '2015-09-27 11:48:03', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2015-09-27 17:18:03', '2015-09-27 11:48:03', '', 82, 'http://hmc.daiict.ac.in/ticket_history/84/', 0, 'ticket_history', '', 0),
(85, 5, '2015-09-27 17:18:03', '2015-09-27 11:48:03', 'Please come and meet me.', 'Reply to ticket #82', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-82', '', '', '2015-09-27 17:18:03', '2015-09-27 11:48:03', '', 82, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-82/', 0, 'ticket_reply', '', 0),
(86, 6, '2015-09-27 17:18:38', '2015-09-27 11:48:38', 'Ok Sir.', '', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-82-2', '', '', '2015-09-27 17:19:08', '2015-09-27 11:49:08', '', 82, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-82-2/', 0, 'ticket_reply', '', 0),
(87, 5, '2015-09-27 17:19:08', '2015-09-27 11:49:08', 'Problem solved.', 'Reply to ticket #82', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-82-3', '', '', '2015-09-27 17:19:08', '2015-09-27 11:49:08', '', 82, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-82-3/', 0, 'ticket_reply', '', 0),
(88, 5, '2015-09-27 17:19:08', '2015-09-27 11:49:08', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2015-09-27 17:19:08', '2015-09-27 11:49:08', '', 82, 'http://hmc.daiict.ac.in/ticket_history/88/', 0, 'ticket_history', '', 0),
(89, 8, '2015-09-29 14:56:04', '2015-09-29 09:26:04', '', 'Bathroom Rod is broken', '', 'processing', 'closed', 'closed', '', 'bathroom-rod-is-broken', '', '', '2015-09-29 20:22:28', '2015-09-29 14:52:28', '', 0, 'http://hmc.daiict.ac.in/ticket/bathroom-rod-is-broken/', 0, 'ticket', '', 0),
(90, 12, '2015-09-29 15:24:00', '2015-09-29 09:54:00', '', 'LAN port not working', '', 'processing', 'closed', 'closed', '', 'lan-port-not-working', '', '', '2015-09-29 20:21:35', '2015-09-29 14:51:35', '', 0, 'http://hmc.daiict.ac.in/ticket/lan-port-not-working/', 0, 'ticket', '', 0),
(92, 1, '2015-09-29 16:23:01', '2015-09-29 10:53:01', '[ticket-submit]', 'Submit Complaint', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2015-09-29 16:23:01', '2015-09-29 10:53:01', '', 25, 'http://hmc.daiict.ac.in/25-revision-v1/', 0, 'revision', '', 0),
(102, 28, '2015-09-29 19:37:32', '2015-09-29 14:07:32', '', 'D202 fan problem (mechanical noice', '', 'processing', 'closed', 'closed', '', 'd202-fan-problem-mechanical-noice', '', '', '2015-09-29 20:24:45', '2015-09-29 14:54:45', '', 0, 'http://hmc.daiict.ac.in/ticket/d202-fan-problem-mechanical-noice/', 0, 'ticket', '', 0),
(103, 28, '2015-09-29 19:39:34', '2015-09-29 14:09:34', '', 'D202 bed problem (shaking)', '', 'queued', 'closed', 'closed', '', 'd202-bed-problem-shaking', '', '', '2015-09-29 19:39:34', '2015-09-29 14:09:34', '', 0, 'http://hmc.daiict.ac.in/ticket/d202-bed-problem-shaking/', 0, 'ticket', '', 0),
(104, 28, '2015-09-29 19:43:08', '2015-09-29 14:13:08', 'Carpenter had visited your room but it was close.will come next time.', 'Reply to ticket #103', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-103', '', '', '2015-09-29 19:43:08', '2015-09-29 14:13:08', '', 103, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-103/', 0, 'ticket_reply', '', 0),
(105, 28, '2015-09-29 19:43:08', '2015-09-29 14:13:08', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2015-09-29 19:43:08', '2015-09-29 14:13:08', '', 103, 'http://hmc.daiict.ac.in/ticket_history/105/', 0, 'ticket_history', '', 0),
(106, 28, '2015-09-29 19:43:51', '2015-09-29 14:13:51', 'The ticket was re-opened.', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2015-09-29 19:43:51', '2015-09-29 14:13:51', '', 103, 'http://hmc.daiict.ac.in/ticket_history/106/', 0, 'ticket_history', '', 0),
(107, 28, '2015-09-29 19:44:50', '2015-09-29 14:14:50', 'Your problem solved.', 'Reply to ticket #103', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-103-2', '', '', '2015-09-29 19:44:50', '2015-09-29 14:14:50', '', 103, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-103-2/', 0, 'ticket_reply', '', 0),
(108, 28, '2015-09-29 19:44:50', '2015-09-29 14:14:50', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2015-09-29 19:44:50', '2015-09-29 14:14:50', '', 103, 'http://hmc.daiict.ac.in/ticket_history/108/', 0, 'ticket_history', '', 0),
(109, 5, '2015-09-29 20:21:35', '2015-09-29 14:51:35', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2015-09-29 20:21:35', '2015-09-29 14:51:35', '', 90, 'http://hmc.daiict.ac.in/ticket_history/109/', 0, 'ticket_history', '', 0),
(110, 5, '2015-09-29 20:21:35', '2015-09-29 14:51:35', 'Please contact helpdesk for the same.', 'Reply to ticket #90', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-90', '', '', '2015-09-29 20:21:35', '2015-09-29 14:51:35', '', 90, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-90/', 0, 'ticket_reply', '', 0),
(111, 5, '2015-09-29 20:21:35', '2015-09-29 14:51:35', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2015-09-29 20:21:35', '2015-09-29 14:51:35', '', 90, 'http://hmc.daiict.ac.in/ticket_history/111/', 0, 'ticket_history', '', 0),
(112, 5, '2015-09-29 20:22:28', '2015-09-29 14:52:28', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2015-09-29 20:22:28', '2015-09-29 14:52:28', '', 89, 'http://hmc.daiict.ac.in/ticket_history/112/', 0, 'ticket_history', '', 0),
(113, 5, '2015-09-29 20:22:28', '2015-09-29 14:52:28', 'The carpenter will visit on Thursday.', 'Reply to ticket #89', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-89', '', '', '2015-09-29 20:22:28', '2015-09-29 14:52:28', '', 89, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-89/', 0, 'ticket_reply', '', 0),
(114, 1, '2015-09-29 20:24:45', '2015-09-29 14:54:45', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2015-09-29 20:24:45', '2015-09-29 14:54:45', '', 102, 'http://hmc.daiict.ac.in/ticket_history/114/', 0, 'ticket_history', '', 0),
(115, 1, '2015-09-29 20:24:45', '2015-09-29 14:54:45', 'The electrician will visit on Wednesday.', 'Reply to ticket #102', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-102', '', '', '2015-09-29 20:24:45', '2015-09-29 14:54:45', '', 102, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-102/', 0, 'ticket_reply', '', 0),
(119, 30, '2015-09-29 22:57:35', '2015-09-29 17:27:35', '', 'Lorem Ipsum', '', 'queued', 'closed', 'closed', '', 'lorem-ipsum', '', '', '2015-09-29 22:57:35', '2015-09-29 17:27:35', '', 0, 'http://hmc.daiict.ac.in/ticket/lorem-ipsum/', 0, 'ticket', '', 0),
(121, 34, '2015-09-30 04:41:26', '2015-09-29 23:11:26', '', 'Water Cooler has some leakage ( water is wasted )', '', 'processing', 'closed', 'closed', '', 'water-cooler-has-some-leakage-water-is-wasted', '', '', '2015-10-02 00:03:12', '2015-10-01 18:33:12', '', 0, 'http://hmc.daiict.ac.in/ticket/water-cooler-has-some-leakage-water-is-wasted/', 0, 'ticket', '', 0),
(128, 1, '2015-09-30 23:04:18', '2015-09-30 17:34:18', '&lt;iframe src="https://docs.google.com/forms/d/1jvqgTJbVqJskYQyws59HG0rbH_CfPWb9bPrUHuq7-u0/viewform?embedded=true" width="760" height="500" frameborder="0" marginheight="0" marginwidth="0"&gt;Loading...&lt;/iframe&gt;', 'Registration', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2015-09-30 23:04:18', '2015-09-30 17:34:18', '', 27, 'http://hmc.daiict.ac.in/27-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2015-09-30 23:04:54', '2015-09-30 17:34:54', '[pie_register_form]', 'Registration', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2015-09-30 23:04:54', '2015-09-30 17:34:54', '', 27, 'http://hmc.daiict.ac.in/27-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-09-30 23:24:53', '2015-09-30 17:54:53', 'After registration, please verify your email\n\n[pie_register_form]', 'Registration', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2015-09-30 23:24:53', '2015-09-30 17:54:53', '', 27, 'http://hmc.daiict.ac.in/27-autosave-v1/', 0, 'revision', '', 0),
(131, 1, '2015-09-30 23:25:06', '2015-09-30 17:55:06', 'Email verification required to complete registration.\r\n\r\n[pie_register_form]', 'Registration', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2015-09-30 23:25:06', '2015-09-30 17:55:06', '', 27, 'http://hmc.daiict.ac.in/27-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-10-02 00:03:12', '2015-10-01 18:33:12', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2015-10-02 00:03:12', '2015-10-01 18:33:12', '', 121, 'http://hmc.daiict.ac.in/ticket_history/135/', 0, 'ticket_history', '', 0),
(136, 1, '2015-10-02 00:03:12', '2015-10-01 18:33:12', 'Thank you for informing. This will be taken care of and you will be updated when fixed.', 'Reply to ticket #121', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-121', '', '', '2015-10-02 00:03:12', '2015-10-01 18:33:12', '', 121, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-121/', 0, 'ticket_reply', '', 0),
(137, 1, '2015-10-02 00:05:05', '2015-10-01 18:35:05', '', 'Test Complain', '', 'processing', 'closed', 'closed', '', 'test-complain', '', '', '2015-10-02 00:11:03', '2015-10-01 18:41:03', '', 0, 'http://hmc.daiict.ac.in/ticket/test-complain/', 0, 'ticket', '', 0),
(138, 5, '2015-10-02 00:11:03', '2015-10-01 18:41:03', 'Ticket state changed to &laquo;In Progress&raquo;', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2015-10-02 00:11:03', '2015-10-01 18:41:03', '', 137, 'http://hmc.daiict.ac.in/ticket_history/138/', 0, 'ticket_history', '', 0),
(139, 5, '2015-10-02 00:11:03', '2015-10-01 18:41:03', 'This will be taken care of.', 'Reply to ticket #137', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-137', '', '', '2015-10-02 00:11:03', '2015-10-01 18:41:03', '', 137, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-137/', 0, 'ticket_reply', '', 0),
(150, 5, '2015-10-09 01:23:29', '2015-10-08 19:53:29', 'The ticket was re-opened.', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2015-10-09 01:23:29', '2015-10-08 19:53:29', '', 103, 'http://hmc.daiict.ac.in/150/', 0, 'ticket_history', '', 0),
(164, 37, '2015-10-14 12:50:11', '2015-10-14 07:20:11', '', 'Chair Borken', '', 'processing', 'closed', 'closed', '', 'chair-borken', '', '', '2015-10-14 12:50:11', '2015-10-14 07:20:11', '', 0, 'http://hmc.daiict.ac.in/?post_type=ticket&#038;p=164', 0, 'ticket', '', 0),
(165, 37, '2015-10-14 12:50:11', '2015-10-14 07:20:11', '<ul class="wpas-log-list"><li>updated Support Staff to 201201154</li></ul>', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2015-10-14 12:50:11', '2015-10-14 07:20:11', '', 164, 'http://hmc.daiict.ac.in/ticket_history/165/', 0, 'ticket_history', '', 0),
(166, 44, '2015-10-14 12:52:28', '2015-10-14 07:22:28', '', 'Bed Borken', '', 'trash', 'closed', 'closed', '', 'bed-borken', '', '', '2015-10-14 13:05:13', '2015-10-14 07:35:13', '', 0, 'http://hmc.daiict.ac.in/ticket/bed-borken/', 0, 'ticket', '', 0),
(167, 44, '2015-10-14 12:52:46', '2015-10-14 07:22:46', 'Please take some action.', '', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-166', '', '', '2015-10-14 12:55:04', '2015-10-14 07:25:04', '', 166, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-166/', 0, 'ticket_reply', '', 0),
(169, 5, '2015-10-14 12:55:04', '2015-10-14 07:25:04', 'Carpenter will come today at 5 PM', 'Reply to ticket #166', '', 'read', 'closed', 'closed', '', 'reply-to-ticket-166-2', '', '', '2015-10-14 12:55:04', '2015-10-14 07:25:04', '', 166, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-166-2/', 0, 'ticket_reply', '', 0),
(170, 44, '2015-10-14 12:56:57', '2015-10-14 07:26:57', 'Work Done. Thank You.', 'Reply to ticket #166', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-166-3', '', '', '2015-10-14 12:56:57', '2015-10-14 07:26:57', '', 166, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-166-3/', 0, 'ticket_reply', '', 0),
(171, 44, '2015-10-14 12:56:57', '2015-10-14 07:26:57', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '171', '', '', '2015-10-14 12:56:57', '2015-10-14 07:26:57', '', 166, 'http://hmc.daiict.ac.in/ticket_history/171/', 0, 'ticket_history', '', 0),
(172, 44, '2015-10-14 12:57:29', '2015-10-14 07:27:29', 'The ticket was re-opened.', '', '', 'publish', 'closed', 'closed', '', '172', '', '', '2015-10-14 12:57:29', '2015-10-14 07:27:29', '', 166, 'http://hmc.daiict.ac.in/ticket_history/172/', 0, 'ticket_history', '', 0),
(173, 44, '2015-10-14 12:57:41', '2015-10-14 07:27:41', 'Work still not done.', 'Reply to ticket #166', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-166-4', '', '', '2015-10-14 12:57:41', '2015-10-14 07:27:41', '', 166, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-166-4/', 0, 'ticket_reply', '', 0),
(174, 44, '2015-10-14 12:58:30', '2015-10-14 07:28:30', 'Closed.', 'Reply to ticket #166', '', 'unread', 'closed', 'closed', '', 'reply-to-ticket-166-5', '', '', '2015-10-14 12:58:30', '2015-10-14 07:28:30', '', 166, 'http://hmc.daiict.ac.in/ticket_reply/reply-to-ticket-166-5/', 0, 'ticket_reply', '', 0),
(175, 44, '2015-10-14 12:58:30', '2015-10-14 07:28:30', 'The ticket was closed.', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2015-10-14 12:58:30', '2015-10-14 07:28:30', '', 166, 'http://hmc.daiict.ac.in/ticket_history/175/', 0, 'ticket_history', '', 0),
(177, 33, '2015-10-14 13:02:53', '2015-10-14 07:32:53', '', 'My First Complain', '', 'processing', 'closed', 'closed', '', 'my-first-complain-2', '', '', '2015-10-14 13:02:53', '2015-10-14 07:32:53', '', 0, 'http://hmc.daiict.ac.in/?post_type=ticket&#038;p=177', 0, 'ticket', '', 0),
(178, 33, '2015-10-14 13:02:53', '2015-10-14 07:32:53', '<ul class="wpas-log-list"><li>updated Support Staff to Jitendra Parmar</li></ul>', '', '', 'publish', 'closed', 'closed', '', '178', '', '', '2015-10-14 13:02:53', '2015-10-14 07:32:53', '', 177, 'http://hmc.daiict.ac.in/ticket_history/178/', 0, 'ticket_history', '', 0),
(183, 1, '2015-10-29 19:18:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-10-29 19:18:22', '0000-00-00 00:00:00', '', 0, 'http://hmc.daiict.ac.in/?p=183', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_attributes`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_attributes` (
  `id` bigint(20) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `attribute_label` varchar(100) DEFAULT NULL,
  `attribute_store_as` varchar(100) NOT NULL,
  `attribute_render_type` varchar(100) NOT NULL,
  `attribute_orderby` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_attributes_relationship`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_attributes_relationship` (
  `id` bigint(20) NOT NULL,
  `attr_id` bigint(20) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `settings` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_hd_gravity_fields_mapping`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_hd_gravity_fields_mapping` (
  `id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `mapping` longtext,
  `enable` varchar(20) NOT NULL DEFAULT 'yes',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_hd_mail_acl`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_hd_mail_acl` (
  `id` bigint(11) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '',
  `allow_user` bigint(11) NOT NULL DEFAULT '0',
  `allowtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_hd_ticket_history`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_hd_ticket_history` (
  `id` bigint(11) NOT NULL,
  `ticket_id` bigint(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `old_value` text,
  `new_value` text,
  `message` text,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` bigint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_hd_ticket_index`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_hd_ticket_index` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `post_title` text,
  `post_content` text,
  `assignee` bigint(20) DEFAULT NULL,
  `date_create` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_create_gmt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_update_gmt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_status` varchar(20) DEFAULT NULL,
  `user_created_by` bigint(20) DEFAULT NULL,
  `user_updated_by` bigint(20) DEFAULT NULL,
  `last_comment_id` bigint(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `contact` text,
  `company` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_imap_server`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_imap_server` (
  `id` bigint(11) NOT NULL,
  `server_name` varchar(200) NOT NULL,
  `incoming_imap_server` varchar(200) NOT NULL,
  `incoming_imap_port` varchar(200) NOT NULL,
  `incoming_imap_enc` varchar(10) DEFAULT NULL,
  `outgoing_smtp_server` varchar(200) NOT NULL,
  `outgoing_smtp_port` varchar(200) NOT NULL,
  `outgoing_smtp_enc` varchar(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_rt_wp_imap_server`
--

INSERT INTO `da_hmc_rt_wp_imap_server` (`id`, `server_name`, `incoming_imap_server`, `incoming_imap_port`, `incoming_imap_enc`, `outgoing_smtp_server`, `outgoing_smtp_port`, `outgoing_smtp_enc`) VALUES
(1, 'Gmail/Google', 'imap.gmail.com', '993', 'ssl', 'smtp.gmail.com', '587', 'tls'),
(2, 'Outlook/Hotmail', 'imap-mail.outlook.com', '993', 'ssl', 'smtp-mail.outlook.com', '587', 'tls'),
(3, 'Yahoo', 'imap.mail.yahoo.com', '993', 'ssl', 'smtp.mail.yahoo.com', '587', 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_mail_accounts`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_mail_accounts` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `email` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `imap_server` bigint(11) DEFAULT NULL,
  `outh_token` varchar(2000) DEFAULT NULL,
  `email_data` varchar(2000) DEFAULT NULL,
  `flag` char(1) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `signature` mediumtext,
  `lastMailCount` bigint(11) DEFAULT '0',
  `sync_status` varchar(45) DEFAULT 'synced',
  `last_sync_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_mail_time` timestamp NULL DEFAULT NULL,
  `last_mail_uid` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_mail_messageids`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_mail_messageids` (
  `id` bigint(20) NOT NULL,
  `messageid` varchar(200) NOT NULL DEFAULT '',
  `enttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_mail_outbound`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_mail_outbound` (
  `id` bigint(20) NOT NULL,
  `fromname` varchar(100) DEFAULT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `toemail` varchar(2000) DEFAULT NULL,
  `ccemail` varchar(2000) DEFAULT NULL,
  `bccemail` varchar(2000) DEFAULT NULL,
  `sendtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(2000) DEFAULT NULL,
  `body` mediumtext,
  `attachement` varchar(2000) DEFAULT NULL,
  `refrence_id` bigint(11) DEFAULT NULL,
  `refrence_type` varchar(45) DEFAULT NULL,
  `sent` varchar(45) DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_rtbiz_acl`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_rtbiz_acl` (
  `userid` bigint(11) NOT NULL DEFAULT '0',
  `module` varchar(200) NOT NULL DEFAULT '',
  `groupid` bigint(11) NOT NULL DEFAULT '0',
  `permission` bigint(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_rt_wp_rtlib_gravity_fields_mapping`
--

CREATE TABLE IF NOT EXISTS `da_hmc_rt_wp_rtlib_gravity_fields_mapping` (
  `id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `module_id` varchar(20) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `mapping` longtext,
  `enable` varchar(20) NOT NULL DEFAULT 'yes',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_taxonomymeta`
--

CREATE TABLE IF NOT EXISTS `da_hmc_taxonomymeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_terms`
--

CREATE TABLE IF NOT EXISTS `da_hmc_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_terms`
--

INSERT INTO `da_hmc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Electric', 'electric', 0),
(3, 'Carpentry', 'carpentry', 0),
(4, 'Plumbing', 'plumbing', 0),
(5, 'Others', 'others', 0),
(6, 'null', 'null', 0),
(7, 'New', 'new', 0),
(8, 'Closed', 'closed', 0),
(12, 'Carpentry', 'carpentry', 0),
(13, 'Plumbing', 'plumbing', 0),
(14, 'Electric', 'electric', 0),
(15, 'Others', 'others', 0),
(22, 'In Progress', 'in-progress', 0),
(23, 'Carpentry', 'carpentry', 0),
(24, 'Electric', 'electric', 0),
(25, 'Plumbing', 'plumbing', 0),
(26, 'Others', 'others', 0),
(27, 'Main Menu', 'main-menu', 0),
(28, 'Others', 'others', 0),
(29, 'Electric', 'electric', 0),
(30, 'Plumbing', 'plumbing', 0),
(31, 'Carpentry', 'carpentry', 0),
(32, 'Test', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_term_relationships`
--

CREATE TABLE IF NOT EXISTS `da_hmc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_term_relationships`
--

INSERT INTO `da_hmc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(8, 6, 0),
(9, 2, 0),
(9, 6, 0),
(11, 3, 0),
(11, 6, 0),
(22, 7, 0),
(22, 14, 0),
(34, 27, 0),
(35, 27, 0),
(36, 27, 0),
(37, 27, 0),
(38, 27, 0),
(39, 27, 0),
(52, 27, 0),
(62, 23, 0),
(69, 32, 0),
(71, 29, 0),
(82, 31, 0),
(89, 30, 0),
(90, 28, 0),
(102, 29, 0),
(103, 31, 0),
(119, 29, 0),
(121, 28, 0),
(137, 28, 0),
(164, 31, 0),
(166, 31, 0),
(177, 28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `da_hmc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_term_taxonomy`
--

INSERT INTO `da_hmc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'cjsupport_departments', '', 0, 0),
(3, 3, 'cjsupport_departments', '', 0, 1),
(4, 4, 'cjsupport_departments', '', 0, 0),
(5, 5, 'cjsupport_departments', '', 0, 0),
(6, 6, 'cjsupport_products', '', 0, 3),
(7, 7, 'ticket_status', '', 0, 1),
(8, 8, 'ticket_status', '', 0, 0),
(12, 12, 'category', '', 0, 0),
(13, 13, 'category', '', 0, 0),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 0),
(22, 22, 'ticket_status', '', 0, 0),
(23, 23, 'complain_department', '', 0, 1),
(24, 24, 'complain_department', '', 0, 0),
(25, 25, 'complain_department', '', 0, 0),
(26, 26, 'complain_department', '', 0, 0),
(27, 27, 'nav_menu', '', 0, 7),
(28, 28, 'custom_complain_department', '', 0, 4),
(29, 29, 'custom_complain_department', '', 0, 3),
(30, 30, 'custom_complain_department', '', 0, 1),
(31, 31, 'custom_complain_department', 'hi', 0, 3),
(32, 32, 'custom_complain_category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_usermeta`
--

CREATE TABLE IF NOT EXISTS `da_hmc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=812 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_usermeta`
--

INSERT INTO `da_hmc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'spgandhi'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'da_hmc_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'da_hmc_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'pksn1'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"4ddfcf61a92c6424725d3e558b81286b74cb3ea49236a801d62664b010481189";a:4:{s:10:"expiration";i:1447336085;s:2:"ip";s:12:"10.100.98.65";s:2:"ua";s:137:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36 OPR/32.0.1948.69";s:5:"login";i:1446126485;}s:64:"c5f5f2bd88667b15f4dc1d412f05d13637a634594e6bc85d71d4a81faea3a57a";a:4:{s:10:"expiration";i:1446895204;s:2:"ip";s:12:"10.100.59.35";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0";s:5:"login";i:1446722404;}}'),
(15, 1, 'da_hmc_user-settings', 'editor=tinymce&hidetb=1&posts_list_mode=list'),
(16, 1, 'da_hmc_user-settings-time', '1443724781'),
(17, 1, 'da_hmc_dashboard_quick_press_last_post_id', '183'),
(18, 1, 'cjsupport_departments', 'a:1:{i:0;s:3:"all";}'),
(19, 1, 'cjsupport_products', 'a:1:{i:0;s:3:"all";}'),
(20, 2, 'nickname', 'test'),
(21, 2, 'first_name', ''),
(22, 2, 'last_name', ''),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(30, 2, 'da_hmc_user_level', '0'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 2, 'session_tokens', 'a:3:{s:64:"513950dfd52fc5fc35090681d1dc48ea91ca18b0fec25848bed3612fe55f9c76";a:4:{s:10:"expiration";i:1444200807;s:2:"ip";s:13:"10.100.84.173";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0";s:5:"login";i:1442991207;}s:64:"a000c05c951a0dac626403e3e68d71ce5ad5a426f7065af21449514a9a489d5b";a:4:{s:10:"expiration";i:1444501406;s:2:"ip";s:12:"10.100.98.19";s:2:"ua";s:137:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36 OPR/32.0.1948.25";s:5:"login";i:1443291806;}s:64:"764e552388563653c26f200d581c78be57b148a7fda91783067a5fbe934438dd";a:4:{s:10:"expiration";i:1443522162;s:2:"ip";s:12:"10.100.98.19";s:2:"ua";s:137:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36 OPR/32.0.1948.25";s:5:"login";i:1443349362;}}'),
(33, 1, '_rtbiz_hd_show_welcome_panel', '1'),
(34, 1, 'manageedit-cjsupportcolumnshidden', 'a:2:{i:0;s:27:"taxonomy-cjsupport_products";i:1;s:8:"comments";}'),
(35, 2, '_last_activity', '2015-09-23 06:15:38'),
(36, 2, 'wpas_can_be_assigned', ''),
(37, 1, 'active', '1'),
(38, 2, 'active', '1'),
(39, 2, 'pie_dropdown_3', 'a:1:{i:0;s:1:"A";}'),
(40, 2, 'pie_number_4', '212'),
(41, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(42, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:10:"add-ticket";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:23:"add-complain_department";i:4;s:14:"add-ticket-tag";}'),
(43, 1, 'wpas_open_tickets', '4'),
(44, 1, '_rn_dismissed', 'a:1:{i:0;s:39:"revamping-the-admin-tickets-list-screen";}'),
(60, 1, 'nav_menu_recently_edited', '27'),
(61, 2, 'wpas_open_tickets', '1'),
(62, 1, 'pie_dropdown_3', 'G'),
(63, 1, 'pie_number_4', ''),
(64, 1, 'wpas_can_be_assigned', ''),
(65, 1, 'closedpostboxes_ticket', 'a:0:{}'),
(66, 1, 'metaboxhidden_ticket', 'a:1:{i:0;s:7:"slugdiv";}'),
(67, 2, 'pie_text_5', '212'),
(83, 5, 'nickname', 'hostel_supervisor'),
(84, 5, 'first_name', 'Jitendra'),
(85, 5, 'last_name', 'Parmar'),
(86, 5, 'description', ''),
(87, 5, 'rich_editing', 'true'),
(88, 5, 'comment_shortcuts', 'false'),
(89, 5, 'admin_color', 'fresh'),
(90, 5, 'use_ssl', '0'),
(91, 5, 'show_admin_bar_front', 'true'),
(92, 5, 'da_hmc_capabilities', 'a:1:{s:12:"wpas_manager";b:1;}'),
(93, 5, 'da_hmc_user_level', '7'),
(94, 5, 'wpas_can_be_assigned', 'yes'),
(95, 5, 'dismissed_wp_pointers', ''),
(96, 5, 'session_tokens', 'a:2:{s:64:"20c03d667b01405eca74d9ee49dc58c534100bf61a8db5c7789593fd7e3e196e";a:4:{s:10:"expiration";i:1444980191;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444807391;}s:64:"67d68c94132fe4dd77898a04ad6382c0baf9a869b52371ff7cc1212fb8b3a3e3";a:4:{s:10:"expiration";i:1444980853;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444808053;}}'),
(97, 5, 'da_hmc_dashboard_quick_press_last_post_id', '168'),
(98, 5, 'wpas_open_tickets', '8'),
(99, 5, '_rn_dismissed', 'a:1:{i:0;s:39:"revamping-the-admin-tickets-list-screen";}'),
(100, 5, 'pie_dropdown_3', 'A'),
(101, 5, 'pie_text_5', ''),
(102, 1, 'manageedit-ticketcolumnshidden', 'a:2:{i:0;s:19:"taxonomy-ticket-tag";i:1;s:13:"wpas-assignee";}'),
(107, 6, 'nickname', '2013010000'),
(108, 6, 'first_name', ''),
(109, 6, 'last_name', ''),
(110, 6, 'description', ''),
(111, 6, 'rich_editing', 'true'),
(112, 6, 'comment_shortcuts', 'false'),
(113, 6, 'admin_color', 'fresh'),
(114, 6, 'use_ssl', '0'),
(115, 6, 'show_admin_bar_front', 'true'),
(116, 6, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(117, 6, 'da_hmc_user_level', '0'),
(118, 6, 'dismissed_wp_pointers', ''),
(119, 1, 'pie_text_5', '212'),
(120, 6, 'session_tokens', 'a:1:{s:64:"0ae58dc673e25a0b40d14aaf712d90defd4c0154860c48f42b830e00e058fa1b";a:4:{s:10:"expiration";i:1443526901;s:2:"ip";s:12:"10.100.98.19";s:2:"ua";s:137:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36 OPR/32.0.1948.25";s:5:"login";i:1443354101;}}'),
(121, 6, 'pie_dropdown_3', 'G'),
(122, 6, 'pie_text_5', '312'),
(123, 6, 'wpas_can_be_assigned', ''),
(124, 7, 'nickname', '201301050'),
(125, 7, 'first_name', ''),
(126, 7, 'last_name', ''),
(127, 7, 'description', ''),
(128, 7, 'rich_editing', 'true'),
(129, 7, 'comment_shortcuts', 'false'),
(130, 7, 'admin_color', 'fresh'),
(131, 7, 'use_ssl', '0'),
(132, 7, 'show_admin_bar_front', 'true'),
(133, 7, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(134, 7, 'da_hmc_user_level', '7'),
(135, 7, 'pie_dropdown_3', 'C'),
(136, 7, 'pie_text_5', '305'),
(137, 7, 'active', '1'),
(138, 7, 'session_tokens', 'a:1:{s:64:"1f00c5d9de165c67566e06983da08dc36b18a81ea04c97f8261abf4211010c12";a:4:{s:10:"expiration";i:1443605306;s:2:"ip";s:11:"10.200.1.92";s:2:"ua";s:141:"Mozilla/5.0 (Linux; U; Android 4.2.2; en-in; Lenovo S660 Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30";s:5:"login";i:1443432506;}}'),
(139, 5, 'da_hmc_user-settings', 'posts_list_mode=list'),
(140, 5, 'da_hmc_user-settings-time', '1444808183'),
(141, 8, 'nickname', 'jayant_pareek'),
(142, 8, 'first_name', ''),
(143, 8, 'last_name', ''),
(144, 8, 'description', ''),
(145, 8, 'rich_editing', 'true'),
(146, 8, 'comment_shortcuts', 'false'),
(147, 8, 'admin_color', 'fresh'),
(148, 8, 'use_ssl', '0'),
(149, 8, 'show_admin_bar_front', 'true'),
(150, 8, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(151, 8, 'da_hmc_user_level', '7'),
(152, 8, 'pie_dropdown_3', 'G'),
(153, 8, 'pie_text_5', '307'),
(154, 8, 'active', '1'),
(155, 8, 'session_tokens', 'a:1:{s:64:"9824ce4189a6978522a14ed8d40c159b4ff403e70496c78bf4d6bf13fa9cdac0";a:4:{s:10:"expiration";i:1444975998;s:2:"ip";s:12:"10.100.98.28";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444803198;}}'),
(156, 9, 'nickname', 'jaydeepsinh'),
(157, 9, 'first_name', ''),
(158, 9, 'last_name', ''),
(159, 9, 'description', ''),
(160, 9, 'rich_editing', 'true'),
(161, 9, 'comment_shortcuts', 'false'),
(162, 9, 'admin_color', 'fresh'),
(163, 9, 'use_ssl', '0'),
(164, 9, 'show_admin_bar_front', 'true'),
(165, 9, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(166, 9, 'da_hmc_user_level', '7'),
(167, 9, 'pie_dropdown_3', 'E'),
(168, 9, 'pie_text_5', '312'),
(169, 9, 'active', '1'),
(170, 9, 'session_tokens', 'a:5:{s:64:"d5f4d221d61ba02e02357dae98496c37b79a8599633b2ca895b74e7beebd3a49";a:4:{s:10:"expiration";i:1444728765;s:2:"ip";s:12:"10.200.0.151";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443519165;}s:64:"5301305a78e24ace720a30d8e9be6c6d87c80611dcb11594d8f56d90b6b7c013";a:4:{s:10:"expiration";i:1444812784;s:2:"ip";s:11:"10.200.1.22";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443603184;}s:64:"f078e3eea1f682938cdae5eec96fbbc14021c38dfe100a79b01de01ff6675a27";a:4:{s:10:"expiration";i:1444839376;s:2:"ip";s:12:"10.200.0.170";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444666576;}s:64:"cdee7aff4387594710dde32525ca85b27495a156dc6d89e7b4984a0dd8a7de0f";a:4:{s:10:"expiration";i:1444839600;s:2:"ip";s:12:"10.200.0.170";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444666800;}s:64:"efd6041c44169a6c11ec5355cfbdac85c8e299fd0ecdb7282361c0f66d71b0e8";a:4:{s:10:"expiration";i:1444839601;s:2:"ip";s:12:"10.200.0.170";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444666801;}}'),
(188, 11, 'nickname', 'komal_'),
(189, 11, 'first_name', ''),
(190, 11, 'last_name', ''),
(191, 11, 'description', ''),
(192, 11, 'rich_editing', 'true'),
(193, 11, 'comment_shortcuts', 'false'),
(194, 11, 'admin_color', 'fresh'),
(195, 11, 'use_ssl', '0'),
(196, 11, 'show_admin_bar_front', 'true'),
(197, 11, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(198, 11, 'da_hmc_user_level', '7'),
(199, 11, 'pie_dropdown_3', 'J'),
(200, 11, 'pie_text_5', '216'),
(201, 11, 'active', '1'),
(202, 12, 'nickname', 'nisarg_patel'),
(203, 12, 'first_name', ''),
(204, 12, 'last_name', ''),
(205, 12, 'description', ''),
(206, 12, 'rich_editing', 'true'),
(207, 12, 'comment_shortcuts', 'false'),
(208, 12, 'admin_color', 'fresh'),
(209, 12, 'use_ssl', '0'),
(210, 12, 'show_admin_bar_front', 'true'),
(211, 12, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(212, 12, 'da_hmc_user_level', '7'),
(213, 12, 'pie_dropdown_3', 'H'),
(214, 12, 'pie_text_5', '117'),
(215, 12, 'active', '1'),
(216, 11, 'session_tokens', 'a:2:{s:64:"30e5d76a70943c59b22b6466942211077909ef5c72ccfe47ef39146b46ba50e0";a:4:{s:10:"expiration";i:1443693169;s:2:"ip";s:13:"10.100.97.101";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36";s:5:"login";i:1443520369;}s:64:"d01367bc1760604d251f09c5be86cac8010a8c4d1fd45e17cc9b13ab22b7be90";a:4:{s:10:"expiration";i:1443693169;s:2:"ip";s:13:"10.100.97.101";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36";s:5:"login";i:1443520369;}}'),
(217, 12, 'session_tokens', 'a:3:{s:64:"8f42b5a1d8f73c63636dcf6d00ec6208d88a49c2e76debe536f1529a9b3d5707";a:4:{s:10:"expiration";i:1443693173;s:2:"ip";s:13:"10.100.99.178";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443520373;}s:64:"3b2c9ba15bc3fc3e6ad973be5b22d323bfc66d3512d4e884aca1d78fa4981cb9";a:4:{s:10:"expiration";i:1443723920;s:2:"ip";s:13:"10.100.99.178";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443551120;}s:64:"154fdb0284665cc2efdeaa758204b49d494cf7116a3b9ec6ce99103bb142a86c";a:4:{s:10:"expiration";i:1443723920;s:2:"ip";s:13:"10.100.99.178";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443551120;}}'),
(218, 9, 'da_hmc_user-settings', 'mfold=f&editor=html'),
(219, 9, 'da_hmc_user-settings-time', '1444666685'),
(220, 9, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:17:"dashboard_primary";}'),
(221, 9, 'metaboxhidden_dashboard', 'a:0:{}'),
(222, 13, 'nickname', '201301205'),
(223, 13, 'first_name', ''),
(224, 13, 'last_name', ''),
(225, 13, 'description', ''),
(226, 13, 'rich_editing', 'true'),
(227, 13, 'comment_shortcuts', 'false'),
(228, 13, 'admin_color', 'fresh'),
(229, 13, 'use_ssl', '0'),
(230, 13, 'show_admin_bar_front', 'true'),
(231, 13, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(232, 13, 'da_hmc_user_level', '7'),
(233, 13, 'pie_dropdown_3', 'A'),
(234, 13, 'pie_text_5', '211'),
(235, 13, 'active', '1'),
(236, 13, 'session_tokens', 'a:1:{s:64:"547e6e492e8245faf947c8096722381a2c68f4769a930ab1da6a74fe497b48da";a:4:{s:10:"expiration";i:1443693913;s:2:"ip";s:12:"10.100.66.73";s:2:"ua";s:76:"Mozilla/5.0 (X11; Linux i686 on x86_64; rv:38.0) Gecko/20100101 Firefox/38.0";s:5:"login";i:1443521113;}}'),
(237, 14, 'nickname', 'kishanpatel'),
(238, 14, 'first_name', ''),
(239, 14, 'last_name', ''),
(240, 14, 'description', ''),
(241, 14, 'rich_editing', 'true'),
(242, 14, 'comment_shortcuts', 'false'),
(243, 14, 'admin_color', 'fresh'),
(244, 14, 'use_ssl', '0'),
(245, 14, 'show_admin_bar_front', 'true'),
(246, 14, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(247, 14, 'da_hmc_user_level', '7'),
(248, 14, 'pie_dropdown_3', 'A'),
(249, 14, 'pie_text_5', '308'),
(250, 14, 'active', '1'),
(251, 14, 'session_tokens', 'a:2:{s:64:"0e67d674495bdb6cabd975491946f5e36330c934d310b20da473b6013aab3a55";a:4:{s:10:"expiration";i:1443696001;s:2:"ip";s:12:"10.100.90.61";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36";s:5:"login";i:1443523201;}s:64:"52558569499572a753110333e5a5c6fcc086af0acdf00a7c66249371d7672f36";a:4:{s:10:"expiration";i:1443853881;s:2:"ip";s:12:"10.100.90.61";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443681081;}}'),
(252, 7, 'wpas_can_be_assigned', ''),
(253, 13, 'wpas_can_be_assigned', ''),
(254, 8, 'wpas_can_be_assigned', ''),
(255, 9, 'wpas_can_be_assigned', ''),
(256, 14, 'wpas_can_be_assigned', ''),
(257, 11, 'wpas_can_be_assigned', ''),
(258, 12, 'wpas_can_be_assigned', ''),
(259, 15, 'nickname', 'keyamehta'),
(260, 15, 'first_name', ''),
(261, 15, 'last_name', ''),
(262, 15, 'description', ''),
(263, 15, 'rich_editing', 'true'),
(264, 15, 'comment_shortcuts', 'false'),
(265, 15, 'admin_color', 'fresh'),
(266, 15, 'use_ssl', '0'),
(267, 15, 'show_admin_bar_front', 'true'),
(268, 15, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(269, 15, 'da_hmc_user_level', '7'),
(270, 15, 'pie_dropdown_3', 'K'),
(271, 15, 'pie_text_5', '103'),
(272, 15, 'active', '1'),
(273, 15, 'session_tokens', 'a:2:{s:64:"3334bb47a77277722fcdeafff4c5d853ce6429bc67cb6aa8c72e1d2e5841440a";a:4:{s:10:"expiration";i:1443697039;s:2:"ip";s:12:"10.100.69.56";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443524239;}s:64:"8c81417384e380002e32c568548d5c61adbd7be1131cd715f9261c855cb3f33c";a:4:{s:10:"expiration";i:1443697039;s:2:"ip";s:12:"10.100.69.56";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443524239;}}'),
(274, 16, 'nickname', '201301212'),
(275, 16, 'first_name', ''),
(276, 16, 'last_name', ''),
(277, 16, 'description', ''),
(278, 16, 'rich_editing', 'true'),
(279, 16, 'comment_shortcuts', 'false'),
(280, 16, 'admin_color', 'fresh'),
(281, 16, 'use_ssl', '0'),
(282, 16, 'show_admin_bar_front', 'true'),
(283, 16, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(284, 16, 'da_hmc_user_level', '7'),
(285, 16, 'pie_dropdown_3', 'K'),
(286, 16, 'pie_text_5', '308'),
(287, 16, 'active', '1'),
(288, 16, 'session_tokens', 'a:1:{s:64:"5de75c67312d678649c088591e1d137adb247c399456f30193ff0ee351dcc83f";a:4:{s:10:"expiration";i:1444734252;s:2:"ip";s:12:"10.100.97.32";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36";s:5:"login";i:1443524652;}}'),
(289, 17, 'nickname', 'ishitach'),
(290, 17, 'first_name', ''),
(291, 17, 'last_name', ''),
(292, 17, 'description', ''),
(293, 17, 'rich_editing', 'true'),
(294, 17, 'comment_shortcuts', 'false'),
(295, 17, 'admin_color', 'fresh'),
(296, 17, 'use_ssl', '0'),
(297, 17, 'show_admin_bar_front', 'true'),
(298, 17, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(299, 17, 'da_hmc_user_level', '7'),
(300, 17, 'pie_dropdown_3', 'J'),
(301, 17, 'pie_text_5', '114'),
(302, 17, 'active', '1'),
(303, 17, 'session_tokens', 'a:3:{s:64:"01792bb97768a62f32b3dadc31a32850bc4d0bec16d1ab9db458210ab7f4a47c";a:4:{s:10:"expiration";i:1444734447;s:2:"ip";s:12:"10.100.97.45";s:2:"ua";s:100:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.0.9895 Safari/537.36";s:5:"login";i:1443524847;}s:64:"8564605957f7df8dd73064b079503e24e0945d5023ee3066ec392a0e55b48cd7";a:4:{s:10:"expiration";i:1444549352;s:2:"ip";s:13:"10.100.69.190";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.0.10338 Safari/537.36";s:5:"login";i:1444376552;}s:64:"ce31d82641009fa4474a05c6438d103a5561f044d65627b4e9f56d060b94fdba";a:4:{s:10:"expiration";i:1444549352;s:2:"ip";s:13:"10.100.69.190";s:2:"ua";s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.0.10338 Safari/537.36";s:5:"login";i:1444376552;}}'),
(304, 8, 'da_hmc_dashboard_quick_press_last_post_id', '96'),
(305, 15, 'wpas_can_be_assigned', ''),
(306, 16, 'wpas_can_be_assigned', ''),
(307, 17, 'wpas_can_be_assigned', ''),
(308, 18, 'nickname', 'Parth Chauhan'),
(309, 18, 'first_name', ''),
(310, 18, 'last_name', ''),
(311, 18, 'description', ''),
(312, 18, 'rich_editing', 'true'),
(313, 18, 'comment_shortcuts', 'false'),
(314, 18, 'admin_color', 'fresh'),
(315, 18, 'use_ssl', '0'),
(316, 18, 'show_admin_bar_front', 'true'),
(317, 18, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(318, 18, 'da_hmc_user_level', '7'),
(319, 18, 'pie_dropdown_3', 'B'),
(320, 18, 'pie_text_5', '113'),
(321, 18, 'active', '1'),
(322, 18, 'session_tokens', 'a:3:{s:64:"2097b8646836acf9477ae165a1ec2750366d25ef040e17bf16e1b786cdd72746";a:4:{s:10:"expiration";i:1444735861;s:2:"ip";s:12:"10.100.91.39";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443526261;}s:64:"9ef696fc3c05bf573bd639b988d1a864540ac925654a12e38a87f50974c23336";a:4:{s:10:"expiration";i:1444543143;s:2:"ip";s:12:"10.100.91.55";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444370343;}s:64:"04e77dd105770702776e0e5de01bfb57ea6f9206905a80436bd5fb49b758783c";a:4:{s:10:"expiration";i:1444543143;s:2:"ip";s:12:"10.100.91.55";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444370343;}}'),
(323, 19, 'nickname', 'yashatulkumarpatel'),
(324, 19, 'first_name', ''),
(325, 19, 'last_name', ''),
(326, 19, 'description', ''),
(327, 19, 'rich_editing', 'true'),
(328, 19, 'comment_shortcuts', 'false'),
(329, 19, 'admin_color', 'fresh'),
(330, 19, 'use_ssl', '0'),
(331, 19, 'show_admin_bar_front', 'true'),
(332, 19, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(333, 19, 'da_hmc_user_level', '7'),
(334, 19, 'pie_dropdown_3', 'F'),
(335, 19, 'pie_text_5', '213'),
(336, 19, 'active', '1'),
(337, 19, 'session_tokens', 'a:2:{s:64:"de761bdc45230d595ea7b08d3180b9a15e3ad7091767b4f488921beac1a28126";a:4:{s:10:"expiration";i:1444736427;s:2:"ip";s:12:"10.100.95.81";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443526827;}s:64:"8261ac29b967d476ecda1cf265117cb94596ef02c7fe59b5615322bcf3531b16";a:4:{s:10:"expiration";i:1443699627;s:2:"ip";s:12:"10.100.95.81";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443526827;}}'),
(338, 20, 'nickname', '201401178'),
(339, 20, 'first_name', ''),
(340, 20, 'last_name', ''),
(341, 20, 'description', ''),
(342, 20, 'rich_editing', 'true'),
(343, 20, 'comment_shortcuts', 'false'),
(344, 20, 'admin_color', 'fresh'),
(345, 20, 'use_ssl', '0'),
(346, 20, 'show_admin_bar_front', 'true'),
(347, 20, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(348, 20, 'da_hmc_user_level', '7'),
(349, 20, 'pie_dropdown_3', 'D'),
(350, 20, 'pie_text_5', '306'),
(351, 20, 'active', '1'),
(352, 20, 'session_tokens', 'a:2:{s:64:"2b4dc0faab3354cf5115cdc6daa1eaff123ec8aa906b353d7985462863c652fd";a:4:{s:10:"expiration";i:1444737550;s:2:"ip";s:12:"10.100.90.46";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1443527950;}s:64:"33ca91460dd17ca3a524ebb6f6b878aec9c380419439d7f6c21ea95cc4cfcf07";a:4:{s:10:"expiration";i:1443700860;s:2:"ip";s:12:"10.100.90.46";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1443528060;}}'),
(353, 21, 'nickname', '201401217'),
(354, 21, 'first_name', ''),
(355, 21, 'last_name', ''),
(356, 21, 'description', ''),
(357, 21, 'rich_editing', 'true'),
(358, 21, 'comment_shortcuts', 'false'),
(359, 21, 'admin_color', 'fresh'),
(360, 21, 'use_ssl', '0'),
(361, 21, 'show_admin_bar_front', 'true'),
(362, 21, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(363, 21, 'da_hmc_user_level', '7'),
(364, 21, 'pie_dropdown_3', 'F'),
(365, 21, 'pie_text_5', '117'),
(366, 21, 'active', '1'),
(367, 21, 'session_tokens', 'a:1:{s:64:"d5a47327ca84042e84d417998929a3bb484973497b80d0aa2ed5caf2e484f9ec";a:4:{s:10:"expiration";i:1443702275;s:2:"ip";s:12:"10.100.94.36";s:2:"ua";s:129:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240";s:5:"login";i:1443529475;}}'),
(368, 22, 'nickname', 'sachin_gohel'),
(369, 22, 'first_name', ''),
(370, 22, 'last_name', ''),
(371, 22, 'description', ''),
(372, 22, 'rich_editing', 'true'),
(373, 22, 'comment_shortcuts', 'false'),
(374, 22, 'admin_color', 'fresh'),
(375, 22, 'use_ssl', '0'),
(376, 22, 'show_admin_bar_front', 'true'),
(377, 22, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(378, 22, 'da_hmc_user_level', '7'),
(379, 22, 'pie_dropdown_3', 'G'),
(380, 22, 'pie_text_5', '203'),
(381, 22, 'active', '1'),
(382, 22, 'session_tokens', 'a:2:{s:64:"a6f5cf703a4a386f6f1a25b136723ba6d98f2c2e5a1f227781e3bc09a7248e6f";a:4:{s:10:"expiration";i:1443703101;s:2:"ip";s:11:"10.100.98.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0";s:5:"login";i:1443530301;}s:64:"a237082b7d46505305c21167ccccabab23fc8c2593f67fa2077fa4fab4654a1b";a:4:{s:10:"expiration";i:1443703101;s:2:"ip";s:11:"10.100.98.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0";s:5:"login";i:1443530301;}}'),
(383, 23, 'nickname', 'mohib'),
(384, 23, 'first_name', ''),
(385, 23, 'last_name', ''),
(386, 23, 'description', ''),
(387, 23, 'rich_editing', 'true'),
(388, 23, 'comment_shortcuts', 'false'),
(389, 23, 'admin_color', 'fresh'),
(390, 23, 'use_ssl', '0'),
(391, 23, 'show_admin_bar_front', 'true'),
(392, 23, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(393, 23, 'da_hmc_user_level', '7'),
(394, 23, 'pie_dropdown_3', 'H'),
(395, 23, 'pie_text_5', '307'),
(396, 23, 'active', '1'),
(397, 23, 'session_tokens', 'a:2:{s:64:"79bfbb57b28fb8f33a57c2daba2520b4052fd2e7067544dca38a325e816e44d0";a:4:{s:10:"expiration";i:1444741678;s:2:"ip";s:12:"10.100.99.24";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443532078;}s:64:"9fbff2b699e7a8bff2a91e3777e3a75c287c9a7c18ef009d4157a756522f5537";a:4:{s:10:"expiration";i:1443704878;s:2:"ip";s:12:"10.100.99.24";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443532078;}}'),
(398, 24, 'nickname', 'hnb'),
(399, 24, 'first_name', ''),
(400, 24, 'last_name', ''),
(401, 24, 'description', ''),
(402, 24, 'rich_editing', 'true'),
(403, 24, 'comment_shortcuts', 'false'),
(404, 24, 'admin_color', 'fresh'),
(405, 24, 'use_ssl', '0'),
(406, 24, 'show_admin_bar_front', 'true'),
(407, 24, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(408, 24, 'da_hmc_user_level', '7'),
(409, 24, 'pie_dropdown_3', 'A'),
(410, 24, 'pie_text_5', '208'),
(411, 24, 'active', '1'),
(412, 24, 'session_tokens', 'a:1:{s:64:"f820eb996174c53daa888af7c095c22c7914d87e50cfdfcddb8fd834baf10978";a:4:{s:10:"expiration";i:1443706037;s:2:"ip";s:13:"10.100.59.106";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443533237;}}'),
(413, 25, 'nickname', 'amayagrawal'),
(414, 25, 'first_name', ''),
(415, 25, 'last_name', ''),
(416, 25, 'description', ''),
(417, 25, 'rich_editing', 'true'),
(418, 25, 'comment_shortcuts', 'false'),
(419, 25, 'admin_color', 'fresh'),
(420, 25, 'use_ssl', '0'),
(421, 25, 'show_admin_bar_front', 'true'),
(422, 25, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(423, 25, 'da_hmc_user_level', '7'),
(424, 25, 'pie_dropdown_3', 'B'),
(425, 25, 'pie_text_5', '306'),
(426, 25, 'active', '1'),
(427, 17, 'da_hmc_dashboard_quick_press_last_post_id', '154'),
(443, 27, 'nickname', 'jay_mehta_201201034'),
(444, 27, 'first_name', ''),
(445, 27, 'last_name', ''),
(446, 27, 'description', ''),
(447, 27, 'rich_editing', 'true'),
(448, 27, 'comment_shortcuts', 'false'),
(449, 27, 'admin_color', 'fresh'),
(450, 27, 'use_ssl', '0'),
(451, 27, 'show_admin_bar_front', 'true'),
(452, 27, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(453, 27, 'da_hmc_user_level', '7'),
(454, 27, 'pie_dropdown_3', 'E'),
(455, 27, 'pie_text_5', '217'),
(456, 27, 'active', '1'),
(457, 27, 'session_tokens', 'a:2:{s:64:"f79d01468c56e69ef1765bce2d6f4ccd043320b7534172c91dfaa48226f5a360";a:4:{s:10:"expiration";i:1444744293;s:2:"ip";s:13:"10.100.69.184";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443534693;}s:64:"45f3b33862fdbd5401e9b68f3af41ded7e6931b97a437060291787f7d951cd5c";a:4:{s:10:"expiration";i:1444293719;s:2:"ip";s:12:"10.100.95.23";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444120919;}}'),
(460, 28, 'nickname', 'devarshikacha'),
(461, 28, 'first_name', ''),
(462, 28, 'last_name', ''),
(463, 28, 'description', ''),
(464, 28, 'rich_editing', 'true'),
(465, 28, 'comment_shortcuts', 'false'),
(466, 28, 'admin_color', 'fresh'),
(467, 28, 'use_ssl', '0'),
(468, 28, 'show_admin_bar_front', 'true'),
(469, 28, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(470, 28, 'da_hmc_user_level', '7'),
(471, 28, 'pie_dropdown_3', 'D'),
(472, 28, 'pie_text_5', '219'),
(473, 28, 'active', '1'),
(474, 28, 'session_tokens', 'a:1:{s:64:"d7a263a7e1de8521dd116e44250d1ad46a65831b5cb66102142ef0ee9af5aa7b";a:4:{s:10:"expiration";i:1444052355;s:2:"ip";s:12:"10.100.89.54";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443879555;}}'),
(477, 18, 'wpas_can_be_assigned', ''),
(478, 20, 'wpas_can_be_assigned', ''),
(479, 21, 'wpas_can_be_assigned', ''),
(480, 25, 'wpas_can_be_assigned', ''),
(481, 28, 'wpas_can_be_assigned', ''),
(482, 24, 'wpas_can_be_assigned', ''),
(483, 27, 'wpas_can_be_assigned', ''),
(484, 22, 'wpas_can_be_assigned', ''),
(485, 19, 'wpas_can_be_assigned', ''),
(486, 23, 'wpas_can_be_assigned', ''),
(487, 1, 'manageuserscolumnshidden', 'a:3:{i:0;s:5:"posts";i:1;s:9:"ure_roles";i:2;s:20:"wpas_auto_assignment";}'),
(488, 29, 'nickname', 'ajpm05'),
(489, 29, 'first_name', ''),
(490, 29, 'last_name', ''),
(491, 29, 'description', ''),
(492, 29, 'rich_editing', 'true'),
(493, 29, 'comment_shortcuts', 'false'),
(494, 29, 'admin_color', 'fresh'),
(495, 29, 'use_ssl', '0'),
(496, 29, 'show_admin_bar_front', 'true'),
(497, 29, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(498, 29, 'da_hmc_user_level', '7'),
(499, 29, 'pie_dropdown_3', 'C'),
(500, 29, 'pie_text_5', '211'),
(501, 29, 'active', '1'),
(502, 30, 'nickname', '19shubham11'),
(503, 30, 'first_name', ''),
(504, 30, 'last_name', ''),
(505, 30, 'description', ''),
(506, 30, 'rich_editing', 'true'),
(507, 30, 'comment_shortcuts', 'false'),
(508, 30, 'admin_color', 'fresh'),
(509, 30, 'use_ssl', '0'),
(510, 30, 'show_admin_bar_front', 'true'),
(511, 30, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(512, 30, 'da_hmc_user_level', '7'),
(513, 30, 'pie_dropdown_3', 'E'),
(514, 30, 'pie_text_5', '112'),
(515, 30, 'active', '1'),
(516, 30, 'session_tokens', 'a:2:{s:64:"85e92e3b2d1f49bc36288a90697dcd8f30ad280c4e029a0812359a97091ac4d9";a:4:{s:10:"expiration";i:1445093992;s:2:"ip";s:12:"10.100.94.35";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444921192;}s:64:"709ba50a45a9b69b57269c406d4592e111d52c69e37cecc3b7a96aee46d7f7ad";a:4:{s:10:"expiration";i:1445093992;s:2:"ip";s:12:"10.100.94.35";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444921192;}}'),
(517, 31, 'nickname', 'sonia'),
(518, 31, 'first_name', ''),
(519, 31, 'last_name', ''),
(520, 31, 'description', ''),
(521, 31, 'rich_editing', 'true'),
(522, 31, 'comment_shortcuts', 'false'),
(523, 31, 'admin_color', 'fresh'),
(524, 31, 'use_ssl', '0'),
(525, 31, 'show_admin_bar_front', 'true'),
(526, 31, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(527, 31, 'da_hmc_user_level', '7'),
(528, 31, 'pie_dropdown_3', 'J'),
(529, 31, 'pie_text_5', '328'),
(530, 31, 'active', '1'),
(531, 31, 'session_tokens', 'a:1:{s:64:"b69106e1c633bc5bc65afac11ef7a5fd2b94b037de691f42bc05888a283a957c";a:4:{s:10:"expiration";i:1443724905;s:2:"ip";s:12:"10.100.61.39";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36";s:5:"login";i:1443552105;}}'),
(532, 32, 'nickname', 'mayanklalaiya'),
(533, 32, 'first_name', ''),
(534, 32, 'last_name', ''),
(535, 32, 'description', ''),
(536, 32, 'rich_editing', 'true'),
(537, 32, 'comment_shortcuts', 'false'),
(538, 32, 'admin_color', 'fresh'),
(539, 32, 'use_ssl', '0'),
(540, 32, 'show_admin_bar_front', 'true'),
(541, 32, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(542, 32, 'da_hmc_user_level', '7'),
(543, 32, 'pie_dropdown_3', 'D'),
(544, 32, 'pie_text_5', '107'),
(545, 32, 'active', '1'),
(546, 32, 'session_tokens', 'a:1:{s:64:"530be783c2fc5881c52def22bb8dd29030f3d3170771c530220468080bd448da";a:4:{s:10:"expiration";i:1443727517;s:2:"ip";s:12:"10.100.88.51";s:2:"ua";s:73:"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0";s:5:"login";i:1443554717;}}'),
(547, 33, 'nickname', '201201116'),
(548, 33, 'first_name', ''),
(549, 33, 'last_name', ''),
(550, 33, 'description', ''),
(551, 33, 'rich_editing', 'true'),
(552, 33, 'comment_shortcuts', 'false'),
(553, 33, 'admin_color', 'fresh'),
(554, 33, 'use_ssl', '0'),
(555, 33, 'show_admin_bar_front', 'true'),
(556, 33, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(557, 33, 'da_hmc_user_level', '7'),
(558, 33, 'pie_dropdown_3', 'F'),
(559, 33, 'pie_text_5', '316'),
(560, 33, 'active', '1'),
(561, 33, 'session_tokens', 'a:2:{s:64:"2a314b96d2ba1917a16459d91a9098c6b0557d1aa116ddf60ee6e3f47eec657c";a:4:{s:10:"expiration";i:1444980700;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444807900;}s:64:"bda7e0b95ada4f25d777a94730b39fd6808971196cd8041c45cc396d1cf6f72f";a:4:{s:10:"expiration";i:1444992040;s:2:"ip";s:12:"10.100.69.97";s:2:"ua";s:133:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/45.0.2454.85 Chrome/45.0.2454.85 Safari/537.36";s:5:"login";i:1444819240;}}'),
(562, 34, 'nickname', '201301455'),
(563, 34, 'first_name', ''),
(564, 34, 'last_name', ''),
(565, 34, 'description', ''),
(566, 34, 'rich_editing', 'true'),
(567, 34, 'comment_shortcuts', 'false'),
(568, 34, 'admin_color', 'fresh'),
(569, 34, 'use_ssl', '0'),
(570, 34, 'show_admin_bar_front', 'true'),
(571, 34, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(572, 34, 'da_hmc_user_level', '0'),
(573, 34, 'pie_dropdown_3', 'A'),
(574, 34, 'pie_text_5', '107'),
(575, 34, 'active', '1'),
(576, 34, 'session_tokens', 'a:2:{s:64:"3ed7016eb5b82c699203d67fa0cab5f7a0f99b18cb3a650e21da0c8128fcedd9";a:4:{s:10:"expiration";i:1443740922;s:2:"ip";s:12:"10.100.88.46";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0";s:5:"login";i:1443568122;}s:64:"00bedc456636154ac9a1a4b6573aa67f2badf2228c26deb120a2527be2c85f12";a:4:{s:10:"expiration";i:1443740922;s:2:"ip";s:12:"10.100.88.46";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0";s:5:"login";i:1443568122;}}'),
(577, 35, 'nickname', 'vinaykumarpatel'),
(578, 35, 'first_name', ''),
(579, 35, 'last_name', ''),
(580, 35, 'description', ''),
(581, 35, 'rich_editing', 'true'),
(582, 35, 'comment_shortcuts', 'false'),
(583, 35, 'admin_color', 'fresh'),
(584, 35, 'use_ssl', '0'),
(585, 35, 'show_admin_bar_front', 'true'),
(586, 35, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(587, 35, 'da_hmc_user_level', '0'),
(588, 35, 'pie_dropdown_3', 'C'),
(589, 35, 'pie_text_5', '103'),
(590, 35, 'active', '1'),
(591, 35, 'session_tokens', 'a:4:{s:64:"fb008df6581f13d333e55ef81fb1f5b4bf32870cc3e02f2a6c98d6ce8e736138";a:4:{s:10:"expiration";i:1443757154;s:2:"ip";s:12:"10.100.91.60";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443584354;}s:64:"c01851539deb9f587873d1a587306986e6345723a82b40b087de5640f586ad0e";a:4:{s:10:"expiration";i:1443757154;s:2:"ip";s:12:"10.100.91.60";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443584354;}s:64:"0591e88cc91ae6d9532bd51a29006e71068face267e296c1b57f02edbcadc5fb";a:4:{s:10:"expiration";i:1443900010;s:2:"ip";s:12:"10.100.91.60";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443727210;}s:64:"be345a4ce78e8fd5a3c31472214211bfff90eef5b140930702358982433b50e2";a:4:{s:10:"expiration";i:1443900010;s:2:"ip";s:12:"10.100.91.60";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1443727210;}}'),
(592, 36, 'nickname', 'sukritijhingta'),
(593, 36, 'first_name', ''),
(594, 36, 'last_name', ''),
(595, 36, 'description', ''),
(596, 36, 'rich_editing', 'true'),
(597, 36, 'comment_shortcuts', 'false'),
(598, 36, 'admin_color', 'fresh'),
(599, 36, 'use_ssl', '0'),
(600, 36, 'show_admin_bar_front', 'true'),
(601, 36, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(602, 36, 'da_hmc_user_level', '7'),
(603, 36, 'pie_dropdown_3', 'K'),
(604, 36, 'pie_text_5', '211'),
(605, 36, 'active', '1'),
(606, 37, 'nickname', '201201154'),
(607, 37, 'first_name', ''),
(608, 37, 'last_name', ''),
(609, 37, 'description', ''),
(610, 37, 'rich_editing', 'true'),
(611, 37, 'comment_shortcuts', 'false'),
(612, 37, 'admin_color', 'fresh'),
(613, 37, 'use_ssl', '0'),
(614, 37, 'show_admin_bar_front', 'true'),
(615, 37, 'da_hmc_capabilities', 'a:1:{s:3:"hmc";b:1;}'),
(616, 37, 'da_hmc_user_level', '7'),
(617, 37, 'pie_dropdown_3', 'G'),
(618, 37, 'pie_text_5', '118'),
(619, 37, 'active', '1'),
(620, 9, 'da_hmc_dashboard_quick_press_last_post_id', '157'),
(621, 33, 'wpas_can_be_assigned', ''),
(622, 37, 'wpas_can_be_assigned', ''),
(623, 30, 'wpas_can_be_assigned', ''),
(624, 36, 'wpas_can_be_assigned', ''),
(625, 31, 'wpas_can_be_assigned', ''),
(626, 32, 'wpas_can_be_assigned', ''),
(627, 29, 'wpas_can_be_assigned', ''),
(645, 30, 'da_hmc_dashboard_quick_press_last_post_id', '182'),
(646, 37, 'session_tokens', 'a:1:{s:64:"742d610219d28920c9848f5ea340dfc6202adc623b2bd809882bafba53142911";a:4:{s:10:"expiration";i:1444979890;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444807090;}}'),
(647, 37, 'da_hmc_dashboard_quick_press_last_post_id', '163'),
(648, 25, 'session_tokens', 'a:3:{s:64:"6bc3b58a2d093e05597fee5e95d9646aa8ee1c8a18e5e05625997fc8c18d363a";a:4:{s:10:"expiration";i:1444554097;s:2:"ip";s:12:"10.100.93.25";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444381297;}s:64:"9494a090ec1d93258acc188cab71ac0cc6a7e4fa22cbd422418d2cb3f46efdcf";a:4:{s:10:"expiration";i:1444554134;s:2:"ip";s:12:"10.100.93.25";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444381334;}s:64:"971f7d9008b890f9bfb9615f6dfce20ba4e4785f45f75c07c58f6f35f8830d21";a:4:{s:10:"expiration";i:1444554134;s:2:"ip";s:12:"10.100.93.25";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444381334;}}'),
(649, 25, 'da_hmc_dashboard_quick_press_last_post_id', '141'),
(650, 28, 'default_password_nag', ''),
(686, 27, 'da_hmc_dashboard_quick_press_last_post_id', '148'),
(687, 18, 'da_hmc_dashboard_quick_press_last_post_id', '151'),
(688, 9, 'closedpostboxes_ticket', 'a:0:{}'),
(689, 9, 'metaboxhidden_ticket', 'a:1:{i:0;s:7:"slugdiv";}'),
(690, 29, 'default_password_nag', ''),
(691, 29, 'session_tokens', 'a:2:{s:64:"04faeeaed4820e63f80fd6227cd1c31e790ac6b5d869b96484f1c9054413e54f";a:4:{s:10:"expiration";i:1444930428;s:2:"ip";s:12:"10.100.92.29";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444757628;}s:64:"8976373738a528b9ddffffd3158c41fbd69e2f06fb277582694e3aa05ef5ba00";a:4:{s:10:"expiration";i:1444930429;s:2:"ip";s:12:"10.100.92.29";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444757629;}}'),
(693, 41, 'nickname', 'hmc_conv'),
(694, 41, 'first_name', ''),
(695, 41, 'last_name', ''),
(696, 41, 'description', ''),
(697, 41, 'rich_editing', 'true'),
(698, 41, 'comment_shortcuts', 'false'),
(699, 41, 'admin_color', 'fresh'),
(700, 41, 'use_ssl', '0'),
(701, 41, 'show_admin_bar_front', 'true'),
(702, 41, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(703, 41, 'da_hmc_user_level', '0'),
(704, 41, 'pie_dropdown_3', 'G'),
(705, 41, 'pie_text_5', '307'),
(706, 41, 'active', '0'),
(707, 41, 'hash', 'fb29a91579e613d1bff72557abba5ea2'),
(708, 41, 'register_type', 'email_verify'),
(709, 41, 'session_tokens', 'a:3:{s:64:"f58911a1c8cbf2d978b8b1a70424d04df7e161e15a3f238b2a4e4c1383c57e0c";a:4:{s:10:"expiration";i:1444976483;s:2:"ip";s:12:"10.100.98.28";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444803683;}s:64:"49461e16d661670dafb0d568258ad570c264fd5794e72eaa67d1c76e46536ecb";a:4:{s:10:"expiration";i:1444976501;s:2:"ip";s:12:"10.100.98.28";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444803701;}s:64:"8992d357b4aefb0f414f6f2eec9a221550ac421b69b566076c26dbf41dc96999";a:4:{s:10:"expiration";i:1444976527;s:2:"ip";s:12:"10.100.98.28";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444803727;}}'),
(743, 44, 'nickname', '201301043'),
(744, 44, 'first_name', ''),
(745, 44, 'last_name', ''),
(746, 44, 'description', ''),
(747, 44, 'rich_editing', 'true'),
(748, 44, 'comment_shortcuts', 'false'),
(749, 44, 'admin_color', 'fresh'),
(750, 44, 'use_ssl', '0'),
(751, 44, 'show_admin_bar_front', 'true'),
(752, 44, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(753, 44, 'da_hmc_user_level', '0'),
(754, 44, 'pie_dropdown_3', 'G'),
(755, 44, 'pie_text_5', '212'),
(756, 44, 'active', '1'),
(757, 44, 'hash', ''),
(758, 44, 'register_type', 'email_verify'),
(759, 37, 'wpas_open_tickets', '2'),
(760, 44, 'session_tokens', 'a:2:{s:64:"ca3548d9d7c2b62e0a2c7ada125a0deb9c5fe913f05d468fe6a7ea351b31e2c8";a:4:{s:10:"expiration";i:1444980105;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444807305;}s:64:"f7475324b87f479978994e7d178685b7d9436dec797d46e3a9ec0265e0e9d306";a:4:{s:10:"expiration";i:1444980385;s:2:"ip";s:13:"10.100.59.127";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0";s:5:"login";i:1444807585;}}'),
(761, 33, 'da_hmc_dashboard_quick_press_last_post_id', '176'),
(762, 45, 'nickname', '201501419'),
(763, 45, 'first_name', ''),
(764, 45, 'last_name', ''),
(765, 45, 'description', ''),
(766, 45, 'rich_editing', 'true'),
(767, 45, 'comment_shortcuts', 'false'),
(768, 45, 'admin_color', 'fresh'),
(769, 45, 'use_ssl', '0'),
(770, 45, 'show_admin_bar_front', 'true'),
(771, 45, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(772, 45, 'da_hmc_user_level', '0'),
(773, 45, 'pie_dropdown_3', 'E'),
(774, 45, 'pie_text_5', '311'),
(775, 45, 'active', '1'),
(776, 45, 'hash', ''),
(777, 45, 'register_type', 'email_verify'),
(778, 45, 'session_tokens', 'a:1:{s:64:"db37949149beecaee4711d4303c62e338db05d888008aabf63d869159f13a892";a:4:{s:10:"expiration";i:1444983110;s:2:"ip";s:10:"10.200.1.8";s:2:"ua";s:216:"Mozilla/5.0 (Mobile; Windows Phone 8.1; Android 4.0; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; Microsoft; Lumia 540 Dual SIM) like iPhone OS 7_0_3 Mac OS X AppleWebKit/537 (KHTML, like Gecko) Mobile Safari/537";s:5:"login";i:1444810310;}}'),
(779, 46, 'nickname', 'aditshah'),
(780, 46, 'first_name', ''),
(781, 46, 'last_name', ''),
(782, 46, 'description', ''),
(783, 46, 'rich_editing', 'true'),
(784, 46, 'comment_shortcuts', 'false'),
(785, 46, 'admin_color', 'fresh'),
(786, 46, 'use_ssl', '0'),
(787, 46, 'show_admin_bar_front', 'true'),
(788, 46, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(789, 46, 'da_hmc_user_level', '0'),
(790, 46, 'pie_dropdown_3', 'E'),
(791, 46, 'pie_text_5', '309'),
(792, 46, 'active', '1'),
(793, 46, 'hash', ''),
(794, 46, 'register_type', 'email_verify'),
(795, 47, 'nickname', '201412008'),
(796, 47, 'first_name', ''),
(797, 47, 'last_name', ''),
(798, 47, 'description', ''),
(799, 47, 'rich_editing', 'true'),
(800, 47, 'comment_shortcuts', 'false'),
(801, 47, 'admin_color', 'fresh'),
(802, 47, 'use_ssl', '0'),
(803, 47, 'show_admin_bar_front', 'true'),
(804, 47, 'da_hmc_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(805, 47, 'da_hmc_user_level', '0'),
(806, 47, 'pie_dropdown_3', 'I'),
(807, 47, 'pie_text_5', '102'),
(808, 47, 'active', '1'),
(809, 47, 'hash', ''),
(810, 47, 'register_type', 'email_verify'),
(811, 47, 'session_tokens', 'a:2:{s:64:"670fe63a2f0d48816523ed5f66ca34e613cff62db468c536fe3801ad0d59fc4b";a:4:{s:10:"expiration";i:1445112789;s:2:"ip";s:12:"10.100.61.49";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444939989;}s:64:"95a533f9d958e9697c905d5f0f6b8c367c3352d6c3364b178e0cb8c77b615898";a:4:{s:10:"expiration";i:1445112789;s:2:"ip";s:12:"10.100.61.49";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";s:5:"login";i:1444939989;}}');

-- --------------------------------------------------------

--
-- Table structure for table `da_hmc_users`
--

CREATE TABLE IF NOT EXISTS `da_hmc_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `da_hmc_users`
--

INSERT INTO `da_hmc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'spgandhi', '$P$Bb7Qu3bCBcB2tV.9lBAGi192.wwOAP1', 'spgandhi', 'spgandhi@live.com', '', '2015-09-14 07:21:00', '', 0, 'spgandhi'),
(2, 'test', '$P$BxTwTP7scmd5JhB6WqdQNaIBT8/vMX0', 'test', 'test@test.com', '', '2015-09-14 07:35:11', '1442216111:$P$BJvCU0euE4PdYZyS7i0ex1bllWjrMB1', 0, 'test'),
(5, 'hostel_supervisor', '$P$BIb5Gr6IUlNgPNV6Yy6o2V9/xC09Bh/', 'hostel_supervisor', 'test1@test.co', '', '2015-09-27 10:36:41', '1443350502:$P$BQuEsSC.hEKsh6SJJbknOrmPMgY2sA.', 0, 'Jitendra Parmar'),
(6, '2013010000', '$P$BJpzxa28UZuJiKuCHj4qW3kGZOkwVt0', '2013010000', '201301000@daiict.ac.in', '', '2015-09-27 11:39:14', '1443353954:$P$BhryCclcOcggjJHhJLQ1xvkXfP4hGS.', 0, '2013010000'),
(7, '201301050', '$P$BDudsw380uulwP49.RCZrkspkd8kw41', '201301050', '201301050@daiict.ac.in', '', '2015-09-28 09:27:48', '', 0, '201301050'),
(8, 'jayant_pareek', '$P$BmJw5v7iGmfV9iRvFpVBC7JoqYyGSM.', 'jayant_pareek', '201201192@daiict.ac.in', '', '2015-09-29 09:22:56', '', 0, 'jayant_pareek'),
(9, 'jaydeepsinh', '$P$BfmTbs3sDZ9aRseDzrboJOkOOnCLw20', 'jaydeepsinh', '201412002@daiict.ac.in', '', '2015-09-29 09:32:19', '', 0, 'jaydeepsinh'),
(11, 'komal_', '$P$B2GavdbTWfO0AIP6CKnocxCQWkaVBT/', 'komal_', '201301120@daiict.ac.in', '', '2015-09-29 09:52:20', '', 0, 'komal_'),
(12, 'nisarg_patel', '$P$BlPA1PxI5IZt3EKOAQPBv30kMtgdN5/', 'nisarg_patel', '201301084@daiict.ac.in', '', '2015-09-29 09:52:36', '', 0, 'nisarg_patel'),
(13, '201301205', '$P$BExVSiqjyoS6tcpIBhKlfc35mQskru.', '201301205', '201301205@daiict.ac.in', '', '2015-09-29 10:04:47', '1443521230:$P$BFAxaMSE6nPDyHb76Sc5560agz4ObH/', 0, '201301205'),
(14, 'kishanpatel', '$P$BW/mEpfysvwC4lkFOCvLz2sfteVTVA1', 'kishanpatel', '201401012@daiict.ac.in', '', '2015-09-29 10:39:30', '', 0, 'kishanpatel'),
(15, 'keyamehta', '$P$B7BVJt8RpADBTr4fvTVpYZnamaXfN4/', 'keyamehta', '201301021@daiict.ac.in', '', '2015-09-29 10:56:59', '', 0, 'keyamehta'),
(16, '201301212', '$P$BDBFHbfO.pNnA/fPj/HMM0g66ucu1r1', '201301212', '201301212@daiict.ac.in', '', '2015-09-29 11:03:44', '', 0, '201301212'),
(17, 'ishitach', '$P$BD5MHhilcbHyPAs5.zpOC1DsnCn10I1', 'ishitach', '201301206@daiict.ac.in', '', '2015-09-29 11:06:40', '', 0, 'ishitach'),
(18, '201401140', '$P$BRZQEjKSpCp.E5TI8mpM61.1Fo5Db1.', '201401140', '201401140@daiict.ac.in', '', '2015-09-29 11:30:39', '1444370311:$P$BIySEV2zcp7eA5oxUbluK/kN.tHbgU/', 0, 'Parth Chauhan'),
(19, 'yashatulkumarpatel', '$P$BtVvgADwHvd7bqS1M7ivCF27vWsZmG1', 'yashatulkumarpatel', '201401156@daiict.ac.in', '', '2015-09-29 11:39:30', '', 0, 'yashatulkumarpatel'),
(20, '201401178', '$P$Br4X2spZmVleNySJAh88S6oZ4Qx2qY.', '201401178', '201401178@daiict.ac.in', '', '2015-09-29 11:58:32', '', 0, '201401178'),
(21, '201401217', '$P$BSIRi5sn9g.Aoiqqta95J63yC5otlp1', '201401217', '201401217@daiict.ac.in', '', '2015-09-29 12:21:57', '', 0, '201401217'),
(22, 'sachin_gohel', '$P$BSJUMQlBp5J.26KALe/jZGg/2VDG421', 'sachin_gohel', '201301457@daiict.ac.in', '', '2015-09-29 12:37:55', '', 0, 'sachin_gohel'),
(23, 'mohib', '$P$B3N63TDtzCwcmirNm52HjMj2n4Zyqe/', 'mohib', '201401214@daiict.ac.in', '', '2015-09-29 13:07:34', '', 0, 'mohib'),
(24, 'hnb', '$P$Bxo2i3wHMFyralE5/bQFli7PJmeSvJ1', 'hnb', '201411029@daiict.ac.in', '', '2015-09-29 13:27:01', '', 0, 'hnb'),
(25, 'amayagrawal', '$P$BvWLnZHSctIbnFcwE/C5MonKsBxCBj0', 'amayagrawal', '201401031@daiict.ac.in', '', '2015-09-29 13:35:47', '1443778507:$P$B/q.w28MV3Wu/r/NsuBx9nK3QljS8p1', 0, 'amayagrawal'),
(27, 'jay_mehta_201201034', '$P$BpUJLkoVSEfXCDztYOvWdFRSAFGAXi/', 'jay_mehta_201201034', '201201034@daiict.ac.in', '', '2015-09-29 13:51:12', '', 0, 'jay_mehta_201201034'),
(28, 'devarshikacha', '$P$BCDXs.Tvq2WtmwZyRBv903hDocknZu.', 'devarshikacha', '201401176@daiict.ac.in', '', '2015-09-29 14:03:24', '', 0, 'devarshikacha'),
(29, 'ajpm05', '$P$B9GlYN9MxsYgN3Dtebhyq95m9kLobL/', 'ajpm05', '201301444@daiict.ac.in', '', '2015-09-29 16:38:07', '', 0, 'ajpm05'),
(30, '19shubham11', '$P$B5rQgWWOwXbOSjmqkxQnE2m25wpz8X0', '19shubham11', '201301227@daiict.ac.in', '', '2015-09-29 17:26:32', '', 0, '19shubham11'),
(31, 'sonia', '$P$ByJriTBQVMT8r4nXPhpUCQQs16L3Zx/', 'sonia', '201412055@daiict.ac.in', '', '2015-09-29 18:41:09', '', 0, 'sonia'),
(32, 'mayanklalaiya', '$P$B/EE3UicULrDFSDy.iNf7b78.oQnTq1', 'mayanklalaiya', '201401170@daiict.ac.in', '', '2015-09-29 19:24:32', '', 0, 'mayanklalaiya'),
(33, '201201116', '$P$BO14SI0WjUWHFc9BjvwDNzk1b1/e4e.', '201201116', '201201116@daiict.ac.in', '', '2015-09-29 21:19:45', '', 0, '201201116'),
(34, '201301455', '$P$BS3w2JfHZoulwHH0Bu66qnuZ2NFF///', '201301455', 'dipendadhaniya@gmail.com', '', '2015-09-29 23:08:19', '', 0, '201301455'),
(35, 'vinaykumarpatel', '$P$BMjlbk9M6AHPz/gyYZyCpE92AgJLeF.', 'vinaykumarpatel', 'vinayp15041997@gmail.com', '', '2015-09-30 03:37:59', '', 0, 'vinaykumarpatel'),
(36, 'sukritijhingta', '$P$BUwC7nSl5w6R3iDw/T..owoPKF81h9.', 'sukritijhingta', '201301042@daiict.ac.in', '', '2015-09-30 05:56:21', '', 0, 'sukritijhingta'),
(37, '201201154', '$P$Bgy3AiLl93tLTEVX6w.XBryEsbQapt0', '201201154', '201201154@daiict.ac.in', '', '2015-09-30 06:34:33', '', 0, '201201154'),
(41, 'hmc_conv', '$P$BIuuBOXMzRly4a.UwG9EptJZoWUy8p0', 'hmc_conv', 'hmc@daiict.ac.in', '', '2015-10-14 06:20:49', '', 0, 'hmc_conv'),
(44, '201301043', '$P$B8MWiiR1ACAqbvPmDB3fOK1K/aa7jf0', '201301043', '201301043@daiict.ac.in', '', '2015-10-14 07:15:15', '', 0, '201301043'),
(45, '201501419', '$P$Bq1FqxEddnPkES0lVG2bhlT96aiUFe0', '201501419', '201501419@daiict.ac.in', '', '2015-10-14 08:11:31', '', 0, '201501419'),
(46, 'aditshah', '$P$B8R1xKRTR4BSBn9jAOe7VoH8oQmqnL0', 'aditshah', '201501179@daiict.ac.in', '', '2015-10-14 08:16:00', '1444811099:$P$BU9Iz8MvIRr9bt3Ykw4DlgdP1cQmiX.', 0, 'aditshah'),
(47, '201412008', '$P$BwxV.AYUSleSr47avxRhP4zWNyf/Wa/', '201412008', '201412008@daiict.ac.in', '', '2015-10-15 20:12:47', '', 0, '201412008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `da_hmc_cjsupport_canned_responses`
--
ALTER TABLE `da_hmc_cjsupport_canned_responses`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `response_name` (`response_name`);

--
-- Indexes for table `da_hmc_cjsupport_form_fields`
--
ALTER TABLE `da_hmc_cjsupport_form_fields`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indexes for table `da_hmc_cjsupport_options`
--
ALTER TABLE `da_hmc_cjsupport_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `da_hmc_cjsupport_ticket_ratings`
--
ALTER TABLE `da_hmc_cjsupport_ticket_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_commentmeta`
--
ALTER TABLE `da_hmc_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `da_hmc_comments`
--
ALTER TABLE `da_hmc_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `da_hmc_cpk_wpcsv_export_queue`
--
ALTER TABLE `da_hmc_cpk_wpcsv_export_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_cpk_wpcsv_log`
--
ALTER TABLE `da_hmc_cpk_wpcsv_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_exportsreports_groups`
--
ALTER TABLE `da_hmc_exportsreports_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_exportsreports_log`
--
ALTER TABLE `da_hmc_exportsreports_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_exportsreports_reports`
--
ALTER TABLE `da_hmc_exportsreports_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_links`
--
ALTER TABLE `da_hmc_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `da_hmc_options`
--
ALTER TABLE `da_hmc_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `da_hmc_p2p`
--
ALTER TABLE `da_hmc_p2p`
  ADD PRIMARY KEY (`p2p_id`), ADD KEY `p2p_from` (`p2p_from`), ADD KEY `p2p_to` (`p2p_to`), ADD KEY `p2p_type` (`p2p_type`);

--
-- Indexes for table `da_hmc_p2pmeta`
--
ALTER TABLE `da_hmc_p2pmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `p2p_id` (`p2p_id`), ADD KEY `meta_key` (`meta_key`(250));

--
-- Indexes for table `da_hmc_pieregister_code`
--
ALTER TABLE `da_hmc_pieregister_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_pmxe_exports`
--
ALTER TABLE `da_hmc_pmxe_exports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_postmeta`
--
ALTER TABLE `da_hmc_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `da_hmc_posts`
--
ALTER TABLE `da_hmc_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `da_hmc_rt_wp_attributes`
--
ALTER TABLE `da_hmc_rt_wp_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_attributes_relationship`
--
ALTER TABLE `da_hmc_rt_wp_attributes_relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_hd_gravity_fields_mapping`
--
ALTER TABLE `da_hmc_rt_wp_hd_gravity_fields_mapping`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mapping_index` (`form_id`,`module_id`);

--
-- Indexes for table `da_hmc_rt_wp_hd_mail_acl`
--
ALTER TABLE `da_hmc_rt_wp_hd_mail_acl`
  ADD PRIMARY KEY (`email`,`allow_user`);

--
-- Indexes for table `da_hmc_rt_wp_hd_ticket_history`
--
ALTER TABLE `da_hmc_rt_wp_hd_ticket_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_hd_ticket_index`
--
ALTER TABLE `da_hmc_rt_wp_hd_ticket_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_imap_server`
--
ALTER TABLE `da_hmc_rt_wp_imap_server`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_mail_accounts`
--
ALTER TABLE `da_hmc_rt_wp_mail_accounts`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`,`module`);

--
-- Indexes for table `da_hmc_rt_wp_mail_messageids`
--
ALTER TABLE `da_hmc_rt_wp_mail_messageids`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `messege_id_index` (`messageid`);

--
-- Indexes for table `da_hmc_rt_wp_mail_outbound`
--
ALTER TABLE `da_hmc_rt_wp_mail_outbound`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `da_hmc_rt_wp_rtbiz_acl`
--
ALTER TABLE `da_hmc_rt_wp_rtbiz_acl`
  ADD PRIMARY KEY (`userid`,`module`,`groupid`);

--
-- Indexes for table `da_hmc_rt_wp_rtlib_gravity_fields_mapping`
--
ALTER TABLE `da_hmc_rt_wp_rtlib_gravity_fields_mapping`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `mapping_index` (`form_id`,`post_type`);

--
-- Indexes for table `da_hmc_taxonomymeta`
--
ALTER TABLE `da_hmc_taxonomymeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `taxonomy_id` (`taxonomy_id`), ADD KEY `meta_key` (`meta_key`(250));

--
-- Indexes for table `da_hmc_terms`
--
ALTER TABLE `da_hmc_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `da_hmc_term_relationships`
--
ALTER TABLE `da_hmc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `da_hmc_term_taxonomy`
--
ALTER TABLE `da_hmc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `da_hmc_usermeta`
--
ALTER TABLE `da_hmc_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `da_hmc_users`
--
ALTER TABLE `da_hmc_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `da_hmc_cjsupport_canned_responses`
--
ALTER TABLE `da_hmc_cjsupport_canned_responses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_cjsupport_form_fields`
--
ALTER TABLE `da_hmc_cjsupport_form_fields`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_cjsupport_options`
--
ALTER TABLE `da_hmc_cjsupport_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `da_hmc_cjsupport_ticket_ratings`
--
ALTER TABLE `da_hmc_cjsupport_ticket_ratings`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_commentmeta`
--
ALTER TABLE `da_hmc_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `da_hmc_comments`
--
ALTER TABLE `da_hmc_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `da_hmc_cpk_wpcsv_export_queue`
--
ALTER TABLE `da_hmc_cpk_wpcsv_export_queue`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `da_hmc_cpk_wpcsv_log`
--
ALTER TABLE `da_hmc_cpk_wpcsv_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_exportsreports_groups`
--
ALTER TABLE `da_hmc_exportsreports_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `da_hmc_exportsreports_log`
--
ALTER TABLE `da_hmc_exportsreports_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_exportsreports_reports`
--
ALTER TABLE `da_hmc_exportsreports_reports`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `da_hmc_links`
--
ALTER TABLE `da_hmc_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_options`
--
ALTER TABLE `da_hmc_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1412;
--
-- AUTO_INCREMENT for table `da_hmc_p2p`
--
ALTER TABLE `da_hmc_p2p`
  MODIFY `p2p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `da_hmc_p2pmeta`
--
ALTER TABLE `da_hmc_p2pmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `da_hmc_pieregister_code`
--
ALTER TABLE `da_hmc_pieregister_code`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_pmxe_exports`
--
ALTER TABLE `da_hmc_pmxe_exports`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `da_hmc_postmeta`
--
ALTER TABLE `da_hmc_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=309;
--
-- AUTO_INCREMENT for table `da_hmc_posts`
--
ALTER TABLE `da_hmc_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_attributes`
--
ALTER TABLE `da_hmc_rt_wp_attributes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_attributes_relationship`
--
ALTER TABLE `da_hmc_rt_wp_attributes_relationship`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_hd_gravity_fields_mapping`
--
ALTER TABLE `da_hmc_rt_wp_hd_gravity_fields_mapping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_hd_ticket_history`
--
ALTER TABLE `da_hmc_rt_wp_hd_ticket_history`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_hd_ticket_index`
--
ALTER TABLE `da_hmc_rt_wp_hd_ticket_index`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_imap_server`
--
ALTER TABLE `da_hmc_rt_wp_imap_server`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_mail_accounts`
--
ALTER TABLE `da_hmc_rt_wp_mail_accounts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_mail_messageids`
--
ALTER TABLE `da_hmc_rt_wp_mail_messageids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_mail_outbound`
--
ALTER TABLE `da_hmc_rt_wp_mail_outbound`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_rt_wp_rtlib_gravity_fields_mapping`
--
ALTER TABLE `da_hmc_rt_wp_rtlib_gravity_fields_mapping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_taxonomymeta`
--
ALTER TABLE `da_hmc_taxonomymeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `da_hmc_terms`
--
ALTER TABLE `da_hmc_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `da_hmc_term_taxonomy`
--
ALTER TABLE `da_hmc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `da_hmc_usermeta`
--
ALTER TABLE `da_hmc_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=812;
--
-- AUTO_INCREMENT for table `da_hmc_users`
--
ALTER TABLE `da_hmc_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
