-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: footballworld
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `Club` varchar(18) NOT NULL,
  `champion` int DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  PRIMARY KEY (`Club`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubscoach`
--

DROP TABLE IF EXISTS `clubscoach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubscoach` (
  `Club` varchar(18) NOT NULL,
  `Time` varchar(18) NOT NULL,
  `Coach` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Club`,`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubscoach`
--

LOCK TABLES `clubscoach` WRITE;
/*!40000 ALTER TABLE `clubscoach` DISABLE KEYS */;
INSERT INTO `clubscoach` VALUES ('RB莱比锡','2023-24','马尔科·罗泽'),('云达不来梅','2023-24','奥勒·维尔纳'),('伯恩利','2023-24','文森特·孔帕尼'),('伯恩茅斯','2023-24','安多尼·伊劳拉'),('切尔西','2023-24','毛里西奥·波切蒂诺'),('利物浦','2023-24','尤尔根·克洛普'),('卢顿','2023-24','羅拔·艾華士'),('吉罗纳','2022-23','米歇尔'),('吉罗纳','2023-24','米歇尔'),('和睦法兰克福','2023-24','迪诺·托普穆勒'),('埃弗顿','2023-24','肖恩·戴彻'),('塞尔塔','2022-23','库德'),('奥格斯堡','2023-24','耶斯·托鲁普'),('奥萨苏纳','2022-23','阿拉萨特'),('奥萨苏纳','2023-24','雅格巴·阿拉萨特'),('富勒姆','2023-24','马尔科·席尔瓦'),('巴塞罗那','2023-24','塞蒂恩'),('巴拉多利德','2022-23','帕切塔'),('布伦特福德','2023-24','湯馬士·法蘭克'),('布赖顿','2023-24','罗伯托·德泽尔比'),('弗赖堡','2023-24','克里斯蒂安·斯特赖希'),('拜仁慕尼黑','2023-24','托马斯·图赫尔'),('拜耳勒沃库森','2023-24','哈维·阿隆索'),('斯图加特','2023-24','塞巴斯蒂安·赫内斯'),('普鲁士多特蒙德','2023-24','埃丁·泰尔齐奇'),('普鲁士门兴格拉德巴赫','2023-24','赫拉尔多·塞瓦内'),('曼城','2023-24','佩普·瓜迪奥拉'),('曼联','2023-24','埃里克·滕哈赫'),('柏林联','2023-24','内纳德·别利察'),('比利亚雷亚尔','2022-23','埃梅里'),('比利亚雷亚尔','2023-24','馬塞利諾'),('水晶宫','2023-24','罗伊·霍奇森'),('沃尔夫斯堡','2023-24','尼科·科瓦奇'),('波鸿','2023-24','托马斯·莱奇'),('海登海姆','2023-24','弗兰克·施密特'),('瓦伦西亚','2022-23','加图索'),('瓦伦西亚','2023-24','鲁本·巴拉哈'),('皇家社会','2022-23','阿尔瓜西尔'),('皇家马德里','2022-23','安切洛蒂'),('皇家马德里','2023-24','	卡洛·安切洛蒂'),('科隆','2023-24','斯特芬·鲍姆加特'),('美因茨05','2023-24','扬·西韦特'),('西班牙人','2022-23','迭戈-马丁内斯'),('达姆施塔特98','2023-24','托尔斯滕·利伯克内希特'),('阿尔梅里亚','2022-23','鲁比'),('阿尔梅里亚','2023-24','加里塔诺'),('阿斯顿维拉','2023-24','乌奈·埃梅里'),('阿森纳','2023-24','米克尔·阿尔特塔'),('霍芬海姆1899','2023-24','佩莱格里诺·马塔拉佐');
/*!40000 ALTER TABLE `clubscoach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubscup`
--

DROP TABLE IF EXISTS `clubscup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubscup` (
  `Cup` varchar(18) DEFAULT NULL,
  `Time` varchar(18) DEFAULT NULL,
  `Club` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubscup`
--

LOCK TABLES `clubscup` WRITE;
/*!40000 ALTER TABLE `clubscup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clubscup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clubsplayers`
--

DROP TABLE IF EXISTS `clubsplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubsplayers` (
  `Club` varchar(18) NOT NULL,
  `Time` varchar(18) NOT NULL,
  `Name` varchar(18) NOT NULL,
  `Position` varchar(18) DEFAULT NULL,
  `Number` int DEFAULT NULL,
  PRIMARY KEY (`Club`,`Time`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubsplayers`
--

LOCK TABLES `clubsplayers` WRITE;
/*!40000 ALTER TABLE `clubsplayers` DISABLE KEYS */;
INSERT INTO `clubsplayers` VALUES ('巴塞罗那','2023-24','亚马尔','前锋',27),('巴塞罗那','2023-24','京多安','中场',22),('巴塞罗那','2023-24','加里多','后卫',34),('巴塞罗那','2023-24','卡萨多','后卫',30),('巴塞罗那','2023-24','孔德','后卫',23),('巴塞罗那','2023-24','库巴西','后卫',33),('巴塞罗那','2023-24','德容','中场',21),('巴塞罗那','2023-24','科亨','中场',31),('巴塞罗那','2023-24','罗贝托','后卫',20),('巴塞罗那','2023-24','费尔明','中场',32),('巴塞罗那','2023-24','阿拉尔孔','前锋',29),('巴塞罗那','2023-24','阿斯特拉拉加','中场',26),('拜仁慕尼黑','2023-24','丹尼尔·佩雷茨','门将',18),('拜仁慕尼黑','2023-24','亚历山大·帕夫洛维奇','中场',45),('拜仁慕尼黑','2023-24','勒鲁瓦·萨内','中场',10),('拜仁慕尼黑','2023-24','哈里·凯恩','前锋',9),('拜仁慕尼黑','2023-24','塔雷克·布赫曼','后卫',28),('拜仁慕尼黑','2023-24','塞尔吉·格纳布里','前锋',7),('拜仁慕尼黑','2023-24','布纳·萨尔','后卫',20),('拜仁慕尼黑','2023-24','康拉德·莱默','中场',27),('拜仁慕尼黑','2023-24','弗兰斯·克雷齐希','后卫',41),('拜仁慕尼黑','2023-24','托马斯·穆勒','前锋',25),('拜仁慕尼黑','2023-24','拉斐尔·格雷罗','后卫',22),('拜仁慕尼黑','2023-24','斯文·乌尔赖希','门将',26),('拜仁慕尼黑','2023-24','曼努埃尔·诺伊尔','门将',1),('拜仁慕尼黑','2023-24','约书亚·基米希','中场',6),('拜仁慕尼黑','2023-24','纳赛尔·马兹拉维','后卫',40),('拜仁慕尼黑','2023-24','莱昂·戈雷茨卡','中场',8),('拜仁慕尼黑','2023-24','贾马尔·穆西亚拉','中场',42),('拜仁慕尼黑','2023-24','达约·于帕梅卡诺','后卫',2),('拜仁慕尼黑','2023-24','金斯利·科芒','中场',11),('拜仁慕尼黑','2023-24','金玟哉','后卫',3),('拜仁慕尼黑','2023-24','阿方索·戴維斯','后卫',19),('拜仁慕尼黑','2023-24','马克西姆·舒波-莫廷','前锋',13),('拜仁慕尼黑','2023-24','马泰斯·德利赫特','后卫',4),('拜仁慕尼黑','2023-24','马蒂斯·特尔','前锋',39),('皇家马德里','2023-24','丹尼尔·卡瓦哈尔','右后卫',2),('皇家马德里','2023-24','何塞卢','中锋',14),('皇家马德里','2023-24','凯帕·阿里萨巴拉加','门将',25),('皇家马德里','2023-24','卢卡·莫德里奇','中場',10),('皇家马德里','2023-24','卢卡斯·巴斯克斯','右边锋／右后卫',17),('皇家马德里','2023-24','埃德尔·米利唐','中卫',3),('皇家马德里','2023-24','大衛·阿拉巴','中卫／左后卫',4),('皇家马德里','2023-24','奥雷利昂·楚阿梅尼尼','防守中場',18),('皇家马德里','2023-24','安东尼奥·吕迪格','中堅',22),('皇家马德里','2023-24','安德烈·卢宁','门将',13),('皇家马德里','2023-24','布拉欣·迪亚斯','右边锋／進攻中場',21),('皇家马德里','2023-24','弗兰·加西亚','左閘',20),('皇家马德里','2023-24','托尼·克罗斯','中場',8),('皇家马德里','2023-24','爱德华多·卡马文加','防守中場／中場／左閘',12),('皇家马德里','2023-24','纳乔·费尔南德斯','中卫／左后卫／右后卫',6),('皇家马德里','2023-24','维尼修斯·儒尼奥尔','左边锋',7),('皇家马德里','2023-24','罗德里戈·戈埃斯','右边锋',11),('皇家马德里','2023-24','蒂博·库尔图瓦','门将',1),('皇家马德里','2023-24','裘德·贝林厄姆','中場',5),('皇家马德里','2023-24','费兰·门迪','左閘',23),('皇家马德里','2023-24','费德里科·巴尔韦德','中場／右边锋',15),('皇家马德里','2023-24','达尼·塞瓦略斯','中場',19),('皇家马德里','2023-24','阿尔达·居莱尔','進攻中場',24);
/*!40000 ALTER TABLE `clubsplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercontinentalcup`
--

DROP TABLE IF EXISTS `intercontinentalcup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercontinentalcup` (
  `country` varchar(18) NOT NULL,
  `Cup` varchar(18) DEFAULT NULL,
  `Coach` varchar(18) DEFAULT NULL,
  `Times` int DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercontinentalcup`
--

LOCK TABLES `intercontinentalcup` WRITE;
/*!40000 ALTER TABLE `intercontinentalcup` DISABLE KEYS */;
INSERT INTO `intercontinentalcup` VALUES ('中国','亚洲杯','亚历山大·扬科维奇',12),('丹麦','欧洲杯','卡斯珀·许尔曼德',9),('乌拉圭','美洲杯','奥斯卡·塔瓦雷斯',45),('克罗地亚','欧洲杯','兹拉特科·达利奇',7),('匈牙利','欧洲杯','马尔科·罗西',4),('厄瓜多尔','美洲杯','古斯塔沃·阿尔法罗',29),('哥伦比亚','美洲杯','卡洛斯·克罗斯',23),('奥地利','欧洲杯','弗兰科·福达',3),('委内瑞拉','美洲杯','拉斐尔·杜达梅尔',19),('巴拉圭','美洲杯','埃杜阿多·贝里索',38),('巴西','美洲杯','蒂特',37),('德国','欧洲杯','约阿希姆·勒夫',13),('捷克共和国','欧洲杯','雅罗斯拉夫·希尔哈维',10),('智利','美洲杯','胡安·安东尼奥·皮齐',40),('比利时','欧洲杯','罗伯托·马丁内斯',22),('法国','欧洲杯','迪迪埃·德尚',10),('玻利维亚','美洲杯','塞萨尔·法里亚斯',28),('秘鲁','美洲杯','里卡多·加雷卡',33),('芬兰','欧洲杯','马尔库·卡内尔瓦',1),('英格兰','欧洲杯','加雷斯·索斯盖特',10),('葡萄牙','欧洲杯','马丁内斯',8),('阿根廷','美洲杯','斯卡洛尼',47);
/*!40000 ALTER TABLE `intercontinentalcup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intercontinentalcupplayer`
--

DROP TABLE IF EXISTS `intercontinentalcupplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intercontinentalcupplayer` (
  `Cup` varchar(18) DEFAULT NULL,
  `Name` varchar(18) NOT NULL,
  `Position` varchar(18) DEFAULT NULL,
  `Goals` int DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intercontinentalcupplayer`
--

LOCK TABLES `intercontinentalcupplayer` WRITE;
/*!40000 ALTER TABLE `intercontinentalcupplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `intercontinentalcupplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nation`
--

DROP TABLE IF EXISTS `nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nation` (
  `Name` varchar(16) NOT NULL,
  `Coach` varchar(16) DEFAULT NULL,
  `WorldCups` int DEFAULT NULL,
  `Place` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nation`
--

LOCK TABLES `nation` WRITE;
/*!40000 ALTER TABLE `nation` DISABLE KEYS */;
INSERT INTO `nation` VALUES ('中国','亚历山大·扬科维奇',3,'亚洲'),('乌拉圭','奥斯卡·塔巴雷斯',14,'南美洲'),('墨西哥','赫拉尔多·马蒂诺',17,'北美洲'),('巴西','蒂特',22,'南美洲'),('德国','鲁迪·福勒',20,'欧洲'),('意大利','罗伯托·曼奇尼',18,'欧洲'),('比利时','罗伯托·马丁内斯',14,'欧洲'),('法国','迪迪埃·德尚',16,'欧洲'),('英格兰','加雷斯·索斯盖特',16,'欧洲'),('西班牙','路易斯·恩里克',16,'欧洲'),('阿根廷','利昂内尔·斯卡洛尼',18,'南美洲');
/*!40000 ALTER TABLE `nation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(16) DEFAULT NULL,
  `Country` varchar(16) DEFAULT NULL,
  `CareerGames` int DEFAULT NULL,
  `CareerGoals` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'C罗','葡萄牙',1179,850),(21,'丹特','巴西',86,3),(22,'阿方索·戴维斯','加拿大',106,6),(23,'塞巴斯蒂安·戴斯勒','德国',62,8),(24,'马丁·德米凯利斯','阿根廷',174,13),(25,'乔瓦内·埃尔贝','巴西',169,92),(26,'塞尔日·纳布里','德国',156,60),(27,'马里奥·戈麦斯','德国',115,75);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerclub`
--

DROP TABLE IF EXISTS `playerclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerclub` (
  `Name` varchar(18) NOT NULL,
  `Club` varchar(18) DEFAULT NULL,
  `Time` varchar(18) NOT NULL,
  `Position` varchar(18) DEFAULT NULL,
  `Salary` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Name`,`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerclub`
--

LOCK TABLES `playerclub` WRITE;
/*!40000 ALTER TABLE `playerclub` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerclub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerinnation`
--

DROP TABLE IF EXISTS `playerinnation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerinnation` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(16) DEFAULT NULL,
  `Nation` varchar(16) DEFAULT NULL,
  `Position` varchar(16) DEFAULT NULL,
  `Number` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerinnation`
--

LOCK TABLES `playerinnation` WRITE;
/*!40000 ALTER TABLE `playerinnation` DISABLE KEYS */;
INSERT INTO `playerinnation` VALUES (1,'武磊','中国','前锋',7);
/*!40000 ALTER TABLE `playerinnation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qatargroupscore`
--

DROP TABLE IF EXISTS `qatargroupscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qatargroupscore` (
  `TeamName` varchar(16) NOT NULL,
  `GNumber` varchar(16) DEFAULT NULL,
  `Score` int DEFAULT NULL,
  PRIMARY KEY (`TeamName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qatargroupscore`
--

LOCK TABLES `qatargroupscore` WRITE;
/*!40000 ALTER TABLE `qatargroupscore` DISABLE KEYS */;
INSERT INTO `qatargroupscore` VALUES ('丹麦','D',1),('乌拉圭','H',4),('伊朗','B',3),('克罗地亚','F',5),('加拿大','F',0),('加纳','H',3),('卡塔尔','A',0),('厄瓜多尔','A',4),('哥斯达黎加','E',3),('喀麦隆','G',4),('塞内加尔','A',6),('塞尔维亚','G',1),('墨西哥','C',4),('威尔士','B',1),('巴西','G',6),('德国','E',4),('摩洛哥','F',7),('日本','E',6),('比利时','F',4),('沙特阿拉伯','C',3),('法国','D',6),('波兰','C',4),('澳大利亚','D',6),('瑞士','G',6),('突尼斯','D',4),('美国','B',5),('英格兰','B',7),('荷兰','A',7),('葡萄牙','H',6),('西班牙','E',4),('阿根廷','C',6),('韩国','H',4);
/*!40000 ALTER TABLE `qatargroupscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qatargrouptype`
--

DROP TABLE IF EXISTS `qatargrouptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qatargrouptype` (
  `Name` varchar(16) NOT NULL,
  `Type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qatargrouptype`
--

LOCK TABLES `qatargrouptype` WRITE;
/*!40000 ALTER TABLE `qatargrouptype` DISABLE KEYS */;
/*!40000 ALTER TABLE `qatargrouptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qatarschedule`
--

DROP TABLE IF EXISTS `qatarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qatarschedule` (
  `Name1` varchar(16) NOT NULL,
  `Name2` varchar(16) NOT NULL,
  `Type` varchar(16) DEFAULT NULL,
  `Time` varchar(16) DEFAULT NULL,
  `Place` varchar(16) DEFAULT NULL,
  `Score` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Name1`,`Name2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qatarschedule`
--

LOCK TABLES `qatarschedule` WRITE;
/*!40000 ALTER TABLE `qatarschedule` DISABLE KEYS */;
INSERT INTO `qatarschedule` VALUES ('丹麦','突尼斯','D','11-22','教育城体育场','0:0'),('卡塔尔','厄瓜多尔','A','11-21','巴伊特体育场','0:2'),('塞内加尔','荷兰','A','11-22','阿图玛玛球场','0:2'),('威尔士','伊朗','B','11-25','瑞扬球场','0:2'),('德国','日本','E','11-23','哈里发国际体育场','1:2'),('摩洛哥','克罗地亚','F','11-23','海湾球场','0:0'),('瑞士','喀麦隆','G','11-24','贾努布球场','1:0'),('葡萄牙','乌拉圭','H','11-29','卢塞尔体育场','2:0'),('阿根廷','沙特阿拉伯','C','11-22','卢塞尔体育场','1:2');
/*!40000 ALTER TABLE `qatarschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qatarteams`
--

DROP TABLE IF EXISTS `qatarteams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qatarteams` (
  `Teamname` varchar(16) NOT NULL,
  `Final16` varchar(16) DEFAULT NULL,
  `Final8` varchar(16) DEFAULT NULL,
  `HalfFinal` varchar(16) DEFAULT NULL,
  `Final` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`Teamname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qatarteams`
--

LOCK TABLES `qatarteams` WRITE;
/*!40000 ALTER TABLE `qatarteams` DISABLE KEYS */;
INSERT INTO `qatarteams` VALUES ('法国','YES','YES','YES','YES'),('美国','YES','NO','NO','NO'),('阿根廷','YES','YES','YES','YES');
/*!40000 ALTER TABLE `qatarteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoreboard`
--

DROP TABLE IF EXISTS `scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoreboard` (
  `Time` varchar(18) NOT NULL,
  `Cup` varchar(18) NOT NULL,
  `Name` varchar(36) NOT NULL,
  `Score` int DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  `Type` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`Time`,`Cup`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoreboard`
--

LOCK TABLES `scoreboard` WRITE;
/*!40000 ALTER TABLE `scoreboard` DISABLE KEYS */;
INSERT INTO `scoreboard` VALUES ('2023-24','中超联赛','上海海港',56,NULL,NULL),('2023-24','中超联赛','北京国安',54,NULL,NULL),('2023-24','中超联赛','大连人',40,NULL,NULL),('2023-24','中超联赛','天津津门虎',42,NULL,NULL),('2023-24','中超联赛','山东泰山',48,NULL,NULL),('2023-24','中超联赛','广州队',58,NULL,NULL),('2023-24','中超联赛','成都蓉城',38,NULL,NULL),('2023-24','中超联赛','武汉长江',44,NULL,NULL),('2023-24','中超联赛','江苏苏宁',50,NULL,NULL),('2023-24','中超联赛','河南嵩山龙门',46,NULL,NULL),('2023-24','南美解放者杯','Academia Puerto Cabello',NULL,NULL,NULL),('2023-24','南美解放者杯','CD El Nacional',NULL,NULL,NULL),('2023-24','南美解放者杯','CD Palestino',NULL,NULL,NULL),('2023-24','南美解放者杯','Club Always Ready',NULL,NULL,NULL),('2023-24','南美解放者杯','Club Aurora',NULL,NULL,NULL),('2023-24','南美解放者杯','Club Nacional',NULL,NULL,NULL),('2023-24','南美解放者杯','Club Sporting Cristal SAC',NULL,NULL,NULL),('2023-24','南美解放者杯','Club Sportivo Trinidense',NULL,NULL,NULL),('2023-24','南美解放者杯','Clube Atlético Bragantino',NULL,NULL,NULL),('2023-24','南美解放者杯','CSD Colo-Colo',NULL,NULL,NULL),('2023-24','南美解放者杯','Defensor Sporting Club',NULL,NULL,NULL),('2023-24','南美解放者杯','FBC Melgar',NULL,NULL,NULL),('2023-24','南美解放者杯','Godoy Cruz Antonio Tomba',NULL,NULL,NULL),('2023-24','南美解放者杯','Portuguesa FC',NULL,NULL,NULL),('2023-24','南美解放者杯','Rionegro Águilas SA',NULL,NULL,NULL),('2023-24','南美解放者杯','SD Aucas',NULL,NULL,NULL),('2023-24','德甲','勒沃库森',42,NULL,NULL),('2023-24','德甲','多特蒙德',27,NULL,NULL),('2023-24','德甲','拜仁慕尼黑',38,NULL,NULL),('2023-24','意甲','AC米兰',33,NULL,NULL),('2023-24','意甲','国际米兰',41,NULL,NULL),('2023-24','意甲','尤文图斯',40,NULL,NULL),('2023-24','日本足球甲级联赛','FC东京',43,NULL,NULL),('2023-24','日本足球甲级联赛','京都不死鸟',40,NULL,NULL),('2023-24','日本足球甲级联赛','佐贺鸫',38,NULL,NULL),('2023-24','日本足球甲级联赛','名古屋鲸八',52,NULL,NULL),('2023-24','日本足球甲级联赛','大阪樱花',49,NULL,NULL),('2023-24','日本足球甲级联赛','大阪钢巴',34,NULL,NULL),('2023-24','日本足球甲级联赛','川崎前锋',50,NULL,NULL),('2023-24','日本足球甲级联赛','广岛三箭',58,NULL,NULL),('2023-24','日本足球甲级联赛','新泻天鹅',45,NULL,NULL),('2023-24','日本足球甲级联赛','札幌冈萨多',40,NULL,NULL),('2023-24','日本足球甲级联赛','柏太阳神',33,NULL,NULL),('2023-24','日本足球甲级联赛','横滨FC',29,NULL,NULL),('2023-24','日本足球甲级联赛','横滨水手',64,NULL,NULL),('2023-24','日本足球甲级联赛','浦和红钻',57,NULL,NULL),('2023-24','日本足球甲级联赛','湘南海洋',34,NULL,NULL),('2023-24','日本足球甲级联赛','神户胜利船',71,NULL,NULL),('2023-24','日本足球甲级联赛','福冈黄蜂',51,NULL,NULL),('2023-24','日本足球甲级联赛','鹿岛鹿角',52,NULL,NULL),('2023-24','法甲','尼斯',35,NULL,NULL),('2023-24','法甲','巴黎圣日耳曼',40,NULL,NULL),('2023-24','法甲','摩纳哥',33,NULL,NULL),('2023-24','英超','利物浦',38,NULL,NULL),('2023-24','英超','曼联',28,NULL,NULL),('2023-24','英超','阿森纳',39,NULL,NULL),('2023-24','西甲','巴塞罗那',38,NULL,NULL),('2023-24','西甲','杰罗纳',45,NULL,NULL),('2023-24','西甲','皇家马德里',45,NULL,NULL),('2023-24','韩国足球甲级联赛','仁川联',48,NULL,NULL),('2023-24','韩国足球甲级联赛','光州FC',54,NULL,NULL),('2023-24','韩国足球甲级联赛','全北现代',49,NULL,NULL),('2023-24','韩国足球甲级联赛','大田市民',45,NULL,NULL),('2023-24','韩国足球甲级联赛','大邱FC',49,NULL,NULL),('2023-24','韩国足球甲级联赛','水原FC',31,NULL,NULL),('2023-24','韩国足球甲级联赛','水原三星蓝翼',25,NULL,NULL),('2023-24','韩国足球甲级联赛','江原FC',26,NULL,NULL),('2023-24','韩国足球甲级联赛','济州联',35,NULL,NULL),('2023-24','韩国足球甲级联赛','浦项制铁',58,NULL,NULL),('2023-24','韩国足球甲级联赛','蔚山现代',67,NULL,NULL),('2023-24','韩国足球甲级联赛','首尔FC',47,NULL,NULL);
/*!40000 ALTER TABLE `scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldcup`
--

DROP TABLE IF EXISTS `worldcup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worldcup` (
  `time` varchar(16) NOT NULL,
  `place` varchar(16) NOT NULL,
  `country` varchar(16) NOT NULL,
  PRIMARY KEY (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldcup`
--

LOCK TABLES `worldcup` WRITE;
/*!40000 ALTER TABLE `worldcup` DISABLE KEYS */;
INSERT INTO `worldcup` VALUES ('1986','墨西哥','阿根廷'),('1990','意大利','联邦德国'),('1994','美国','巴西'),('1998','法国','法国'),('2002','韩日','巴西'),('2006','德国','意大利'),('2010','南非','西班牙'),('2014','巴西','德国'),('2018','俄罗斯','法国'),('2023','卡塔尔','阿根廷');
/*!40000 ALTER TABLE `worldcup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-25 17:20:23
