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
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `guestid` int unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(256) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `name_firstname` varchar(32) NOT NULL,
  `name_middlename` varchar(32) DEFAULT NULL,
  `name_lastname` varchar(32) NOT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`guestid`),
  UNIQUE KEY `guestid_UNIQUE` (`guestid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Change address_street, address_city, address_state, phonenumber into multivalued attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'$2b$05$XNBRE9tW6lFsJ.ms8ydqYeLUpCVPDw/9VYBuJFQB6mEWYidF04Zuu','MarkCWard@dayrep.com','8329453752','Mark','Cameron','Ward',0),(2,'$2b$05$WnEr3wi0Hc5.HH.OW.8/QurY6jbSl7KQQ5zsgxGiqzvzk4dQb833C','WilliamPPatterson@dayrep.com','8322129173','William','Parson','Patterson',0),(3,'$2b$05$LNF21huU/sKnubAB43Gey.PEPEj.NnXAyRLdAoBmlV0J8cyvKzgou','FrancesSBillings@armyspy.com','7134156972','Frances','Simon','Billings',0),(4,'$2b$05$HzqlAlEMOUqVd408G1q/lOlVa0HJz29vFzM0QI42Ztu8SkcNz02D.','ChristopherWAndrews@rhyta.com','7133313582','Christopher','Walter','Andrews',0),(5,'$2b$05$U0HVFNZd0dYeNucWbfpZce15T5nFLZAAX/EKsaXTKUreIXNFeCVou','MyrnaFDavis@armyspy.com','2812481732','Myrna','Florence','Davis',0),(6,'$2b$05$TrBlp0erMoS/WMs5/AMxrOriXKEUADtKK/JeplBDfeNaiMN5mWXbK','JodyCBackes@teleworm.us','6067769885','Jody','Backes','Careli',0),(7,'$2b$05$CXcBicdS3uo7FRFDj1oKeu40wWHRjrzjySLFo3hcUFm.4tyVAQFXG','EstherJLyons@dayrep.com','4174479655','Esther','Lyons','Jane',0),(8,'$2b$05$ZuhDUiK05sZb99BtlFSc8eNr5KVaN3fPm1lklQBOkFbnN/QLNPOY6','JohnOVega@jourrapide.com','7037136753','John','Vega','Orion',0),(9,'$2b$05$YclYybsBgflKVbWl0BejxuD3lp71CkjszhuO/t71ne9KoIl8WwKNi','MichelleTHyer@teleworm.us','9188620688','Michelle','Hyer','Thomas',0),(10,'$2b$05$pZNBfUdJLZgTNS.ZjrPwzOtIbzIx/VTgsm6ZrxUYB1dzFkyi5mvNa','WaltonAEnglish@dayrep.com','4258963748','Walton','English','Albert',0),(11,'$2b$05$Z3KCSOdZCY8mHFTZSN2Pu./W0Iu04fyPwhRf7bPK6axtBEM9FBwXC','VictoriaBMaynard@teleworm.us','8032709867','Victoria','Maynard','Brittany',0),(12,'$2b$05$HeFGKBQ2WXd7fH42sWY88eRLsLRM4wLdQD5hrWnS7NH.Ec3lUSD/6','CathyCFuller@dayrep.com','7602846311','Cathy','Fuller','Carter',0),(13,'$2b$05$kOdC8ObF5hew2xxIq.H4Ge5QcoRkRkYc8Z/AITycSsWWWH8Hh1zIy','MelanieSLang@dayrep.com','2283868710','Melanie','Lang','Seymour',0),(14,'$2b$05$71Uz4ssQoCB7bsUEmvsL2.Mv1TjS3tJwsbi0n7wT2JcRWSqEVzAiO','RandallPWalker@armyspy.com','9788246366','Randall','Walker','Patrick',0),(15,'$2b$05$LzlVl50.CklBEJ9qj5CukuV2jPBBVkJu83tGgoh95U1DuvNIpijpO','SharonTGutierrez@jourrapide.com','3196210952','Sharon','Gutierrez','Thompson',0),(16,'$2b$05$KXPM9/T7mzNzqaAIZeXjru44U0nb/qIGCgrtG4.AjHtLB4Q4B7hAK','RussellITaylor@rhyta.com','6152336741','Russell','Taylor','Imogen',0),(17,'$2b$05$8WDUSsqtttU/O.raWQtNLeUS1xmsQZex71NhLgkzo3trd2SVZ/FKi','RobertGTinsley@armyspy.com','3343358723','Robert','Gilbert','Tinsley',0),(18,'$2b$05$q4fgfgzGMjhVkR56rL.bW.DqL//owb1bu6PsY8j5TdGRrj/0Gg4hC','MamieDOwnby@jourrapide.com','5853346034','Mamie','Dawson','Ownby',0),(19,'$2b$05$NVCrRrQEhQZm2pwlROFT/eDR6AH63Y1oa.8S46AO8Kcz09NY6C0SS','SeanJStella@jourrapide.com','3185478781','Sean','Johnson','Stella',0),(20,'$2b$05$3xGyYU/pc2DMs2YUu/HC/.8vEEF6hYYmUWaUdc2DNcAD7v7/.ln2m','IvyJSmall@rhyta.com','2547754366','Ivy','Jackson','Small',0),(21,'$2b$05$XIARRcCXGeXnbRca.RiPb.vhL5A93ICnOPgz2ofG8hk5Uecj.KH0.','WilliamBEaton@dayrep.com','2817071773','William','Boyd','Eaton',0),(22,'$2b$05$CQXiXckaNAuaFF1XeWeaROlsg.mX6nrYHXUjYsReUMihIqvH66PL.','RobertRBoynton@armyspy.com','2814980570','Robert','Raymond','Boynton',0),(23,'$2b$05$XiP2LccCGbWqOtPrkKxxr.lCT32jQGi/Wu4E48IG42rBVbRpHJqdS','GeorgiaJLopez@dayrep.com','7138017832','Georgia','Janice','Lopez',0),(24,'$2b$05$Z6BBYsihxO7K9Pr4wPJWze301ExlpHUQ/QvO1YfCwFkPwXHz1M9ey','FrederickBSmith@dayrep.com','7135396746','Frederick','Brolin','Smith',0),(25,'$2b$05$glEuXKH6EkNK8KHa2nOqbOix8t1wUhY1JFH/SsJLg/d5ltUgdd6HW','AdrianaJLeslie@jourrapide.com','7136429158','Adriana','Jane','Leslie',0),(26,'$2b$05$qx1QW/i61U.2S.HorEoXXu2uBCmaL1NSlWA5nZfHL6KmUPB2GzYwS','Jasper@gmail.com','8319930987','Jasper','Hale','Orion',0);
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
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
