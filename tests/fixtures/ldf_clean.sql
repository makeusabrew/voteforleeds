-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 09, 2011 at 12:15 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ldf_vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` VALUES(1, 'admin@example.com', '4fd1335e70f8175765faab5498c156246767240f', '2011-06-30 23:49:54', '2011-06-30 23:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

DROP TABLE IF EXISTS `directions`;
CREATE TABLE `directions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `directions`
--

INSERT INTO `directions` VALUES(1, 'Direction A', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-a', 0, '2011-06-30 14:10:04', '2011-06-30 14:10:04');
INSERT INTO `directions` VALUES(2, 'Direction B', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-b', 1, '2011-06-30 14:10:04', '2011-06-30 14:10:04');
INSERT INTO `directions` VALUES(3, 'Direction C', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-c', 2, '2011-06-30 14:10:44', '2011-06-30 14:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `direction_slides`
--

DROP TABLE IF EXISTS `direction_slides`;
CREATE TABLE `direction_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `direction_slides`
--

INSERT INTO `direction_slides` VALUES(1, 1, '<p>We started the branding process by considering what embodies "Leeds"\r\n\r\n\r\neg: River Aire, Industrial Revolution / Mills, Football / Rugby, \r\n\r\nUniversities, Diverse Architecture, and Owls</p>\r\n\r\n \r\n\r\n<p>We also considered what embodies "Digital" in terms of the festival, \r\n\r\nincluding:\r\n\r\n \r\n\r\nTwitter / Facebook / Youtube / Flickr / Foursquare / Google Maps / APIs \r\n\r\nQR COdes / Projections / Music / Exhibitions / Events / Robotics / People</p>\r\n\r\n \r\n\r\n<p>We felt the idea of using an owl motif could be a strong one - it forms \r\n\r\nthe city coat of arms (and can be seen around the city in architecture), \r\n\r\nand as a character could lend itself to demonstrating the digital aspects\r\n\r\nof the festival.</p>\r\n\r\n \r\n\r\n<p>From here Adam and Max set to work creating various owl logo ideas.</p>', '<li class="text-thumb">\r\n                      <a href="#">\r\n                          <h3>Overview</h3>\r\n                          <p>Introduced by the team in their own words.</p>\r\n                      </a>\r\n                  </li>', 0, '2011-06-30 14:50:37', '2011-06-30 14:50:37');
INSERT INTO `direction_slides` VALUES(2, 1, '<img src="directions/slide2.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/a/thumb2.jpg" alt="" /></a></li>', 1, '2011-06-30 14:50:37', '2011-06-30 14:50:37');
INSERT INTO `direction_slides` VALUES(3, 1, '<img src="directions/slide3.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/a/thumb3.jpg" alt="" /></a></li>', 2, '2011-06-30 14:55:34', '2011-06-30 14:55:34');
INSERT INTO `direction_slides` VALUES(4, 1, '<p>The owl in flight felt the stronger of the initial logos, so this \r\n\r\nwas expanded upon, making the owl look more robotic and giving him \r\n\r\nlasers for eyes.</p>\r\n\r\n \r\n\r\n<p>The default usage of the owl is "in-flight", carrying a mouse, \r\n\r\nbut we soon realised that the owl made for a very versatile \r\n\r\ncharacter - he/she can be adapted in a large variety of fun/playful ways,\r\n\r\nand still remain obvious that it''s part of the digital festival branding - \r\n\r\ne.g. playing the guitar for music related events, or standing where the \r\n\r\nlogo usage needs to be narrow.</p>\r\n\r\n \r\n\r\n<p>From here we considered a couple of example offline and online \r\n\r\nimplementations.</p>', '<li class="text-thumb">\r\n                      <a href="#">\r\n                          <h3>Expanding the Design</h3>\r\n                          <p>Building the brand.</p>\r\n                      </a>\r\n                  </li>', 3, '2011-06-30 14:55:34', '2011-06-30 14:55:34');
INSERT INTO `direction_slides` VALUES(5, 1, '<img src="directions/slide5.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/a/thumb5.jpg" alt="" /></a></li>', 4, '2011-06-30 14:57:47', '2011-06-30 14:57:47');
INSERT INTO `direction_slides` VALUES(6, 1, '<img src="directions/slide6.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/a/thumb6.jpg" alt="" /></a></li>', 5, '2011-06-30 14:57:47', '2011-06-30 14:57:47');
INSERT INTO `direction_slides` VALUES(7, 2, '<img src="directions/Gaz_slide1.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb1.jpg" alt="" /></a></li>', 0, '2011-06-30 14:50:37', '2011-06-30 14:50:37');
INSERT INTO `direction_slides` VALUES(13, 3, '<h2>Key Objective</h2>\r\n\r\n<p>We began by discussing what we felt the Leeds Digital Festival was about, who it was for, etc. We did this in an attempt to identify potential objective(s) that the brand could support.</p>\r\n\r\n<p>For the purposes of our branding exercise we decided that The Leeds Digital Festival should seek to break down the traditional perception that the Digital industry is a closed community and encourage people to "Get Involved".</p>\r\n\r\n<h2>Target Audience</h2>\r\n<p>Business, Education (Educators & Students), Geeks/Makers & Media</p>\r\n\r\n<h2>Competition</h2>\r\n<p>Researching some established Digital events (Thinking Digital, Dconstruct, Hello Digital, Future Everything, SXSW, etc) we noticed that although most are strongly associated with particular places they don''t include the place name in their brand name.</p>', '<li class="text-thumb"><a href="#"><h3>Key Objectives</h3>\r\n\r\n<p></p></a></li>', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `direction_slides` VALUES(8, 2, '<img src="directions/Gaz_slide2.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb2.jpg" alt="" /></a></li>', 1, '2011-06-30 14:50:37', '2011-06-30 14:50:37');
INSERT INTO `direction_slides` VALUES(9, 2, '<img src="directions/Gaz_slide3.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb3.jpg" alt="" /></a></li>', 2, '2011-06-30 14:50:37', '2011-06-30 14:50:37');
INSERT INTO `direction_slides` VALUES(10, 2, '<img src="directions/Gaz_slide4.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb4.jpg" alt="" /></a></li>', 3, '2011-06-30 15:07:34', '2011-06-30 15:07:34');
INSERT INTO `direction_slides` VALUES(11, 2, '<img src="directions/Gaz_slide5.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb5.jpg" alt="" /></a></li>', 4, '2011-06-30 15:07:34', '2011-06-30 15:07:34');
INSERT INTO `direction_slides` VALUES(12, 2, '<img src="directions/Gaz_slide6.jpg" alt="" />', '<li><a href="#"><img src="directions/thumbs/b/thumb1.jpg" alt="" /></a></li>', 5, '2011-06-30 15:07:49', '2011-06-30 15:07:49');
INSERT INTO `direction_slides` VALUES(14, 3, '<div class="col"><p>We didn''t have time to survey our target audiences so we made do with asking ourselves the following questions&hellip;</p>\r\n\r\n<h2>Why are we drawn to Digital?</h2>\r\n\r\n<ul>\r\n    <li>Creative</li>\r\n    <li>Fresh Vibe</li>\r\n    <li>Challenging</li>\r\n    <li>Clever</li>\r\n    <li>Doesn''t feel like a job</li>\r\n    <li>New horizons/new opportunities</li>\r\n    <li>Global</li>\r\n    <li>Ideas</li>\r\n    <li>Cutting edge</li>\r\n</ul>\r\n\r\n<h2>Why are we drawn to Leeds?</h2>\r\n\r\n<ul>\r\n    <li>Heritage</li>\r\n    <li>Identity</li>\r\n    <li>Friendly</li>\r\n    <li>Culture</li>\r\n    <li>Business</li>\r\n    <li>Family</li>\r\n    <li>Northern (no nonsense/straight forward)</li>\r\n</ul>\r\n</div>\r\n<div class="col">\r\n<p>n.b.: We found it really very hard to express what is so uniquely great about Leeds. Its complex, but complex is good, complex is interesting, complex is worth more than a cursery look. Leeds is complex. Digital is complex. Leeds is interesting. Digital is interesting. Leeds is Digital.</p>\r\n\r\n<h2>Identifying the Unifying Theme</h2>\r\n\r\n<p>We wanted to identify the single word that would immediately convey the essence of Leeds Digital Festival. The unifying theme should not be confused with the brand itself, it is a concept that would only be used internally to assess the alignment and potential effectiveness of any expression of the brand. We struggled to hit upon the right unique theme: Hotbed? Crucible? Furnace? Petri Dish? Sapling? Eventually we got it&hellip;</p>\r\n\r\n<p>CHEMISTRY</p>\r\n</div>', '<li class="text-thumb"><a href="#"><h3>Market Research</h3>\r\n<p></p></a></li>', 1, '2011-07-06 18:56:56', '2011-07-06 18:56:59');
INSERT INTO `direction_slides` VALUES(15, 3, '<h2>Developing the Name</h2>\r\n\r\n<p>We started to think about Chemistry in the hope that we could somehow align it with Digital. We realised that there are two types of Chemistry:</p>\r\n<div>\r\n<div class="col">\r\n<ul>\r\n    <li>Scientific</li>\r\n    <li>Reaction</li>\r\n    <li>Fusion</li>\r\n    <li>Synapse</li>\r\n    <li>Alchemy</li>\r\n    <li>Sparks</li>\r\n    <li>Chaos</li>\r\n    <li>Experiment</li>\r\n</ul>\r\n</div>\r\n<div class="col">\r\n<ul>\r\n    <li>Emotional</li>\r\n    <li>Love</li>\r\n    <li>Palpatations</li>\r\n    <li>Blushing</li>\r\n    <li>Plutonic</li>\r\n    <li>Sparks</li>\r\n    <li>Chaos</li>\r\n    <li>Experiment :)</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<p>Then the Big Bang moment happened and the LDF brand was reborn&hellip;', '<li class="text-thumb">\r\n    <a href="#">\r\n        <h3>Developing The Name</h3>\r\n        <p></p>\r\n    </a>\r\n</li>', 2, '2011-07-09 11:12:15', '2011-07-09 11:12:18');
INSERT INTO `direction_slides` VALUES(16, 3, '<img src="directions/matt4.png" alt="">', '<li>\r\n    <a href="#">\r\n        <img src="directions/thumbs/c/thumb4.jpg" alt="">\r\n    </a>\r\n</li>\r\n', 3, '2011-07-09 11:12:44', '2011-07-09 11:12:46');
INSERT INTO `direction_slides` VALUES(17, 3, '<img src="directions/matt5.png" alt="">', '<li>\r\n    <a href="#">\r\n        <img src="directions/thumbs/c/thumb5.jpg" alt="">\r\n    </a>\r\n</li>', 4, '2011-07-09 11:13:15', '2011-07-09 11:13:18');
INSERT INTO `direction_slides` VALUES(18, 3, '<h2>Why it fits</h2>\r\n<div class="cf">\r\n<div class="col">\r\n<p>WhizBang embodies some values which we feel underpin what the festival is about, values that can help us achieve our stated objective (namely: break down the traditional perception that the Digital industry is a closed community and encourage people to get involved).</p>\r\n\r\n<ul>\r\n    <li>Fun</li>\r\n    <li>Maveric</li>\r\n    <li>Confident (Loud)</li>\r\n    <li>Experimental</li>\r\n    <li>Revolutionary</li>\r\n    <li>Leads to discovery</li>\r\n</ul>\r\n</div>\r\n<div class="col">\r\n<p>The Values that we have borrowed from comic books also fit:</p>\r\n\r\n<ul>\r\n    <li>Heroic</li>\r\n    <li>Brave/Courageous</li>\r\n    <li>Confident</li>\r\n    <li>Powerful</li>\r\n    <li>Role Model</li>\r\n    <li>Crusader</li>\r\n    <li>Intelligent</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<hr>\r\n<h2>WHIZBANG</h2>\r\n<p>IT''S WHAT WE DO<BR>IT''S WHAT LEEDS IS<BR>IT''S GOT CHEMISTRY</p>\r\n', '<li class="text-thumb">\r\n    <a href="#">\r\n        <h3>Why it fits</h3>\r\n        <p></p>\r\n    </a>\r\n</li>', 5, '2011-07-09 11:13:38', '2011-07-09 11:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `direction_id` int(10) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `votes`
--

SET FOREIGN_KEY_CHECKS=1;
