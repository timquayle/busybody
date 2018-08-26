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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('850ig2dmwebpsy2cy3o5utza2k2l7bxq','NWU4YWQzZjY3Y2I4NWI1YTVmZDliZGVmMGI4NGI5OTA3MzI5YTg0Yjp7ImVtYWlsIjoidGltLnF1YXlsZUBnbWFpbC5jb20ifQ==','2018-06-19 20:38:40.105000'),('bhe98iedjtgyi2chb46jr4quvi1c8hll','MDMyY2FkMjU2OWI2NzU1YjAxMDkzYjUyM2JhYjkwZmQzZWM1NzYzMzp7ImVtYWlsIjoiYUBhLmNvbSJ9','2018-06-30 00:23:09.308000'),('fujsh1agce2lt04asctf9lx5upbyf4ky','MWY0ZmQ1MjhkOGMzNzQwMDVkYWUxMjYzOWFkMjY3NjM0ZDI2NDI5YTp7ImVtYWlsIjoibUBtLmNvbSJ9','2018-06-20 18:51:55.570000'),('rsztvgou9m7gsliiatnckw1n2nypo50i','MWY0ZmQ1MjhkOGMzNzQwMDVkYWUxMjYzOWFkMjY3NjM0ZDI2NDI5YTp7ImVtYWlsIjoibUBtLmNvbSJ9','2018-06-19 19:32:10.956000'),('ynfpkhmsg5gp0frwq1qehrjkgpo93kmr','NWU4YWQzZjY3Y2I4NWI1YTVmZDliZGVmMGI4NGI5OTA3MzI5YTg0Yjp7ImVtYWlsIjoidGltLnF1YXlsZUBnbWFpbC5jb20ifQ==','2018-06-19 23:06:31.267000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-16  9:32:15
