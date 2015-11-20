/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : customer service

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-11-20 18:37:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_conversion
-- ----------------------------
DROP TABLE IF EXISTS `cs_conversion`;
CREATE TABLE `cs_conversion` (
  `conid` int(30) NOT NULL COMMENT '对话内容表',
  `cid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `wid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `context` text COLLATE utf8_unicode_ci NOT NULL,
  `isstart` int(5) NOT NULL,
  `isend` int(5) NOT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
