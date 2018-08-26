-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: busybody
-- ------------------------------------------------------
-- Server version	5.6.39-log

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
-- Table structure for table `workgen_users`
--

DROP TABLE IF EXISTS `workgen_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workgen_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workgen_users`
--

LOCK TABLES `workgen_users` WRITE;
/*!40000 ALTER TABLE `workgen_users` DISABLE KEYS */;
INSERT INTO `workgen_users` VALUES (1,'Tim','Quayle','tim.quayle@gmail.com','$2b$12$BbB25L8YwSxXA8HZwM7npuKCLuFTzWv4sDZprUAQnTiVnNplBHLES',0,'2018-05-31 21:28:57.552000','2018-05-31 21:28:57.552000'),(2,'Almine','Barton','a@a.com','$2b$12$71h4OTF.vqArg8up29hKC.UKOhGdbIWm3TDAtqz7f9jo3eWkjA4uK',0,'2018-06-06 00:52:43.672000','2018-06-06 00:52:43.672000'),(3,'Mickey','Mack','m@m.com','$2b$12$AEsS5sFliHUc01tb.6.x2.UaUAlimyPlGfwFVOQqf2PZyqAnJHmVa',0,'2018-06-06 18:51:55.553000','2018-06-06 18:51:55.553000'),(22,'Jane','Doe','j@j.com','$2b$12$.u4L44SQTKRWqujf7wIlt.3V55hAw2xM6pibCnUhM5r6MfvYsQfcS',0,'2018-06-09 01:00:00.143000','2018-06-09 01:00:00.144000'),(24,'Johnny','Gomes','u@u.com','$2b$12$ExvI4.L9vumQNQ6JX0N4NOim2TdwqrCJ77Vy2cbsL4zP0TFekRvm.',0,'2018-06-12 19:49:00.204000','2018-06-12 19:49:00.204000');
/*!40000 ALTER TABLE `workgen_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:32:16
