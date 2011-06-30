-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2011 at 12:38 AM
-- Server version: 5.1.54
-- PHP Version: 5.3.5-1ubuntu7.2

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
CREATE TABLE IF NOT EXISTS `admin_users` (
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

INSERT INTO `admin_users` (`id`, `email`, `password`, `created`, `updated`) VALUES
(1, 'admin@example.com', '4fd1335e70f8175765faab5498c156246767240f', '2011-06-30 23:49:54', '2011-06-30 23:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `directions`
--

DROP TABLE IF EXISTS `directions`;
CREATE TABLE IF NOT EXISTS `directions` (
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

INSERT INTO `directions` (`id`, `title`, `content`, `url`, `sort_order`, `created`, `updated`) VALUES
(1, 'Direction A', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-a', 0, '2011-06-30 14:10:04', '2011-06-30 14:10:04'),
(2, 'Direction B', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-b', 1, '2011-06-30 14:10:04', '2011-06-30 14:10:04'),
(3, 'Direction C', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis.', 'direction-c', 2, '2011-06-30 14:10:44', '2011-06-30 14:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `direction_slides`
--

DROP TABLE IF EXISTS `direction_slides`;
CREATE TABLE IF NOT EXISTS `direction_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `direction_slides`
--

INSERT INTO `direction_slides` (`id`, `parent_id`, `content`, `thumbnail`, `sort_order`, `created`, `updated`) VALUES
(1, 1, '<p>We started the branding process by considering what embodies "Leeds"\r\n\r\n\r\neg: River Aire, Industrial Revolution / Mills, Football / Rugby, \r\n\r\nUniversities, Diverse Architecture, and Owls</p>\r\n\r\n \r\n\r\n<p>We also considered what embodies "Digital" in terms of the festival, \r\n\r\nincluding:\r\n\r\n \r\n\r\nTwitter / Facebook / Youtube / Flickr / Foursquare / Google Maps / APIs \r\n\r\nQR COdes / Projections / Music / Exhibitions / Events / Robotics / People</p>\r\n\r\n \r\n\r\n<p>We felt the idea of using an owl motif could be a strong one - it forms \r\n\r\nthe city coat of arms (and can be seen around the city in architecture), \r\n\r\nand as a character could lend itself to demonstrating the digital aspects\r\n\r\nof the festival.</p>\r\n\r\n \r\n\r\n<p>From here Adam and Max set to work creating various owl logo ideas.</p>', '<li id="overview-thumb">\r\n                      <a href="#">\r\n                          <h3>Overview</h3>\r\n                          <p>Introduced by the team in their own words.</p>\r\n                      </a>\r\n                  </li>', 0, '2011-06-30 14:50:37', '2011-06-30 14:50:37'),
(2, 1, '<img src="directions/slide2.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 1, '2011-06-30 14:50:37', '2011-06-30 14:50:37'),
(3, 1, '<img src="directions/slide3.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 2, '2011-06-30 14:55:34', '2011-06-30 14:55:34'),
(4, 1, '<p>The owl in flight felt the stronger of the initial logos, so this \r\n\r\nwas expanded upon, making the owl look more robotic and giving him \r\n\r\nlasers for eyes.</p>\r\n\r\n \r\n\r\n<p>The default usage of the owl is "in-flight", carrying a mouse, \r\n\r\nbut we soon realised that the owl made for a very versatile \r\n\r\ncharacter - he/she can be adapted in a large variety of fun/playful ways,\r\n\r\nand still remain obvious that it''s part of the digital festival branding - \r\n\r\ne.g. playing the guitar for music related events, or standing where the \r\n\r\nlogo usage needs to be narrow.</p>\r\n\r\n \r\n\r\n<p>From here we considered a couple of example offline and online \r\n\r\nimplementations.</p>', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 3, '2011-06-30 14:55:34', '2011-06-30 14:55:34'),
(5, 1, '<img src="directions/slide5.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 4, '2011-06-30 14:57:47', '2011-06-30 14:57:47'),
(6, 1, '<img src="directions/slide6.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 5, '2011-06-30 14:57:47', '2011-06-30 14:57:47'),
(7, 2, '<img src="directions/Gaz_slide1.jpg" alt="" />', '<li id="overview-thumb">\r\n                      <a href="#">\r\n                          <h3>Overview</h3>\r\n                          <p>Introduced by the team in their own words.</p>\r\n                      </a>\r\n                  </li>', 0, '2011-06-30 14:50:37', '2011-06-30 14:50:37'),
(8, 2, '<img src="directions/Gaz_slide2.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 1, '2011-06-30 14:50:37', '2011-06-30 14:50:37'),
(9, 2, '<img src="directions/Gaz_slide3.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 2, '2011-06-30 14:50:37', '2011-06-30 14:50:37'),
(10, 2, '<img src="directions/Gaz_slide4.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 3, '2011-06-30 15:07:34', '2011-06-30 15:07:34'),
(11, 2, '<img src="directions/Gaz_slide5.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 4, '2011-06-30 15:07:34', '2011-06-30 15:07:34'),
(12, 2, '<img src="directions/Gaz_slide6.jpg" alt="" />', '<li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>', 5, '2011-06-30 15:07:49', '2011-06-30 15:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `direction_id` int(10) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `votes`
--

SET FOREIGN_KEY_CHECKS=1;
