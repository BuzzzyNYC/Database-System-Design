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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `Contact_Id` char(13) NOT NULL,
  `Note` varchar(150) DEFAULT NULL,
  `Homephone` char(13) DEFAULT NULL,
  `Cellphone` char(15) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Lname` varchar(25) DEFAULT NULL,
  `Fname` varchar(25) DEFAULT NULL,
  `Voter_id` char(13) DEFAULT NULL,
  `Social_media` varchar(30) DEFAULT NULL,
  `Party_aff` char(1) DEFAULT NULL,
  `Tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Contact_Id`),
  KEY `Voter_id` (`Voter_id`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`Voter_id`) REFERENCES `voter1` (`sos_voterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('1','Registered','9294232110','6734321116','annalee@gmail.com','Lee','Ann','OH0014470542','','C',''),('2','','9237461449','8746254337','tonymark@yahoo.com','tony','mark','OH0014470542','','',''),('3','Registered','2842451449','8487632225','bouenongan@gmail.com','boune','ngan','OH0014470542','','D',''),('4','Registered','9042741164','8763452667','hopebilly@yahoo.com','billy','hope','OH0014470542','','E',''),('5','','8424174116','7463256440','lilynguyen@gmail.com','nguyen','lily','OH0014470542','','','');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
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
