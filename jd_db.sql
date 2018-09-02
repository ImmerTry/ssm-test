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

 Date: 02/09/2018 10:52:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
INSERT INTO `t_item` VALUES ('1', 1, '越南进口红心火龙果', 36, '红心果更甜，巨无霸果肉满满，享受饱满的甜蜜诱惑！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '越南进口红心火龙果 2个装 巨无霸大果 单果约600~700g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('10', 1, 'Zespri佳沛 新西兰绿奇异果', 28, '小身材，大营养，清新酸甜超多汁！一天一粒，加倍活力！热带水果狂欢节！爆款商品低至59元3件&99元6件，疯抢中！', 'Zespri佳沛 新西兰绿奇异果 6个装 经典36果 单果重约90-100g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('2', 1, '展卉 泰国进口椰青', 26, '只挑“适龄椰青”，汁更香甜肉更细嫩，清晨采摘急速冷藏只为更鲜！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '展卉 泰国进口椰青 2个装 单果约800g以上 赠送开椰器和吸管 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('3', 1, '越南进口红心火龙果', 28, '红心果更甜蜜，富含抗氧化的花青素，护眼兼护肤，美味更健康！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '越南进口红心火龙果 4个装 单果约330~420g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('4', 1, 'Zespri佳沛 新西兰阳光金奇异果', 179, '【超单神爆品 感恩再返场】【佳沛官方授权】【 新旧包装随机发放】产自纯净新西兰的品质佳沛，果王本色，特大金果，对半切开，大口大口挖着吃，尽享爆浆滋味~吃完佳沛吃牛油果，健康美味更加倍，点我直达！', 'Zespri佳沛 新西兰阳光金奇异果 22-25个原箱装 特大22-25号果 单果重约134-175g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('5', 1, '越南进口红心火龙果', 33, '果肉更足，红果富含花青素，天然抗氧化营养库！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '越南进口红心火龙果 3个装 大果 单果约450~500g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('6', 1, '展卉 泰国椰青', 88, '只挑“适龄椰青”，汁更香甜肉更细嫩，清晨采摘急速冷藏只为更鲜！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '展卉 泰国椰青 9个装 单果约800g以上 赠送开椰器和吸管 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('7', 1, 'Zespri佳沛 新西兰阳光金奇异果', 42, '小身材，大营养！经典中的经典！爱佳沛，从吃它开始~热带水果狂欢节！爆款商品低至59元3件&99元6件，疯抢中！', 'Zespri佳沛 新西兰阳光金奇异果 6个装 经典36号果 单果重约90-100g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('8', 1, '百香果', 19, '北纬25°雨量充沛，温和的气候孕育出的【百香果】果汁酸爽，香味浓郁！热带水果狂欢节！59元3件&99元6件！(此商品不参加上述活动)', '百香果 精品中果12个装 单果50-80g 新鲜水果', NULL);
INSERT INTO `t_item` VALUES ('9', 1, 'Zespri佳沛 新西兰阳光金奇异果', 108, '热带水果狂欢节！爆款商品低至59元3件&99元6件，疯抢中！', 'Zespri佳沛 新西兰阳光金奇异果 16个礼盒装 经典36号果 单果重约90-100g 新鲜水果', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderid` varchar(20) NOT NULL COMMENT '订单ID',
  `payment` varchar(50) DEFAULT NULL COMMENT '实付金额',
  `paymentype` int(2) DEFAULT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `postmoney` varchar(50) DEFAULT NULL COMMENT '邮费',
  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、交易关闭',
  `createtime` datetime DEFAULT NULL COMMENT '订单创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '订单更新时间',
  `paymenttime` datetime DEFAULT NULL COMMENT '付款时间',
  `sendtime` datetime DEFAULT NULL COMMENT '发货时间',
  `endtime` datetime DEFAULT NULL COMMENT '交易完成时间',
  `closetime` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shippingname` varchar(20) DEFAULT NULL COMMENT '物流名称',
  `shippingcode` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `adminid` int(11) DEFAULT NULL COMMENT '用户ID',
  `message` varchar(100) DEFAULT NULL COMMENT '买家留言',
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order_info
-- ----------------------------
DROP TABLE IF EXISTS `t_order_info`;
CREATE TABLE `t_order_info` (
  `id` varchar(20) NOT NULL,
  `itemid` varchar(20) NOT NULL COMMENT '商品ID',
  `orederid` varchar(20) NOT NULL COMMENT '订单ID',
  `count` int(20) DEFAULT NULL COMMENT '商品数量',
  `itemname` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `price` bigint(20) DEFAULT NULL COMMENT '商品单价',
  `amount` bigint(20) DEFAULT NULL COMMENT '商品总金额',
  `picturepath` varchar(200) DEFAULT NULL COMMENT '商品图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order_send
-- ----------------------------
DROP TABLE IF EXISTS `t_order_send`;
CREATE TABLE `t_order_send` (
  `orderid` varchar(20) NOT NULL COMMENT '订单ID',
  `sendname` varchar(100) NOT NULL COMMENT '收货人名称',
  `address` varchar(100) NOT NULL COMMENT '收货人地址',
  `phoneno` int(11) NOT NULL COMMENT '收货人电话',
  `province` char(50) NOT NULL COMMENT '省份',
  `city` char(50) NOT NULL COMMENT '城市',
  `region` char(50) NOT NULL COMMENT '区/县',
  `detailed` varchar(100) NOT NULL COMMENT '收货人详情地址',
  `postalcode` int(6) NOT NULL COMMENT '邮政编码',
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `pictureid` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `picturepath` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `classid` int(20) DEFAULT NULL,
  `itemname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pictureid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_picture
-- ----------------------------
BEGIN;
INSERT INTO `t_picture` VALUES (1, '1', 'upload/b3b078fb-4535-4eda-8a30-7a77b0e10161.jpg,', 1, '越南进口红心火龙果');
INSERT INTO `t_picture` VALUES (2, '10', 'upload/7f69d8ee-0391-4562-b43e-212ec56c8fac.jpg,', 1, 'Zespri佳沛 新西兰绿奇异果');
INSERT INTO `t_picture` VALUES (3, '2', 'upload/0747416b-1e2c-4944-b5a1-36d9b2160b49.jpg,', 1, '展卉 泰国进口椰青');
INSERT INTO `t_picture` VALUES (4, '3', 'upload/af3d7ffc-013b-42bb-8ca6-f98ef2238b7f.jpg,', 1, '越南进口红心火龙果');
INSERT INTO `t_picture` VALUES (5, '4', 'upload/ec05832b-fc12-49ca-96d0-e14f7f42dd0f.jpg,', 1, 'Zespri佳沛 新西兰阳光金奇异果');
INSERT INTO `t_picture` VALUES (6, '5', 'upload/5552e04b-7f14-4f26-9459-ef4c7b2c0ce3.jpg,', 1, '越南进口红心火龙果');
INSERT INTO `t_picture` VALUES (7, '6', 'upload/9b21909d-634f-4541-a22b-f2a891fad165.jpg,', 1, '展卉 泰国椰青');
INSERT INTO `t_picture` VALUES (8, '7', 'upload/4b0a75e2-c4e8-4f1a-9ece-8cf52a20f741.jpg,', 1, 'Zespri佳沛 新西兰阳光金奇异果');
INSERT INTO `t_picture` VALUES (9, '8', 'upload/0f07b084-644c-4ea7-a61b-45bf76ca29e4.jpg,', 1, '百香果');
INSERT INTO `t_picture` VALUES (10, '9', 'upload/ecd21831-5213-4e8f-a8ab-8960202231fa.jpg,', 1, 'Zespri佳沛 新西兰阳光金奇异果');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(20) NOT NULL COMMENT '用户名',
  `loginpwd` varchar(40) NOT NULL COMMENT '密码',
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
