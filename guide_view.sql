/*
Navicat MySQL Data Transfer

Source Server         : localsystem
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : guide_view

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-05-25 18:14:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adId` char(20) NOT NULL,
  `adName` char(10) DEFAULT NULL,
  `adSex` char(6) DEFAULT NULL,
  `adAge` int DEFAULT NULL,
  `adPhone` char(15) DEFAULT NULL,
  `adPsw` char(20) DEFAULT NULL,
  PRIMARY KEY (`adId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('ad01', '马振乐', '男', '21', '13652707142', '88888');

-- ----------------------------
-- Table structure for guide
-- ----------------------------
DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `gid` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gname` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `workYears` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `psw` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of guide
-- ----------------------------
INSERT INTO `guide` VALUES ('g01', '郭倩盈', '女', '21', '8000', '6年', '15987654232', '88888');
INSERT INTO `guide` VALUES ('g02', '露露', '女', '21', '6500', '8年', '13292175093', '88888');
INSERT INTO `guide` VALUES ('g03', '露露', '男', '18', '6500', '3年', '13292175093', '88888');
INSERT INTO `guide` VALUES ('g04', '卢公寓', '男', '20', '5000', '3年', '13292175093', '88888');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `nid` int NOT NULL,
  `title` char(100) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `type` char(30) DEFAULT NULL,
  `pubTime` date DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '市区16路公交车推行支付宝...', 'https://news.cncn.com/289866.html', '交通', '2020-04-30');
INSERT INTO `news` VALUES ('2', '5月1日起厦门6条定制公...', 'https://news.cncn.com/289862.html', '交通', '2020-04-30');
INSERT INTO `news` VALUES ('3', '延庆文旅行业回暖复苏 景...', 'https://news.cncn.com/289935.html', '酒店', '2020-04-30');
INSERT INTO `news` VALUES ('4', '大别山石窟、风情谷景区...', 'https://news.cncn.com/289965.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('5', '“五一”将至，市内特色景...', 'https://news.cncn.com/289751.html', '酒店', '2020-04-30');
INSERT INTO `news` VALUES ('6', '青海省文化和旅游厅疫情...', 'https://news.cncn.com/290077.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('7', '青海省文化和旅游厅加强...', 'https://news.cncn.com/290069.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('8', '江苏省文化和旅游厅向各...', 'https://news.cncn.com/290068.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('9', '河南郑州多部门联动全力...', 'https://news.cncn.com/290066.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('10', '江西发布智慧景区建设指南...', 'https://news.cncn.com/290057.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('11', '安徽淮南市 “六项举措”确...', 'https://news.cncn.com/290043.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('12', '青海省文化和旅游厅召开...', 'https://news.cncn.com/290058.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('13', '内蒙古自治区文化和旅游...', 'https://news.cncn.com/290063.html', '景区', '2020-05-01');
INSERT INTO `news` VALUES ('15', '铜梁：首家村集体打造特...', 'https://news.cncn.com/289938.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('16', '贵州民宿点亮疫后经济', 'https://news.cncn.com/289937.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('17', '民宿业能否借五一重启？', 'https://news.cncn.com/289936.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('18', '延庆文旅行业回暖复苏...', 'https://news.cncn.com/289935.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('19', '民宿重启 北京鼓励自然...', 'https://news.cncn.com/289934.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('20', '甘肃酒店业：多措并举...', 'https://news.cncn.com/289830.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('21', '“五一”将至，市内特色景...', 'https://news.cncn.com/289751.html', '酒店', '2020-05-01');
INSERT INTO `news` VALUES ('22', '太原331路公交车开通，途...', 'https://news.cncn.com/290087.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('23', '出租车又“招手即停”了', 'https://news.cncn.com/290086.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('24', '长沙上海陆续试点 济南业...', 'https://news.cncn.com/290085.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('25', '芜湖公交车线路大调整...', 'https://news.cncn.com/290084.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('26', '通向大山深处的“扶贫公交”', 'https://news.cncn.com/289867.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('27', '21路公交车调整运行线路', 'https://news.cncn.com/289864.html', '交通', '2020-05-01');
INSERT INTO `news` VALUES ('28', '关于推动我市旅行社复工...', 'https://news.cncn.com/290000.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('29', '打破疫情下的“寒冬”旅行社...', 'https://news.cncn.com/289999.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('30', '济南市开展3A级以上旅行...', 'https://news.cncn.com/289998.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('31', '黑龙江：“五一”期间防控优...', 'https://news.cncn.com/289996.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('32', '发力省内游市场 江西旅...', 'https://news.cncn.com/289816.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('33', '旅行社深陷冬眠模式，老...', 'https://news.cncn.com/289815.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('34', '北京恢复市内组团游，旅...', 'https://news.cncn.com/289814.html', '旅行', '2020-05-01');
INSERT INTO `news` VALUES ('35', '最高奖励3万/天！济南...', 'https://news.cncn.com/289817.html', '旅行', '2020-05-01');

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
CREATE TABLE `travel` (
  `gid` char(15) DEFAULT NULL,
  `vid` char(15) DEFAULT NULL,
  `visitTime` date DEFAULT NULL,
  `visitLength` char(30) DEFAULT NULL,
  `visitNum` int DEFAULT NULL,
  `hotel` char(50) DEFAULT NULL,
  `startPoint` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `destination` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `transportation` char(30) DEFAULT NULL,
  KEY `gid` (`gid`),
  KEY `vid` (`vid`),
  CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `guide` (`gid`),
  CONSTRAINT `travel_ibfk_2` FOREIGN KEY (`vid`) REFERENCES `viewspot` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of travel
-- ----------------------------
INSERT INTO `travel` VALUES ('g01', 'v01', '2020-05-06', '7天', '500', '经济酒店', '江门市', '广州市', '飞机');
INSERT INTO `travel` VALUES ('g02', 'v01', '2020-04-22', '8天', '500', '发达酒店', '广东江门', '广东韶关', '飞机');

-- ----------------------------
-- Table structure for viewspot
-- ----------------------------
DROP TABLE IF EXISTS `viewspot`;
CREATE TABLE `viewspot` (
  `vid` char(15) NOT NULL,
  `vname` char(20) DEFAULT NULL,
  `ranking` char(20) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `price` char(50) DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `openTime` char(50) DEFAULT NULL,
  `location` char(70) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of viewspot
-- ----------------------------
INSERT INTO `viewspot` VALUES ('v01', '黄山', 'AAAAA', '观光游玩', '100元/人', '9', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v02', '块景区', 'AAAAA', '观光游玩', '700元/人', '9.2', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v03', '迪士尼乐园', 'AAAA', '旅游娱乐类', '100元/人', '9.5', '9:00AM~21:00PM', '广东佛山');
INSERT INTO `viewspot` VALUES ('v04', '共和山', 'AAAAA', '观光游玩', '700元/人', '9.1', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v05', '解决山', 'AAAAA', '观光游玩', '700元/人', '8.5', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v06', '手机山', 'AAAAA', '观光游玩', '700元/人', '8.7', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v07', '融入山', 'AAAAA', '观光游玩', '700元/人', '8.1', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v08', '的合山', 'AAAAA', '观光游玩', '700元/人', '6.1', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v09', '分机山', 'AAAAA', '观光游玩', '700元/人', '6.9', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v10', '发挥山', 'AAAAA', '观光游玩', '700元/人', '8.9', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v11', '滚滚山', 'AAAAA', '观光游玩', '700元/人', '9.4', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v12', '份饭山', 'AAAAA', '观光游玩', '700元/人', '9.2', '全天', '广东省韶关市');
INSERT INTO `viewspot` VALUES ('v13', '天坛山', 'AAAAA', '观光游玩', '700元/人', '8.5', '全天', '广东省韶关市');
