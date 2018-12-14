/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : oauth2

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-12-14 09:25:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t2_app_account`
-- ----------------------------
DROP TABLE IF EXISTS `t2_app_account`;
CREATE TABLE `t2_app_account` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `key_id` int(21) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t2_app_account
-- ----------------------------
INSERT INTO `t2_app_account` VALUES ('1', 'root', null, 'KPTHfFNNU1gym2GzJsmVzRdD4uN90TlJrOnJuBbeH6k=', '1', '123456');

-- ----------------------------
-- Table structure for `t3_oauth_thirdparty`
-- ----------------------------
DROP TABLE IF EXISTS `t3_oauth_thirdparty`;
CREATE TABLE `t3_oauth_thirdparty` (
  `id` int(21) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(200) DEFAULT NULL,
  `CLIENT_SECRET` varchar(200) DEFAULT NULL,
  `SCOPE` varchar(200) DEFAULT NULL,
  `REDIRECT_URI` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t3_oauth_thirdparty
-- ----------------------------
INSERT INTO `t3_oauth_thirdparty` VALUES ('1', 'fbed1d1b4b1449daa4bc49397cbe2350', '123456', 'user,order', 'https://api.ubtrobot.com/ubtoauth/client/oauth_callback');

-- ----------------------------
-- Table structure for `t3_refreshtoken`
-- ----------------------------
DROP TABLE IF EXISTS `t3_refreshtoken`;
CREATE TABLE `t3_refreshtoken` (
  `KEY_ID` int(21) NOT NULL AUTO_INCREMENT,
  `APP_ACCOUNT_ID` varchar(100) DEFAULT NULL,
  `CLIENT_ID` varchar(200) DEFAULT NULL,
  `REFRESHTOKEN` varchar(200) DEFAULT NULL,
  `EXPIREIN` int(11) DEFAULT NULL,
  PRIMARY KEY (`KEY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t3_refreshtoken
-- ----------------------------
INSERT INTO `t3_refreshtoken` VALUES ('1', '1', 'fbed1d1b4b1449daa4bc49397cbe2350', '4b51ccc68f66ba80c96b7f586fba3e05', '1547342398');
