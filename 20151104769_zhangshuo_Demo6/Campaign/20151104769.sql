/*
Navicat MySQL Data Transfer

Source Server         : Demo1
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : 20151104769

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2018-12-28 22:25:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `AdminId` int(8) default NULL COMMENT '管理员ID',
  `AdminName` varchar(255) default NULL COMMENT '管理员用户名',
  `AdminPw` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'test1', '123456');
INSERT INTO `adminuser` VALUES ('2', 'test2', '123456');

-- ----------------------------
-- Table structure for campaigndetaid
-- ----------------------------
DROP TABLE IF EXISTS `campaigndetaid`;
CREATE TABLE `campaigndetaid` (
  `CpId` int(4) NOT NULL,
  `test` varchar(255) default NULL COMMENT '还有待改善主外键关系',
  PRIMARY KEY  (`CpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of campaigndetaid
-- ----------------------------

-- ----------------------------
-- Table structure for campaignuser
-- ----------------------------
DROP TABLE IF EXISTS `campaignuser`;
CREATE TABLE `campaignuser` (
  `CpUserId` int(8) NOT NULL,
  `CpUserName` varchar(255) default NULL,
  `CpUserSex` varchar(255) default NULL,
  `CpUserAge` int(4) default NULL,
  PRIMARY KEY  (`CpUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of campaignuser
-- ----------------------------

-- ----------------------------
-- Table structure for submituser
-- ----------------------------
DROP TABLE IF EXISTS `submituser`;
CREATE TABLE `submituser` (
  `SuId` int(8) NOT NULL COMMENT '非竞选投票者',
  `SuName` varchar(255) default NULL COMMENT '非竞选投票者姓名',
  `SuPw` varchar(255) default NULL COMMENT '非竞选投票者密码',
  `SuAge` int(4) default NULL COMMENT '非竞选投票者年龄',
  `SuAddress` varchar(255) default NULL,
  `SuEmail` varchar(255) default NULL,
  `SuPhone` varchar(255) default NULL,
  PRIMARY KEY  (`SuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of submituser
-- ----------------------------

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `TtId` int(8) NOT NULL,
  `TtName` varchar(255) default NULL,
  `TtDescription` varchar(255) default NULL,
  PRIMARY KEY  (`TtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of title
-- ----------------------------
