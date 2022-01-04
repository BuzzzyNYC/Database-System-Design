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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `Campaign_id` char(13) NOT NULL,
  `End_date` date DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `End_time` time DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `Campaign_Name` varchar(225) DEFAULT NULL,
  `Capacity` char(30) DEFAULT NULL,
  `Location_address` varchar(35) DEFAULT NULL,
  `Location_name` varchar(35) DEFAULT NULL,
  `Candidate_id` char(13) DEFAULT NULL,
  PRIMARY KEY (`Campaign_id`),
  KEY `Candidate_id` (`Candidate_id`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`Candidate_id`) REFERENCES `contact` (`Contact_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES ('1','2021-02-15','2021-09-10','13:00:00',NULL,'Equality','120','4222 Ketcham Str','Central Park','1'),('2','2021-02-16','2021-09-11','14:00:00',NULL,'Integrity','200','6523 Union Turnpike','Madison Square','3'),('3','2021-02-17','2021-09-12','15:00:00',NULL,'Pride','250','87 New York Ave','Queens Library','2'),('4','2021-02-18','2021-09-13','16:00:00',NULL,'Safety','100','234 Elmhurst St','Court House','5'),('5','2021-02-19','2021-09-14','13:30:00',NULL,'Community','200','23 Trang Nguyen','City Hall','4');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
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
