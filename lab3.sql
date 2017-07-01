-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: lab3
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `lab3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lab3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lab3`;

--
-- Table structure for table `contributor1`
--

DROP TABLE IF EXISTS `contributor1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributor1` (
  `Attribute1` int(11) NOT NULL AUTO_INCREMENT,
  `Attribute2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Attribute1`),
  UNIQUE KEY `Attribute2` (`Attribute2`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor1`
--

LOCK TABLES `contributor1` WRITE;
/*!40000 ALTER TABLE `contributor1` DISABLE KEYS */;
INSERT INTO `contributor1` VALUES (1,'Key 1'),(2,'Key 2'),(3,'Key 3'),(4,'Key 4');
/*!40000 ALTER TABLE `contributor1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contributor2`
--

DROP TABLE IF EXISTS `contributor2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contributor2` (
  `Data1` int(11) NOT NULL AUTO_INCREMENT,
  `Data2` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Data1`),
  UNIQUE KEY `Data2` (`Data2`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributor2`
--

LOCK TABLES `contributor2` WRITE;
/*!40000 ALTER TABLE `contributor2` DISABLE KEYS */;
INSERT INTO `contributor2` VALUES (1,'Lock 1'),(2,'Lock 2'),(3,'Lock 3'),(4,'Lock 4');
/*!40000 ALTER TABLE `contributor2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resulttable`
--

DROP TABLE IF EXISTS `resulttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resulttable` (
  `Attribute2` varchar(25) DEFAULT NULL,
  `Data2` varchar(25) DEFAULT NULL,
  UNIQUE KEY `pkresulttable` (`Attribute2`,`Data2`),
  KEY `Data2` (`Data2`),
  CONSTRAINT `resulttable_ibfk_1` FOREIGN KEY (`Attribute2`) REFERENCES `contributor1` (`Attribute2`),
  CONSTRAINT `resulttable_ibfk_2` FOREIGN KEY (`Data2`) REFERENCES `contributor2` (`Data2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resulttable`
--

LOCK TABLES `resulttable` WRITE;
/*!40000 ALTER TABLE `resulttable` DISABLE KEYS */;
INSERT INTO `resulttable` VALUES ('Key 1','Lock 1'),('Key 2','Lock 2'),('Key 3','Lock 3'),('Key 4','Lock 4');
/*!40000 ALTER TABLE `resulttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-01 13:55:06
