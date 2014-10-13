-- phpMyAdmin SQL Dump
-- version 2.10.3deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2008 at 11:42 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.3-1ubuntu6.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `stfc`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_observe`
--

CREATE TABLE IF NOT EXISTS `account_observe` (
  `id` int(11) NOT NULL auto_increment,
  `user_1` int(11) NOT NULL default '0',
  `user_2` int(11) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  `last_online_1` int(11) NOT NULL default '0',
  `last_online_2` int(11) NOT NULL default '0',
  `last_ip_1` varchar(16) NOT NULL default '',
  `last_ip_2` varchar(16) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `last_ip_1` (`last_ip_1`),
  KEY `last_ip_2` (`last_ip_2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `account_observe`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance`
--

CREATE TABLE IF NOT EXISTS `alliance` (
  `alliance_id` smallint(5) unsigned NOT NULL auto_increment,
  `alliance_name` varchar(32) NOT NULL default '',
  `alliance_tag` varchar(6) NOT NULL default '',
  `alliance_owner` int(11) NOT NULL default '0',
  `alliance_password` varchar(32) NOT NULL default '',
  `alliance_text` text NOT NULL,
  `alliance_logo` varchar(100) NOT NULL default '',
  `alliance_homepage` varchar(100) NOT NULL default '',
  `alliance_points` mediumint(8) unsigned NOT NULL default '0',
  `alliance_member` int(11) NOT NULL default '0',
  `alliance_planets` smallint(5) unsigned NOT NULL default '0',
  `alliance_honor` smallint(5) unsigned NOT NULL default '0',
  `alliance_rank_points` smallint(5) unsigned NOT NULL default '0',
  `alliance_rank_planets` smallint(5) unsigned NOT NULL default '0',
  `alliance_rank_honor` smallint(5) unsigned NOT NULL default '0',
  `alliance_rank_points_avg` smallint(6) NOT NULL default '0',
  `alliance_application` int(11) NOT NULL default '0',
  `alliance_application_new` int(11) NOT NULL default '0',
  `alliance_application_text` text NOT NULL,
  `alliance_irc` varchar(100) NOT NULL default '',
  `alliance_wing` int(11) NOT NULL default '0',
  `taxes` int(11) NOT NULL default '0',
  `taxes_1` int(11) NOT NULL default '0',
  `taxes_2` int(11) NOT NULL default '0',
  `taxes_3` int(11) NOT NULL default '0',
  `borg_invade` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_application`
--

CREATE TABLE IF NOT EXISTS `alliance_application` (
  `application_id` int(11) NOT NULL auto_increment,
  `application_user` int(11) NOT NULL default '0',
  `application_username` text NOT NULL,
  `application_alliance` int(11) NOT NULL default '0',
  `application_text` text NOT NULL,
  `application_read` int(11) NOT NULL default '0',
  `application_timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`application_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_application`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_bposts`
--

CREATE TABLE IF NOT EXISTS `alliance_bposts` (
  `post_id` int(10) unsigned NOT NULL auto_increment,
  `alliance_id` smallint(5) unsigned NOT NULL default '0',
  `thread_id` mediumint(8) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `post_deleted` tinyint(1) unsigned NOT NULL default '0',
  `post_date` int(10) unsigned NOT NULL default '0',
  `post_title` varchar(30) NOT NULL default '',
  `post_text` text NOT NULL,
  PRIMARY KEY  (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_bposts`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_bthreads`
--

CREATE TABLE IF NOT EXISTS `alliance_bthreads` (
  `thread_id` mediumint(8) unsigned NOT NULL auto_increment,
  `alliance_id` smallint(5) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `thread_replies` smallint(5) unsigned NOT NULL default '0',
  `thread_title` varchar(30) NOT NULL default '',
  `thread_priority` smallint(2) unsigned NOT NULL default '0',
  `thread_tactical` smallint(2) unsigned NOT NULL default '0',
  `thread_diplomacy` smallint(2) unsigned NOT NULL default '0',
  `thread_first_post_id` int(10) unsigned NOT NULL default '0',
  `thread_last_post_id` int(10) unsigned NOT NULL default '0',
  `thread_last_post_date` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_bthreads`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_diplomacy`
--

CREATE TABLE IF NOT EXISTS `alliance_diplomacy` (
  `ad_id` mediumint(8) unsigned NOT NULL auto_increment,
  `alliance1_id` smallint(5) unsigned NOT NULL default '0',
  `alliance2_id` smallint(5) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `date` int(10) unsigned NOT NULL default '0',
  `status` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_diplomacy`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_logs`
--

CREATE TABLE IF NOT EXISTS `alliance_logs` (
  `id` int(11) NOT NULL auto_increment,
  `alliance` int(11) NOT NULL default '0',
  `message` char(255) NOT NULL default '',
  `permission` tinyint(4) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_shoutbox`
--

CREATE TABLE IF NOT EXISTS `alliance_shoutbox` (
  `alliance_id` smallint(5) unsigned NOT NULL default '0',
  `user_id` mediumint(6) unsigned NOT NULL default '0',
  `message` varchar(250) NOT NULL default '',
  `timestamp` int(10) unsigned NOT NULL default '0',
  `irc_print` tinyint(4) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Shoutbox di Alleanza';

--
-- Dumping data for table `alliance_shoutbox`
--


-- --------------------------------------------------------

--
-- Table structure for table `alliance_taxes`
--

CREATE TABLE IF NOT EXISTS `alliance_taxes` (
  `id` int(11) NOT NULL auto_increment,
  `alliance_id` int(11) NOT NULL default '0',
  `resource_1` int(11) NOT NULL default '0',
  `resource_2` int(11) NOT NULL default '0',
  `resource_3` int(11) NOT NULL default '0',
  `receiver` int(11) NOT NULL default '0',
  `sender` int(11) NOT NULL default '0',
  `mode` int(11) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  `reason` char(128) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alliance_taxes`
--


-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE IF NOT EXISTS `bidding` (
  `id` int(11) NOT NULL auto_increment,
  `trade_id` int(11) NOT NULL default '0',
  `user` int(11) NOT NULL default '0',
  `max_bid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `trade_id` (`trade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bidding`
--


-- --------------------------------------------------------

--
-- Table structure for table `bidding_owed`
--

CREATE TABLE IF NOT EXISTS `bidding_owed` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) NOT NULL default '0',
  `receiver` int(11) NOT NULL default '0',
  `resource_1` int(11) NOT NULL default '0',
  `resource_2` int(11) NOT NULL default '0',
  `resource_3` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `ship_id` int(11) NOT NULL default '0',
  `num_complaints` int(11) NOT NULL default '0',
  `last_complaint_timestamp` int(11) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bidding_owed`
--


-- --------------------------------------------------------

--
-- Table structure for table `click_ids`
--

CREATE TABLE IF NOT EXISTS `click_ids` (
  `click_id` char(32) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `class` tinyint(3) unsigned NOT NULL default '0',
  KEY `click_id` (`click_id`),
  KEY `click_exist_check` (`user_id`,`class`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

--
-- Dumping data for table `click_ids`
--


-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `config_set_id` tinyint(3) unsigned NOT NULL default '0',
  `tick_id` int(10) unsigned NOT NULL default '0',
  `tick_time` int(10) unsigned NOT NULL default '0',
  `tick_securehash` char(32) NOT NULL default '',
  `stardate` char(32) NOT NULL default '0',
  `tick_stopped` tinyint(1) unsigned NOT NULL default '0',
  `game_stopped` tinyint(1) NOT NULL default '0',
  `stop_message` char(255) NOT NULL default '',
  `max_player` int(11) NOT NULL default '0',
  `register_blocked` int(11) NOT NULL default '0',
  `fake_delay` int(11) NOT NULL default '0',
  `ferengitax_1` int(11) NOT NULL default '0',
  `ferengitax_2` int(11) NOT NULL default '0',
  `ferengitax_3` int(11) NOT NULL default '0',
  `last_paytime` int(11) NOT NULL default '0',
  `bannerviews` int(11) NOT NULL default '0',
  `bannerviewstotal` int(11) NOT NULL default '0',
  `shipwreck_id` int(11) NOT NULL default '0',
  `new_register` int(11) NOT NULL default '0',
  PRIMARY KEY  (`config_set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_bid_meldung`
--

CREATE TABLE IF NOT EXISTS `FHB_bid_meldung` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `bieter` int(11) NOT NULL default '0',
  `time` varchar(14) NOT NULL default '',
  `tick` int(11) NOT NULL default '0',
  `trade_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_bid_meldung`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_Bot`
--

CREATE TABLE IF NOT EXISTS `FHB_Bot` (
  `id` int(2) NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_name` varchar(32) NOT NULL default '',
  `user_tick` int(10) NOT NULL default '0',
  `user_race` tinyint(3) NOT NULL default '0',
  `user_loginname` varchar(32) NOT NULL default '',
  `planet_id` smallint(5) unsigned NOT NULL default '0',
  `ship_t_1` int(10) NOT NULL default '0',
  `ship_t_2` int(10) NOT NULL default '0',
  `bot_tick` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_Bot`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_cache_trupp_trade`
--

CREATE TABLE IF NOT EXISTS `FHB_cache_trupp_trade` (
  `id` int(10) NOT NULL auto_increment,
  `unit_1` int(10) NOT NULL default '0',
  `unit_2` int(10) NOT NULL default '0',
  `unit_3` int(10) NOT NULL default '0',
  `unit_4` int(10) NOT NULL default '0',
  `unit_5` int(10) NOT NULL default '0',
  `unit_6` int(10) NOT NULL default '0',
  `tick` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_cache_trupp_trade`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_debug`
--

CREATE TABLE IF NOT EXISTS `FHB_debug` (
  `debug` int(1) NOT NULL default '0',
  `sql` int(1) NOT NULL default '0',
  `array` int(1) NOT NULL default '0',
  `style` int(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FHB_debug`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_Handels_Lager`
--

CREATE TABLE IF NOT EXISTS `FHB_Handels_Lager` (
  `id` int(11) NOT NULL auto_increment,
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `ress_1` int(11) NOT NULL default '0',
  `ress_2` int(11) NOT NULL default '0',
  `ress_3` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_Handels_Lager`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_handel_log`
--

CREATE TABLE IF NOT EXISTS `FHB_handel_log` (
  `id` int(10) NOT NULL auto_increment,
  `rasse` int(2) NOT NULL default '0',
  `art` char(1) NOT NULL default '',
  `user_id` int(10) NOT NULL default '0',
  `tick` int(11) NOT NULL default '0',
  `bezahlung` int(2) NOT NULL default '0',
  `steuer` int(2) NOT NULL default '0',
  `ress_1` int(10) NOT NULL default '0',
  `ress_2` int(10) NOT NULL default '0',
  `ress_3` int(10) NOT NULL default '0',
  `unit_1` int(10) NOT NULL default '0',
  `unit_2` int(10) NOT NULL default '0',
  `unit_3` int(10) NOT NULL default '0',
  `unit_4` int(10) NOT NULL default '0',
  `unit_5` int(10) NOT NULL default '0',
  `unit_6` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_handel_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_logging_ship`
--

CREATE TABLE IF NOT EXISTS `FHB_logging_ship` (
  `id` int(11) NOT NULL auto_increment,
  `tick` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `ship_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_logging_ship`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_news`
--

CREATE TABLE IF NOT EXISTS `FHB_news` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `date` varchar(15) NOT NULL default '',
  `text` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_news`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_ship_Lager`
--

CREATE TABLE IF NOT EXISTS `FHB_ship_Lager` (
  `id` int(10) NOT NULL auto_increment,
  `ship_id` int(10) NOT NULL default '0',
  `bot_temp` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_ship_Lager`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_ship_templates`
--

CREATE TABLE IF NOT EXISTS `FHB_ship_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `owner` mediumint(8) unsigned NOT NULL default '0',
  `timestamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(16) NOT NULL default '',
  `description` text NOT NULL,
  `race` tinyint(3) unsigned NOT NULL default '0',
  `ship_torso` tinyint(3) unsigned NOT NULL default '0',
  `ship_class` int(4) NOT NULL default '0',
  `component_1` smallint(5) NOT NULL default '0',
  `component_2` smallint(5) NOT NULL default '0',
  `component_3` smallint(5) NOT NULL default '0',
  `component_4` smallint(5) NOT NULL default '0',
  `component_5` smallint(5) NOT NULL default '0',
  `component_6` smallint(5) NOT NULL default '0',
  `component_7` smallint(5) NOT NULL default '0',
  `component_8` smallint(5) NOT NULL default '0',
  `component_9` smallint(5) NOT NULL default '0',
  `component_10` smallint(5) NOT NULL default '0',
  `value_1` mediumint(8) unsigned NOT NULL default '0',
  `value_2` mediumint(8) unsigned NOT NULL default '0',
  `value_3` mediumint(8) unsigned NOT NULL default '0',
  `value_4` mediumint(8) unsigned NOT NULL default '0',
  `value_5` mediumint(8) unsigned NOT NULL default '0',
  `value_6` mediumint(8) unsigned NOT NULL default '0',
  `value_7` mediumint(8) unsigned NOT NULL default '0',
  `value_8` mediumint(8) unsigned NOT NULL default '0',
  `value_9` mediumint(8) unsigned NOT NULL default '0',
  `value_10` float unsigned NOT NULL default '0',
  `value_11` mediumint(8) unsigned NOT NULL default '0',
  `value_12` mediumint(8) unsigned NOT NULL default '0',
  `value_13` mediumint(8) unsigned NOT NULL default '0',
  `value_14` mediumint(8) unsigned NOT NULL default '0',
  `value_15` mediumint(8) unsigned NOT NULL default '0',
  `resource_1` mediumint(8) unsigned NOT NULL default '0',
  `resource_2` mediumint(8) unsigned NOT NULL default '0',
  `resource_3` mediumint(8) unsigned NOT NULL default '0',
  `resource_4` mediumint(8) unsigned NOT NULL default '0',
  `unit_5` smallint(5) unsigned NOT NULL default '0',
  `unit_6` smallint(5) unsigned NOT NULL default '0',
  `min_unit_1` smallint(5) unsigned NOT NULL default '0',
  `min_unit_2` smallint(5) unsigned NOT NULL default '0',
  `min_unit_3` smallint(5) unsigned NOT NULL default '0',
  `min_unit_4` smallint(5) unsigned NOT NULL default '0',
  `max_unit_1` smallint(5) unsigned NOT NULL default '0',
  `max_unit_2` smallint(5) unsigned NOT NULL default '0',
  `max_unit_3` smallint(5) unsigned NOT NULL default '0',
  `max_unit_4` smallint(5) unsigned NOT NULL default '0',
  `buildtime` int(10) unsigned NOT NULL default '0',
  `removed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_ship_templates`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_sperr_list`
--

CREATE TABLE IF NOT EXISTS `FHB_sperr_list` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `tick` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_sperr_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_stats`
--

CREATE TABLE IF NOT EXISTS `FHB_stats` (
  `id` int(11) NOT NULL auto_increment,
  `tick` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `ress_1` int(11) NOT NULL default '0',
  `ress_2` int(11) NOT NULL default '0',
  `ress_3` int(11) NOT NULL default '0',
  `schiffe` int(11) NOT NULL default '0',
  `umode` int(11) NOT NULL default '0',
  `pBND` int(11) NOT NULL default '0',
  `BND` int(11) NOT NULL default '0',
  `Krieg` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_stats`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_temp_Grundpreis`
--

CREATE TABLE IF NOT EXISTS `FHB_temp_Grundpreis` (
  `temp_id` int(10) NOT NULL default '0',
  `unit_1` smallint(6) NOT NULL default '0',
  `unit_2` smallint(6) NOT NULL default '0',
  `unit_3` smallint(6) NOT NULL default '0',
  `unit_4` smallint(6) NOT NULL default '0',
  `unit_5` smallint(6) NOT NULL default '0',
  `unit_6` smallint(6) NOT NULL default '0',
  `ress_1` mediumint(9) NOT NULL default '0',
  `ress_2` mediumint(9) NOT NULL default '0',
  `ress_3` mediumint(9) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FHB_temp_Grundpreis`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_truppen_lib`
--

CREATE TABLE IF NOT EXISTS `FHB_truppen_lib` (
  `id` int(5) NOT NULL auto_increment,
  `rasse` int(2) NOT NULL default '0',
  `Truppennummer` int(2) NOT NULL default '0',
  `ress_1` int(5) NOT NULL default '0',
  `ress_2` int(5) NOT NULL default '0',
  `ress_3` int(5) NOT NULL default '0',
  `ress_4` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_truppen_lib`
--


-- --------------------------------------------------------

--
-- Table structure for table `FHB_warteschlange`
--

CREATE TABLE IF NOT EXISTS `FHB_warteschlange` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `ship_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `FHB_warteschlange`
--


-- --------------------------------------------------------

--
-- Table structure for table `ip_link`
--

CREATE TABLE IF NOT EXISTS `ip_link` (
  `id` int(11) NOT NULL auto_increment,
  `user_1` mediumint(9) NOT NULL default '0',
  `user_2` mediumint(9) NOT NULL default '0',
  `description` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ip_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `logbook`
--

CREATE TABLE IF NOT EXISTS `logbook` (
  `log_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `log_type` tinyint(3) unsigned NOT NULL default '0',
  `log_date` int(10) unsigned NOT NULL default '0',
  `log_read` tinyint(1) unsigned NOT NULL default '0',
  `log_title` varchar(255) NOT NULL default '',
  `log_data` longtext NOT NULL,
  PRIMARY KEY  (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `logbook`
--


-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(10) NOT NULL auto_increment,
  `sender` mediumint(8) unsigned NOT NULL default '0',
  `receiver` mediumint(8) unsigned NOT NULL default '0',
  `subject` varchar(32) NOT NULL default '',
  `text` text NOT NULL,
  `rread` tinyint(1) NOT NULL default '0',
  `time` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `new_messages_check` (`receiver`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message`
--


-- --------------------------------------------------------

--
-- Table structure for table `message_archiv`
--

CREATE TABLE IF NOT EXISTS `message_archiv` (
  `id` int(10) NOT NULL auto_increment,
  `sender` mediumint(8) unsigned NOT NULL default '0',
  `receiver` mediumint(8) unsigned NOT NULL default '0',
  `subject` varchar(32) NOT NULL default '',
  `text` text NOT NULL,
  `time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `new_messages_check` (`receiver`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message_archiv`
--


-- --------------------------------------------------------

--
-- Table structure for table `message_removed`
--

CREATE TABLE IF NOT EXISTS `message_removed` (
  `id` int(10) NOT NULL auto_increment,
  `sender` mediumint(8) unsigned NOT NULL default '0',
  `receiver` mediumint(8) unsigned NOT NULL default '0',
  `subject` varchar(32) NOT NULL default '',
  `text` text NOT NULL,
  `time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `new_messages_check` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `message_removed`
--


-- --------------------------------------------------------

--
-- Table structure for table `planets`
--

CREATE TABLE IF NOT EXISTS `planets` (
  `planet_id` smallint(5) unsigned NOT NULL auto_increment,
  `planet_name` varchar(16) NOT NULL default '',
  `system_id` smallint(5) unsigned NOT NULL default '0',
  `sector_id` smallint(3) unsigned NOT NULL default '0',
  `planet_type` char(1) NOT NULL default 'm',
  `planet_owner` mediumint(8) unsigned NOT NULL default '0',
  `planet_owned_date` int(10) unsigned NOT NULL default '0',
  `planet_owner_enum` smallint(5) unsigned NOT NULL default '0',
  `planet_distance_id` tinyint(1) unsigned NOT NULL default '0',
  `planet_distance_px` smallint(5) unsigned NOT NULL default '0',
  `planet_covered_distance` smallint(5) unsigned NOT NULL default '0',
  `planet_tick_cdistance` tinyint(3) NOT NULL default '0',
  `planet_max_cdistance` smallint(5) NOT NULL default '0',
  `planet_current_x` float unsigned NOT NULL default '0',
  `planet_current_y` float unsigned NOT NULL default '0',
  `planet_points` smallint(3) unsigned NOT NULL default '0',
  `planet_thumb` varchar(32) NOT NULL default '',
  `planet_next_attack` int(10) unsigned NOT NULL default '0',
  `planet_attack_ships` int(11) NOT NULL default '0',
  `planet_attack_type` int(11) NOT NULL default '0',
  `research_1` tinyint(1) NOT NULL default '0',
  `research_2` tinyint(1) NOT NULL default '0',
  `research_3` tinyint(1) NOT NULL default '0',
  `research_4` tinyint(1) NOT NULL default '0',
  `research_5` tinyint(1) NOT NULL default '0',
  `resource_1` float unsigned NOT NULL default '0',
  `resource_2` float unsigned NOT NULL default '0',
  `resource_3` float unsigned NOT NULL default '0',
  `resource_4` float unsigned NOT NULL default '0',
  `add_1` float unsigned NOT NULL default '0',
  `add_2` float unsigned NOT NULL default '0',
  `add_3` float unsigned NOT NULL default '0',
  `add_4` float unsigned NOT NULL default '0',
  `rateo_1` float unsigned NOT NULL default '0',
  `rateo_2` float unsigned NOT NULL default '0',
  `rateo_3` float unsigned NOT NULL default '0',
  `rateo_4` float unsigned NOT NULL default '0',
  `recompute_static` tinyint(1) NOT NULL default '1',
  `max_resources` int(10) unsigned NOT NULL default '0',
  `max_worker` int(10) unsigned NOT NULL default '0',
  `max_units` int(10) unsigned NOT NULL default '0',
  `min_security_troops` int(11) NOT NULL default '0',
  `planet_insurrection_time` int(11) NOT NULL default '0',
  `building_1` tinyint(2) unsigned NOT NULL default '0',
  `building_2` tinyint(2) unsigned NOT NULL default '0',
  `building_3` tinyint(2) unsigned NOT NULL default '0',
  `building_4` tinyint(2) unsigned NOT NULL default '0',
  `building_5` tinyint(2) unsigned NOT NULL default '0',
  `building_6` tinyint(2) unsigned NOT NULL default '0',
  `building_7` tinyint(2) unsigned NOT NULL default '0',
  `building_8` tinyint(2) unsigned NOT NULL default '0',
  `building_9` tinyint(2) unsigned NOT NULL default '0',
  `building_10` tinyint(2) unsigned NOT NULL default '0',
  `building_11` tinyint(2) unsigned NOT NULL default '0',
  `building_12` tinyint(2) unsigned NOT NULL default '0',
  `building_13` tinyint(2) unsigned NOT NULL default '0',
  `unit_1` smallint(5) unsigned NOT NULL default '0',
  `unit_2` smallint(5) unsigned NOT NULL default '0',
  `unit_3` smallint(5) unsigned NOT NULL default '0',
  `unit_4` smallint(5) unsigned NOT NULL default '0',
  `unit_5` smallint(5) unsigned NOT NULL default '0',
  `unit_6` smallint(5) unsigned NOT NULL default '0',
  `workermine_1` smallint(5) unsigned NOT NULL default '0',
  `workermine_2` smallint(5) unsigned NOT NULL default '0',
  `workermine_3` smallint(5) unsigned NOT NULL default '0',
  `catresearch_1` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_2` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_3` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_4` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_5` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_6` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_7` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_8` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_9` tinyint(3) unsigned NOT NULL default '0',
  `catresearch_10` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_1` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_2` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_3` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_4` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_5` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_6` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_7` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_8` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_9` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_10` tinyint(3) unsigned NOT NULL default '0',
  `unittrainnumber_1` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_2` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_3` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_4` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_5` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_6` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_7` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_8` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_9` int(10) unsigned NOT NULL default '0',
  `unittrainnumber_10` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_1` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_2` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_3` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_4` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_5` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_6` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_7` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_8` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_9` int(10) unsigned NOT NULL default '0',
  `unittrainnumberleft_10` int(10) unsigned NOT NULL default '0',
  `unittrainendless_1` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_2` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_3` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_4` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_5` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_6` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_7` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_8` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_9` tinyint(3) unsigned NOT NULL default '0',
  `unittrainendless_10` tinyint(3) unsigned NOT NULL default '0',
  `unittrain_actual` tinyint(3) unsigned NOT NULL default '0',
  `unittrainid_nexttime` int(10) unsigned NOT NULL default '0',
  `unittrain_error` tinyint(1) unsigned NOT NULL default '0',
  `maintenance_fleet` int(10) unsigned NOT NULL default '0',
  `building_queue` tinyint(3) unsigned NOT NULL default '0',
  `planet_altname` varchar(25) NOT NULL default '',
  `planet_surrender` int(10) default '0',
  PRIMARY KEY  (`planet_id`),
  KEY `planet_owner` (`planet_owner`),
  KEY `planet_name` (`planet_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `planets`
--


-- --------------------------------------------------------

--
-- Table structure for table `planet_details`
--

CREATE TABLE IF NOT EXISTS `planet_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `planet_id` smallint(8) unsigned NOT NULL default '0',
  `planet_type` char(1) default NULL,
  `system_id` smallint(5) unsigned NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `alliance_id` smallint(5) unsigned NOT NULL default '0',
  `source_uid` mediumint(8) unsigned NOT NULL default '0',
  `source_aid` smallint(5) unsigned NOT NULL default '0',
  `timestamp` int(10) unsigned NOT NULL default '0',
  `log_code` smallint(5) unsigned NOT NULL default '0',
  `ship_name` varchar(50) NOT NULL default '',
  `survey_1` tinyint(1) unsigned NOT NULL default '0',
  `survey_2` tinyint(1) unsigned NOT NULL default '0',
  `survey_3` tinyint(1) unsigned NOT NULL default '0',
  `defeat_uid` mediumint(8) unsigned NOT NULL default '0',
  `defeat_aid` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY (`id`), 
  KEY `Events` (`planet_id`,`log_code`)
) ENGINE=MyISAM default CHARSET=latin1 AUTO_INCREMENT=1 COMMENT='Historical chronology of the planet';

--
-- Dumping data for table `planets`
--


-- --------------------------------------------------------

--
-- Table structure for table `portal_news`
--

CREATE TABLE IF NOT EXISTS `portal_news` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `type` tinyint(3) unsigned NOT NULL default '0',
  `date` int(10) unsigned NOT NULL default '0',
  `header` varchar(32) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `portal_news`
--


-- --------------------------------------------------------

--
-- Table structure for table `portal_poll`
--

CREATE TABLE IF NOT EXISTS `portal_poll` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `date` int(10) unsigned NOT NULL default '0',
  `question` varchar(100) NOT NULL default '',
  `choice_1` varchar(100) NOT NULL default '',
  `choice_2` varchar(100) NOT NULL default '',
  `choice_3` varchar(100) NOT NULL default '',
  `choice_4` varchar(100) NOT NULL default '',
  `choice_5` varchar(100) NOT NULL default '',
  `choice_6` varchar(100) NOT NULL default '',
  `choice_7` varchar(100) NOT NULL default '',
  `choice_8` varchar(100) NOT NULL default '',
  `choice_9` varchar(100) NOT NULL default '',
  `choice_10` varchar(100) NOT NULL default '',
  `count_1` mediumint(8) unsigned NOT NULL default '0',
  `count_2` mediumint(8) unsigned NOT NULL default '0',
  `count_3` mediumint(8) unsigned NOT NULL default '0',
  `count_4` mediumint(8) unsigned NOT NULL default '0',
  `count_5` mediumint(8) unsigned NOT NULL default '0',
  `count_6` mediumint(8) unsigned NOT NULL default '0',
  `count_7` mediumint(8) unsigned NOT NULL default '0',
  `count_8` mediumint(8) unsigned NOT NULL default '0',
  `count_9` mediumint(8) unsigned NOT NULL default '0',
  `count_10` mediumint(8) unsigned NOT NULL default '0',
  `closed` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `portal_poll`
--


-- --------------------------------------------------------

--
-- Table structure for table `portal_poll_voted`
--

CREATE TABLE IF NOT EXISTS `portal_poll_voted` (
  `player_id` mediumint(8) NOT NULL default '0',
  `poll_id` tinyint(3) unsigned NOT NULL default '0',
  KEY `portal_select` (`player_id`,`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portal_poll_voted`
--


-- --------------------------------------------------------

--
-- Table structure for table `resource_trade`
--

CREATE TABLE IF NOT EXISTS `resource_trade` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `player` mediumint(8) unsigned NOT NULL default '0',
  `planet` smallint(5) unsigned NOT NULL default '0',
  `number` tinyint(2) unsigned NOT NULL default '0',
  `oresource_1` mediumint(8) unsigned NOT NULL default '0',
  `oresource_2` mediumint(8) unsigned NOT NULL default '0',
  `oresource_3` mediumint(8) unsigned NOT NULL default '0',
  `oresource_4` mediumint(8) unsigned NOT NULL default '0',
  `ounit_1` mediumint(8) unsigned NOT NULL default '0',
  `ounit_2` mediumint(8) unsigned NOT NULL default '0',
  `ounit_3` mediumint(8) unsigned NOT NULL default '0',
  `ounit_4` mediumint(8) unsigned NOT NULL default '0',
  `ounit_5` int(8) NOT NULL default '0',
  `ounit_6` int(8) NOT NULL default '0',
  `rresource_1` mediumint(8) unsigned NOT NULL default '0',
  `rresource_2` mediumint(8) unsigned NOT NULL default '0',
  `rresource_3` mediumint(8) unsigned NOT NULL default '0',
  `rresource_4` mediumint(8) unsigned NOT NULL default '0',
  `runit_1` mediumint(8) unsigned NOT NULL default '0',
  `runit_2` mediumint(8) unsigned NOT NULL default '0',
  `runit_3` mediumint(8) unsigned NOT NULL default '0',
  `runit_4` mediumint(8) unsigned NOT NULL default '0',
  `runit_5` mediumint(8) NOT NULL default '0',
  `runit_6` mediumint(8) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `player` (`player`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `resource_trade`
--


-- --------------------------------------------------------

--
-- Table structure for table `scheduler_instbuild`
--

CREATE TABLE IF NOT EXISTS `scheduler_instbuild` (
  `installation_type` tinyint(2) unsigned NOT NULL default '0',
  `planet_id` smallint(5) unsigned NOT NULL default '0',
  `build_finish` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduler_instbuild`
--


-- --------------------------------------------------------

--
-- Table structure for table `scheduler_research`
--

CREATE TABLE IF NOT EXISTS `scheduler_research` (
  `research_start` int(10) unsigned NOT NULL default '0',
  `research_finish` int(10) unsigned NOT NULL default '0',
  `research_id` int(10) unsigned NOT NULL default '0',
  `planet_id` smallint(5) unsigned NOT NULL default '0',
  `player_id` mediumint(8) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduler_research`
--


-- --------------------------------------------------------

--
-- Table structure for table `scheduler_resourcetrade`
--

CREATE TABLE IF NOT EXISTS `scheduler_resourcetrade` (
  `id` int(11) NOT NULL auto_increment,
  `planet` int(11) NOT NULL default '0',
  `resource_1` int(11) NOT NULL default '0',
  `resource_2` int(11) NOT NULL default '0',
  `resource_3` int(11) NOT NULL default '0',
  `resource_4` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `arrival_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `scheduler_resourcetrade`
--


-- --------------------------------------------------------

--
-- Table structure for table `scheduler_shipbuild`
--

CREATE TABLE IF NOT EXISTS `scheduler_shipbuild` (
  `ship_type` int(5) unsigned NOT NULL default '0',
  `planet_id` smallint(5) unsigned NOT NULL default '0',
  `start_build` int(10) unsigned NOT NULL default '0',
  `finish_build` int(10) unsigned NOT NULL default '0',
  `unit_1` int(5) unsigned NOT NULL default '0',
  `unit_2` int(5) unsigned NOT NULL default '0',
  `unit_3` int(5) unsigned NOT NULL default '0',
  `unit_4` int(5) unsigned NOT NULL default '0',
  KEY `planet_id` (`planet_id`),
  KEY `ship_type` (`ship_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheduler_shipbuild`
--


-- --------------------------------------------------------

--
-- Table structure for table `scheduler_shipmovement`
--

CREATE TABLE IF NOT EXISTS `scheduler_shipmovement` (
  `move_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `move_status` tinyint(3) NOT NULL default '0',
  `move_exec_started` tinyint(3) unsigned NOT NULL default '0',
  `start` smallint(5) unsigned NOT NULL default '0',
  `dest` smallint(5) unsigned NOT NULL default '0',
  `total_distance` float unsigned NOT NULL default '0',
  `remaining_distance` float unsigned NOT NULL default '0',
  `tick_speed` float unsigned NOT NULL default '0',
  `move_begin` int(10) unsigned NOT NULL default '0',
  `move_finish` int(10) unsigned NOT NULL default '0',
  `n_ships` mediumint(8) unsigned NOT NULL default '0',
  `action_code` tinyint(3) unsigned NOT NULL default '0',
  `action_data` text NOT NULL,
  PRIMARY KEY  (`move_id`),
  KEY `planet_attacked_check` (`user_id`,`dest`,`action_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `scheduler_shipmovement`
--


-- --------------------------------------------------------

--
-- Table structure for table `schulden_table`
--

CREATE TABLE IF NOT EXISTS `schulden_table` (
  `id` int(11) NOT NULL auto_increment,
  `user_ver` int(11) NOT NULL default '0',
  `user_kauf` int(11) NOT NULL default '0',
  `ship_id` int(10) NOT NULL default '0',
  `timestep` int(11) NOT NULL default '0',
  `status` int(1) NOT NULL default '0',
  `ress_1` int(11) NOT NULL default '0',
  `ress_2` int(11) NOT NULL default '0',
  `ress_3` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `mahnung` int(1) NOT NULL default '0',
  `auktions_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `schulden_table`
--


-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE IF NOT EXISTS `ships` (
  `ship_id` int(10) unsigned NOT NULL auto_increment,
  `fleet_id` int(10) NOT NULL default '0',
  `ship_untouchable` tinyint(3) NOT NULL default '0',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `template_id` int(10) unsigned NOT NULL default '0',
  `experience` int(10) unsigned NOT NULL default '0',
  `hitpoints` int(10) unsigned NOT NULL default '0',
  `construction_time` int(10) unsigned NOT NULL default '0',
  `unit_1` smallint(5) unsigned NOT NULL default '0',
  `unit_2` smallint(5) unsigned NOT NULL default '0',
  `unit_3` smallint(5) unsigned NOT NULL default '0',
  `unit_4` smallint(5) unsigned NOT NULL default '0',
  `ship_repair` int(11) NOT NULL default '0',
  `ship_scrap` int(11) NOT NULL default '0',
  `ship_name` varchar(50) NOT NULL default '',
  `ship_ncc` varchar(20) NOT NULL default '',
  `last_refit_time` int(10) unsigned NOT NULL default '0',
  `next_refit` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ship_id`),
  KEY `fleet_id` (`fleet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ships`
--


-- --------------------------------------------------------

--
-- Table structure for table `ship_ccategory`
--

CREATE TABLE IF NOT EXISTS `ship_ccategory` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` char(32) NOT NULL default '',
  `race` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `race` (`race`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ship_ccategory`
--


-- --------------------------------------------------------

--
-- Table structure for table `ship_components`
--

CREATE TABLE IF NOT EXISTS `ship_components` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `cat_id` mediumint(8) unsigned NOT NULL default '0',
  `resource_1` mediumint(8) unsigned NOT NULL default '0',
  `resource_2` mediumint(8) unsigned NOT NULL default '0',
  `resource_3` mediumint(8) unsigned NOT NULL default '0',
  `resource_4` mediumint(8) unsigned NOT NULL default '0',
  `buildtime` int(10) NOT NULL default '0',
  `unit_1` smallint(5) unsigned NOT NULL default '0',
  `unit_2` smallint(5) unsigned NOT NULL default '0',
  `unit_3` smallint(5) unsigned NOT NULL default '0',
  `unit_4` smallint(5) unsigned NOT NULL default '0',
  `unit_5` smallint(5) unsigned NOT NULL default '0',
  `unit_6` smallint(5) unsigned NOT NULL default '0',
  `value_1` mediumint(8) unsigned NOT NULL default '0',
  `value_2` mediumint(8) unsigned NOT NULL default '0',
  `value_3` mediumint(8) unsigned NOT NULL default '0',
  `value_4` mediumint(8) unsigned NOT NULL default '0',
  `value_5` mediumint(8) unsigned NOT NULL default '0',
  `value_6` mediumint(8) unsigned NOT NULL default '0',
  `value_7` mediumint(8) unsigned NOT NULL default '0',
  `value_8` mediumint(8) unsigned NOT NULL default '0',
  `value_9` mediumint(8) unsigned NOT NULL default '0',
  `value_10` mediumint(8) unsigned NOT NULL default '0',
  `value_11` mediumint(8) unsigned NOT NULL default '0',
  `value_12` mediumint(8) unsigned NOT NULL default '0',
  `value_13` mediumint(8) unsigned NOT NULL default '0',
  `value_14` mediumint(8) unsigned NOT NULL default '0',
  `value_15` mediumint(8) unsigned NOT NULL default '0',
  `torso_1` tinyint(3) unsigned NOT NULL default '0',
  `torso_2` tinyint(3) unsigned NOT NULL default '0',
  `torso_3` tinyint(3) unsigned NOT NULL default '0',
  `torso_4` tinyint(3) unsigned NOT NULL default '0',
  `torso_5` tinyint(3) unsigned NOT NULL default '0',
  `torso_6` tinyint(3) unsigned NOT NULL default '0',
  `torso_7` tinyint(3) unsigned NOT NULL default '0',
  `torso_8` tinyint(3) unsigned NOT NULL default '0',
  `torso_9` tinyint(3) unsigned NOT NULL default '0',
  `torso_10` tinyint(3) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `dev_info` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `cat_id_2` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ship_components`
--


-- --------------------------------------------------------

--
-- Table structure for table `ship_fleets`
--

CREATE TABLE IF NOT EXISTS `ship_fleets` (
  `fleet_id` int(10) NOT NULL auto_increment,
  `fleet_name` char(20) NOT NULL default '',
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `planet_id` smallint(5) unsigned NOT NULL default '0',
  `move_id` int(10) unsigned NOT NULL default '0',
  `alert_phase` tinyint(3) NOT NULL default '0',
  `n_ships` smallint(5) unsigned NOT NULL default '0',
  `resource_1` int(10) unsigned NOT NULL default '0',
  `resource_2` int(10) unsigned NOT NULL default '0',
  `resource_3` int(10) unsigned NOT NULL default '0',
  `resource_4` int(10) unsigned NOT NULL default '0',
  `unit_1` int(10) unsigned NOT NULL default '0',
  `unit_2` int(10) unsigned NOT NULL default '0',
  `unit_3` int(10) unsigned NOT NULL default '0',
  `unit_4` int(10) unsigned NOT NULL default '0',
  `unit_5` int(10) unsigned NOT NULL default '0',
  `unit_6` int(10) unsigned NOT NULL default '0',
  `homebase` int(11) NOT NULL default '0',
  PRIMARY KEY  (`fleet_id`),
  KEY `fleet_id` (`fleet_id`),
  KEY `user_id` (`user_id`),
  KEY `planet_id` (`planet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ship_fleets`
--


-- --------------------------------------------------------

--
-- Table structure for table `ship_templates`
--

CREATE TABLE IF NOT EXISTS `ship_templates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `owner` mediumint(8) unsigned NOT NULL default '0',
  `timestamp` int(10) unsigned NOT NULL default '0',
  `name` varchar(16) NOT NULL default '',
  `description` text NOT NULL,
  `race` tinyint(3) unsigned NOT NULL default '0',
  `ship_torso` tinyint(3) unsigned NOT NULL default '0',
  `ship_class` int(4) NOT NULL default '0',
  `component_1` smallint(5) NOT NULL default '0',
  `component_2` smallint(5) NOT NULL default '0',
  `component_3` smallint(5) NOT NULL default '0',
  `component_4` smallint(5) NOT NULL default '0',
  `component_5` smallint(5) NOT NULL default '0',
  `component_6` smallint(5) NOT NULL default '0',
  `component_7` smallint(5) NOT NULL default '0',
  `component_8` smallint(5) NOT NULL default '0',
  `component_9` smallint(5) NOT NULL default '0',
  `component_10` smallint(5) NOT NULL default '0',
  `value_1` mediumint(8) unsigned NOT NULL default '0',
  `value_2` mediumint(8) unsigned NOT NULL default '0',
  `value_3` mediumint(8) unsigned NOT NULL default '0',
  `value_4` mediumint(8) unsigned NOT NULL default '0',
  `value_5` mediumint(8) unsigned NOT NULL default '0',
  `value_6` mediumint(8) unsigned NOT NULL default '0',
  `value_7` mediumint(8) unsigned NOT NULL default '0',
  `value_8` mediumint(8) unsigned NOT NULL default '0',
  `value_9` mediumint(8) unsigned NOT NULL default '0',
  `value_10` float unsigned NOT NULL default '0',
  `value_11` mediumint(8) unsigned NOT NULL default '0',
  `value_12` mediumint(8) unsigned NOT NULL default '0',
  `value_13` mediumint(8) unsigned NOT NULL default '0',
  `value_14` mediumint(8) unsigned NOT NULL default '0',
  `value_15` mediumint(8) unsigned NOT NULL default '0',
  `resource_1` mediumint(8) unsigned NOT NULL default '0',
  `resource_2` mediumint(8) unsigned NOT NULL default '0',
  `resource_3` mediumint(8) unsigned NOT NULL default '0',
  `resource_4` mediumint(8) unsigned NOT NULL default '0',
  `unit_5` smallint(5) unsigned NOT NULL default '0',
  `unit_6` smallint(5) unsigned NOT NULL default '0',
  `min_unit_1` smallint(5) unsigned NOT NULL default '0',
  `min_unit_2` smallint(5) unsigned NOT NULL default '0',
  `min_unit_3` smallint(5) unsigned NOT NULL default '0',
  `min_unit_4` smallint(5) unsigned NOT NULL default '0',
  `max_unit_1` smallint(5) unsigned NOT NULL default '0',
  `max_unit_2` smallint(5) unsigned NOT NULL default '0',
  `max_unit_3` smallint(5) unsigned NOT NULL default '0',
  `max_unit_4` smallint(5) unsigned NOT NULL default '0',
  `buildtime` int(10) unsigned NOT NULL default '0',
  `removed` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ship_templates`
--


-- --------------------------------------------------------

--
-- Table structure for table `ship_trade`
--

CREATE TABLE IF NOT EXISTS `ship_trade` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) NOT NULL default '0',
  `planet` int(11) NOT NULL default '0',
  `start_time` int(11) NOT NULL default '0',
  `end_time` int(11) NOT NULL default '0',
  `ship_id` int(11) NOT NULL default '0',
  `resource_1` int(11) NOT NULL default '0',
  `resource_2` int(11) NOT NULL default '0',
  `resource_3` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `add_resource_1` int(11) NOT NULL default '0',
  `add_resource_2` int(11) NOT NULL default '0',
  `add_resource_3` int(11) NOT NULL default '0',
  `add_unit_1` int(11) NOT NULL default '0',
  `add_unit_2` int(11) NOT NULL default '0',
  `add_unit_3` int(11) NOT NULL default '0',
  `add_unit_4` int(11) NOT NULL default '0',
  `add_unit_5` int(11) NOT NULL default '0',
  `add_unit_6` int(11) NOT NULL default '0',
  `header` varchar(40) NOT NULL default '',
  `description` text NOT NULL,
  `show_data` tinyint(2) NOT NULL default '0',
  `font_bold` tinyint(2) NOT NULL default '0',
  `font_colored` tinyint(2) NOT NULL default '0',
  `unowed_only` tinyint(2) NOT NULL default '0',
  `scheduler_processed` tinyint(4) NOT NULL default '0',
  `trade_check` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `end_time` (`end_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ship_trade`
--


-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE IF NOT EXISTS `shoutbox` (
  `player_name` varchar(32) NOT NULL default '',
  `message` varchar(128) NOT NULL default '',
  `timestamp` int(10) unsigned NOT NULL default '0',
  `irc_print` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoutbox`
--


-- --------------------------------------------------------

--
-- Table structure for table `skins`
--

CREATE TABLE IF NOT EXISTS `skins` (
  `skin_id` tinyint(3) unsigned NOT NULL auto_increment,
  `skin_name` varchar(50) NOT NULL default '',
  `skin_author` varchar(50) NOT NULL default '',
  `gfxpack_link` varchar(100) NOT NULL default '',
  `skinpreview_link` varchar(100) NOT NULL default '',
  `skin_desc` text NOT NULL,
  `skin_portal_desc` text NOT NULL,
  `skin_html` longtext NOT NULL,
  PRIMARY KEY  (`skin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `skins`
--


-- --------------------------------------------------------

--
-- Table structure for table `spenden`
--

CREATE TABLE IF NOT EXISTS `spenden` (
  `id` int(11) NOT NULL auto_increment,
  `datum` varchar(32) NOT NULL default '',
  `name` varchar(32) NOT NULL default '',
  `betrag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `spenden`
--


-- --------------------------------------------------------

--
-- Table structure for table `starsystems`
--

CREATE TABLE IF NOT EXISTS `starsystems` (
  `system_id` smallint(5) unsigned NOT NULL auto_increment,
  `system_name` varchar(50) NOT NULL default '0',
  `sector_id` smallint(3) unsigned NOT NULL default '0',
  `system_x` tinyint(3) unsigned NOT NULL default '0',
  `system_y` tinyint(3) unsigned NOT NULL default '0',
  `system_map_x` smallint(5) unsigned NOT NULL default '0',
  `system_map_y` smallint(5) unsigned NOT NULL default '0',
  `system_global_x` smallint(5) unsigned NOT NULL default '0',
  `system_global_y` smallint(5) unsigned NOT NULL default '0',
  `system_starcolor_red` tinyint(3) unsigned NOT NULL default '0',
  `system_starcolor_green` tinyint(3) unsigned NOT NULL default '0',
  `system_starcolor_blue` tinyint(3) unsigned NOT NULL default '0',
  `system_starsize` tinyint(1) unsigned NOT NULL default '0',
  `system_n_planets` tinyint(3) unsigned NOT NULL default '0',
  `system_max_planets` tinyint(3) unsigned NOT NULL default '0',
  `system_closed` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`system_id`),
  KEY `system_sector` (`sector_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `starsystems`
--


-- --------------------------------------------------------

--
-- Table structure for table `starsystems_slots`
--

CREATE TABLE IF NOT EXISTS `starsystems_slots` (
  `quadrant_id` tinyint(3) unsigned NOT NULL default '0',
  `sector_id` smallint(5) unsigned NOT NULL default '0',
  `system_x` tinyint(3) unsigned NOT NULL default '0',
  `system_y` tinyint(3) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `starsystems_slots`
--


-- --------------------------------------------------------

--
-- Table structure for table `tc_coords_memo`
--

CREATE TABLE IF NOT EXISTS `tc_coords_memo` (
  `tcm_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `memo_name` char(15) NOT NULL default '',
  `memo_view` tinyint(3) NOT NULL default '0',
  `memo_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tcm_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tc_coords_memo`
--


-- --------------------------------------------------------

--
-- Table structure for table `trade_settings`
--

CREATE TABLE IF NOT EXISTS `trade_settings` (
  `user_id` int(10) NOT NULL default '0',
  `handel_notepad` text,
  `auktion_seiten` int(3) NOT NULL default '20',
  `skin` int(2) NOT NULL default '0',
  `igm` int(2) NOT NULL default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `transport_logs`
--

CREATE TABLE IF NOT EXISTS `transport_logs` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) NOT NULL default '0',
  `planet` int(11) NOT NULL default '0',
  `resource_1` int(11) NOT NULL default '0',
  `resource_2` int(11) NOT NULL default '0',
  `resource_3` int(11) NOT NULL default '0',
  `resource_4` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  `tick_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transport_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `treuhandkonto`
--

CREATE TABLE IF NOT EXISTS `treuhandkonto` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) NOT NULL default '',
  `timestep` int(11) NOT NULL default '0',
  `ress_1` int(11) NOT NULL default '0',
  `ress_2` int(11) NOT NULL default '0',
  `ress_3` int(11) NOT NULL default '0',
  `unit_1` int(11) NOT NULL default '0',
  `unit_2` int(11) NOT NULL default '0',
  `unit_3` int(11) NOT NULL default '0',
  `unit_4` int(11) NOT NULL default '0',
  `unit_5` int(11) NOT NULL default '0',
  `unit_6` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `treuhandkonto`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_active` tinyint(1) unsigned NOT NULL default '0',
  `user_name` varchar(32) NOT NULL default '',
  `user_loginname` varchar(32) NOT NULL default '',
  `user_password` varchar(32) NOT NULL default '',
  `user_email` varchar(50) NOT NULL default '',
  `user_auth_level` tinyint(1) unsigned NOT NULL default '0',
  `user_rank` varchar(50) NOT NULL default '',
  `user_override_uid` mediumint(8) unsigned NOT NULL default '0',
  `user_race` tinyint(3) unsigned NOT NULL default '0',
  `user_gfxpath` varchar(100) NOT NULL default '',
  `user_skinpath` varchar(50) NOT NULL default '',
  `user_jspath` varchar(100) NOT NULL default '',
  `user_skin` tinyint(3) unsigned NOT NULL default '0',
  `user_notepad` text NOT NULL,
  `user_registration_time` int(10) unsigned NOT NULL default '0',
  `user_registration_ip` varchar(15) NOT NULL default '',
  `user_attack_protection` int(10) unsigned NOT NULL default '0',
  `user_alliance` smallint(5) unsigned NOT NULL default '0',
  `user_alliance_rights1` tinyint(4) NOT NULL default '0',
  `user_alliance_rights2` tinyint(4) NOT NULL default '0',
  `user_alliance_rights3` tinyint(4) NOT NULL default '0',
  `user_alliance_rights4` tinyint(4) NOT NULL default '0',
  `user_alliance_rights5` tinyint(4) NOT NULL default '0',
  `user_alliance_rights6` tinyint(4) NOT NULL default '0',
  `user_alliance_rights7` tinyint(4) NOT NULL default '0',
  `user_alliance_rights8` tinyint(4) NOT NULL default '0',
  `user_alliance_status` tinyint(1) unsigned NOT NULL default '0',
  `last_active` int(10) unsigned NOT NULL default '0',
  `last_ip` varchar(15) NOT NULL default '',
  `user_points` mediumint(8) unsigned NOT NULL default '0',
  `user_planets` smallint(5) NOT NULL default '0',
  `user_honor` mediumint(8) unsigned NOT NULL default '0',
  `user_capital` smallint(5) unsigned NOT NULL default '0',
  `pending_capital_choice` tinyint(3) NOT NULL default '0',
  `active_planet` smallint(5) unsigned NOT NULL default '0',
  `user_hidenotepad` tinyint(1) unsigned NOT NULL default '0',
  `globalresearch_1` tinyint(2) unsigned NOT NULL default '0',
  `globalresearch_2` tinyint(2) unsigned NOT NULL default '0',
  `globalresearch_3` tinyint(2) unsigned NOT NULL default '0',
  `globalresearch_4` tinyint(2) unsigned NOT NULL default '0',
  `globalresearch_5` tinyint(2) unsigned NOT NULL default '0',
  `user_last_emergency_call` int(10) unsigned NOT NULL default '0',
  `user_vacation_start` int(10) unsigned NOT NULL default '0',
  `user_vacation_end` int(10) unsigned NOT NULL default '0',
  `user_sitting_active` tinyint(1) unsigned NOT NULL default '0',
  `user_sitting_password` varchar(32) NOT NULL default '',
  `user_sitting_o1` tinyint(1) NOT NULL default '0',
  `user_sitting_o2` tinyint(1) NOT NULL default '0',
  `user_sitting_o3` tinyint(1) NOT NULL default '0',
  `user_sitting_o4` tinyint(1) NOT NULL default '0',
  `user_sitting_o5` tinyint(1) NOT NULL default '0',
  `user_sitting_o6` tinyint(1) NOT NULL default '0',
  `user_sitting_o7` tinyint(1) NOT NULL default '0',
  `user_sitting_o8` tinyint(1) NOT NULL default '0',
  `user_sitting_o9` tinyint(1) NOT NULL default '0',
  `user_sitting_o10` tinyint(1) NOT NULL default '0',
  `user_sitting_id1` mediumint(8) unsigned NOT NULL default '0',
  `user_sitting_id2` mediumint(8) unsigned NOT NULL default '0',
  `user_sitting_id3` mediumint(8) unsigned NOT NULL default '0',
  `user_sitting_id4` mediumint(8) unsigned NOT NULL default '0',
  `user_sitting_id5` mediumint(8) unsigned NOT NULL default '0',
  `last_tcartography_view` tinyint(3) NOT NULL default '0',
  `last_tcartography_id` smallint(5) unsigned NOT NULL default '0',
  `last_stationatedf_dmode` tinyint(3) unsigned NOT NULL default '0',
  `last_movef_dmode` tinyint(3) unsigned NOT NULL default '0',
  `unread_messages` smallint(5) unsigned NOT NULL default '0',
  `unread_log_entries` smallint(5) unsigned NOT NULL default '0',
  `unread_support_tickets` smallint(5) unsigned NOT NULL default '0',
  `shoutbox_posts` int(10) unsigned NOT NULL default '0',
  `last_shoutbox_post` int(10) unsigned NOT NULL default '0',
  `shoutbox_flood_error` smallint(5) unsigned NOT NULL default '0',
  `user_avatar` varchar(100) NOT NULL default '',
  `user_signature` text NOT NULL,
  `user_icq` varchar(20) NOT NULL default '',
  `user_birthday` varchar(10) NOT NULL default '',
  `user_gender` char(1) NOT NULL default '-',
  `user_enable_sig` tinyint(4) NOT NULL default '0',
  `user_rank_points` smallint(5) unsigned NOT NULL default '0',
  `user_rank_planets` smallint(5) unsigned NOT NULL default '0',
  `user_rank_honor` smallint(5) unsigned NOT NULL default '0',
  `user_gallery_name_1` varchar(16) NOT NULL default 'Free slot',
  `user_gallery_name_2` varchar(16) NOT NULL default 'Free slot',
  `user_gallery_name_3` varchar(16) NOT NULL default 'Free slot',
  `user_gallery_name_4` varchar(16) NOT NULL default 'Free slot',
  `user_gallery_name_5` varchar(16) NOT NULL default 'Free slot',
  `user_gallery_description_1` varchar(128) NOT NULL default '',
  `user_gallery_description_2` varchar(128) NOT NULL default '',
  `user_gallery_description_3` varchar(128) NOT NULL default '',
  `user_gallery_description_4` varchar(128) NOT NULL default '',
  `user_gallery_description_5` varchar(128) NOT NULL default '',
  `last_secimage` int(11) NOT NULL default '0',
  `timeout_secimage` int(11) NOT NULL default '0',
  `content_secimage` varchar(12) NOT NULL default '',
  `link_secimage` varchar(64) NOT NULL default '',
  `error_secimage` int(11) NOT NULL default '0',
  `num_auctions` int(8) NOT NULL default '0',
  `user_message_sig` text NOT NULL,
  `user_options` text NOT NULL,
  `plz` varchar(10) NOT NULL default '0',
  `country` char(2) NOT NULL default '',
  `num_hits` int(11) NOT NULL default '0',
  `num_sitting` int(11) NOT NULL default '0',
  `language` varchar(30) NOT NULL default '',
  `tutorial` int(11) NOT NULL default '0',
  `last_alliance_kick` int(11) NOT NULL default '0',
  `user_trade` int(11) NOT NULL default '0',
  `message_basement` text NOT NULL,
  `trade_tick` int(11) NOT NULL default '0',
  `notepad_width` int(11) default '0',
  `notepad_cols` int(11) default '0',
  `skin_farbe` varchar(7) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_alliance` (`user_alliance`),
  KEY `sitting_query` (`user_active`,`user_auth_level`,`user_sitting_id1`,`user_sitting_id2`,`user_sitting_id3`,`user_sitting_id4`,`user_sitting_id5`),
  FULLTEXT KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--


-- --------------------------------------------------------

--
-- Table structure for table `userally_history`
--

CREATE TABLE IF NOT EXISTS `userally_history` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `alliance_id` int(11) NOT NULL default '0',
  `join_date` int(10) NOT NULL default '0',
  `leave_date` int(10) NOT NULL default '0',
  `action` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userally_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_diplomacy`
--

CREATE TABLE IF NOT EXISTS `user_diplomacy` (
  `ud_id` int(10) unsigned NOT NULL auto_increment,
  `user1_id` mediumint(8) unsigned NOT NULL default '0',
  `user2_id` mediumint(8) unsigned NOT NULL default '0',
  `date` int(10) unsigned NOT NULL default '0',
  `accepted` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_diplomacy`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_iplog`
--

CREATE TABLE IF NOT EXISTS `user_iplog` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL default '0',
  `ip` varchar(32) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_iplog`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE IF NOT EXISTS `user_logs` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `ip` char(15) NOT NULL default '',
  `request` char(32) NOT NULL default '',
  `sitting_mode` tinyint(1) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_templates`
--

CREATE TABLE IF NOT EXISTS `user_templates` (
  `user_id` mediumint(8) unsigned NOT NULL default '0',
  `user_template` longtext NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_templates`
--


