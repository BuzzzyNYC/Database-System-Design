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
-- Table structure for table `phonebank_record`
--

DROP TABLE IF EXISTS `phonebank_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonebank_record` (
  `Pbr_id` char(10) NOT NULL,
  `Voter_id` char(13) DEFAULT NULL,
  `Volunteer_id` char(13) DEFAULT NULL,
  `Phonebank_id` char(15) DEFAULT NULL,
  PRIMARY KEY (`Pbr_id`),
  KEY `Voter_id` (`Voter_id`),
  KEY `Volunteer_id` (`Volunteer_id`),
  KEY `Phonebank_id` (`Phonebank_id`),
  CONSTRAINT `phonebank_record_ibfk_1` FOREIGN KEY (`Voter_id`) REFERENCES `voter1` (`sos_voterid`),
  CONSTRAINT `phonebank_record_ibfk_2` FOREIGN KEY (`Volunteer_id`) REFERENCES `contact` (`Contact_Id`),
  CONSTRAINT `phonebank_record_ibfk_3` FOREIGN KEY (`Phonebank_id`) REFERENCES `phonebank` (`Pb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonebank_record`
--

LOCK TABLES `phonebank_record` WRITE;
/*!40000 ALTER TABLE `phonebank_record` DISABLE KEYS */;
INSERT INTO `phonebank_record` VALUES ('1','OH0014446027','2','1'),('2','OH0014446042','3','5'),('3',NULL,'4','4'),('4','OH0014446260','1','3'),('5',NULL,'5','2');
/*!40000 ALTER TABLE `phonebank_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 22:07:34
