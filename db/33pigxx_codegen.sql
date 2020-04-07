/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100320
 Source Host           : localhost:3306
 Source Schema         : pigxx_codegen

 Target Server Type    : MariaDB
 Target Server Version : 100320
 File Encoding         : 65001

 Date: 08/04/2020 07:27:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_datasource_conf
-- ----------------------------
DROP TABLE IF EXISTS `gen_datasource_conf`;
CREATE TABLE `gen_datasource_conf`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '更新',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_datasource_conf
-- ----------------------------
INSERT INTO `gen_datasource_conf` VALUES (1, 'pigxx', 'jdbc:mysql://mysql:3306/pigxx?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true', 'root', 'jn0YxvD5Nl79un/pRMntjA==', '2019-03-31 16:40:43', '2019-06-13 03:07:24', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (2, 'pigxx_ac', 'jdbc:mysql://mysql:3306/pigxx_ac?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'H0si+/4hnuKlqe+TAww+WA==', '2019-03-31 17:53:25', '2019-06-13 03:07:25', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (3, 'pigxx_job', 'jdbc:mysql://mysql:3306/pigxx_job?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', '+9EsLbEuE+ksRN/BQaY+pw==', '2019-03-31 17:53:25', '2019-06-13 03:07:26', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (4, 'pigxx_mp', 'jdbc:mysql://mysql:3306/pigxx_mp?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', '4mkNIeuoqC+gyOoFwOGMzg==', '2019-03-31 17:53:25', '2019-06-13 03:07:28', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (5, 'pigxx_pay', 'jdbc:mysql://mysql:3306/pigxx_pay?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'aOikL5q5V1rGUG8xIOVx4Q==', '2019-03-31 17:53:25', '2019-06-13 03:07:30', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (6, 'pigxx_codegen', 'jdbc:mysql://pigx-mysql:3306/codegen?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true', 'root', 'C5TTfThz0wvmDV6waPfk9A==', '2019-08-12 15:47:39', '2019-08-12 15:47:39', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (7, 'loantrade', 'jdbc:mysql://mysql:3306/loantrade?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true', 'root', 'RyMiAwFcg/1PJM841aTi3Q==', '2020-04-07 12:46:52', '2020-04-07 12:46:52', '0', NULL);

-- ----------------------------
-- Table structure for gen_form_conf
-- ----------------------------
DROP TABLE IF EXISTS `gen_form_conf`;
CREATE TABLE `gen_form_conf`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `form_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '表单信息',
  `create_time` timestamp(0) NULL DEFAULT current_timestamp COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tenant_id` int(11) NULL DEFAULT NULL COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `table_name`(`table_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '表单配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_form_conf
-- ----------------------------
INSERT INTO `gen_form_conf` VALUES (1, 'loan_request', '{\"border\":true,\"index\":true,\"indexLabel\":\"序号\",\"stripe\":true,\"menuAlign\":\"center\",\"align\":\"center\",\"searchMenuSpan\":6,\"column\":[{\"type\":\"input\",\"label\":\"业务BD\",\"prop\":\"salerId\"},{\"type\":\"input\",\"label\":\"商户编号\",\"prop\":\"partnerNo\"},{\"type\":\"input\",\"label\":\"借款来源渠道\",\"prop\":\"loanSource\"},{\"type\":\"input\",\"label\":\"借款类型\",\"prop\":\"loanType\"},{\"type\":\"input\",\"label\":\"借款用途\",\"prop\":\"loanPurpose\"},{\"type\":\"input\",\"label\":\"期望年利率(百分比)\",\"prop\":\"loanInterest\"},{\"type\":\"input\",\"label\":\"借款金额\",\"prop\":\"loanAmt\"},{\"type\":\"input\",\"label\":\"期限类型\",\"prop\":\"limitType\"},{\"type\":\"input\",\"label\":\"借款期限\",\"prop\":\"loanLimit\"},{\"type\":\"input\",\"label\":\"付息方式\",\"prop\":\"repayType\"},{\"type\":\"input\",\"label\":\"保证金比例%\",\"prop\":\"depositScale\"}]}', '2020-04-07 13:12:50', '2020-04-07 13:12:50', '0', NULL);

SET FOREIGN_KEY_CHECKS = 1;
