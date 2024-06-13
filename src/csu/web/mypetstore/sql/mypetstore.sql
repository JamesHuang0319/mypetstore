/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : mypetstore

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 15/04/2024 14:37:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `firstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `lastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `addr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `addr2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `state` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `phone` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'yourname@yourdomain.com', '', '', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '');
INSERT INTO `account` VALUES ('123', 'yourname@yourdomain.com', '', '', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('james', 'yourname@yourdomain.com', '', '', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '');
INSERT INTO `account` VALUES ('ye', 'yourname@yourdomain.com', '', '', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '');

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `career` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `career_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `codename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `rare` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata`  (
  `favcategory` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `bannername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`favcategory`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `itemid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('j2ee', 'EST-18', 12);
INSERT INTO `cart` VALUES ('j2ee', 'EST-16', 44);
INSERT INTO `cart` VALUES ('j2ee', 'EST-19', 11);
INSERT INTO `cart` VALUES ('j2ee', 'EST-14', 2);
INSERT INTO `cart` VALUES ('j2ee', 'EST-6', 100);
INSERT INTO `cart` VALUES ('j2ee', 'EST-27', 3);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `catid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `qty` int NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', 86767);
INSERT INTO `inventory` VALUES ('EST-10', 10000);
INSERT INTO `inventory` VALUES ('EST-11', 10000);
INSERT INTO `inventory` VALUES ('EST-12', 10000);
INSERT INTO `inventory` VALUES ('EST-13', 10000);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 10000);
INSERT INTO `inventory` VALUES ('EST-16', 10000);
INSERT INTO `inventory` VALUES ('EST-17', 10000);
INSERT INTO `inventory` VALUES ('EST-18', 10000);
INSERT INTO `inventory` VALUES ('EST-19', 10000);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 10000);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 10000);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 10000);
INSERT INTO `inventory` VALUES ('EST-4', 10000);
INSERT INTO `inventory` VALUES ('EST-5', 10000);
INSERT INTO `inventory` VALUES ('EST-6', 10000);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 10000);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `productid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `listprice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `unitcost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `supplier` int NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `attr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `attr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `attr3` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `attr4` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `attr5` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `fk_item_2`(`supplier` ASC) USING BTREE,
  INDEX `itemProd`(`productid` ASC) USING BTREE,
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', '16.50', '10.00', 1, 'P', 'Large', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', '18.50', '12.00', 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', '18.50', '12.00', 1, 'P', 'Venomless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', '18.50', '12.00', 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', '18.50', '12.00', 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', '58.50', '12.00', 1, 'P', 'Tailless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', '23.50', '12.00', 1, 'P', 'With tail', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', '93.50', '12.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', '93.50', '12.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', '193.50', '92.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', '15.50', '2.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', '16.50', '10.00', 1, 'P', 'Small', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', '5.50', '2.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', '5.29', '1.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', '135.50', '100.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', '145.49', '100.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', '255.50', '92.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', '325.29', '90.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', '125.50', '92.00', 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', '155.29', '90.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', '155.29', '90.00', 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', '18.50', '12.00', 1, 'P', 'Toothless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', '18.50', '12.00', 1, 'P', 'Spotted', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', '18.50', '12.00', 1, 'P', 'Spotless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', '18.50', '12.00', 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', '18.50', '12.00', 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', '18.50', '12.00', 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', '18.50', '12.00', 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem`  (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `itemid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lineitem
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `logUserID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `logInfo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:10:46     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:10:47     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:10:50     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@25702987');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:17     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:18     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:19     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:19     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:20     http://localhost:8080/mypetstore/productForm?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:21     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:14:23     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:10     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:10     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:11     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:17     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:25     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:28     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:16:30     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@58cd04d0');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:06     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:06     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:10     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:11     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:15     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@764899cb');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:45     http://localhost:8080/mypetstore/categoryForm?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:46     http://localhost:8080/mypetstore/productForm?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:47     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-4 添加物品 (EST-4-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:49     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:50     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:18:51     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@28e83b6d');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:21:31     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:21:31     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:21:35     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:21:36     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:21:36     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@208ad1cb');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:23:02     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:23:02     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:23:05     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:23:06     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:23:07     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@2585777f');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:24:05     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:28     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:30     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:35     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:38     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:49     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:50     http://localhost:8080/mypetstore/productForm?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:25:51     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:39:52     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2024-01-02 23:39:55     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:32     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:32     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:35     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:35     http://localhost:8080/mypetstore/productForm?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:36     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:50     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:50     http://localhost:8080/mypetstore/productForm?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:48:51     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:56:50     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:56:50     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:56:57     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:10     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:10     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:11     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:12     http://localhost:8080/mypetstore/productForm?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:13     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:14     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:15     http://localhost:8080/mypetstore/productForm?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:57:15     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:58:22     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:58:23     http://localhost:8080/mypetstore/productForm?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 02:58:24     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-14 添加物品 (EST-14-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 03:02:47     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 03:02:47     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 03:02:49     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 03:02:50     http://localhost:8080/mypetstore/productForm?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 03:02:51     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:35:58     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:35:58     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:02     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:03     http://localhost:8080/mypetstore/productForm?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:04     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:08     http://localhost:8080/mypetstore/productForm?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:09     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-27 添加物品 (EST-27-null) 到购物车');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:36:59     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:37:00     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:37:55     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:37:58     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:00     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:05     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:07     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:07     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:08     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:08     http://localhost:8080/mypetstore/categoryForm?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('j2ee', '2024-01-03 10:38:11     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:20     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:34     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:34     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:39     http://localhost:8080/mypetstore/productForm?productId=FI-SW-01 查看产品 Angelfish');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:40     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-1 添加物品 (EST-1-null) 到购物车');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:44     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:45     http://localhost:8080/mypetstore/productForm?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:02:46     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:03:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('james', '2024-01-03 11:03:10     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:45:10     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:45:10     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:45:12     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:45:30     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:52:57     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:52:57     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:52:58     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:54:57     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:55:07     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:55:07     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:55:08     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:24     http://localhost:8080/mypetstore/categoryForm?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:24     http://localhost:8080/mypetstore/productForm?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:25     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-26 添加物品 (EST-26-null) 到购物车');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:27     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:35     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:36     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@3b0a7ffc');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:58     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:59     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:58:59     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:59:00     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('ACID', '2024-01-12 17:59:02     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:59:19     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:59:19     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:59:21     http://localhost:8080/mypetstore/categoryForm?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 17:59:22     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:31     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:33     http://localhost:8080/mypetstore/categoryForm?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:33     http://localhost:8080/mypetstore/categoryForm?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:34     http://localhost:8080/mypetstore/productForm?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:35     http://localhost:8080/mypetstore/addItemToCart?workingItemId=EST-16 (EST-16-null)数量+1 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:37     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:38     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-12 18:04:41     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@2b592bf4');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:18:50     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:18:50     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:18:55     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:20:41     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:22:18     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@647ef7d');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:43     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:46     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-16 (EST-16-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:47     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-19 (EST-19-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:47     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-14 (EST-14-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:47     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:48     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-27 (EST-27-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:49     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:50     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:23:51     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@2df75b91');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:29:15     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:16     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:16     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:18     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-16 (EST-16-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:19     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-19 (EST-19-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:19     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-14 (EST-14-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:19     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-6 (EST-6-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:19     http://localhost:8080/mypetstore/removeCartItem?workingItemId=EST-27 (EST-27-null) 已从购物车中移除');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:21     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:22     http://localhost:8080/mypetstore/conFirmOrderForm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:30:23     http://localhost:8080/mypetstore/viewOrder?null 查看订单 csu.web.mypetstore.domain.Order@5f684a4e');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:42:33     http://localhost:8080/mypetstore/editAccount?null 跳转到编辑账号信息界面');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:42:33     http://localhost:8080/mypetstore/signOff?null 退出账号');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:57:52     http://localhost:8080/mypetstore/signOn?null 用户登录');
INSERT INTO `log` VALUES ('j2ee', '2024-01-13 23:57:52     http://localhost:8080/mypetstore/mainForm?null 跳转到主界面');

-- ----------------------------
-- Table structure for manage_account
-- ----------------------------
DROP TABLE IF EXISTS `manage_account`;
CREATE TABLE `manage_account`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `address1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manage_account
-- ----------------------------

-- ----------------------------
-- Table structure for management_commodity
-- ----------------------------
DROP TABLE IF EXISTS `management_commodity`;
CREATE TABLE `management_commodity`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `commodity_category1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `commodity_category2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management_commodity
-- ----------------------------

-- ----------------------------
-- Table structure for management_order
-- ----------------------------
DROP TABLE IF EXISTS `management_order`;
CREATE TABLE `management_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management_order
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int NOT NULL,
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shipaddr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `shipcity` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shipstate` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shipzip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shipcountry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billaddr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billaddr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `billcity` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billstate` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billzip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billcountry` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `courier` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `totalprice` decimal(10, 2) NOT NULL,
  `billtofirstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `billtolastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shiptofirstname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `shiptolastname` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `creditcard` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `exprdate` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `cardtype` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `locale` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1000, 'j2ee', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1001, 'j2ee', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 65.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1002, 'j2ee', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 42.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1003, 'j2ee', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 42.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1004, 'b', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', 'UPS', 410.50, '', '', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1005, 'b', '2023-11-21', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', 'UPS', 851.00, '', '', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1006, 'ye', '2023-11-22', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', 'UPS', 154.50, '', '', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1007, 'james', '2023-11-22', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', '', 'UPS', 129.50, '', '', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1008, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 92.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1009, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 92.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1010, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 92.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1011, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1012, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 111.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1013, 'j2ee', '2024-01-02', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 111.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1014, 'ACID', '2024-01-12', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 125.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1015, 'j2ee', '2024-01-12', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 9039.37, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1016, 'j2ee', '2024-01-13', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 9039.37, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1017, 'j2ee', '2024-01-13', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 2322.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1018, 'j2ee', '2024-01-13', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 2322.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');

-- ----------------------------
-- Table structure for orderss
-- ----------------------------
DROP TABLE IF EXISTS `orderss`;
CREATE TABLE `orderss`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `codename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `keyname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `orderid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderss
-- ----------------------------

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
INSERT INTO `orderstatus` VALUES (1000, 1000, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1001, 1001, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1002, 1002, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1003, 1003, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1004, 1004, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1005, 1005, '2023-11-21', 'P');
INSERT INTO `orderstatus` VALUES (1006, 1006, '2023-11-22', 'P');
INSERT INTO `orderstatus` VALUES (1007, 1007, '2023-11-22', 'P');
INSERT INTO `orderstatus` VALUES (1008, 1008, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1009, 1009, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1010, 1010, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1011, 1011, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1012, 1012, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1013, 1013, '2024-01-02', 'P');
INSERT INTO `orderstatus` VALUES (1014, 1014, '2024-01-12', 'P');
INSERT INTO `orderstatus` VALUES (1015, 1015, '2024-01-12', 'P');
INSERT INTO `orderstatus` VALUES (1016, 1016, '2024-01-13', 'P');
INSERT INTO `orderstatus` VALUES (1017, 1017, '2024-01-13', 'P');
INSERT INTO `orderstatus` VALUES (1018, 1018, '2024-01-13', 'P');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `category` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`productid`) USING BTREE,
  INDEX `productCat`(`category` ASC) USING BTREE,
  INDEX `productName`(`name` ASC) USING BTREE,
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog5.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/snake1.gif\">Doubles as a watch dog');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `userid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `langpref` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `favcategory` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `mylistopt` int NULL DEFAULT NULL,
  `banneropt` int NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'english', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('123', 'english', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('j2ee', 'english', 'DOGS', 1, 1);
INSERT INTO `profile` VALUES ('james', 'english', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('ye', 'Chinese', 'CATS', NULL, NULL);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `nextid` int NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('ordernum', 1019);

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon`  (
  `username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('1', '2');
INSERT INTO `signon` VALUES ('123', '123');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');
INSERT INTO `signon` VALUES ('james', 'james');
INSERT INTO `signon` VALUES ('ye', 'ye');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `suppid` int NOT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NOT NULL,
  `addr1` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `addr2` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `zip` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bs_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`suppid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bs_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');

SET FOREIGN_KEY_CHECKS = 1;
