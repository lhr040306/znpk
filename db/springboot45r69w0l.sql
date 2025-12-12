-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot45r69w0l
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot45r69w0l`
--

/*!40000 DROP DATABASE IF EXISTS `springboot45r69w0l`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot45r69w0l` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot45r69w0l`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankaoxinxi`
--

DROP TABLE IF EXISTS `jiankaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiankaobianhao` varchar(200) DEFAULT NULL COMMENT '监考编号',
  `kaochangmingcheng` varchar(200) DEFAULT NULL COMMENT '考场名称',
  `kaoshikemu` varchar(200) DEFAULT NULL COMMENT '考试科目',
  `jiankaoshijian` date DEFAULT NULL COMMENT '监考时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiankaobianhao` (`jiankaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='监考信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankaoxinxi`
--

LOCK TABLES `jiankaoxinxi` WRITE;
/*!40000 ALTER TABLE `jiankaoxinxi` DISABLE KEYS */;
INSERT INTO `jiankaoxinxi` VALUES (91,'2024-06-19 02:23:24','1111111111','考场名称1','考试科目1','2024-06-19','教师工号1','教师姓名1'),(92,'2024-06-19 02:23:24','2222222222','考场名称2','考试科目2','2024-06-19','教师工号2','教师姓名2'),(93,'2024-06-19 02:23:24','3333333333','考场名称3','考试科目3','2024-06-19','教师工号3','教师姓名3'),(94,'2024-06-19 02:23:24','4444444444','考场名称4','考试科目4','2024-06-19','教师工号4','教师姓名4'),(95,'2024-06-19 02:23:24','5555555555','考场名称5','考试科目5','2024-06-19','教师工号5','教师姓名5'),(96,'2024-06-19 02:23:24','6666666666','考场名称6','考试科目6','2024-06-19','教师工号6','教师姓名6'),(97,'2024-06-19 02:23:24','7777777777','考场名称7','考试科目7','2024-06-19','教师工号7','教师姓名7'),(98,'2024-06-19 02:23:24','8888888888','考场名称8','考试科目8','2024-06-19','教师工号8','教师姓名8');
/*!40000 ALTER TABLE `jiankaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2024-06-19 02:23:24','教师工号1','教师姓名1','123456','男','upload/jiaoshi_touxiang1.jpg','13823888881'),(22,'2024-06-19 02:23:24','教师工号2','教师姓名2','123456','男','upload/jiaoshi_touxiang2.jpg','13823888882'),(23,'2024-06-19 02:23:24','教师工号3','教师姓名3','123456','男','upload/jiaoshi_touxiang3.jpg','13823888883'),(24,'2024-06-19 02:23:24','教师工号4','教师姓名4','123456','男','upload/jiaoshi_touxiang4.jpg','13823888884'),(25,'2024-06-19 02:23:24','教师工号5','教师姓名5','123456','男','upload/jiaoshi_touxiang5.jpg','13823888885'),(26,'2024-06-19 02:23:24','教师工号6','教师姓名6','123456','男','upload/jiaoshi_touxiang6.jpg','13823888886'),(27,'2024-06-19 02:23:24','教师工号7','教师姓名7','123456','男','upload/jiaoshi_touxiang7.jpg','13823888887'),(28,'2024-06-19 02:23:24','教师工号8','教师姓名8','123456','男','upload/jiaoshi_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaochangxinxi`
--

DROP TABLE IF EXISTS `kaochangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaochangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaochangmingcheng` varchar(200) DEFAULT NULL COMMENT '考场名称',
  `kaochangweizhi` varchar(200) DEFAULT NULL COMMENT '考场位置',
  `zuoweishu` varchar(200) DEFAULT NULL COMMENT '座位数',
  `tupian` longtext COMMENT '图片',
  `kaochangshuoming` longtext COMMENT '考场说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='考场信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaochangxinxi`
--

LOCK TABLES `kaochangxinxi` WRITE;
/*!40000 ALTER TABLE `kaochangxinxi` DISABLE KEYS */;
INSERT INTO `kaochangxinxi` VALUES (61,'2024-06-19 02:23:24','考场名称1','考场位置1','座位数1','upload/kaochangxinxi_tupian1.jpg,upload/kaochangxinxi_tupian2.jpg,upload/kaochangxinxi_tupian3.jpg','考场说明1'),(62,'2024-06-19 02:23:24','考场名称2','考场位置2','座位数2','upload/kaochangxinxi_tupian2.jpg,upload/kaochangxinxi_tupian3.jpg,upload/kaochangxinxi_tupian4.jpg','考场说明2'),(63,'2024-06-19 02:23:24','考场名称3','考场位置3','座位数3','upload/kaochangxinxi_tupian3.jpg,upload/kaochangxinxi_tupian4.jpg,upload/kaochangxinxi_tupian5.jpg','考场说明3'),(64,'2024-06-19 02:23:24','考场名称4','考场位置4','座位数4','upload/kaochangxinxi_tupian4.jpg,upload/kaochangxinxi_tupian5.jpg,upload/kaochangxinxi_tupian6.jpg','考场说明4'),(65,'2024-06-19 02:23:24','考场名称5','考场位置5','座位数5','upload/kaochangxinxi_tupian5.jpg,upload/kaochangxinxi_tupian6.jpg,upload/kaochangxinxi_tupian7.jpg','考场说明5'),(66,'2024-06-19 02:23:24','考场名称6','考场位置6','座位数6','upload/kaochangxinxi_tupian6.jpg,upload/kaochangxinxi_tupian7.jpg,upload/kaochangxinxi_tupian8.jpg','考场说明6'),(67,'2024-06-19 02:23:24','考场名称7','考场位置7','座位数7','upload/kaochangxinxi_tupian7.jpg,upload/kaochangxinxi_tupian8.jpg,upload/kaochangxinxi_tupian9.jpg','考场说明7'),(68,'2024-06-19 02:23:24','考场名称8','考场位置8','座位数8','upload/kaochangxinxi_tupian8.jpg,upload/kaochangxinxi_tupian9.jpg,upload/kaochangxinxi_tupian10.jpg','考场说明8');
/*!40000 ALTER TABLE `kaochangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoshianpai`
--

DROP TABLE IF EXISTS `kaoshianpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoshianpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshikemu` varchar(200) DEFAULT NULL COMMENT '考试科目',
  `kaochangmingcheng` varchar(200) DEFAULT NULL COMMENT '考场名称',
  `kaoshiriqi` date DEFAULT NULL COMMENT '考试日期',
  `jutishijian` varchar(200) DEFAULT NULL COMMENT '具体时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '监考教师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='考试安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoshianpai`
--

LOCK TABLES `kaoshianpai` WRITE;
/*!40000 ALTER TABLE `kaoshianpai` DISABLE KEYS */;
INSERT INTO `kaoshianpai` VALUES (71,'2024-06-19 02:23:24','考试科目1','考场名称1','2024-06-19','具体时间1','教师工号1','监考教师1'),(72,'2024-06-19 02:23:24','考试科目2','考场名称2','2024-06-19','具体时间2','教师工号2','监考教师2'),(73,'2024-06-19 02:23:24','考试科目3','考场名称3','2024-06-19','具体时间3','教师工号3','监考教师3'),(74,'2024-06-19 02:23:24','考试科目4','考场名称4','2024-06-19','具体时间4','教师工号4','监考教师4'),(75,'2024-06-19 02:23:24','考试科目5','考场名称5','2024-06-19','具体时间5','教师工号5','监考教师5'),(76,'2024-06-19 02:23:24','考试科目6','考场名称6','2024-06-19','具体时间6','教师工号6','监考教师6'),(77,'2024-06-19 02:23:24','考试科目7','考场名称7','2024-06-19','具体时间7','教师工号7','监考教师7'),(78,'2024-06-19 02:23:24','考试科目8','考场名称8','2024-06-19','具体时间8','教师工号8','监考教师8');
/*!40000 ALTER TABLE `kaoshianpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaowuanpai`
--

DROP TABLE IF EXISTS `kaowuanpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaowuanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoshikemu` varchar(200) DEFAULT NULL COMMENT '考试科目',
  `kaochangmingcheng` varchar(200) DEFAULT NULL COMMENT '考场名称',
  `kaowurenyuan` varchar(200) DEFAULT NULL COMMENT '考务人员',
  `xunkaorenyuan` varchar(200) DEFAULT NULL COMMENT '巡考人员',
  `kaowuxiangqing` longtext COMMENT '考务详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='考务安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaowuanpai`
--

LOCK TABLES `kaowuanpai` WRITE;
/*!40000 ALTER TABLE `kaowuanpai` DISABLE KEYS */;
INSERT INTO `kaowuanpai` VALUES (81,'2024-06-19 02:23:24','考试科目1','考场名称1','考务人员1','巡考人员1','考务详情1'),(82,'2024-06-19 02:23:24','考试科目2','考场名称2','考务人员2','巡考人员2','考务详情2'),(83,'2024-06-19 02:23:24','考试科目3','考场名称3','考务人员3','巡考人员3','考务详情3'),(84,'2024-06-19 02:23:24','考试科目4','考场名称4','考务人员4','巡考人员4','考务详情4'),(85,'2024-06-19 02:23:24','考试科目5','考场名称5','考务人员5','巡考人员5','考务详情5'),(86,'2024-06-19 02:23:24','考试科目6','考场名称6','考务人员6','巡考人员6','考务详情6'),(87,'2024-06-19 02:23:24','考试科目7','考场名称7','考务人员7','巡考人员7','考务详情7'),(88,'2024-06-19 02:23:24','考试科目8','考场名称8','考务人员8','巡考人员8','考务详情8');
/*!40000 ALTER TABLE `kaowuanpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `tupian` longtext COMMENT '图片',
  `kechengneirong` longtext COMMENT '课程内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (41,'2024-06-19 02:23:24','1111111111','课程名称1','upload/kechengxinxi_tupian1.jpg,upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg','课程内容1','教师工号1','教师姓名1',1),(42,'2024-06-19 02:23:24','2222222222','课程名称2','upload/kechengxinxi_tupian2.jpg,upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg','课程内容2','教师工号2','教师姓名2',2),(43,'2024-06-19 02:23:24','3333333333','课程名称3','upload/kechengxinxi_tupian3.jpg,upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg','课程内容3','教师工号3','教师姓名3',3),(44,'2024-06-19 02:23:24','4444444444','课程名称4','upload/kechengxinxi_tupian4.jpg,upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg','课程内容4','教师工号4','教师姓名4',4),(45,'2024-06-19 02:23:24','5555555555','课程名称5','upload/kechengxinxi_tupian5.jpg,upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg','课程内容5','教师工号5','教师姓名5',5),(46,'2024-06-19 02:23:24','6666666666','课程名称6','upload/kechengxinxi_tupian6.jpg,upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg','课程内容6','教师工号6','教师姓名6',6),(47,'2024-06-19 02:23:24','7777777777','课程名称7','upload/kechengxinxi_tupian7.jpg,upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg','课程内容7','教师工号7','教师姓名7',7),(48,'2024-06-19 02:23:24','8888888888','课程名称8','upload/kechengxinxi_tupian8.jpg,upload/kechengxinxi_tupian9.jpg,upload/kechengxinxi_tupian10.jpg','课程内容8','教师工号8','教师姓名8',8);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-06-19 02:23:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuankexinxi`
--

DROP TABLE IF EXISTS `xuankexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuankexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuankebianhao` varchar(200) DEFAULT NULL COMMENT '选课编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `xuankeshijian` date DEFAULT NULL COMMENT '选课时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuankebianhao` (`xuankebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='选课信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuankexinxi`
--

LOCK TABLES `xuankexinxi` WRITE;
/*!40000 ALTER TABLE `xuankexinxi` DISABLE KEYS */;
INSERT INTO `xuankexinxi` VALUES (51,'2024-06-19 02:23:24','1111111111','课程名称1','2024-06-19','学生账号1','学生姓名1','教师工号1','教师姓名1','是',''),(52,'2024-06-19 02:23:24','2222222222','课程名称2','2024-06-19','学生账号2','学生姓名2','教师工号2','教师姓名2','是',''),(53,'2024-06-19 02:23:24','3333333333','课程名称3','2024-06-19','学生账号3','学生姓名3','教师工号3','教师姓名3','是',''),(54,'2024-06-19 02:23:24','4444444444','课程名称4','2024-06-19','学生账号4','学生姓名4','教师工号4','教师姓名4','是',''),(55,'2024-06-19 02:23:24','5555555555','课程名称5','2024-06-19','学生账号5','学生姓名5','教师工号5','教师姓名5','是',''),(56,'2024-06-19 02:23:24','6666666666','课程名称6','2024-06-19','学生账号6','学生姓名6','教师工号6','教师姓名6','是',''),(57,'2024-06-19 02:23:24','7777777777','课程名称7','2024-06-19','学生账号7','学生姓名7','教师工号7','教师姓名7','是',''),(58,'2024-06-19 02:23:24','8888888888','课程名称8','2024-06-19','学生账号8','学生姓名8','教师工号8','教师姓名8','是','');
/*!40000 ALTER TABLE `xuankexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2024-06-19 02:23:24','学生账号1','学生姓名1','123456','男','upload/xuesheng_touxiang1.jpg','13823888881'),(12,'2024-06-19 02:23:24','学生账号2','学生姓名2','123456','男','upload/xuesheng_touxiang2.jpg','13823888882'),(13,'2024-06-19 02:23:24','学生账号3','学生姓名3','123456','男','upload/xuesheng_touxiang3.jpg','13823888883'),(14,'2024-06-19 02:23:24','学生账号4','学生姓名4','123456','男','upload/xuesheng_touxiang4.jpg','13823888884'),(15,'2024-06-19 02:23:24','学生账号5','学生姓名5','123456','男','upload/xuesheng_touxiang5.jpg','13823888885'),(16,'2024-06-19 02:23:24','学生账号6','学生姓名6','123456','男','upload/xuesheng_touxiang6.jpg','13823888886'),(17,'2024-06-19 02:23:24','学生账号7','学生姓名7','123456','男','upload/xuesheng_touxiang7.jpg','13823888887'),(18,'2024-06-19 02:23:24','学生账号8','学生姓名8','123456','男','upload/xuesheng_touxiang8.jpg','13823888888');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxueji`
--

DROP TABLE IF EXISTS `xueshengxueji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxueji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiguan` varchar(200) NOT NULL COMMENT '籍贯',
  `zhengzhimianmao` varchar(200) NOT NULL COMMENT '政治面貌',
  `ruxueriqi` date DEFAULT NULL COMMENT '入学日期',
  `danganwenjian` longtext COMMENT '档案文件',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学生学籍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxueji`
--

LOCK TABLES `xueshengxueji` WRITE;
/*!40000 ALTER TABLE `xueshengxueji` DISABLE KEYS */;
INSERT INTO `xueshengxueji` VALUES (31,'2024-06-19 02:23:24','学生账号1','学生姓名1','年龄1','男','班级1','440300199101010001','13823888881','籍贯1','政治面貌1','2024-06-19','','个人简介1'),(32,'2024-06-19 02:23:24','学生账号2','学生姓名2','年龄2','男','班级2','440300199202020002','13823888882','籍贯2','政治面貌2','2024-06-19','','个人简介2'),(33,'2024-06-19 02:23:24','学生账号3','学生姓名3','年龄3','男','班级3','440300199303030003','13823888883','籍贯3','政治面貌3','2024-06-19','','个人简介3'),(34,'2024-06-19 02:23:24','学生账号4','学生姓名4','年龄4','男','班级4','440300199404040004','13823888884','籍贯4','政治面貌4','2024-06-19','','个人简介4'),(35,'2024-06-19 02:23:24','学生账号5','学生姓名5','年龄5','男','班级5','440300199505050005','13823888885','籍贯5','政治面貌5','2024-06-19','','个人简介5'),(36,'2024-06-19 02:23:24','学生账号6','学生姓名6','年龄6','男','班级6','440300199606060006','13823888886','籍贯6','政治面貌6','2024-06-19','','个人简介6'),(37,'2024-06-19 02:23:24','学生账号7','学生姓名7','年龄7','男','班级7','440300199707070007','13823888887','籍贯7','政治面貌7','2024-06-19','','个人简介7'),(38,'2024-06-19 02:23:24','学生账号8','学生姓名8','年龄8','男','班级8','440300199808080008','13823888888','籍贯8','政治面貌8','2024-06-19','','个人简介8');
/*!40000 ALTER TABLE `xueshengxueji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 21:26:50
