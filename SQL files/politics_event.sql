-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: politics
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `Event_id` char(15) NOT NULL,
  `Event_name` varchar(200) DEFAULT NULL,
  `Event_contact` varchar(150) DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `End_time` time DEFAULT NULL,
  `Location_name` varchar(100) DEFAULT NULL,
  `Location_address` varchar(100) DEFAULT NULL,
  `Capacity` char(55) DEFAULT NULL,
  `Campaign_name` varchar(225) DEFAULT NULL,
  `Campaign_id` char(13) DEFAULT NULL,
  PRIMARY KEY (`Event_id`),
  KEY `Campaign_id` (`Campaign_id`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`Campaign_id`) REFERENCES `campaign` (`Campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('1','Cloud',NULL,'2021-02-23',NULL,NULL,NULL,'Central Park','4222 Ketcham st','120','Equality','5'),('2','Vote',NULL,'2021-02-20',NULL,NULL,NULL,'Madison Square','23 New York ave','300','Integrity','3'),('3','Community',NULL,'2021-02-24',NULL,NULL,NULL,'Queens Library','23 Lily Allen st','250','Safety','2'),('4','Safety',NULL,'2021-02-21',NULL,NULL,NULL,'City Hall','234 Bronx St','200','Pride','1'),('5','Children',NULL,'2021-02-20',NULL,NULL,NULL,'Trump Tower','09 Hudson Yard','200','Community','4');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 22:07:35
