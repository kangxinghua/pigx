USE pigxx_codegen;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_datasource_conf
-- ----------------------------
DROP TABLE IF EXISTS `gen_datasource_conf`;
CREATE TABLE `gen_datasource_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='数据源表';

-- ----------------------------
-- Records of gen_datasource_conf
-- ----------------------------
BEGIN;
INSERT INTO `gen_datasource_conf` VALUES (1, 'pigxx', 'jdbc:mysql://pigx-mysql:3306/pigxx?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true', 'root', 'Cx+ocw0iFCpae4Qo4IoFmQ==', '2019-03-31 16:40:43', '2019-06-13 03:07:24', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (2, 'pigxx_ac', 'jdbc:mysql://pigx-mysql:3306/pigxx_ac?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'Cx+ocw0iFCpae4Qo4IoFmQ==', '2019-03-31 17:53:25', '2019-06-13 03:07:25', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (3, 'pigxx_job', 'jdbc:mysql://pigx-mysql:3306/pigxx_job?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'Cx+ocw0iFCpae4Qo4IoFmQ==', '2019-03-31 17:53:25', '2019-06-13 03:07:26', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (4, 'pigxx_mp', 'jdbc:mysql://pigx-mysql:3306/pigxx_mp?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'Cx+ocw0iFCpae4Qo4IoFmQ==', '2019-03-31 17:53:25', '2019-06-13 03:07:28', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (5, 'pigxx_pay', 'jdbc:mysql://pigx-mysql:3306/pigxx_pay?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8', 'root', 'Cx+ocw0iFCpae4Qo4IoFmQ==', '2019-03-31 17:53:25', '2019-06-13 03:07:30', '0', 1);
INSERT INTO `gen_datasource_conf` VALUES (6, 'pigxx_codegen', 'jdbc:mysql://pigx-mysql:3306/pigxx_codegen?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT%2B8&allowMultiQueries=true', 'root', 'hyxlg2iaqpDLOe9qEcv2xQ==', '2019-08-12 15:47:39', '2019-08-12 15:47:39', '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for gen_form_conf
-- ----------------------------
DROP TABLE IF EXISTS `gen_form_conf`;
CREATE TABLE `gen_form_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `form_info` json NOT NULL COMMENT '表单信息',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `tenant_id` int(11) DEFAULT NULL COMMENT '所属租户',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='表单配置';

SET FOREIGN_KEY_CHECKS = 1;