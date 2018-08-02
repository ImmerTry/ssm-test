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

 Date: 18/07/2018 22:32:08
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
INSERT INTO `t_classification` VALUES (6, '总测试', '测试');
INSERT INTO `t_classification` VALUES (7, '测试', '测试');
INSERT INTO `t_classification` VALUES (8, '测试', '测试');
INSERT INTO `t_classification` VALUES (9, '测试', '测试');
INSERT INTO `t_classification` VALUES (10, '测试', '测试');
INSERT INTO `t_classification` VALUES (11, '测试', '测试');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'admin', '123456', '2018-06-27 11:49:57');
INSERT INTO `t_user` VALUES (2, 'zs', '123', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
