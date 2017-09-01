-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: zrtg
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
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `project` varchar(255) NOT NULL COMMENT '项目名称',
  `titlea` varchar(255) NOT NULL COMMENT '请示标题',
  `dept` varchar(255) NOT NULL COMMENT '请示提交单位',
  `budget` varchar(255) NOT NULL COMMENT '请示预算',
  `contact` varchar(255) NOT NULL COMMENT '联系人姓名',
  `phone` varchar(255) NOT NULL COMMENT '联系人电话',
  `sqdate` date NOT NULL COMMENT '项目申请日期',
  `pid` varchar(255) NOT NULL COMMENT '批文编号',
  `pwdate` date NOT NULL COMMENT '批文日期',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `aid_UNIQUE` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,'12','','','','','','2017-08-29','','2017-08-21'),(2,'12','','','','','','2017-08-29','','2017-08-23'),(9,'123','','','','','','2017-08-25','','2017-08-25'),(10,'a','','','','','','2017-08-28','','2017-08-28'),(11,'1','','','','','','2017-08-28','','2017-08-28'),(12,'项目1','','','','','','2017-08-28','','2017-08-28'),(13,'浙江广播电视集团全台网招标','','','','','','2017-08-30','','2017-08-30');
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangwei`
--

DROP TABLE IF EXISTS `dangwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `aid` int(11) DEFAULT NULL COMMENT '项目ID',
  `did` varchar(255) DEFAULT NULL COMMENT '党委会会议编号',
  `dwh_date` date DEFAULT NULL COMMENT '党委会纪要日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `aid_UNIQUE` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangwei`
--

LOCK TABLES `dangwei` WRITE;
/*!40000 ALTER TABLE `dangwei` DISABLE KEYS */;
INSERT INTO `dangwei` VALUES (1,0,'1212','2017-08-25'),(2,4,'2','2017-08-25'),(3,9,'111','2017-08-25'),(4,10,'1','2017-08-28'),(6,11,'3','2017-08-28'),(8,13,'0830','2017-08-30');
/*!40000 ALTER TABLE `dangwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guanwei`
--

DROP TABLE IF EXISTS `guanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guanwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `bid` int(11) NOT NULL COMMENT '标段ID',
  `gid` varchar(255) DEFAULT NULL COMMENT '管委会会议编号',
  `company` varchar(255) DEFAULT NULL COMMENT '中标单位',
  `gwh_date` date DEFAULT NULL COMMENT '中标日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guanwei`
--

LOCK TABLES `guanwei` WRITE;
/*!40000 ALTER TABLE `guanwei` DISABLE KEYS */;
INSERT INTO `guanwei` VALUES (1,16,'111','111',NULL),(2,16,'2','2',NULL),(3,16,'2','2','2017-08-30'),(4,16,'2','2','2017-08-30'),(5,17,'22','22','2017-08-30'),(6,17,'1000','12','2017-08-31'),(7,20,'1','1','2017-08-31');
/*!40000 ALTER TABLE `guanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetong`
--

DROP TABLE IF EXISTS `hetong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetong` (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `bid` int(11) NOT NULL COMMENT '标段ID',
  `hser` varchar(255) DEFAULT NULL COMMENT '合同编号',
  `hname` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `hmoney` varchar(255) DEFAULT NULL COMMENT '合同金额',
  `changjia` varchar(255) DEFAULT NULL COMMENT '厂家',
  `dept` varchar(255) DEFAULT NULL,
  `yperson` varchar(255) DEFAULT NULL COMMENT '乙方联系人',
  `yphone` varchar(255) DEFAULT NULL COMMENT '乙方联系方式',
  `jperson` varchar(255) DEFAULT NULL COMMENT '甲方合同签订人',
  `ht_date` date DEFAULT NULL COMMENT '合同签订时间',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetong`
--

LOCK TABLES `hetong` WRITE;
/*!40000 ALTER TABLE `hetong` DISABLE KEYS */;
INSERT INTO `hetong` VALUES (1,17,'2','2','2','2','2','2','2','2','2017-08-30'),(2,19,'2','2','2','2','2','2','2','2','2017-08-31'),(3,18,'1','1','1','1','1','1','1','1','2017-08-31');
/*!40000 ALTER TABLE `hetong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiehuan`
--

DROP TABLE IF EXISTS `jiehuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiehuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `jiechuriqi` datetime DEFAULT NULL COMMENT '借出日期',
  `cunfangdidian` varchar(255) DEFAULT NULL COMMENT '材料存放地点',
  `jiechuren` varchar(255) DEFAULT NULL COMMENT '借出人',
  `shebeimingcheng` varchar(255) DEFAULT NULL COMMENT '设备名称',
  `shebeixinghao` varchar(255) DEFAULT NULL COMMENT '设备型号',
  `count` int(11) DEFAULT NULL COMMENT '设备数量',
  `asset_txm` varchar(255) DEFAULT NULL COMMENT '资产条形码',
  `quxiang` varchar(255) DEFAULT NULL COMMENT '去向',
  `guihuan` varchar(255) DEFAULT NULL COMMENT '是否归还',
  `guihuanriqi` datetime DEFAULT NULL COMMENT '归还日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiehuan`
--

LOCK TABLES `jiehuan` WRITE;
/*!40000 ALTER TABLE `jiehuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `jiehuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jindu`
--

DROP TABLE IF EXISTS `jindu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jindu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `step` varchar(45) DEFAULT NULL,
  `percent` varchar(45) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `pamount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jindu`
--

LOCK TABLES `jindu` WRITE;
/*!40000 ALTER TABLE `jindu` DISABLE KEYS */;
INSERT INTO `jindu` VALUES (1,17,'第一阶段','10%','2017-08-31','1'),(2,20,'第一阶段','10%','2017-08-31','10');
/*!40000 ALTER TABLE `jindu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `person` varchar(45) DEFAULT NULL,
  `to_equip` varchar(45) DEFAULT NULL,
  `state` varchar(45) NOT NULL DEFAULT '未归还',
  `add_equip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES (7,'借出','','U盘','','','2017-08-24 17:08:15','','','已归还',''),(8,'入库','','耗材','','','2017-08-24 19:08:47','','','已归还',''),(9,'借出','','U盘','','','2017-08-24 19:08:53','','','已归还',''),(10,'借出','','U盘','','','2017-08-24 19:08:47','','','已归还',''),(11,'入库','','耗材','','','2017-08-24 19:08:48','','','已归还',''),(12,'借出','','硬件','','','2017-08-25 17:08:57','','','已归还',''),(13,'借出','','耗材','','','2017-08-25 17:08:07','','','已归还',''),(14,'借出','','U盘','','','2017-09-01 09:09:10','','','未归还','');
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `jieduan` varchar(255) DEFAULT NULL,
  `percent` varchar(45) DEFAULT NULL,
  `paytime` date DEFAULT NULL,
  `payamount` varchar(45) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiyong`
--

DROP TABLE IF EXISTS `shiyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `cunfangdidian` varchar(255) DEFAULT NULL COMMENT '存放地点',
  `shebeileixing` varchar(255) DEFAULT NULL COMMENT '设备类型',
  `shebeixinhao` varchar(255) DEFAULT NULL COMMENT '设备型号',
  `zichanhao` varchar(255) DEFAULT NULL COMMENT '资产号',
  `quanwangzichanhao` varchar(255) DEFAULT NULL COMMENT '全网资产号',
  `total` varchar(255) DEFAULT NULL COMMENT '库存量',
  `used` varchar(255) DEFAULT NULL COMMENT '已使用',
  `rest` varchar(255) DEFAULT NULL COMMENT '剩余量',
  `damage` varchar(255) DEFAULT NULL COMMENT '损坏量',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '损坏及使用备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiyong`
--

LOCK TABLES `shiyong` WRITE;
/*!40000 ALTER TABLE `shiyong` DISABLE KEYS */;
/*!40000 ALTER TABLE `shiyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `lv` int(11) NOT NULL COMMENT '用户等级',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `userpwd` varchar(255) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,2,'2','2'),(3,3,'3','3'),(4,3,'3','3'),(18,1,'1','1'),(19,1,'7','7');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yushen`
--

DROP TABLE IF EXISTS `yushen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yushen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(45) DEFAULT NULL,
  `bid` varchar(45) DEFAULT NULL,
  `bname` varchar(45) DEFAULT NULL,
  `bamount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yushen`
--

LOCK TABLES `yushen` WRITE;
/*!40000 ALTER TABLE `yushen` DISABLE KEYS */;
INSERT INTO `yushen` VALUES (1,'0','0',NULL,NULL),(2,'0','0',NULL,NULL);
/*!40000 ALTER TABLE `yushen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yushendan`
--

DROP TABLE IF EXISTS `yushendan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yushendan` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '标段ID',
  `aid` int(11) NOT NULL COMMENT '项目ID',
  `money` varchar(255) DEFAULT NULL COMMENT '项目预算',
  `ysd_date` date DEFAULT NULL COMMENT '预审单提交日期',
  `bname` varchar(255) DEFAULT NULL COMMENT '标段名称',
  `bmoney` varchar(255) DEFAULT NULL COMMENT '标段预算',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yushendan`
--

LOCK TABLES `yushendan` WRITE;
/*!40000 ALTER TABLE `yushendan` DISABLE KEYS */;
INSERT INTO `yushendan` VALUES (16,13,'10万','2017-08-30','标段1','金额1'),(17,13,'10','2017-08-30','标段2','金额2'),(18,13,'1`','2017-08-30','标段3','金额3'),(19,13,'10','2017-08-31','标段4','金额4'),(20,13,'20','2017-08-31','标段5','标段5');
/*!40000 ALTER TABLE `yushendan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichandan`
--

DROP TABLE IF EXISTS `zichandan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichandan` (
  `zid` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `bid` int(11) NOT NULL COMMENT '标段ID',
  `asset_name` varchar(255) DEFAULT NULL COMMENT '资产名称',
  `asset_type` varchar(255) DEFAULT NULL COMMENT '规格型号',
  `asset_amount` varchar(255) DEFAULT NULL,
  `asset_txm` varchar(255) DEFAULT NULL COMMENT '资产条形码',
  `asset_xlh` varchar(255) DEFAULT NULL COMMENT '资产序列号',
  `sccj` varchar(255) DEFAULT NULL COMMENT '生产厂家',
  `price` varchar(255) DEFAULT NULL COMMENT '单价',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`zid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichandan`
--

LOCK TABLES `zichandan` WRITE;
/*!40000 ALTER TABLE `zichandan` DISABLE KEYS */;
INSERT INTO `zichandan` VALUES (1,18,'2','2','2','2','2','2','2','2'),(2,20,'3','3','3','3','3','3','3','3');
/*!40000 ALTER TABLE `zichandan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-01 18:04:50
