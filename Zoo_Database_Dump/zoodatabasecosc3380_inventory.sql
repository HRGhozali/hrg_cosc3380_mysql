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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `itemid` int unsigned NOT NULL AUTO_INCREMENT,
  `outletid` int unsigned NOT NULL,
  `itemname` varchar(64) NOT NULL,
  `itemcount` int unsigned NOT NULL,
  `itemprice` double unsigned NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemid`),
  UNIQUE KEY `itemid` (`itemid`),
  KEY `outletid` (`outletid`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`outletid`) REFERENCES `outlets` (`outletid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,'safari-hats',100,25.99,0),(2,1,'safari-tshirts',100,28.99,0),(3,1,'lion-plushies',50,24.99,0),(4,1,'giraffe-plushies',50,26.99,0),(5,2,'animal-figurine-sets',40,30.99,0),(6,2,'keychains',50,19.99,0),(7,2,'posters',20,16.99,0),(8,2,'necklaces',50,26.99,0),(9,3,'pizzas',40,5.99,0),(10,3,'sandwiches',50,3.99,0),(11,3,'boneless-wings',80,1.99,0),(12,3,'hot-dogs',50,2.99,0),(13,4,'ice-creams',80,1.99,0),(14,4,'slushies',50,3.99,0),(15,4,'popsicles',80,1.99,0),(16,4,'snow-cones',70,0.99,0),(17,5,'masks',200,0.99,0),(18,5,'swabs',500,0.99,0),(19,5,'gloves',500,0.99,0),(20,5,'brushes',100,0.99,0),(21,5,'iv-bags',1000,0.99,0),(22,5,'shampoo',200,0.99,0),(23,5,'bandages',200,0.99,0),(24,5,'scalpels',100,0.99,0),(25,5,'scissors',100,0.99,0),(26,5,'syringes',500,0.99,0),(27,5,'gauze-pads',500,0.99,0),(28,5,'antibiotics',500,0.99,0),(29,5,'painkillers',500,0.99,0),(30,5,'stethoscopes',20,0.99,0),(31,5,'thermometers',50,0.99,0),(32,5,'nail-clippers',100,0.99,0),(33,5,'dental-care-kits',100,0.99,0),(34,6,'alfalfa',100,0.99,0),(35,6,'banana',125,0.99,0),(36,6,'carrot',200,0.99,0),(37,6,'herring',150,0.99,0),(38,6,'lettuce',175,0.99,0),(39,6,'mackerel',150,0.99,0),(40,6,'ground-beef',200,0.99,0),(41,6,'bamboo-shoot',200,0.99,0);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 14:03:57
