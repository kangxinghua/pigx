/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100320
 Source Host           : localhost:3306
 Source Schema         : pigxx_mp

 Target Server Type    : MariaDB
 Target Server Version : 100320
 File Encoding         : 65001

 Date: 08/04/2020 07:28:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wx_account
-- ----------------------------
DROP TABLE IF EXISTS `wx_account`;
CREATE TABLE `wx_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `appid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `appsecret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aeskey` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `qr_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公众号账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_account
-- ----------------------------
INSERT INTO `wx_account` VALUES (1, 'pigx测试', 'gh_16138b09b5f9', 'wxeb4543e2d692ec5a', '2e3d89a95aa55a63df11eecdea973662', 'http://pigx.huaxiadaowei.com', 'pigx', 'pigx', 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQF88TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyWm1EOXNPWEdlS0MxMDAwMGcwM2MAAgQEzslcAwQAAAAA', '2019-05-02 22:14:35', '2019-05-02 22:14:35', '0', 1);

-- ----------------------------
-- Table structure for wx_account_fans
-- ----------------------------
DROP TABLE IF EXISTS `wx_account_fans`;
CREATE TABLE `wx_account_fans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subscribe_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `subscribe_time` datetime(0) NULL DEFAULT NULL COMMENT '订阅时间',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `language` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `headimg_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_id` int(11) NULL DEFAULT NULL COMMENT '微信公众号ID',
  `wx_account_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_appid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_1`(`openid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信公众号粉丝表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_fans_msg
-- ----------------------------
DROP TABLE IF EXISTS `wx_fans_msg`;
CREATE TABLE `wx_fans_msg`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `openid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `headimg_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_appid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_id` int(11) NULL DEFAULT NULL COMMENT '微信账号ID',
  `msg_id` bigint(20) NULL DEFAULT NULL COMMENT '消息ID',
  `msg_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `res_content` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_res` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `media_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pic_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pic_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '租户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '粉丝消息表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_fans_msg_res
-- ----------------------------
DROP TABLE IF EXISTS `wx_fans_msg_res`;
CREATE TABLE `wx_fans_msg_res`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fans_msg_id` int(11) NULL DEFAULT NULL COMMENT '粉丝消息ID',
  `res_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '租户表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '回复粉丝消息历史表 ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_mp_menu
-- ----------------------------
DROP TABLE IF EXISTS `wx_mp_menu`;
CREATE TABLE `wx_mp_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '菜单',
  `wx_account_id` int(11) NULL DEFAULT NULL,
  `wx_account_appid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_account_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '租户ID',
  `pub_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信菜单表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
