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
-- Table structure for table `phonebank`
--

DROP TABLE IF EXISTS `phonebank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonebank` (
  `Pb_id` char(15) NOT NULL,
  `Reason` varchar(225) DEFAULT NULL,
  `Message` varchar(225) DEFAULT NULL,
  `Campaign_id` char(13) DEFAULT NULL,
  `Pb_date` date DEFAULT NULL,
  PRIMARY KEY (`Pb_id`),
  KEY `Campaign_id` (`Campaign_id`),
  CONSTRAINT `phonebank_ibfk_1` FOREIGN KEY (`Campaign_id`) REFERENCES `campaign` (`Campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebank`
--

LOCK TABLES `phonebank` WRITE;
/*!40000 ALTER TABLE `phonebank` DISABLE KEYS */;
INSERT INTO `phonebank` VALUES ('1','Donation',NULL,'3','2021-03-25'),('2','Donation',NULL,'2','2021-03-26'),('3','Donation','','1','2021-03-27'),('4','Vote',NULL,'5','2021-03-28'),('5','Vote',NULL,'4','2021-05-25');
/*!40000 ALTER TABLE `phonebank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 22:07:33
