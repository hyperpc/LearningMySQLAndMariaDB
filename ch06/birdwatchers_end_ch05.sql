-- MySQL dump 10.16  Distrib 10.1.23-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: birdwatchers
-- ------------------------------------------------------
-- Server version	10.1.23-MariaDB

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
-- Table structure for table `humans`
--

DROP TABLE IF EXISTS `humans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `humans` (
  `human_id` int(11) NOT NULL AUTO_INCREMENT,
  `formal_title` varchar(25) DEFAULT NULL,
  `name_first` varchar(25) DEFAULT NULL,
  `name_last` varchar(25) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `country_id` char(2) DEFAULT NULL,
  `membership_type` enum('basic','premium') DEFAULT NULL,
  `membership_expiration` date DEFAULT NULL,
  PRIMARY KEY (`human_id`),
  KEY `human_names` (`name_last`,`name_first`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `humans`
--

LOCK TABLES `humans` WRITE;
/*!40000 ALTER TABLE `humans` DISABLE KEYS */;
INSERT INTO `humans` VALUES (1,'Mr.','Russell','Dyer','russell@mysqlresources.com',NULL,NULL,NULL),(2,'Mr.','Richard','Stringer','richard@mysqlresources.com',NULL,NULL,NULL),(3,'Ms.','Rusty','Osborne','rusty@mysqlresources.com',NULL,NULL,NULL),(4,'Ms.','Lexi','Hollar','alexandra@mysqlresources.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `humans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `human_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `date_answered` datetime DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answers`
--

LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (1,29,1,'2017-06-16 23:46:37','2'),(2,29,2,'2017-06-16 23:46:37','2'),(3,35,1,'2017-06-16 23:46:37','1'),(4,35,2,'2017-06-16 23:46:37','1'),(5,26,1,'2017-06-16 23:46:37','2'),(6,26,2,'2017-06-16 23:46:37','1'),(7,27,1,'2017-06-16 23:46:37','2'),(8,27,2,'2017-06-16 23:46:37','4'),(9,16,1,'2017-06-16 23:46:37','3'),(10,3,1,'2017-06-16 23:46:37','1'),(11,3,2,'2017-06-16 23:46:37','1');
/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `choices` blob,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,1,'What\'s your favorite setting for bird-watching?','\0\0\0\0\0\0s\0\0�\0123forestshorebackyard'),(2,2,'Which type of birds do you like best?','\0\0\0\0\0\0�\0\0�\0\0C1234perchingshorefowlrapture');
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Favorite Birding Location'),(2,'Preferred Birds');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-18 23:01:32
