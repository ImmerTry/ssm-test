/*
 Navicat Premium Data Transfer

 Source Server         : SugarMan
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : jd_db

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 04/08/2018 08:38:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `cartid` varchar(20) NOT NULL,
  `adminid` int(11) NOT NULL,
  `count` int(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`cartid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_classification
-- ----------------------------
DROP TABLE IF EXISTS `t_classification`;
CREATE TABLE `t_classification` (
  `classid` int(20) NOT NULL,
  `classname` varchar(100) DEFAULT NULL,
  `viewkeyword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`classid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_classification
-- ----------------------------
BEGIN;
INSERT INTO `t_classification` VALUES (1, '新鲜水果', '水果');
INSERT INTO `t_classification` VALUES (2, '海鲜水产', '水产');
INSERT INTO `t_classification` VALUES (3, '精选肉类', '肉类');
INSERT INTO `t_classification` VALUES (4, '冷冻饮食', '饮食');
INSERT INTO `t_classification` VALUES (5, '蔬菜蛋品', '蔬菜蛋品');
COMMIT;

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item` (
  `itemid` varchar(20) NOT NULL,
  `classid` int(20) NOT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `picturepath` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------
BEGIN;
INSERT INTO `t_item` VALUES ('2', 0, NULL, 0, NULL, NULL, NULL);
INSERT INTO `t_item` VALUES ('3', 2, 'dfssf', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('4', 2, 'dfssf', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('5', 3, 'd', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('6', 1, 'dfssf', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('7', 4, 'dfssf', 2, '2', 'd', NULL);
INSERT INTO `t_item` VALUES ('8', 2, 'd', 2, 'd', 'v', NULL);
INSERT INTO `t_item` VALUES ('dasd', 1, 'da', 2, '超大超甜', '好吃', NULL);
INSERT INTO `t_item` VALUES ('dasfadsfs', 1, 'sf', 34, '好好吃', '好吃不酸', NULL);
INSERT INTO `t_item` VALUES ('dazao', 5, '大枣', 2, '超大超甜', '新疆大红枣', NULL);
INSERT INTO `t_item` VALUES ('ds', 1, '苹果', 2, '好吃的不得了', '山东红富士', NULL);
INSERT INTO `t_item` VALUES ('dsadadg', 1, 'g', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('fish', 2, '三文鱼', 2, '来自日本北海道', '日本三文鱼', NULL);
INSERT INTO `t_item` VALUES ('huolongguo', 1, '火龙果', 2, '好好吃', '好吃', NULL);
INSERT INTO `t_item` VALUES ('juzi', 1, '橘子', 2, '杠杠滴', '好吃不酸', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderid` varchar(20) NOT NULL,
  `adminid` int(11) NOT NULL,
  `status` int(5) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `count` int(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order_info
-- ----------------------------
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info` (
  `infoid` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `price` int(20) DEFAULT NULL,
  `count` int(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  PRIMARY KEY (`infoid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order_send
-- ----------------------------
DROP TABLE IF EXISTS `t_order_send`;
CREATE TABLE `t_order_send` (
  `sendid` varchar(20) NOT NULL,
  `sendname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneno` int(11) NOT NULL,
  `province` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `region` char(50) NOT NULL,
  `detailed` varchar(100) NOT NULL,
  `postalcode` int(6) NOT NULL,
  PRIMARY KEY (`sendid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(20) NOT NULL,
  `loginpwd` varchar(40) NOT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'admin', '123456', '2018-06-27 11:49:57');
INSERT INTO `t_user` VALUES (2, 'zs', '123', NULL);
INSERT INTO `t_user` VALUES (3, 'll', '123456', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
