CREATE DATABASE  IF NOT EXISTS `zoodatabasecosc3380` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zoodatabasecosc3380`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: zoodatabasecosc3380
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donations` (
  `donationid` int unsigned NOT NULL AUTO_INCREMENT,
  `donorid` int unsigned NOT NULL,
  `donationamount` double NOT NULL,
  `donationpurpose` varchar(64) DEFAULT NULL,
  `donationdate` date NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`donationid`),
  UNIQUE KEY `donationid_UNIQUE` (`donationid`),
  KEY `donorid_idx` (`donorid`),
  CONSTRAINT `donorid` FOREIGN KEY (`donorid`) REFERENCES `guests` (`guestid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
INSERT INTO `donations` VALUES (1,8,80,'Conservation','2023-10-04',0),(2,10,100,'Conservation','2023-10-21',0),(3,8,60,'Research','2023-09-27',0),(4,7,50,'Education','2023-09-27',0),(5,10,25,'Outreach','2023-09-13',0),(6,6,18,'Research','2023-10-11',0),(7,1,50,'Conservation','2023-10-18',0),(8,3,125,'Research','2023-10-29',0),(9,2,35,'Outreach','2023-09-19',0),(10,9,54,'Research','2023-09-27',0),(11,4,60,'Research','2023-10-13',0),(12,5,95,'Education','2023-10-17',0),(13,11,100,'Outreach','2023-10-01',0),(14,12,75,'Conservation','2023-09-15',0),(15,14,38,'Education','2023-09-04',0),(16,15,150,'Research','2023-10-14',0),(17,13,86,'Conservation','2023-10-28',0),(18,18,200,'Education','2023-09-01',0),(19,7,75,'Research','2023-09-13',0),(20,3,100,'Education','2023-09-20',0),(21,12,95,'Conservation','2023-10-25',0),(22,23,35,'Research','2023-10-14',0),(23,19,75,'Outreach','2023-09-09',0),(24,17,100,'Conservation','2023-09-20',0),(25,7,150,'Research','2023-09-28',0),(26,19,25,'Education','2023-10-09',0),(27,10,10,'Research','2023-10-13',0),(28,25,200,'Outreach','2023-09-05',0),(29,12,185,'Conservation','2023-09-22',0),(30,7,40,'Education','2023-10-22',0),(31,15,55,'Research','2023-10-24',0),(32,8,95,'Education','2023-10-17',0),(33,22,70,'Outreach','2023-10-12',0),(34,24,20,'Outreach','2023-09-18',0),(35,16,60,'Conservation','2023-09-05',0),(36,20,100,'Education','2023-09-11',0),(37,14,90,'Conservation','2023-09-06',0),(38,9,30,'Education','2023-09-08',0),(39,23,15,'Research','2023-10-16',0),(40,12,20,'Outreach','2023-10-22',0),(41,9,10,'Research','2023-10-25',0),(42,5,140,'Education','2023-10-19',0),(43,11,30,'Research','2023-09-15',0),(44,10,15,'Outreach','2023-09-25',0),(45,20,35,'Research','2023-09-18',0);
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 14:04:00
