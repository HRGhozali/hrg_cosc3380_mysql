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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeid` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_email` varchar(64) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `position` varchar(32) NOT NULL,
  `hiredate` date NOT NULL,
  `worksat` int unsigned DEFAULT NULL,
  `name_firstname` varchar(32) NOT NULL,
  `name_middlename` varchar(32) DEFAULT NULL,
  `name_lastname` varchar(32) NOT NULL,
  `workschedule` varchar(64) NOT NULL,
  `salary` double NOT NULL,
  `managerid` int unsigned DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`employeeid`),
  UNIQUE KEY `employeeid_UNIQUE` (`employeeid`),
  KEY `employees_managerid_INDEX` (`managerid`) /*!80000 INVISIBLE */,
  KEY `employees_worksat_INDEX` (`worksat`) /*!80000 INVISIBLE */,
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`worksat`) REFERENCES `outlets` (`outletid`),
  CONSTRAINT `employees_managerid` FOREIGN KEY (`managerid`) REFERENCES `employees` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='change worksat later!';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1000,'EleanorWhitman@gmail.com','password123','manager','2013-10-28',1,'Eleanor',NULL,'Whitman','THU-TUE',52850,NULL,0),(1001,'EthanCarter@gmail.com','TalkativeBeetle83','cashier','2018-12-14',1,'Ethan','James','Carter','MON-FRI',35068,1000,0),(1002,'OliviaJ@gmail.com','ZigguratGenus12','cashier','2021-06-28',1,'Olivia',NULL,'Johnson','FRI-TUE',32115,1000,0),(1003,'LiamDavis1982@gmx.com','GermanMoray27','cashier','2022-02-12',1,'Liam',NULL,'Davis','SAT-MON',20210,1000,0),(1004,'RobertaP@gmx.com','BookOrchid43','manager','2014-07-25',2,'Roberta','Boyd','Pugh','MON-FRI',53450,NULL,0),(1005,'WilliamProv@gmx.com','PistonBanana19','cashier','2020-12-03',2,'William',NULL,'Provencher','MON-THU',43080,1004,0),(1006,'KendallYi@gmx.com','PlatonicBuoy05','cashier','2021-01-14',2,'Kendall','Lian','Yi','TUE-FRI',42895,1004,0),(1007,'MinaMelissa@hotmail.com','ToxoidSplit55','cashier','2022-03-28',2,'Melissa',NULL,'Mina','SUN-THU',42675,1004,0),(1008,'WilliamClay@hotmail.com','BookFamily17','manager','2017-05-18',3,'William','Charlie','Clayton','MON-FRI',51095,NULL,0),(1009,'MarkNelson@gmail.com','GladiatorCopy83','cashier','2019-04-14',3,'Mark','Patrick','Nelson','MON-THU',44750,1008,0),(1010,'JamesMcFadden@gmail.com','BabylonianBurton30','cashier','2019-11-14',3,'James','Washington','McFadden','THU-MON',43500,1008,0),(1011,'AaronB1990@gmail.com','EmotionallyBeet99','cashier','2021-05-25',3,'Aaron',NULL,'Burton','MON-FRI',42950,1008,0),(1012,'GrantSam@gmail.com','MillionTurner38','manager','2014-07-15',4,'Sam','Jackson','Grant','MON-FRI',53065,NULL,0),(1013,'CynthiaSmith@outlook.net','ChromePublishable92','cashier','2016-03-15',4,'Cynthia','Charles','Smith','FRI-SUN',35939,1012,0),(1014,'VeronicaNowak@outlook.net','BonnetWatch80','cashier','2018-06-25',4,'Veronica','Parrish','Nowak','FRI-TUE',45920,1012,0),(1015,'JonathonBr@outlook.net','DetectableTense41','cashier','2022-04-10',4,'Jonathon',NULL,'Brown','MON-FRI',44320,1012,0),(1016,'TimothySamson@outlook.net','RiserProportions19','manager','2015-01-10',1,'Timothy','Fulgham','Samson','MON-FRI',68750,NULL,0),(1017,'MichaelWard@outlook.net','StealthyHousekeeper89','veterinarian','2016-09-10',5,'Michael',NULL,'Ward','TUE-SAT',59455,1016,0),(1018,'RalphGomez@gmx.com','FinanceImage41','veterinarian','2017-02-19',5,'Ralph','Eduardo','Gomez','WED-SUN',57575,1016,0),(1019,'SarahSmith@gmx.com','HoneysuckleCharge26','veterinarian','2019-12-29',5,'Sarah','Morgan','Smith','MON-FRI',56904,1016,0),(1020,'TomBello@gmx.com','SafeguardSpritz99','manager','2013-03-18',6,'Tom',NULL,'Bello','MON-FRI',67750,NULL,0),(1022,'LisaCallahan@gmx.com','LessonBreak47','zookeeper','2013-04-17',6,'Lisa','Thomas','Callahan','MON-FRI',58970,1020,0),(1023,'PatriciaPease@gmail.com','PhilosophistLance58','zookeeper','2013-09-10',6,'Patricia','Nicole','Pease','TUE-SAT',57980,1020,0),(1024,'WarrenSteven@gmail.com','MoonShell23','zookeeper','2014-04-21',6,'Steven','Adam','Warren','TUE-SAT',57560,1020,0),(1025,'CharlesBrock@gmail.com','NorthwardTemper63','zookeeper','2014-05-30',6,'Charles','Rory','Brock','WED-SUN',57240,1020,0),(1026,'GwennWilliams@gmail.com','SoftheartedLiturgy03','zookeeper','2014-12-13',6,'Gwenn',NULL,'Williams','WED-SUN',56840,1020,0),(1027,'KristenGeorge@gmail.com','IronwoodFlood83','zookeeper','2015-01-09',6,'Kristen','Elizabeth','George','THU-MON',56590,1020,0),(1028,'AlexM@gmx.com','password123','admin','2012-09-23',NULL,'Alex',NULL,'Modd','SUN-SAT',68000,NULL,0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`databasegroup11`@`zoodatabasegroup11.mysql.database.azure.com`*/ /*!50003 TRIGGER `InformManagerOnNewEmployee` AFTER INSERT ON `employees` FOR EACH ROW BEGIN
    DECLARE messagetemp VARCHAR(160);
    IF new.managerid IS NOT NULL THEN
        SET @messagetemp := CONCAT("A new employee, ", new.name_firstname, " ", new.name_lastname, ", has been assigned to you.");
		IF new.name_middlename IS NOT NULL THEN
			SET @messagetemp := CONCAT("A new employee, ", new.name_firstname, " ", new.name_middlename, " ", new.name_lastname, ", has been assigned to you.");
        END IF;
        INSERT INTO notifications(employeeid, notificationtimestamp, notificationcontent)
        VALUES (new.managerid, NOW(), @messagetemp);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 14:04:01
