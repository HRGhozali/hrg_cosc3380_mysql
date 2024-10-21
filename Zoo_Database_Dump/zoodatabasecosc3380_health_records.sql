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
-- Table structure for table `health_records`
--

DROP TABLE IF EXISTS `health_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_records` (
  `recordid` int unsigned NOT NULL AUTO_INCREMENT,
  `animalid` int unsigned NOT NULL,
  `veterinarianid` int unsigned NOT NULL,
  `visitreason` varchar(64) NOT NULL,
  `visitdate` date NOT NULL,
  `diagnosis` varchar(64) NOT NULL,
  `treatment` varchar(64) NOT NULL,
  `notes` varchar(64) DEFAULT NULL,
  `cost` double NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`recordid`),
  UNIQUE KEY `recordid_UNIQUE` (`recordid`),
  KEY `animalid_INDEX` (`animalid`) /*!80000 INVISIBLE */,
  KEY `veterinarianid_INDEX` (`veterinarianid`),
  CONSTRAINT `animalid` FOREIGN KEY (`animalid`) REFERENCES `animals` (`animalid`),
  CONSTRAINT `veterinarianid` FOREIGN KEY (`veterinarianid`) REFERENCES `employees` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_records`
--

LOCK TABLES `health_records` WRITE;
/*!40000 ALTER TABLE `health_records` DISABLE KEYS */;
INSERT INTO `health_records` VALUES (1,1,1016,'Initial Checkup','2015-12-16','Healthy','None',NULL,90,0),(2,2,1019,'Initial Checkup','2015-12-16','Healthy','None',NULL,91,0),(3,3,1017,'Initial Checkup','2014-09-21','Healthy','None',NULL,89,0),(4,4,1016,'Initial Checkup','2017-01-28','Healthy','None',NULL,95,0),(5,5,1019,'Initial Checkup','2017-03-04','Hairline fracture','None','No treatment necessary, but healing progress will be monitored',100,0),(6,6,1018,'Initial Checkup','2011-04-15','Healthy','None',NULL,109,0),(7,7,1018,'Initial Checkup','2011-04-15','Healthy','None',NULL,111,0),(8,8,1017,'Initial Checkup','2018-12-04','Healthy','None',NULL,108,0),(9,9,1017,'Initial Checkup','2016-08-22','Small laceration with mild infection','Cleaned wound and administered antibiotics',NULL,115,0),(10,10,1016,'Initial Checkup','2013-06-12','Healthy','None',NULL,107,0),(11,11,1019,'Initial Checkup','2020-06-23','Healthy','None',NULL,105,0),(12,12,1018,'Initial Checkup','2010-08-21','Healthy','None',NULL,120,0),(13,13,1019,'Initial Checkup','2011-02-12','Healthy','None',NULL,123,0),(14,14,1017,'Initial Checkup','2013-01-03','Healthy','None',NULL,119,0),(15,15,1018,'Initial Checkup','2013-01-03','Tapeworm infestation','Administered an anthelmintic treatment','Needs to return in 1 week to check progress',135,0),(16,16,1018,'Initial Checkup','2002-05-29','Healthy','None',NULL,150,0),(17,17,1019,'Initial Checkup','2003-03-13','Healthy','None',NULL,153,0),(18,18,1016,'Initial Checkup','2003-12-01','Healthy','None',NULL,146,0),(19,19,1016,'Initial Checkup','2008-09-28','Healthy','None',NULL,157,0),(20,20,1018,'Initial Checkup','2005-09-12','Healthy','None',NULL,116,0),(21,27,1016,'Initial Checkup','2014-02-12','Healthy','None',NULL,120,0),(22,21,1017,'Initial Checkup','2008-03-25','Healthy','None',NULL,121,0),(23,22,1019,'Initial Checkup','2012-11-08','Gum inflammation on lower right teeth','Administered antibiotics','Needs checkup in 3 days to ensure issue has been corrected',141,0),(24,23,1018,'Initial Checkup','2010-06-19','Healthhy','None',NULL,127,0),(25,24,1017,'Initial Checkup','2006-10-18','Healthy','None',NULL,118,0),(26,25,1016,'Initial Checkup','2007-04-14','Healthy','None',NULL,124,0),(27,26,1018,'Initial Checkup','2009-12-07','Healthy','None',NULL,117,0),(28,28,1016,'Initial Checkup','2009-07-15','Healthy','None',NULL,105,0),(29,29,1017,'Initial Checkup','2010-04-22','Healthy','None',NULL,107,0),(30,30,1017,'Initial Checkup','2013-09-09','Type 2 Diabetes','Low-glucose diet','Will be kept on special diet until glucose levels normalize',113,0),(31,31,1019,'Infection/Disease','2023-09-17','Ear mites','Ivermectin','Needs to return daily for 10 days for more treatments',230,0),(32,32,1018,'Initial Checkup','2010-12-03','Healthy','None',NULL,100,0),(33,33,1016,'Initial Checkup','2012-06-18','Healthy','None',NULL,106,0),(34,15,1018,'Routine Checkup','2023-09-17','Healthy','None','Vitals are good and animal is healthy.',22,0),(35,22,1019,'Routine Checkup','2023-09-17','Healthy','None','No issues found',35,0),(36,17,1017,'Infection/Disease','2023-09-19','Anemia','Prescribed iron supplements','Animal was acting lethargic due to low iron',150,0),(37,8,1019,'Infection/Disease','2023-09-24','Bacterial infection','Prescribed antibacterial medication',NULL,520,0),(38,31,1016,'Infection/Disease','2023-09-22','Ringworm','Clotrimazole','Needs checkup in 5 days to monitor progress',975,0),(39,27,1017,'Injury','2023-09-20','Ingested irritating substance','Stomach pump','Animal ate trash accidentally dropped into enclosure by guest',875,0),(40,19,1018,'Injury','2023-09-21','Fracture on left leg','Splint attached','Splint will be removed after 4 weeks',2450,0),(41,2,1016,'Routine Checkup','2023-09-01','Overweight','Diet portions will be lowered',NULL,25,0),(42,15,1017,'Routine Checkup','2023-09-03','Healthy','None',NULL,28,0),(43,8,1017,'Routine Checkup','2023-09-04','Healthy','None',NULL,26,0),(44,10,1018,'Injury','2023-09-05','Laceration','12 stitches on stomach','Animal will return in 3 weeks to remove stitches',770,0),(45,27,1016,'Infection/Disease','2023-09-07','Bacterial infection','Perscribed antibacterial medication','Animal will take medication for 4 weeks',450,0),(46,24,1019,'Routine Checkup','2023-09-07','Abscessed tooth','Top right molar was removed',NULL,1275,0),(47,15,1017,'Routine Checkup','2023-09-09','Healthy','None',NULL,30,0),(48,31,1016,'Routine Checkup','2023-09-10','Healthy','None',NULL,27,0),(49,29,1019,'Infection/Disease','2023-09-15','Infected wound on left foot','Wound site cleaned and given penicilin injection',NULL,210,0),(50,24,1017,'Injury','2023-09-24','Sprained left ankle','Administered paint medication','Ankle\'s healing process will be monitored',354,0),(51,6,1018,'Routine Checkup','2023-09-26','Healthy','None',NULL,37,0),(52,33,1017,'Routine Checkup','2023-09-27','Healthy','None',NULL,32,0),(53,14,1016,'Routine Checkup','2023-10-17','Healthy','None',NULL,49,0),(54,20,1019,'Routine Checkup','2023-09-29','Healthy','None',NULL,49,0),(55,2,1018,'Infection/Disease','2023-09-30','Influenza','Antiviral medication perscribed','Medication will be taken for 2 weeks',149,0),(56,19,1016,'Infection/Disease','2023-10-01','Foot-and-mouth disease','Antiviral medication perscribed','Medication will be taken for 6 weeks',279,0),(57,22,1017,'Injury','2023-10-02','Fractured clavicle','Bone reset and splint attached','Splint will be removed in 8 weeks',2250,0),(58,4,1017,'Routine Checkup','2023-10-03','Overweight','Diet portions will be lowered',NULL,29,0),(59,25,1018,'Injury','2023-10-05','Broken ankle','Ankle reset and cast attached','Cast will be worn for 12 weeks',2850,0),(60,15,1017,'Surgery','2023-10-07','Benign cyst on armpit','Cyst removed','Antibiotics will be administered for 2 weeks',3980,0),(61,9,1019,'Surgery','2023-09-05','Mass found within ear canal','Mass removed and biopsy performed','Mass was benign',4380,0),(62,28,1018,'Surgery','2023-09-18','Gangrene in left small toe','Amputation of left small toe',NULL,3879,0),(63,3,1017,'Surgery','2023-09-26','Patella luxation','ACL and knee cap repair','Animal will be kept in holding cell for 2 weeks to recover',8725,0),(64,14,1016,'Surgery','2023-10-01','Bladder stones found','Bladder stones broken up and removed','Will return in 1 week to ensure all stones removed',4370,0),(65,12,1017,'Routine Checkup','2023-10-06','Healthy','None',NULL,35,0),(66,24,1019,'Infection/Disease','2023-10-08','Influenza','Antiviral medication perscribed','Medication will be taken for 10 days',430,0),(67,16,1016,'Infection/Disease','2023-10-10','Tapeworm infection','Anthelmintic treatment administered','Return in 1 week to check progress',587,0),(68,17,1016,'Routine Checkup','2023-10-11','Healthy','None',NULL,42,0),(69,5,1019,'Routine Checkup','2023-10-12','Healthy','None',NULL,49,0),(70,33,1017,'Routine Checkup','2023-10-14','Cataracts','None','Check progression of cataracts in 1 week',78,0),(71,27,1018,'Injury','2023-10-15','Hip dysplasia','Hip brace installed','Remove brace after 8 weeks',1087,0),(72,23,1016,'Infection/Disease','2023-10-16','Nipah virus','First round of antiviral medication administered','Second round will be administered in 5 days',476,0),(73,10,1019,'Routine Checkup','2023-09-28','Hairline fracture','None','No treatment needed, but healing process will be monitored',330,0),(74,9,1017,'Injury','2023-10-19','Hairline fracture','None','No treatment needed, but healing process will be monitored',376,0),(75,27,1016,'Injury','2023-10-21','Chipped tooth','Removal of chipped molar',NULL,2498,0),(76,30,1016,'Surgery','2023-10-22','Cancerous mass found','Cancerous mass removed and radiation treatment administered','Return in 8 weeks to check for remission',8997,0),(77,21,1018,'Injury','2023-10-23','Dislocated shoulder','Shoulder reset and pain medicine administered',NULL,1765,0),(78,15,1019,'Surgery','2023-10-25','Burst appendix','Appendectomy performed',NULL,5876,0);
/*!40000 ALTER TABLE `health_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 14:03:58
