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

 Date: 07/08/2018 21:34:04
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
  `picturepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_item
-- ----------------------------
BEGIN;
INSERT INTO `t_item` VALUES ('1', 1, '香蕉', 2, '好好吃', '好吃不得了', NULL);
INSERT INTO `t_item` VALUES ('10', 1, 'fsd', 3, '好好吃', '好吃不得了', NULL);
INSERT INTO `t_item` VALUES ('2', 2, '三文鱼', 3, '美味', '新鲜美味', NULL);
INSERT INTO `t_item` VALUES ('3', 2, '香蕉', 4, '好好吃', '好吃不得了', NULL);
INSERT INTO `t_item` VALUES ('4', 3, '香蕉', 3, '好好吃', '新鲜美味', NULL);
INSERT INTO `t_item` VALUES ('5', 3, 'd', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('6', 1, 'dfssf', 2, 'd', 'd', NULL);
INSERT INTO `t_item` VALUES ('7', 4, 'dfssf', 2, '2', 'd', NULL);
INSERT INTO `t_item` VALUES ('8', 3, 'd', 2, 'd', 'v', NULL);
INSERT INTO `t_item` VALUES ('dasd', 1, '香蕉', 2, '好好吃', '好吃不得了', NULL);
INSERT INTO `t_item` VALUES ('dasda', 1, 'asd', 3, '好好吃', '新鲜美味', NULL);
INSERT INTO `t_item` VALUES ('dasdas', 1, 'fsd', 3, '好好吃', '好吃不得了', NULL);
INSERT INTO `t_item` VALUES ('fish', 2, '三文鱼', 2, '来自日本北海道', '日本三文鱼', NULL);
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
-- Table structure for t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `itemid` varchar(20) COLLATE utf8_bin NOT NULL,
  `picturepath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `classid` int(20) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
