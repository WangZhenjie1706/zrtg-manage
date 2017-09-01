-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: demo1
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `demo1`
--

DROP TABLE IF EXISTS `demo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET gb2312 NOT NULL,
  `password` varchar(255) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `lv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo1`
--

LOCK TABLES `demo1` WRITE;
/*!40000 ALTER TABLE `demo1` DISABLE KEYS */;
INSERT INTO `demo1` VALUES (3,'test1','zrtgtest',123123,'1'),(4,'1','1',234234,'1'),(5,'2','2',123123,'2'),(9,'q','q',1213,'3');
/*!40000 ALTER TABLE `demo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final`
--

DROP TABLE IF EXISTS `final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `max` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final`
--

LOCK TABLES `final` WRITE;
/*!40000 ALTER TABLE `final` DISABLE KEYS */;
INSERT INTO `final` VALUES (1,1,1),(2,4,3),(3,3,3),(4,2,3),(5,5,5),(6,3,3),(7,2,2),(8,3,3),(9,1,1);
/*!40000 ALTER TABLE `final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(45) CHARACTER SET utf8 NOT NULL,
  `depart` varchar(45) CHARACTER SET utf8 NOT NULL,
  `s1` varchar(45) CHARACTER SET utf8 NOT NULL,
  `s2` varchar(45) CHARACTER SET utf8 NOT NULL,
  `s3` varchar(45) CHARACTER SET utf8 NOT NULL,
  `s4` varchar(45) CHARACTER SET utf8 NOT NULL,
  `s5` varchar(45) CHARACTER SET utf8 NOT NULL,
  `show1` int(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (34,'qwqw','男','科技管理部','','','','','',1),(36,'张三','','传输发射部','','','','','',1),(38,'李四','','新闻中心','','','','','',0),(39,'张二','男','广播中心','否','否','是','是','是',0),(40,'小黄','女','传输发射部','','','','','',0),(41,'小李','','浙江卫视','','','','','',0),(42,'xc','男','科技管理部','是','是','是','是','是',1),(43,'小王','','新闻中心','','','','','',0),(44,'小强','','浙江卫视','','','','','',0),(46,'小韩','','广播中心','','','','','',0),(47,'晓峰','','浙江卫视','','','','','',0),(48,'招标','','浙江卫视','','','','','',0),(49,'李四','','新闻中心','','','','','',0),(50,'张三','男','广播中心','否','否','是','是','是',0),(51,'小张','','广播中心','','','','','',0),(52,'小王','','浙江卫视','','','','','',0),(53,'小娥','','','','','','','',0);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(45) CHARACTER SET utf8 NOT NULL,
  `project` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (15,'a','男','100'),(16,'网易','丁磊','1500'),(17,'阿里','马云','1200'),(18,'百度','李彦宏','1200'),(21,'company','1','600'),(22,'1','1','100'),(23,'a','a','1000'),(24,'1','1','1000'),(25,'qqq','q','1000'),(26,'阿里巴巴','','500'),(27,'q','1','100'),(28,'tencent','w','100');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-01 18:03:28
