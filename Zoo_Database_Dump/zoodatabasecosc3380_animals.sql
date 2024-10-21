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
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `animalid` int unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(32) NOT NULL,
  `species` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `arrivaldate` date NOT NULL,
  `sex` char(1) NOT NULL,
  `enclosureid` int NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`animalid`),
  UNIQUE KEY `animalid_UNIQUE` (`animalid`),
  KEY `enclosureid_idx` (`enclosureid`),
  CONSTRAINT `enclosureid` FOREIGN KEY (`enclosureid`) REFERENCES `enclosures` (`enclosureid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'bird','penguin','Skipper','2015-12-16','2015-12-16','M',9437,0),(2,'bird','penguin','Pingu','2015-12-16','2015-12-16','M',9437,0),(3,'bird','penguin','Kowalski','2014-09-21','2014-09-21','M',9437,0),(4,'bird','penguin','Rico','2017-01-28','2017-01-28','F',9437,0),(5,'bird','penguin','Private',NULL,'2017-03-04','F',9437,0),(6,'mammal','lion','Simba','2011-04-15','2011-04-15','M',9438,0),(7,'mammal','lion','Lionel','2011-04-15','2011-04-15','M',9438,0),(8,'mammal','lion','Haydar',NULL,'2018-12-04','M',9438,0),(9,'mammal','lion','Arieh','2016-08-22','2016-08-22','F',9438,0),(10,'mammal','lion','Nala','2013-06-12','2013-06-12','F',9438,0),(11,'mammal','lion','Kiara',NULL,'2020-06-23','F',9438,0),(12,'mammal','giraffe','Jeffery','2010-08-21','2010-08-21','M',9439,0),(13,'mammal','giraffe','Boogie','2011-02-12','2011-02-12','M',9439,0),(14,'mammal','giraffe','Ellie',NULL,'2013-01-03','F',9439,0),(15,'mammal','giraffe','Elsie',NULL,'2013-01-03','F',9439,0),(16,'mammal','elephant','Achilles','2002-05-29','2002-05-29','M',9440,0),(17,'mammal','elephant','Adira','2003-03-13','2003-03-13','M',9440,0),(18,'mammal','elephant','Abigail','2003-12-01','2003-12-01','F',9440,0),(19,'mammal','elephant','Agatha','2008-09-28','2008-09-28','F',9440,0),(20,'mammal','gorilla','Titus','2005-09-12','2005-09-12','M',9441,0),(21,'mammal','gorilla','Aguka','2008-03-25','2008-03-25','M',9441,0),(22,'mammal','gorilla','Narame',NULL,'2012-11-08','M',9441,0),(23,'mammal','gorilla','Mkali',NULL,'2010-06-19','M',9441,0),(24,'mammal','gorilla','Lola','2006-10-18','2006-10-18','F',9441,0),(25,'mammal','gorilla','Zahra','2007-04-14','2007-04-14','F',9441,0),(26,'mammal','gorilla','Ishyaka','2009-12-07','2009-12-07','F',9441,0),(27,'mammal','gorilla','Momo',NULL,'2014-02-12','F',9441,0),(28,'mammal','panda','Po','2009-07-15','2009-07-15','M',9442,0),(29,'mammal','panda','Elvis','2010-04-22','2010-04-22','M',9442,0),(30,'mammal','panda','Kai','2013-09-09','2013-09-09','M',9442,0),(31,'mammal','panda','Kyra','2013-09-09','2013-09-09','F',9442,0),(32,'mammal','panda','Beara',NULL,'2010-12-03','F',9442,0),(33,'mammal','panda','Sonya',NULL,'2012-06-18','F',9442,0);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`databasegroup11`@`zoodatabasegroup11.mysql.database.azure.com`*/ /*!50003 TRIGGER `PreventAnimalInsertIfEnclosureNotOpen` BEFORE INSERT ON `animals` FOR EACH ROW BEGIN
    DECLARE enclosureAnimals INTEGER UNSIGNED;
    DECLARE enclosureCapacity INTEGER UNSIGNED;
    DECLARE enclosureStatus VARCHAR(32);
    SET @enclosureStatus := (SELECT status
							 FROM enclosures
							 WHERE enclosureid = new.enclosureid);
    SET @enclosureAnimals := (SELECT COUNT(*)
							  FROM animals
                              WHERE enclosureid = new.enclosureid AND deleted = 0);
	SET @enclosureCapacity := (SELECT capacity
							   FROM enclosures
							   WHERE enclosureid = new.enclosureid);
	if @enclosureStatus != "open" OR @enclosureCapacity = @enclosureAnimals THEN
		signal sqlstate '10000'
        SET MESSAGE_TEXT = "Cannot insert into that enclosure.";
	END IF;
    SET @enclosureAnimals := 1 + (SELECT COUNT(*)
							  FROM animals
                              WHERE enclosureid = new.enclosureid AND deleted = 0);
	IF @enclosureStatus = "open" AND @enclosureCapacity = @enclosureAnimals THEN
		UPDATE enclosures
		SET status = "full"
		WHERE enclosureid = new.enclosureid;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`databasegroup11`@`zoodatabasegroup11.mysql.database.azure.com`*/ /*!50003 TRIGGER `AdjustEnclosureStatusBeforeUpdate` BEFORE UPDATE ON `animals` FOR EACH ROW BEGIN
    DECLARE oldEnclosureStatus VARCHAR(32);
    DECLARE oldEnclosureAnimals INTEGER UNSIGNED;
    DECLARE oldEnclosureCapacity INTEGER UNSIGNED;
    DECLARE newEnclosureAnimals INTEGER UNSIGNED;
    DECLARE newEnclosureCapacity INTEGER UNSIGNED;
    DECLARE newEnclosureStatus VARCHAR(32);
    SET @newEnclosureStatus := (SELECT status
							 FROM enclosures
							 WHERE enclosureid = new.enclosureid);
    SET @newEnclosureAnimals := (SELECT COUNT(*)
							  FROM animals
                              WHERE enclosureid = new.enclosureid AND deleted = 0);
	SET @newEnclosureCapacity := (SELECT capacity
							   FROM enclosures
							   WHERE enclosureid = new.enclosureid);
	if new.deleted != 1 AND (@newEnclosureStatus != "open" OR @newEnclosureCapacity = @newEnclosureAnimals) THEN
		signal sqlstate '11000'
        SET MESSAGE_TEXT = "Cannot update. New enclosure is either full or not open to insertion.";
	END IF;
    SET @oldEnclosureStatus := (SELECT status
							 FROM enclosures
							 WHERE enclosureid = old.enclosureid);
    SET @oldEnclosureAnimals := -1 + (SELECT COUNT(*)
							  FROM animals
                              WHERE enclosureid = old.enclosureid AND deleted = 0);
	SET @oldEnclosureCapacity := (SELECT capacity
							   FROM enclosures
							   WHERE enclosureid = old.enclosureid);
	if new.deleted = 0 THEN
		SET @newEnclosureAnimals := 1 + (SELECT COUNT(*)
								  FROM animals
								  WHERE enclosureid = new.enclosureid AND deleted = 0);
	ELSE
		SET @newEnclosureAnimals := (SELECT COUNT(*)
								  FROM animals
								  WHERE enclosureid = new.enclosureid AND deleted = 0);
	END IF;
	IF @newEnclosureStatus = "open" AND @newEnclosureCapacity = @newEnclosureAnimals THEN
		UPDATE enclosures
		SET status = "full"
		WHERE enclosureid = new.enclosureid;
	END IF;
    IF @oldEnclosureStatus = "full" AND @oldEnclosureCapacity > @oldEnclosureAnimals THEN
		UPDATE enclosures
        SET status = "open"
        WHERE enclosureid = old.enclosureid;
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

-- Dump completed on 2024-10-21 14:03:58
