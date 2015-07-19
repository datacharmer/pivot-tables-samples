-- MySQL dump 10.13  Distrib 5.6.21, for osx10.8 (x86_64)
--
-- Host: localhost    Database: crosstab
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `all_personnel`
--

DROP TABLE IF EXISTS `all_personnel`;
/*!50001 DROP VIEW IF EXISTS `all_personnel`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_personnel` AS SELECT 
 1 AS `country`,
 1 AS `location`,
 1 AS `name`,
 1 AS `salary`,
 1 AS `gender`,
 1 AS `department`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `xtab_categories`
--

DROP TABLE IF EXISTS `xtab_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_categories` (
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_id`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_categories`
--

LOCK TABLES `xtab_categories` WRITE;
/*!40000 ALTER TABLE `xtab_categories` DISABLE KEYS */;
INSERT INTO `xtab_categories` VALUES (3,'consultant'),(2,'contractor'),(1,'employee');
/*!40000 ALTER TABLE `xtab_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_class`
--

DROP TABLE IF EXISTS `xtab_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_class` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `class_name` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`class_id`),
  KEY `class_ndx` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_class`
--

LOCK TABLES `xtab_class` WRITE;
/*!40000 ALTER TABLE `xtab_class` DISABLE KEYS */;
INSERT INTO `xtab_class` VALUES (2,'hardware'),(3,'services'),(1,'software');
/*!40000 ALTER TABLE `xtab_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_countries`
--

DROP TABLE IF EXISTS `xtab_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_countries` (
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `country` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`),
  KEY `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_countries`
--

LOCK TABLES `xtab_countries` WRITE;
/*!40000 ALTER TABLE `xtab_countries` DISABLE KEYS */;
INSERT INTO `xtab_countries` VALUES (2,'Germany'),(3,'Italy'),(1,'UK');
/*!40000 ALTER TABLE `xtab_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_customers`
--

DROP TABLE IF EXISTS `xtab_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_customers` (
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer` char(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_customers`
--

LOCK TABLES `xtab_customers` WRITE;
/*!40000 ALTER TABLE `xtab_customers` DISABLE KEYS */;
INSERT INTO `xtab_customers` VALUES (1,'DataSmart'),(2,'ViewData'),(3,'NewHardware'),(4,'SmartEdu');
/*!40000 ALTER TABLE `xtab_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_departments`
--

DROP TABLE IF EXISTS `xtab_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_departments` (
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `department` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`dept_id`),
  KEY `department` (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_departments`
--

LOCK TABLES `xtab_departments` WRITE;
/*!40000 ALTER TABLE `xtab_departments` DISABLE KEYS */;
INSERT INTO `xtab_departments` VALUES (3,'dev'),(1,'pers'),(4,'research'),(2,'xtab_sales');
/*!40000 ALTER TABLE `xtab_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_locations`
--

DROP TABLE IF EXISTS `xtab_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_locations` (
  `loc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `loc` char(30) NOT NULL DEFAULT '',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`loc_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `0_31` FOREIGN KEY (`country_id`) REFERENCES `xtab_countries` (`country_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_locations`
--

LOCK TABLES `xtab_locations` WRITE;
/*!40000 ALTER TABLE `xtab_locations` DISABLE KEYS */;
INSERT INTO `xtab_locations` VALUES (1,'Rome',3),(2,'London',1),(3,'Munich',2),(4,'Berlin',2),(5,'Bonn',2);
/*!40000 ALTER TABLE `xtab_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_person`
--

DROP TABLE IF EXISTS `xtab_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_person` (
  `person_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` char(20) NOT NULL DEFAULT '',
  `salary` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `dept_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `loc_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`person_id`),
  KEY `cat_id` (`cat_id`),
  KEY `dept_id` (`dept_id`),
  KEY `loc_id` (`loc_id`),
  CONSTRAINT `0_33` FOREIGN KEY (`loc_id`) REFERENCES `xtab_locations` (`loc_id`) ON DELETE CASCADE,
  CONSTRAINT `0_34` FOREIGN KEY (`dept_id`) REFERENCES `xtab_departments` (`dept_id`) ON DELETE CASCADE,
  CONSTRAINT `0_35` FOREIGN KEY (`cat_id`) REFERENCES `xtab_categories` (`cat_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_person`
--

LOCK TABLES `xtab_person` WRITE;
/*!40000 ALTER TABLE `xtab_person` DISABLE KEYS */;
INSERT INTO `xtab_person` VALUES (1,'John',5000,'m',1,2,2),(2,'Mario',6000,'m',1,1,1),(3,'Frank',5000,'m',2,1,5),(4,'Otto',6000,'m',3,1,4),(5,'Susan',5500,'f',2,3,3),(6,'Martin',5500,'m',2,2,2),(7,'Mary',5500,'f',1,1,4),(8,'Bill',5000,'m',1,1,3),(9,'June',6000,'f',3,3,1);
/*!40000 ALTER TABLE `xtab_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xtab_sales`
--

DROP TABLE IF EXISTS `xtab_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xtab_sales` (
  `person_id` int(10) unsigned NOT NULL DEFAULT '0',
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_date` date NOT NULL DEFAULT '0000-00-00',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`person_id`,`class_id`,`sale_date`,`customer_id`),
  KEY `person_id` (`person_id`),
  KEY `class_id` (`class_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `0_37` FOREIGN KEY (`person_id`) REFERENCES `xtab_person` (`person_id`) ON DELETE CASCADE,
  CONSTRAINT `0_38` FOREIGN KEY (`customer_id`) REFERENCES `xtab_customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `0_39` FOREIGN KEY (`class_id`) REFERENCES `xtab_class` (`class_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xtab_sales`
--

LOCK TABLES `xtab_sales` WRITE;
/*!40000 ALTER TABLE `xtab_sales` DISABLE KEYS */;
INSERT INTO `xtab_sales` VALUES (3,1,'2003-10-01',1,23000),(3,2,'2003-10-12',3,45000),(3,3,'2003-11-04',1,60000),(5,1,'2003-11-02',2,25000),(5,3,'2003-10-13',4,18000),(6,2,'2003-10-12',4,50000);
/*!40000 ALTER TABLE `xtab_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_personnel`
--

/*!50001 DROP VIEW IF EXISTS `all_personnel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`msandbox`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_personnel` AS select `xtab_countries`.`country` AS `country`,`xtab_locations`.`loc` AS `location`,`xtab_person`.`name` AS `name`,`xtab_person`.`salary` AS `salary`,`xtab_person`.`gender` AS `gender`,`xtab_departments`.`department` AS `department` from (((`xtab_countries` join `xtab_locations` on((`xtab_countries`.`country_id` = `xtab_locations`.`country_id`))) join `xtab_person` on((`xtab_locations`.`loc_id` = `xtab_person`.`loc_id`))) join `xtab_departments` on((`xtab_person`.`dept_id` = `xtab_departments`.`dept_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-06 16:38:53
