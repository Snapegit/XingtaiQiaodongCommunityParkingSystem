-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl68241253
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
-- Current Database: `cl68241253`
--

/*!40000 DROP DATABASE IF EXISTS `cl68241253`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl68241253` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl68241253`;

--
-- Table structure for table `chelianglichang`
--

DROP TABLE IF EXISTS `chelianglichang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chelianglichang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `cheweiweizhi` varchar(200) NOT NULL COMMENT '车位位置',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `chuchangshijian` datetime NOT NULL COMMENT '出场时间',
  `jifeishizhang` double NOT NULL COMMENT '计费时长',
  `xiaoshijiage` double NOT NULL COMMENT '小时价格',
  `shoufeijine` double NOT NULL COMMENT '收费金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='车辆离场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chelianglichang`
--

LOCK TABLES `chelianglichang` WRITE;
/*!40000 ALTER TABLE `chelianglichang` DISABLE KEYS */;
INSERT INTO `chelianglichang` VALUES (71,'2024-04-09 16:11:05','车位编号1','车位位置1','社区名称1','车位类型1','车牌号码1','账号1','2024-04-10 00:11:05','2024-04-10 00:11:05',1,1,1,'用户账号1','用户姓名1','未支付',1,1),(72,'2024-04-09 16:11:05','车位编号2','车位位置2','社区名称2','车位类型2','车牌号码2','账号2','2024-04-10 00:11:05','2024-04-10 00:11:05',2,2,2,'用户账号2','用户姓名2','未支付',2,2),(73,'2024-04-09 16:11:05','车位编号3','车位位置3','社区名称3','车位类型3','车牌号码3','账号3','2024-04-10 00:11:05','2024-04-10 00:11:05',3,3,3,'用户账号3','用户姓名3','未支付',3,3),(75,'2024-04-09 16:11:05','车位编号5','车位位置5','社区名称5','车位类型5','车牌号码5','账号5','2024-04-10 00:11:05','2024-04-10 00:11:05',5,5,5,'用户账号5','用户姓名5','未支付',5,5),(76,'2024-04-09 16:11:05','车位编号6','车位位置6','社区名称6','车位类型6','车牌号码6','账号6','2024-04-10 00:11:05','2024-04-10 00:11:05',6,6,6,'用户账号6','用户姓名6','未支付',6,6);
/*!40000 ALTER TABLE `chelianglichang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tupian` longtext COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (81,'2024-04-09 16:11:05','车辆名称1','车牌号码1','用户账号1','用户姓名1','file/cheliangxinxiTupian1.jpg,file/cheliangxinxiTupian2.jpg,file/cheliangxinxiTupian3.jpg'),(82,'2024-04-09 16:11:05','车辆名称2','车牌号码2','用户账号2','用户姓名2','file/cheliangxinxiTupian2.jpg,file/cheliangxinxiTupian3.jpg,file/cheliangxinxiTupian4.jpg'),(83,'2024-04-09 16:11:05','车辆名称3','车牌号码3','用户账号3','用户姓名3','file/cheliangxinxiTupian3.jpg,file/cheliangxinxiTupian4.jpg,file/cheliangxinxiTupian5.jpg'),(84,'2024-04-09 16:11:05','车辆名称4','车牌号码4','用户账号4','用户姓名4','file/cheliangxinxiTupian4.jpg,file/cheliangxinxiTupian5.jpg,file/cheliangxinxiTupian6.jpg'),(85,'2024-04-09 16:11:05','车辆名称5','车牌号码5','用户账号5','用户姓名5','file/cheliangxinxiTupian5.jpg,file/cheliangxinxiTupian6.jpg,file/cheliangxinxiTupian7.jpg'),(86,'2024-04-09 16:11:05','车辆名称6','车牌号码6','用户账号6','用户姓名6','file/cheliangxinxiTupian6.jpg,file/cheliangxinxiTupian7.jpg,file/cheliangxinxiTupian8.jpg');
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cheweixinxi`
--

DROP TABLE IF EXISTS `cheweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `cheweitupian` longtext COMMENT '车位图片',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  `cheweiweizhi` varchar(200) DEFAULT NULL COMMENT '车位位置',
  `xiaoshijiage` double DEFAULT NULL COMMENT '小时价格',
  `cheweizhuangtai` varchar(200) DEFAULT NULL COMMENT '车位状态',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cheweibianhao` (`cheweibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='车位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheweixinxi`
--

LOCK TABLES `cheweixinxi` WRITE;
/*!40000 ALTER TABLE `cheweixinxi` DISABLE KEYS */;
INSERT INTO `cheweixinxi` VALUES (51,'2024-04-09 16:11:05','车位编号1','file/cheweixinxiCheweitupian1.jpg,file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg','社区名称1','车位位置1',1,'已停用','临时车位','账号1'),(52,'2024-04-09 16:11:05','车位编号2','file/cheweixinxiCheweitupian2.jpg,file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg','社区名称2','车位位置2',2,'已停用','临时车位','账号2'),(53,'2024-04-09 16:11:05','车位编号3','file/cheweixinxiCheweitupian3.jpg,file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg','社区名称3','车位位置3',3,'已停用','临时车位','账号3'),(54,'2024-04-09 16:11:05','车位编号4','file/cheweixinxiCheweitupian4.jpg,file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg','社区名称4','车位位置4',4,'已停用','临时车位','账号4'),(55,'2024-04-09 16:11:05','车位编号5','file/cheweixinxiCheweitupian5.jpg,file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg','社区名称5','车位位置5',5,'已停用','临时车位','账号5'),(56,'2024-04-09 16:11:05','车位编号6','file/cheweixinxiCheweitupian6.jpg,file/cheweixinxiCheweitupian7.jpg,file/cheweixinxiCheweitupian8.jpg','社区名称6','车位位置6',6,'已停用','临时车位','账号6');
/*!40000 ALTER TABLE `cheweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-09 16:11:06','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common29\",\"menu\":\"系统管理\",\"unicode\":\"&#xee2e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"社区管理员\",\"menuJump\":\"列表\",\"tableName\":\"shequguanliyuan\"}],\"fontClass\":\"icon-common12\",\"menu\":\"系统账户管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"}],\"fontClass\":\"icon-common24\",\"menu\":\"车辆信息管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"},{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"社区名称\",\"menuJump\":\"列表\",\"tableName\":\"shequmingcheng\"}],\"fontClass\":\"icon-common10\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"入场停车\",\"menuJump\":\"列表\",\"tableName\":\"ruchangtingche\"}],\"fontClass\":\"icon-common9\",\"menu\":\"入场停车管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"日收费\",\"月收费\",\"年收费\",\"首页总数\",\"首页统计\",\"社区收费统计\"],\"menu\":\"车辆离场\",\"menuJump\":\"列表\",\"tableName\":\"chelianglichang\"}],\"fontClass\":\"icon-common38\",\"menu\":\"车辆离场管理\",\"unicode\":\"&#xeeb2;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common1\",\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"入场停车\"],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\",\"unicode\":\"&#xeda5;\"}],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xeda5;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"新增\",\"查看\",\"修改\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"}],\"fontClass\":\"icon-common24\",\"menu\":\"车辆信息管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"离场\"],\"menu\":\"入场停车\",\"menuJump\":\"列表\",\"tableName\":\"ruchangtingche\"}],\"fontClass\":\"icon-common9\",\"menu\":\"入场停车管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"车辆离场\",\"menuJump\":\"列表\",\"tableName\":\"chelianglichang\"}],\"fontClass\":\"icon-common38\",\"menu\":\"车辆离场管理\",\"unicode\":\"&#xeeb2;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common1\",\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"入场停车\"],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\",\"unicode\":\"&#xeda5;\"}],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xeda5;\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\"],\"menu\":\"车辆信息\",\"menuJump\":\"列表\",\"tableName\":\"cheliangxinxi\"}],\"fontClass\":\"icon-common24\",\"menu\":\"车辆信息管理\",\"unicode\":\"&#xee07;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"新增\",\"查看\",\"修改\"],\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\"},{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\"],\"menu\":\"社区名称\",\"menuJump\":\"列表\",\"tableName\":\"shequmingcheng\"}],\"fontClass\":\"icon-common10\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"入场停车\",\"menuJump\":\"列表\",\"tableName\":\"ruchangtingche\"}],\"fontClass\":\"icon-common9\",\"menu\":\"入场停车管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"日收费\",\"月收费\",\"年收费\",\"首页总数\",\"首页统计\",\"社区收费统计\"],\"menu\":\"车辆离场\",\"menuJump\":\"列表\",\"tableName\":\"chelianglichang\"}],\"fontClass\":\"icon-common38\",\"menu\":\"车辆离场管理\",\"unicode\":\"&#xeeb2;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common1\",\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"入场停车\"],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息\",\"menuJump\":\"列表\",\"tableName\":\"cheweixinxi\",\"unicode\":\"&#xeda5;\"}],\"fontClass\":\"icon-common3\",\"menu\":\"车位信息管理\",\"unicode\":\"&#xeda5;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"社区管理员\",\"tableName\":\"shequguanliyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-04-09 16:11:05','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-04-09 16:11:05','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-04-09 16:11:05','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-04-09 16:11:05','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-04-09 16:11:05','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-04-09 16:11:05','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruchangtingche`
--

DROP TABLE IF EXISTS `ruchangtingche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruchangtingche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheweibianhao` varchar(200) NOT NULL COMMENT '车位编号',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  `cheweiweizhi` varchar(200) NOT NULL COMMENT '车位位置',
  `cheweileixing` varchar(200) DEFAULT NULL COMMENT '车位类型',
  `ruchangshijian` datetime NOT NULL COMMENT '入场时间',
  `xiaoshijiage` varchar(200) NOT NULL COMMENT '小时价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `chepaihaoma` varchar(200) NOT NULL COMMENT '车牌号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='入场停车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruchangtingche`
--

LOCK TABLES `ruchangtingche` WRITE;
/*!40000 ALTER TABLE `ruchangtingche` DISABLE KEYS */;
INSERT INTO `ruchangtingche` VALUES (61,'2024-04-09 16:11:05','车位编号1','社区名称1','车位位置1','车位类型1','2024-04-10 00:11:05','小时价格1','账号1','用户账号1','用户姓名1','车牌号码1'),(62,'2024-04-09 16:11:05','车位编号2','社区名称2','车位位置2','车位类型2','2024-04-10 00:11:05','小时价格2','账号2','用户账号2','用户姓名2','车牌号码2'),(63,'2024-04-09 16:11:05','车位编号3','社区名称3','车位位置3','车位类型3','2024-04-10 00:11:05','小时价格3','账号3','用户账号3','用户姓名3','车牌号码3'),(64,'2024-04-09 16:11:05','车位编号4','社区名称4','车位位置4','车位类型4','2024-04-10 00:11:05','小时价格4','账号4','用户账号4','用户姓名4','车牌号码4'),(65,'2024-04-09 16:11:05','车位编号5','社区名称5','车位位置5','车位类型5','2024-04-10 00:11:05','小时价格5','账号5','用户账号5','用户姓名5','车牌号码5'),(66,'2024-04-09 16:11:05','车位编号6','社区名称6','车位位置6','车位类型6','2024-04-10 00:11:05','小时价格6','账号6','用户账号6','用户姓名6','车牌号码6');
/*!40000 ALTER TABLE `ruchangtingche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shequguanliyuan`
--

DROP TABLE IF EXISTS `shequguanliyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shequguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社区管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shequguanliyuan`
--

LOCK TABLES `shequguanliyuan` WRITE;
/*!40000 ALTER TABLE `shequguanliyuan` DISABLE KEYS */;
INSERT INTO `shequguanliyuan` VALUES (101,'2024-04-09 16:11:05','账号1','e10adc3949ba59abbe56e057f20f883e','社区名称1'),(102,'2024-04-09 16:11:05','账号2','e10adc3949ba59abbe56e057f20f883e','社区名称2'),(103,'2024-04-09 16:11:05','账号3','e10adc3949ba59abbe56e057f20f883e','社区名称3'),(104,'2024-04-09 16:11:05','账号4','e10adc3949ba59abbe56e057f20f883e','社区名称4'),(105,'2024-04-09 16:11:06','账号5','e10adc3949ba59abbe56e057f20f883e','社区名称5'),(106,'2024-04-09 16:11:06','账号6','e10adc3949ba59abbe56e057f20f883e','社区名称6');
/*!40000 ALTER TABLE `shequguanliyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shequmingcheng`
--

DROP TABLE IF EXISTS `shequmingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shequmingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shequmingcheng` varchar(200) DEFAULT NULL COMMENT '社区名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='社区名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shequmingcheng`
--

LOCK TABLES `shequmingcheng` WRITE;
/*!40000 ALTER TABLE `shequmingcheng` DISABLE KEYS */;
INSERT INTO `shequmingcheng` VALUES (91,'2024-04-09 16:11:05','社区名称1'),(92,'2024-04-09 16:11:05','社区名称2'),(93,'2024-04-09 16:11:05','社区名称3'),(94,'2024-04-09 16:11:05','社区名称4'),(95,'2024-04-09 16:11:05','社区名称5'),(96,'2024-04-09 16:11:05','社区名称6');
/*!40000 ALTER TABLE `shequmingcheng` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','h1oz7h7bc53qxy4dnsyxqt2pz8stuw1b','2024-04-09 16:19:23','2024-04-09 17:19:23'),(2,101,'账号1','shequguanliyuan','社区管理员','g20wsu5nxsgj0ipngv7z0ehba7m16s3x','2024-04-09 16:21:22','2024-04-09 17:21:22');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-09 16:11:06','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-04-09 16:11:05','用户账号1','e10adc3949ba59abbe56e057f20f883e','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','车牌号码1'),(42,'2024-04-09 16:11:05','用户账号2','e10adc3949ba59abbe56e057f20f883e','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','车牌号码2'),(43,'2024-04-09 16:11:05','用户账号3','e10adc3949ba59abbe56e057f20f883e','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','车牌号码3'),(44,'2024-04-09 16:11:05','用户账号4','e10adc3949ba59abbe56e057f20f883e','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','车牌号码4'),(45,'2024-04-09 16:11:05','用户账号5','e10adc3949ba59abbe56e057f20f883e','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','车牌号码5'),(46,'2024-04-09 16:11:05','用户账号6','e10adc3949ba59abbe56e057f20f883e','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','车牌号码6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 20:33:09
