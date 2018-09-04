-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dice
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `random_number`
--

DROP TABLE IF EXISTS `random_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `random_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dice1` int(11) DEFAULT NULL,
  `dice2` int(11) DEFAULT NULL,
  `dice3` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `random_number`
--

LOCK TABLES `random_number` WRITE;
/*!40000 ALTER TABLE `random_number` DISABLE KEYS */;
INSERT INTO `random_number` VALUES (26,6,4,2,'2018-09-04 08:38:48'),(27,1,2,6,'2018-09-04 08:46:31'),(28,5,6,2,'2018-09-04 08:46:37'),(29,6,2,1,'2018-09-04 08:46:42'),(30,4,3,5,'2018-09-04 08:46:45'),(31,4,5,6,'2018-09-04 08:56:27'),(32,3,6,5,'2018-09-04 08:56:29'),(33,6,2,5,'2018-09-04 08:56:29'),(34,1,5,5,'2018-09-04 09:20:23'),(35,1,5,2,'2018-09-04 09:20:37'),(36,6,4,2,'2018-09-04 09:21:36'),(37,4,4,2,'2018-09-04 09:37:55'),(38,1,1,2,'2018-09-04 09:37:55'),(39,3,4,1,'2018-09-04 09:37:56'),(40,6,4,2,'2018-09-04 09:37:56'),(41,4,1,3,'2018-09-04 09:37:56'),(42,6,3,2,'2018-09-04 09:37:56');
/*!40000 ALTER TABLE `random_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-04 17:56:40