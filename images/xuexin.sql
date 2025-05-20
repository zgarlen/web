/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : xuexin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 20/05/2025 22:49:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xx_user_base_info
-- ----------------------------
DROP TABLE IF EXISTS `xx_user_base_info`;
CREATE TABLE `xx_user_base_info`  (
  `key` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobilePhone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `psWorld` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nationality` int(4) UNSIGNED NULL DEFAULT 0,
  `idType` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `idNumber` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idCardType` int(4) UNSIGNED NULL DEFAULT 0,
  `idCardEffectiveDate` date NULL DEFAULT NULL,
  `idCardExpiringDate` date NULL DEFAULT NULL,
  `registerTime` datetime(0) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xx_user_base_info
-- ----------------------------
INSERT INTO `xx_user_base_info` VALUES (4, '政务', '18565649370', 'd9f6e636e369552839e7bb8057aeb8da', 0, 0, '445221199308297235', 0, NULL, NULL, '2025-05-20 18:08:02');

-- ----------------------------
-- Table structure for xx_user_student_info
-- ----------------------------
DROP TABLE IF EXISTS `xx_user_student_info`;
CREATE TABLE `xx_user_student_info`  (
  `key` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studentName` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1、男；2、女',
  `birthday` date NOT NULL,
  `nationality` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '民族',
  `idNumber` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `schoolName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校名称',
  `level` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1、专科；2、本科',
  `major` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `studyTime` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '学制：3年；4年；5年……',
  `schoolType` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1、大专；2、本科',
  `learningType` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学习形式：全日制；非全日制',
  `college` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分院',
  `department` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系所',
  `class` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `studentId` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `enrollmentDate` date NOT NULL COMMENT '入学日期',
  `graduationDate` date NOT NULL COMMENT '毕业（离校）日期',
  `studentStatus` int(4) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1、不在籍（毕业）；2、在籍',
  `principal` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '校（院）长姓名',
  `certificateNo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '证书编号',
  `degreeAwardingUnit` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学位授予单位',
  `dateOfDegree` date NOT NULL COMMENT '获学位日期',
  `degreeName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所授学位名称',
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
