/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : customer service

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-11-20 18:37:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_worker
-- ----------------------------
DROP TABLE IF EXISTS `cs_worker`;
CREATE TABLE `cs_worker` (
  `wid` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '客服人员表单',
  `workname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `majorin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `isbusy` int(5) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
