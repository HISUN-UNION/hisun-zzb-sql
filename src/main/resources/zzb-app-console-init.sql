/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost
 Source Database       : zzb-app-console

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : utf-8

 Date: 09/25/2017 16:04:37 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `app_dwjg_tj`
-- ----------------------------
DROP TABLE IF EXISTS `app_dwjg_tj`;
CREATE TABLE `app_dwjg_tj` (
  `ID` varchar(32) NOT NULL,
  `TJ_MC` varchar(128) DEFAULT NULL COMMENT '统计名称',
  `TJ_JSON_DATA` text COMMENT '统计数据JSON表达',
  `TJ_PX` int(11) DEFAULT NULL COMMENT '排序',
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `TBLX` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='干部队伍统计';

-- ----------------------------
--  Table structure for `app_gendata`
-- ----------------------------
DROP TABLE IF EXISTS `app_gendata`;
CREATE TABLE `app_gendata` (
  `ID` varchar(32) NOT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `app_menu_setting`
-- ----------------------------
DROP TABLE IF EXISTS `app_menu_setting`;
CREATE TABLE `app_menu_setting` (
  `ID` int(11) NOT NULL,
  `MENU_CODE` varchar(40) NOT NULL COMMENT '菜单代码',
  `DISPLAY` int(11) NOT NULL DEFAULT '0' COMMENT '0-显示，1-不显示',
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单设置';

-- ----------------------------
--  Table structure for `app_server_setting`
-- ----------------------------
DROP TABLE IF EXISTS `app_server_setting`;
CREATE TABLE `app_server_setting` (
  `ID` varchar(32) DEFAULT NULL,
  `APP_SERVER_IP` varchar(64) DEFAULT NULL,
  `APP_SERVER_PORT` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `app_sh_a01`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01`;
CREATE TABLE `app_sh_a01` (
  `ID` varchar(32) NOT NULL,
  `app_sh_pc_ID` varchar(32) NOT NULL,
  `RMLX` varchar(1) DEFAULT NULL,
  `RMLX_STR` varchar(128) DEFAULT NULL COMMENT '任免类型代码名称',
  `XM` varchar(20) DEFAULT NULL,
  `XB` varchar(10) DEFAULT NULL,
  `MZ` varchar(20) DEFAULT NULL,
  `JG` varchar(20) DEFAULT NULL,
  `CSNY` varchar(24) DEFAULT NULL,
  `CJGZSJ` varchar(24) DEFAULT NULL,
  `RDSJ` varchar(24) DEFAULT NULL,
  `WHCD` varchar(40) DEFAULT NULL,
  `RXJBSJ` varchar(24) DEFAULT NULL,
  `MZTJQK` varchar(80) DEFAULT NULL,
  `YWFPJL` varchar(10) DEFAULT NULL,
  `XGZDWJZW` varchar(128) DEFAULT NULL,
  `NTZPBYJ` varchar(128) DEFAULT NULL,
  `SHYJ` varchar(10) DEFAULT NULL COMMENT '上会意见，如果任免批次是部务会则显示为“干部一科”，是常委会则显示为“部务会”',
  `A01_PX` int(11) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `ZP_PATH` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_RM_SH_PC1_idx` (`app_sh_pc_ID`),
  CONSTRAINT `fk_RM_SH_A01_RM_SH_PC1` FOREIGN KEY (`app_sh_pc_ID`) REFERENCES `app_sh_pc` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上会人员';


-- ----------------------------
--  Table structure for `app_sh_a01_dascqk_tips`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_dascqk_tips`;
CREATE TABLE `app_sh_a01_dascqk_tips` (
  `ID` varchar(32) NOT NULL,
  `TIP` varchar(400) DEFAULT NULL,
  `app_sh_a01_dascqk_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_DASCQK_TIPS_RM_SH_A01_DASCQK1_idx` (`app_sh_a01_dascqk_ID`),
  CONSTRAINT `fk_RM_SH_A01_DASCQK_TIPS_RM_SH_A01_DASCQK1` FOREIGN KEY (`app_sh_a01_dascqk_ID`) REFERENCES `app_sh_a01_dascqk` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='档案审查情况提醒';

-- ----------------------------
--  Table structure for `app_sh_a01_gbrmspb`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_gbrmspb`;
CREATE TABLE `app_sh_a01_gbrmspb` (
  `ID` varchar(32) NOT NULL,
  `XM` varchar(20) DEFAULT NULL,
  `XB` varchar(10) DEFAULT NULL,
  `CSNY` varchar(24) DEFAULT NULL,
  `NL` varchar(10) DEFAULT NULL,
  `ZP_PATH` varchar(128) DEFAULT NULL,
  `MZ` varchar(24) DEFAULT NULL,
  `JG` varchar(24) DEFAULT NULL,
  `CSD` varchar(24) DEFAULT NULL,
  `RDSJ` varchar(10) DEFAULT NULL,
  `CJGZSJ` varchar(10) DEFAULT NULL,
  `JKZK` varchar(24) DEFAULT NULL,
  `ZYJSZW` varchar(60) DEFAULT NULL,
  `ZYTC` varchar(60) DEFAULT NULL,
  `XL_QRZ` varchar(24) DEFAULT NULL,
  `XW_QRZ` varchar(24) DEFAULT NULL,
  `XL_ZZ` varchar(24) DEFAULT NULL,
  `XW_ZZ` varchar(24) DEFAULT NULL,
  `QRZ_BYYX` varchar(128) DEFAULT NULL,
  `ZZ_BYYX` varchar(128) DEFAULT NULL,
  `XRZW` varchar(128) DEFAULT NULL,
  `NRZW` varchar(128) DEFAULT NULL,
  `NMZW` varchar(128) DEFAULT NULL,
  `RMLY` varchar(255) DEFAULT NULL,
  `CBDWYJ` varchar(255) DEFAULT NULL,
  `SPJGYJ` varchar(255) DEFAULT NULL,
  `XZJGRMYJ` varchar(255) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `file_path` varchar(128) DEFAULT NULL,
  `FILE2IMG_PATH` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_GBRMSPB_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_GBRMSPB_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='干部任免审批表';


-- ----------------------------
--  Table structure for `app_sh_a01_grzdsx`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_grzdsx`;
CREATE TABLE `app_sh_a01_grzdsx` (
  `ID` varchar(32) NOT NULL,
  `PATH` varchar(128) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `FILE2IMG_PATH` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_GRZDSX_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_GRZDSX_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人重大事项';


-- ----------------------------
--  Table structure for `app_sh_a01_gzjl`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_gzjl`;
CREATE TABLE `app_sh_a01_gzjl` (
  `ID` varchar(32) NOT NULL,
  `C_SJ` varchar(24) DEFAULT NULL,
  `Z_SJ` varchar(24) DEFAULT NULL,
  `JLSM` varchar(256) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `GZJL_PX` int(11) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_GZJL_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_GZJL_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作经历';


-- ----------------------------
--  Table structure for `app_sh_a01_jc`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_jc`;
CREATE TABLE `app_sh_a01_jc` (
  `ID` varchar(32) NOT NULL,
  `ND` varchar(24) DEFAULT NULL,
  `JCSM` varchar(256) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `JC_PX` int(11) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_JC_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_JC_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上会人员奖惩情况';

-- ----------------------------
--  Table structure for `app_sh_a01_kccl`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_kccl`;
CREATE TABLE `app_sh_a01_kccl` (
  `ID` varchar(32) NOT NULL,
  `PATH` varchar(128) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `FILE2IMG_PATH` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_KCCL_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_KCCL_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考察材料';

-- ----------------------------
--  Table structure for `app_sh_a01_ndkh`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_ndkh`;
CREATE TABLE `app_sh_a01_ndkh` (
  `ID` varchar(32) NOT NULL,
  `ND` varchar(24) DEFAULT NULL,
  `KHJG` varchar(60) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `NDKH_PX` int(11) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_NDKH_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_NDKH_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上人员年度考核';

-- ----------------------------
--  Table structure for `app_sh_a01_shgx`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_a01_shgx`;
CREATE TABLE `app_sh_a01_shgx` (
  `ID` varchar(32) NOT NULL,
  `CW` varchar(24) DEFAULT NULL,
  `XM` varchar(24) DEFAULT NULL,
  `NL` varchar(10) DEFAULT NULL,
  `ZZMM` varchar(24) DEFAULT NULL,
  `GZDWJZW` varchar(128) DEFAULT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `SHGX_PX` int(11) DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_A01_SHGX_RM_SH_A011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_RM_SH_A01_SHGX_RM_SH_A011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上会人员社会关系';

-- ----------------------------
--  Table structure for `app_sh_pc`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_pc`;
CREATE TABLE `app_sh_pc` (
  `ID` varchar(32) NOT NULL,
  `PC_MC` varchar(255) DEFAULT NULL COMMENT '批次名称',
  `PC_SJ` datetime DEFAULT NULL COMMENT '批次时间',
  `SHLX` varchar(1) DEFAULT NULL COMMENT '批次类型：\n1-部务会，2-常委会',
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  `file_path` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上会批次';


-- ----------------------------
--  Table structure for `app_sh_tp`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_tp`;
CREATE TABLE `app_sh_tp` (
  `ID` varchar(32) NOT NULL,
  `TPQ_BH` varchar(128) DEFAULT NULL COMMENT '投标器编号，序列号',
  `TPR_ID` varchar(32) DEFAULT NULL COMMENT '投票人ID',
  `TPR_XM` varchar(64) DEFAULT NULL COMMENT '投票人姓名\n',
  `TP_SJ` datetime DEFAULT NULL COMMENT '投标时间',
  `app_sh_pc_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_TP_RM_SH_PC1_idx` (`app_sh_pc_ID`),
  CONSTRAINT `fk_RM_SH_TP_RM_SH_PC1` FOREIGN KEY (`app_sh_pc_ID`) REFERENCES `app_sh_pc` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票';

-- ----------------------------
--  Table structure for `app_sh_tp_sj`
-- ----------------------------
DROP TABLE IF EXISTS `app_sh_tp_sj`;
CREATE TABLE `app_sh_tp_sj` (
  `ID` varchar(32) NOT NULL,
  `TP` int(11) NOT NULL COMMENT '1-同意，2-不同意，3-弃权',
  `app_sh_tp_ID` varchar(32) NOT NULL,
  `app_sh_a01_ID` varchar(32) NOT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `tombstone` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `fk_RM_SH_TP_SJ_RM_SH_TP_idx` (`app_sh_tp_ID`),
  KEY `fk_app_sh_tp_sj_app_sh_a011_idx` (`app_sh_a01_ID`),
  CONSTRAINT `fk_app_sh_tp_sj_app_sh_a011` FOREIGN KEY (`app_sh_a01_ID`) REFERENCES `app_sh_a01` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_RM_SH_TP_SJ_RM_SH_TP` FOREIGN KEY (`app_sh_tp_ID`) REFERENCES `app_sh_tp` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投票数据';

-- ----------------------------
--  Table structure for `sys_activation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_activation`;
CREATE TABLE `sys_activation` (
  `id` varchar(32) NOT NULL,
  `email` longtext,
  `invite_tenant_id` varchar(100) DEFAULT NULL,
  `invite_user_id` varchar(64) DEFAULT NULL,
  `invite_user_name` varchar(32) DEFAULT NULL,
  `role_id` varchar(32) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_ci_mapper`
-- ----------------------------
DROP TABLE IF EXISTS `sys_ci_mapper`;
CREATE TABLE `sys_ci_mapper` (
  `ci_id` varchar(32) NOT NULL,
  `cismag_ci_id` varchar(32) NOT NULL,
  PRIMARY KEY (`ci_id`,`cismag_ci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_dict_item`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `p_id` varchar(32) DEFAULT NULL,
  `query_code` varchar(27) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `dict_type_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hs33ub97h259naytuja76au2b` (`query_code`),
  KEY `FK_aqp62hk3kr9tc743yi302sr0g` (`dict_type_id`),
  CONSTRAINT `FK_aqp62hk3kr9tc743yi302sr0g` FOREIGN KEY (`dict_type_id`) REFERENCES `sys_dict_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` varchar(32) NOT NULL,
  `code` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r5760ap451w62h8iwi6daqald` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_email_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_email_template`;
CREATE TABLE `sys_email_template` (
  `id` varchar(32) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `tpl_content` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5rnbepej9q324aci1ys282kw1` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_email_template`
-- ----------------------------
BEGIN;
INSERT INTO `sys_email_template` VALUES ('4028818c517c18f201517c4c97ec0004', 'registertenant', '您已成功注册\"%tenantName%\"为【三零优异云服务】租户，请点击如下地址进行激活：%url%', '注册新租户激活通知', '【三零优异云服务】租户激活'), ('4028818c517c18f201517c577dd30006', 'inviteregister', '您好 :\r\n        %orgName% 的%realName%邀请你注册成为【三零优异云服务】的用户，请点击如下地址进行注册: %url%', ' 租户邀请注册', '【三零优异云服务】邀请您注册'), ('4028818c519532190151958e1db00065', 'sbv_warning', '尊敬的用户:\r\n您的主机%host_ip%在%date%发生了配置变更，风险级别为%level%，请您及时处理。', '配置变更提醒', '【三零优异云服务】配置变更提醒'), ('4028818c519532190151959102ef006a', 'bvs_warning', '尊敬的用户:\r\n系统在%date%检测到您的主机%host_ip%存在安全风险，风险级别为%level%，请您及时处理。', '安全风险提醒', '【三零优异云服务】安全风险提醒'), ('4028818c5195321901519593df6e006d', 'bes_warning', '尊敬的用户：\r\n系统在%date%对您的主机%host_ip%进行加固时出现了错误。', '加固问题提醒', '【三零优异云服务】加固问题提醒'), ('4028819b5317611c01531762cf6c0002', 'ticket_create_notify_handle', '你有一个新工单\"%title%\",请及时处理。', '新工单通知', '【三零优异云服务】通知'), ('4028819b5317611c0153176430100004', 'ticket_alert_response', '工单\"%title%\"到达响应预警时间，请及时处理。', '工单响应预警', '【三零优异云服务】通知'), ('4028819b5317611c01531764d6fd0006', 'ticket_alert_complete', '工单\"%title%\"到达完成预警时间，请尽快完成工单。', '工单完成时间预警', '【三零优异云服务】通知'), ('4028819b5317611c01531765c7bf000a', 'ticket_confirm_no', '你处理的工单\"%title%\"客户确认不通过，请继续沟通处理。', '工单确认不通过', '【三零优异云服务】通知'), ('4028819b5317611c015317666ea3000c', 'ticket_need_confirm', '您好，你创建的工单\"%title%\"已经解决请到系统确认。', '工单确认通知', '【三零优异云服务】通知'), ('4028819b5317611c0153176734df000e', 'ticket_expert_complete', '您好，你创建的工单%\"title%\"已经处理完毕。', '工单完成通知', '【三零优异云服务】通知'), ('4028819b5317611c01531767eda20010', 'ticket_status_change', '您好！你的创建的工单\"%title%\"状态已经改为%status%。', '工单状态修改通知', '【三零优异云服务】通知'), ('4028819b5317611c01531768a7c40012', 'ticket_sla_change', '你组织下处理的工单\"%title%\"的SLA级别发生改变。修改人是\"%username%\"。', '工单SLA级别改变通知', '【三零优异云服务】通知'), ('4028819b5317611c015317695d430015', 'ticket_reply_notify', '工单\"%title%\"有新回复，可以登录系统查看。', '工单回复通知', '【三零优异云服务】通知'), ('402881f9517b706a01517b774a8e0003', '_new_forgot_pwd_platform', '尊敬的%username%:\r\n你在%date%申请重置密码，请点击以下链接%url%进行密码重置。此链接的有效期为 1 天，只能使用一次。', '平台忘记密码', '【三零优异云服务】重置密码'), ('402881f9517b706a01517b774a8e0017', 'tenantresetpassword', '尊敬的%username%:\r\n你在%date%申请重置密码，请点击以下链接%url%进行密码重置。此链接的有效期为 1 天，只能使用一次。', '租户密码重置', '【三零优异云服务】重置密码'), ('4028e4b75281bc95015281d8f74d00be', 'monitor_alarm_email', '尊敬的%username%用户，您好：\r\n您的监控项 %items% 于 %time% 发生报警。\r\n监控项：%items%\r\n当前值：%data%\r\n规则:%rule%\r\n发生报警时间:%time%', '监控告警通知', '【三零优异云服务】告警通知'), ('4028e4b75281bc95015281e37c3200e5', 'monitor_guzhang_email', '尊敬的%username%用户，您好：您的监控项目 %monitorName% 于 %time% 发生故障，请尽快处理。\r\n', '监控故障通知', '【三零优异云服务】故障通知'), ('4028e4b75281bc95015281e4b28100f5', 'monitor_huifu_email', '尊敬的%username%用户，您好：您的监控项目 %monitorName% 于 %time% 已恢复正常。\r\n', '监控恢复通知', '【三零优异云服务】恢复通知'), ('4028e4b75281bc95015281e6f7300101', 'monitor_process_email', '尊敬的%username%用户，您好：\r\n 您的服务器[%monitor%] 于 %time% 监控到有进程发生异常。\r\n 服务器IP：%ip%\r\n 异常进程：%process%\r\n 进程级别：%level%\r\n 异常原因：%errorInfo%\r\n 发生告警时间：%time%\r\n', '监控进程异常通知', '【三零优异云服务】进程异常通知');
COMMIT;

-- ----------------------------
--  Table structure for `sys_internal_operation_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_internal_operation_user`;
CREATE TABLE `sys_internal_operation_user` (
  `id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  `tenant_user_id` varchar(32) NOT NULL COMMENT '租户用户表ID',
  `position` varchar(255) DEFAULT NULL COMMENT '职位',
  `experience` varchar(255) DEFAULT NULL COMMENT '工作经验',
  `skill` varchar(500) DEFAULT NULL COMMENT '技能',
  `certificate` varchar(500) DEFAULT NULL,
  `create_user_id` varchar(32) NOT NULL,
  `create_user_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_internal_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `sys_internal_ticket`;
CREATE TABLE `sys_internal_ticket` (
  `id` varchar(32) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `handle_user_id` varchar(32) DEFAULT NULL,
  `tenant_id` varchar(64) DEFAULT NULL,
  `create_userid` varchar(32) DEFAULT NULL,
  `attach_id` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(32) DEFAULT NULL,
  `create_user_name` varchar(255) DEFAULT NULL,
  `update_user_id` varchar(32) DEFAULT NULL,
  `update_user_name` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h8ymuffwf1ha16fon1otnv6n7` (`create_user_id`),
  KEY `FK_60b9myku2jrkm417hya43l46s` (`handle_user_id`),
  KEY `FK_lhlu0w95o1e6erkjoc7yx93lh` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_internal_ticket_appraise`
-- ----------------------------
DROP TABLE IF EXISTS `sys_internal_ticket_appraise`;
CREATE TABLE `sys_internal_ticket_appraise` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ticket_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h4i9yqs8aghathl4jlkis5msp` (`ticket_id`),
  CONSTRAINT `sys_internal_ticket_appraise_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `management_ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_internal_ticket_attach`
-- ----------------------------
DROP TABLE IF EXISTS `sys_internal_ticket_attach`;
CREATE TABLE `sys_internal_ticket_attach` (
  `id` varchar(32) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '保存路径',
  `file_name` varchar(255) NOT NULL COMMENT '文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `content` longtext,
  `create_time` datetime NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `sys_mail_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mail_config`;
CREATE TABLE `sys_mail_config` (
  `id` varchar(32) NOT NULL,
  `account` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_server` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL,
  `add_template_uri` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `api_user` varchar(255) DEFAULT NULL,
  `delete_template_uri` varchar(255) DEFAULT NULL,
  `get_template_uri` varchar(255) DEFAULT NULL,
  `mail_server` varchar(255) DEFAULT NULL,
  `send_uri` varchar(255) DEFAULT NULL,
  `send_template_uri` varchar(255) DEFAULT NULL,
  `update_template_uri` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `type` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_mail_config`
-- ----------------------------
BEGIN;
INSERT INTO `sys_mail_config` VALUES ('402881f051251cf90151259b6fe10055', '30SCloud@30wish.net', '30SCloud@30wish.net', 'mail.30wish.net', '搜狐邮箱平台', 'Mi9n%#JWj5U', b'0', 'template.add.json', 'jWIkt0ZhyR7iQdSU', '30SCloud_default', 'template.delete.json', 'template.get.json', 'http://sendcloud.sohu.com', 'mail.send.json', 'mail.send_template.json', 'template.update.json', 'webapi', b'0'), ('402881f951810e2e0151813146580001', '30SCloud@30wish.net', '30SCloud@30wish.net', 'mail.30wish.net', '搜狐邮箱平台', '30SCloud@30wish.net', b'1', 'template.add.json', 'jWIkt0ZhyR7iQdSU', '30SCloud', 'template.delete.json', 'template.get.json', 'http://sendcloud.sohu.com', 'mail.send.json', 'mail.send_template.json', 'template.update.json', 'webapi', b'1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_message`
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `notice_email` bit(1) DEFAULT NULL,
  `notice_express` bit(1) DEFAULT NULL,
  `notice_sms` bit(1) DEFAULT NULL,
  `notice_smart` bit(1) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_76t6euui3bofigq2h0ob15h3f` (`tenant_id`),
  CONSTRAINT `FK_76t6euui3bofigq2h0ob15h3f` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` varchar(32) NOT NULL,
  `notice_content` longtext,
  `notice_level` smallint(6) DEFAULT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `push_way` smallint(6) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_eb9e9s3s007dmrwe3m6nqf54i` (`tenant_id`),
  CONSTRAINT `FK_eb9e9s3s007dmrwe3m6nqf54i` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_online_message`
-- ----------------------------
DROP TABLE IF EXISTS `sys_online_message`;
CREATE TABLE `sys_online_message` (
  `id` varchar(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_report_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_report_template`;
CREATE TABLE `sys_report_template` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `report_temp_desc` varchar(255) DEFAULT NULL,
  `report_temp_name` varchar(255) DEFAULT NULL,
  `report_temp_path` varchar(255) DEFAULT NULL,
  `report_temp_type` varchar(255) DEFAULT NULL,
  `ident_code` varchar(32) DEFAULT NULL,
  `server_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_report_template`
-- ----------------------------
BEGIN;
INSERT INTO `sys_report_template` VALUES ('297e566a519aa89d01519aac14820001', '2015-12-13 17:29:07', null, 'admin', '2015-12-14 17:05:57', null, 'admin', '0', '加固记录报表', '加固记录报表', 'S:\\store\\30Cloud\\upload\\reportTemp\\20151213\\besRecordReport_11690673729645.jasper', 'jasper', 'besRecordReport', 'bes'), ('297e566a519b1fc901519b2b87730002', '2015-12-13 19:48:20', null, 'admin', '2015-12-13 19:48:20', null, 'admin', '0', '检查记录报表', '检查记录报表', 'S:\\store\\30Cloud\\upload\\reportTemp\\20151213\\bvsRecordReport_20043075536278.jasper', 'jasper', 'bvsRecordReport', 'bvs'), ('297e566a519b1fc901519b2b87730004', '2015-12-13 19:48:20', null, 'admin', '2015-12-13 19:48:20', null, 'admin', '0', '监控记录报表', '监控记录报表', 'S:\\store\\30Cloud\\upload\\reportTemp\\20151213\\bvsRecordReport_20043075536278.jasper', 'jasper', 'monitorRecordReport', 'monitor'), ('297e566a519b1fc901519b2c28db0003', '2015-12-13 19:49:01', null, 'admin', '2015-12-13 19:49:01', null, 'admin', '0', '检查记录报表子表', '检查记录报表子表', 'S:\\store\\30Cloud\\upload\\reportTemp\\20151213\\subBvsRecordReport_20083825104820.jasper', 'jasper', 'subBvsRecordReport', 'bvs');
COMMIT;

-- ----------------------------
--  Table structure for `sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` varchar(32) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `resource_name` varchar(255) DEFAULT NULL,
  `resource_type` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `permission` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `query_code` varchar(27) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `is_sys_resource` bit(1) NOT NULL DEFAULT b'0',
  `type` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_permission` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_resource`
-- ----------------------------
BEGIN;
INSERT INTO `sys_resource` VALUES ('297e2f164e04be0c014e04c7c1b10001', '8a8081434c4e96b8014c4e9fbcfc0000', '通知公告管理', '0', '7', '0', '/sys/admin/notice/list', 'adminNotice:list', '通知公告管理', '010007', 'icon-edit', b'0', '0'), ('297e2f164f062b0b014f062d8ef70001', '297e2f164f062b0b014f063148d50007', '字典类型管理', '0', '1', '0', '/sys/admin/dictionary/type/list', 'adminDictionary:type', '字典类型管理', '010008001', 'icon-cloud', b'0', '0'), ('297e2f164f062b0b014f063148d50007', '8a8081434c4e96b8014c4e9fbcfc0000', '字典管理', '0', '8', '0', '/sys/admin/dictionary', 'adminDictionary:*', '字典管理', '010008', 'icon-book', b'0', '0'), ('297e2f1650bbd2d70150bbd86b1e000b', '8a295dcb4cbb6b38014cbb85058b0001', '账号设置', '0', '1', '0', '/sys/admin/user/profile', 'adminUser:profile', '账号设置', '011001', 'icon-user', b'0', '0'), ('297e566a519aa19d01519aa4c4450001', '8a8081434c4e96b8014c4e9fbcfc0000', '报表管理', '0', '12', '0', '/sys/report/list', 'report:list', '报表管理', '010012', 'icon-bar-chart', b'0', '0'), ('2c909e8253a2315a0153a252904c0029', '402881e951330bbb01513351b7520009', '告警记录', '0', '4', '0', '/bvs/alarmLog/list', 'bvs:alarmLog', '检查任务的告警记录列表菜单', '004001004', 'icon-list-alt', b'0', '1'), ('2c909e8254987ce4015498b6c038000f', '2c90a89254378859015437c3346c001c', '云安全漏洞扫描', '0', '3', '0', '/scaner/dashboard', 'scaner:dashboard', '云安全漏洞扫描菜单', '004003', 'icon-search', b'0', '1'), ('2c909e8254987ce4015498b9ed690014', '2c909e8254987ce4015498b6c038000f', '仪表盘', '0', '1', '0', '/scaner/index', 'scaner:index', '仪表盘', '004003001', 'icon-dashboard', b'0', '1'), ('2c909e8254bc7d960154bcc85a8e0004', '2c909e8254987ce4015498b6c038000f', '告警记录', '0', '5', '0', '/scaner/alarmLog/list', 'scaner:alarmLog', '告警记录详情页面', '004003005', 'icon-list-alt', b'0', '1'), ('2c909e8254bde29f0154bde790e10002', '2c909e8254987ce4015498b6c038000f', '安全问题', '0', '4', '0', '/scaner/safety/list', 'scaner:safety', '安全问题列表页面', '004003004', 'icon-warning-sign', b'0', '1'), ('2c909e8254c70d7f0154c71ed2cb0005', '2c909e8254987ce4015498b6c038000f', '统计报表', '0', '6', '0', '/scaner/report/list', 'scaner:report', '统计报表', '004003006', 'icon-bar-chart', b'0', '1'), ('2c909e8c5388805001538883a1d00041', '402881e951330bbb01513351b7520009', '主机检查', '0', '2', '0', '/bvs/hostcheck/list', 'bvs:hostchecklist', '主机检查', '004001002', 'icon-tasks', b'0', '1'), ('2c909e8c53bbd2290153bbe3a039000b', '402881e951330bbb01513356141d000b', '主机配置管控', '0', '2', '0', '/sbv/hostcheck/list', 'sbv:hostchecklist', '主机配置管控', '004002002', 'icon-tasks', b'0', '1'), ('2c909e8c53e91cc80153e95a5680002b', '402881e951330bbb01513351b7520009', '任务相关操作', '1', '9', '0', '/', 'bvs:job', '任务相关操作', '004001009', '', b'0', '1'), ('2c909e8c5499a0c1015499a369360002', '2c909e8254987ce4015498b6c038000f', '漏洞检查主机列表', '0', '2', '0', '/scaner/hostcheck/list', 'scaner:hostchecklist', '漏洞检查主机列表', '004003002', 'icon-search', b'0', '1'), ('2c909efc54c1d1c60154c2a0f2cb0008', '4028e46654947e46015494a68a39001c', '所有来源', '0', '1', '0', '/webAnalysis/referrers/allReferrer', 'webAnalysis:allReferrers', '所有来源', '003004005001', '', b'0', '1'), ('2c909efc54c1d1c60154c2a1ed46000a', '4028e46654947e46015494a68a39001c', '搜索引擎', '0', '2', '0', '/webAnalysis/referrers/allEngine', 'webAnalysis:allEngine', '搜索引擎', '003004005002', '', b'0', '1'), ('2c909efc54e5a29b0154e68ac13e0004', '4028818c5253f031015253fa1e350002', '仪表盘', '0', '1', '0', '/monitor/saas/index', 'monitor:index', '仪表盘', '003001', 'icon-dashboard', b'0', '1'), ('2c909efc54e5a29b0154e68ba7a30006', '4028818c5253f031015253fa1e350002', '主机监控', '0', '2', '0', '/monitor/server/saas/list', 'monitor:saas_server_monito', '主机监控', '003002', 'icon-inbox', b'0', '1'), ('2c909efc54e5a29b0154e68c766e0008', '4028818c5253f031015253fa1e350002', '服务监控', '0', '3', '0', '/monitor/saas/service/index', 'monitor:saas_service_monitor', '服务监控', '003003', 'icon-inbox', b'0', '1'), ('2c909efc54e5a29b0154e68d25fd000a', '4028818c5253f031015253fa1e350002', '告警记录', '0', '5', '0', '/monitor/warn/saas/list', 'monitor:warnList', '告警记录', '003005', 'icon-list-alt', b'0', '1'), ('2c90a89254378859015437b543e10003', '1', '云安全', '2', '2', '1', '/security/admin/dashboard', 'security-admin-dashbaord:view', '云安全', '002', '', b'0', '0'), ('2c90a89254378859015437c3346c001c', '1', '云安全', '2', '4', '0', '/bvs/dashboard', 'bvs:*', '云安全', '004', '', b'0', '1'), ('2c90a89654c168870154c16e17c50002', '2c909e8254987ce4015498b6c038000f', '扫描记录', '0', '3', '0', '/scaner/job/record/list', 'scaner:recordlist', '扫描记录', '004003003', 'icon-edit', b'0', '1'), ('2c90a89954098413015409ab385c0003', '1', '云监控', '2', '1', '0', '/monitor/list', 'admin:monitor', '云监控', '001', '', b'0', '0'), ('2c90a89954098413015409ad6a2f0006', '2c90a89254378859015437b543e10003', '云安全检查与加固', '2', '1', '1', '/sys/admin/bvs', 'admin:bvs', '云安全检查与加固', '002001', '', b'0', '0'), ('2c90a89954098413015409b007810008', '2c90a89254378859015437b543e10003', '云安全配置管控', '2', '2', '1', '/sys/admin/config', 'admin:config', '云安全配置管控', '002002', '', b'0', '0'), ('2c90a89954098413015409b170ab000a', '1', '云自动化平台', '2', '4', '0', '/automation/performer/list', 'admin:automation', '云自动化平台', '004', '', b'0', '0'), ('2c90a89954098413015409b49d46000d', '1', '云大数据分析', '2', '3', '1', '/da/admin/dashboard', 'dataAnalyse-admin-dashboard:view', '云大数据分析', '003', '', b'0', '0'), ('2c90a89954098413015409b62805000f', '1', '云资产', '2', '7', '0', '/sacm/ciObject/list/tree', 'admin:asset', '云资产', '007', '', b'0', '0'), ('2c90a899540d1c4201540d3784160019', '1', '租户管理', '2', '8', '0', '/sys/tenant/tenant/list', 'admin:tenantList', '租户管理', '008', '', b'0', '0'), ('2c90ee815e8461e5015e847bedd40003', '1', 'APP数据管理', '2', '1', '0', '/zzb/app/console/bwh/', 'bwh:*', 'APP数据管理', '001', '', b'0', '1'), ('2c90ee815e8461e5015e847eb2fe0004', '2c90ee815e8461e5015e847bedd40003', '会议研究', '0', '1', '0', '/zzb/app/console/bwh/', 'bwh:view', '会议研究', '001001', 'icon-group', b'0', '1'), ('2c90ee815e8461e5015e84808bdd0006', '2c90ee815e8461e5015e847bedd40003', '干部查询', '0', '3', '0', '/zzb/app/console/gbcx/', 'gbcx:view', '干部查询', '001003', 'icon-search', b'0', '1'), ('2c90ee815e8461e5015e84813a340007', '2c90ee815e8461e5015e847bedd40003', '职数查询', '0', '4', '0', '/zzb/app/console/zscx/', 'zscx:view', '职数查询', '001004', 'icon-search', b'0', '1'), ('2c90ee815e8461e5015e8481e8340008', '2c90ee815e8461e5015e847bedd40003', '干部名册', '0', '5', '0', '/zzb/app/console/gbmc/', 'gbmc:view', '干部名册', '001005', 'icon-book', b'0', '1'), ('2c90ee815e8461e5015e848291470009', '2c90ee815e8461e5015e847bedd40003', '干部队伍统计', '0', '6', '0', '/zzb/app/console/gbtj/', 'gbtj:view', '干部队伍统计', '001006', 'icon-bar-chart', b'0', '1'), ('2c90ee815e8461e5015e8483b0e1000a', '2c90ee815e8461e5015e847bedd40003', '生成数据包', '0', '7', '0', '/zzb/app/console/gendata/', 'gendata:*', '生成数据包', '001007', 'icon-cogs', b'0', '1'), ('40283f8b512cfa0301512d14e7a60003', '402881f051229680015122dfef9a0004', '操作日志', '0', '6', '0', '/sys/tenant/log/list', 'tenantLog:list', '操作日志', '008006', 'icon-file', b'0', '1'), ('40286581539805cd01539832de800009', '8a8081b7513786a1015137d2059b0001', '数据概览', '0', '3', '0', '#', 'dataAnalyse:logOverview', '数据概览', '005003', 'icon-search', b'0', '1'), ('40286581539805cd015398338fa8000b', '8a8081b7513786a1015137d2059b0001', '日志监控', '0', '2', '0', '#', 'dataAnalyse:monitor', '日志监控', '005002', 'icon-eye-open', b'0', '1'), ('40286581539805cd015398374f94000e', '8a8081b7513786a1015137d2059b0001', '配置管理', '0', '4', '0', '/dataAnalyse/configManage/ciManage', 'dataAnalyse:ciManage', '配置管理', '005004', 'icon-cogs', b'0', '1'), ('40286581539805cd015398397d640015', '40286581539805cd015398338fa8000b', 'Windows信息', '0', '1', '0', '/logOverview?typeCode=dataAnalyse:winmsg&type=kibana&typeUrl=/dashboard/file/Windows_msg.json', 'dataAnalyse:winmsg', 'Windows信息', '005002001', '', b'0', '1'), ('40286581539805cd0153983a29d50017', '40286581539805cd015398338fa8000b', 'Linux信息', '0', '2', '0', '/logOverview?typeCode=dataAnalyse:linuxsys&type=kibana&typeUrl=/dashboard/file/Linux_SYSTEM.json', 'dataAnalyse:linuxsys', 'Linux信息', '005002002', '', b'0', '1'), ('40286581539805cd0153983b810d0019', '40286581539805cd015398338fa8000b', 'Web情况', '0', '3', '0', '/logOverview?typeCode=dataAnalyse:web&type=kibana&typeUrl=/dashboard/file/web.json', 'dataAnalyse:web', 'Web情况', '005002003', '', b'0', '1'), ('40286581539805cd0153983c1c93001b', '40286581539805cd015398338fa8000b', '防火墙状态', '0', '4', '0', '/logOverview?typeCode=dataAnalyse:firewallstatus&type=kibana&typeUrl=/dashboard/file/firewall_status.json', 'dataAnalyse:firewallstatus', '防火墙状态', '005002004', '', b'0', '1'), ('40286581539805cd0153983cb7bc001d', '40286581539805cd015398338fa8000b', 'IPS放行阻止', '0', '5', '0', '/logOverview?typeCode=dataAnalyse:ipspass&type=kibana&typeUrl=/dashboard/file/IPS_pass.json', 'dataAnalyse:ipspass', 'IPS放行阻止', '005002005', '', b'0', '1'), ('40286581539805cd0153983d5a98001f', '40286581539805cd01539832de800009', '日志概览', '0', '1', '0', '/logOverview?type=kibana&typeCode=dataAnalyse:sum', 'dataAnalyse:sum', '日志概览', '005003001', '', b'0', '1'), ('40286581539805cd0153983dd2bc0021', '40286581539805cd01539832de800009', 'Linux日志', '0', '2', '0', '/logOverview?typeCode=dataAnalyse:linux2&type=kibana&typeUrl=/dashboard/file/linux.json', 'dataAnalyse:linux2', 'Linux日志', '005003002', '', b'0', '1'), ('40286581539805cd01539846ce060023', '40286581539805cd01539832de800009', 'Windows日志', '0', '3', '0', '/logOverview?typeCode=dataAnalyse:windows&type=kibana&typeUrl=/dashboard/file/windows.json', 'dataAnalyse:windows', 'Windows日志', '005003003', '', b'0', '1'), ('40286581539805cd015398475aa40025', '40286581539805cd01539832de800009', 'Tomcat日志', '0', '4', '0', '/logOverview?typeCode=dataAnalyse:tomcat&type=kibana&typeUrl=/dashboard/file/tomcat.json', 'dataAnalyse:tomcat', 'Tomcat日志', '005003004', '', b'0', '1'), ('402881014ec2e821014ec3143ea7002e', '402881f44e238489014e2397251b002d', '修改', '1', '1', '0', '/sacm/ciObject/edit', 'ciObject:edit', '修改配置类型', '007001001001', '', b'0', '0'), ('402881014ec2e821014ec3152b800030', '402881f44e238489014e2397251b002d', '删除', '1', '2', '0', '/sacm/ciObject/delete', 'ciObject:delete', '删除配置类型', '007001001002', '', b'0', '0'), ('402881014ec32b5b014ec33327530005', '402881f44e238489014e2397251b002d', '关系', '1', '3', '0', '/sacm/ciObject/relations/ajax/toTap', 'ciObject:relation', '关系', '007001001003', '', b'0', '0'), ('402881014ec32b5b014ec3341b570007', '402881f44e238489014e2397251b002d', '添加关系', '1', '4', '0', '/sacm/ciObject/relations/add', 'ciObject:relationAdd', '添加关系', '007001001004', '', b'0', '0'), ('402881014ec32b5b014ec3349a3e0009', '402881f44e238489014e2397251b002d', '修改关系', '1', '5', '0', '/sacm/ciObject/relations/edit', 'ciObject:relationEdit', '修改关系', '007001001005', '', b'0', '0'), ('402881014ec43182014ec4441cf6000b', '402881f44e238489014e2397251b002d', '删除关系', '1', '6', '0', '/sacm/ciObject/relations/detele', 'ciObject:relationDelete', '删除关系', '007001001006', '', b'0', '0'), ('402881014ec43182014ec4463775000f', '402881f44e238489014e2397792d002f', '新增', '1', '1', '0', '/sacm/relationmetadata/add', 'relationmetadata:add', '新增关系类型', '007001002001', '', b'0', '0'), ('402881014ec43182014ec446cb7d0011', '402881f44e238489014e2397792d002f', '修改', '1', '2', '0', '/sacm/relationmetadata/edit', 'relationmetadata:edit', '修改关系类型', '007001002002', '', b'0', '0'), ('402881014ec43182014ec44741220013', '402881f44e238489014e2397792d002f', '删除', '1', '3', '0', '/sacm/relationmetadata/delete', 'relationmetadata:delete', '删除关系', '007001002003', '', b'0', '0'), ('402881044d22c050014d22ef17110002', '402881e84d084724014d0865451c0000', '邮件模板', '0', '4', '0', '/sys/admin/mail/tpl', 'adminMail:tpl', '邮件模板', '010006004', 'icon-cloud', b'0', '0'), ('4028810b4daecf13014daef0f5f20005', '8a295dcb4cbb6b38014cbb85058b0001', '消息中心', '0', '2', '0', '/sys/admin/message/messages', 'adminMessage:messages', '消息中心', '011002', 'icon-bell', b'0', '0'), ('4028812f5134101b015134183ae10003', '2c90a89954098413015409b170ab000a', '自动化引擎设置', '0', '1', '0', '#', 'automation:manager', 'automation:manager', '004001', 'icon-cloud', b'0', '0'), ('4028812f5134101b015134196ce30006', '4028812f5134101b015134183ae10003', '执行器管理', '0', '1', '0', '/automation/performer/list', 'automation:list', 'automation:list', '004001001', 'icon-cloud', b'0', '0'), ('4028812f5134101b0151341a2ef70008', '4028812f5134101b015134183ae10003', '脚本管理', '0', '2', '0', '/automation/script/scriptManage', 'automation:scriptManage', '脚本管理', '004001002', 'icon-cloud', b'0', '0'), ('4028812f5134101b0151341b3bf1000a', '4028812f5134101b015134183ae10003', '作业模板', '0', '4', '0', '/automation/jobTemplate/jobTemplateManage', 'automation:jobTemplateManage', '作业模板管理', '004001004', 'icon-cloud', b'0', '0'), ('4028812f5134101b0151341c094a000c', '4028812f5134101b015134183ae10003', '作业单元', '0', '3', '0', '/automation/jobUnit/jobUnitManage', 'automation:jobUnitManage', '作业单元', '004001003', 'icon-cloud', b'0', '0'), ('4028812f5134101b0151341cd4c7000e', '4028812f5134101b015134196ce30006', '创建页面', '1', '1', '0', '/automation/performer/addExecutorInfo', 'automation:addExecutorInfo', '创建页面', '004001001001', '', b'0', '0'), ('4028812f5134101b0151341e37010010', '4028812f5134101b015134196ce30006', '删除', '1', '2', '0', '/automation/performer/deleteExecutorInfo', 'automation:deleteExecutorInfo', '删除', '004001001002', '', b'0', '0'), ('4028812f5134101b0151341ed8c40012', '4028812f5134101b015134196ce30006', '修改', '1', '3', '0', '/automation/performer/updateExecutorInfo', 'automation:updateExecutorInfo', '修改', '004001001003', '', b'0', '0'), ('4028812f5134101b0151341fc4c50014', '4028812f5134101b0151341a2ef70008', '查看脚本目录', '1', '1', '0', '/automation/scriptCatalog/ajax/scriptCatalogTree', 'automation:viewScriptCatalogTree', '查看脚本目录', '004001002001', '', b'0', '0'), ('4028812f5134101b015134212dcb0016', '4028812f5134101b0151341a2ef70008', '保存脚本目录', '1', '2', '0', '/automation/scriptCatalog/ajax/save', 'automation:saveScriptCatalog', '保存脚本目录', '004001002002', '', b'0', '0'), ('4028812f5134101b0151342274c70018', '4028812f5134101b0151341a2ef70008', '删除脚本目录', '1', '3', '0', '/automation/scriptCatalog/ajax/delete', 'automation:deleteScriptCatalog', '删除脚本目录', '004001002003', '', b'0', '0'), ('4028812f5134101b01513423627d001a', '4028812f5134101b0151341a2ef70008', '查看脚本列表', '1', '4', '0', '/automation/script/ajax/listScript', 'automation:viewScriptList', '查看脚本列表', '004001002004', '', b'0', '0'), ('4028812f5134101b015134241ddf001d', '4028812f5134101b0151341a2ef70008', '查看脚本', '1', '5', '0', '/automation/script/ajax/addScript', 'automation:viewScript', '查看脚本', '004001002005', '', b'0', '0'), ('4028812f5134101b01513424c335001f', '4028812f5134101b0151341a2ef70008', '保存脚本', '1', '6', '0', '/automation/script/ajax/save', 'automation:saveScript', '保存脚本', '004001002006', '', b'0', '0'), ('4028812f5134101b015134256f9a0021', '4028812f5134101b0151341a2ef70008', '删除脚本', '1', '7', '0', '/automation/script/ajax/delete', 'automation:deleteScript', '删除脚本', '004001002007', '', b'0', '0'), ('4028812f5134101b01513425f7140023', '4028812f5134101b0151341a2ef70008', '上传脚本', '1', '8', '0', '/automation/script/ajax/upload', 'automation:uploadScript', '上传脚本', '004001002008', '', b'0', '0'), ('4028812f5134101b015134266fb90025', '4028812f5134101b0151341a2ef70008', '分发脚本', '1', '9', '0', '/automation/script/ajax/share', 'automation:shareScript', '分发脚本', '004001002009', '', b'0', '0'), ('40288187525399dc0152539dbec40001', '402881f44e238489014e2396b4f1002b', '影响', '0', '3', '0', '/sacm/influenceInfo/list', 'cmdbmanage:influence', '影响', '007001003', 'icon-cloud', b'0', '0'), ('40288187525399dc0152539e38780003', '402881f44e238489014e2396b4f1002b', '品牌', '0', '4', '0', '/sacm/product/manage', 'sacmmanage:product', '品牌', '007001004', 'icon-cloud', b'0', '0'), ('40288187525399dc0152539ec0860005', '402881f44e238489014e2396b4f1002b', '资产扩展信息', '0', '5', '0', '/sacm/asset/attribute/ext/manage', 'sacmmanage:assetAttrExt', '资产扩展信息', '007001005', 'icon-cloud', b'0', '0'), ('40288187525399dc0152539f33480007', '402881f44e238489014e2396b4f1002b', '资产状态', '0', '6', '0', '/sacm/asset/status/list', 'sacmmanage:status', '资产状态', '007001006', 'icon-cloud', b'0', '0'), ('40288187525399dc015253a01c050009', '40288187525399dc0152539dbec40001', '新增', '1', '1', '0', '/sacm/influenceInfo/add', 'influence:add', '新增影响', '007001003001', '', b'0', '0'), ('40288187525399dc015253a07f2c000b', '40288187525399dc0152539dbec40001', '修改', '1', '2', '0', '/sacm/influenceInfo/edit', 'influence:edit', '修改', '007001003002', '', b'0', '0'), ('40288187525399dc015253a0e94b000d', '40288187525399dc0152539dbec40001', '删除', '1', '3', '0', '/sacm/influenceInfo/delete', 'influence:delete', '删除', '007001003003', '', b'0', '0'), ('40288187525399dc015253a266b00011', '40288187525399dc0152539e38780003', '产品详情', '1', '2', '0', '/sacm/product/ajax/getProduct', 'product:getProduct', '产品详情', '007001004002', '', b'0', '0'), ('40288187525399dc015253a382d00014', '40288187525399dc0152539e38780003', '产品列表', '1', '1', '0', '/sacm/product/ajax/list', 'product:listProduct', '产品列表', '007001004001', '', b'0', '0'), ('40288187525399dc015253a409000017', '40288187525399dc0152539e38780003', '产品保存', '1', '3', '0', '/sacm/product/ajax/save', 'product:saveProduct', '产品保存', '007001004003', '', b'0', '0'), ('40288187525399dc015253a4768b0019', '40288187525399dc0152539e38780003', '产品删除', '1', '4', '0', '/sacm/product/ajax/delete', 'product:deleteProduct', '产品删除', '007001004004', '', b'0', '0'), ('40288187525399dc015253a50db1001b', '40288187525399dc0152539ec0860005', '资产扩展信息列表', '1', '1', '0', '/sacm/asset/attribute/ext/ajax/list', 'assetAttrExt:list', '资产扩展信息列表', '007001005001', '', b'0', '0'), ('40288187525399dc015253a561c6001d', '40288187525399dc0152539ec0860005', '资产扩展信息', '1', '2', '0', '/sacm/asset/attribute/ext/ajax/getAssetAttrExt', 'assetAttrExt:get', '资产扩展信息', '007001005002', '', b'0', '0'), ('40288187525399dc015253a5e838001f', '40288187525399dc0152539ec0860005', '资产扩展信息保存', '1', '3', '0', '/sacm/asset/attribute/ext/ajax/save', 'assetAttrExt:save', '资产扩展信息保存', '007001005003', '', b'0', '0'), ('40288187525399dc015253a656a30021', '40288187525399dc0152539ec0860005', '资产扩展信息删除', '1', '4', '0', '/sacm/asset/attribute/ext/ajax/delete', 'assetAttrExt:delete', '资产扩展信息删除', '007001005004', '', b'0', '0'), ('40288187525399dc015253a73e0d0023', '40288187525399dc0152539f33480007', '新增', '1', '1', '0', '/sacm/asset/status/add', 'status:add', '新增', '007001006001', '', b'0', '0'), ('40288187525399dc015253a7bf500025', '40288187525399dc0152539f33480007', '修改', '1', '2', '0', '/sacm/asset/status/edit', 'status:edit', '修改', '007001006002', '', b'0', '0'), ('40288187525399dc015253a8162e0027', '40288187525399dc0152539f33480007', '删除', '1', '3', '0', '/sacm/asset/status/delete', 'status:delete', '删除', '007001006003', '', b'0', '0'), ('4028818852576970015257b08cf20014', '2c90a89954098413015409ab385c0003', '监控器管理', '0', '1', '0', '/monitor/list', 'monitor:monitor_config', '监控器管理', '001001', 'icon-cog', b'0', '0'), ('4028818852576970015257bb78c2001e', '4028818852576970015257b08cf20014', '告警管理', '1', '1', '0', '/monitorAlarmLine/list', 'monitor:alarmLine', '告警管理', '001001001', '', b'0', '0'), ('4028818852576970015257bc2fe60020', '4028818852576970015257b08cf20014', '添加监控器', '1', '2', '0', '/monitor/add', 'monitor:add', '添加监控器', '001001002', '', b'0', '0'), ('4028818852576970015257bcce0b0022', '4028818852576970015257b08cf20014', '项目集列表', '1', '3', '0', '/monitor/item/group/list', 'monitor:group', '项目集列表', '001001003', '', b'0', '0'), ('4028818852576970015257bd5b940024', '4028818852576970015257b08cf20014', '修改监控器', '1', '4', '0', '/monitor/edit', 'monitor:monitorEdit', '修改监控器', '001001004', '', b'0', '0'), ('4028818852576970015257bdd6110026', '4028818852576970015257b08cf20014', '视图定义', '1', '5', '0', '/monitor/view/list', 'monitor:viewList', '视图定义', '001001005', '', b'0', '0'), ('4028818c5123f210015123f7d0cf0005', '2c90a899540d1c4201540d3784160019', '租户管理', '0', '1', '0', '/sys/tenant/tenant/list', 'tenant:tenantlist', '租户管理', '008001', 'icon-cloud', b'0', '0'), ('4028818c5123f210015123f967aa0007', '4028818c5123f210015123f7d0cf0005', '租户修改', '1', '1', '0', '/', 'tenant:tenantupdate', '修改租户信息', '008001001', '', b'0', '0'), ('4028818c5123f210015123fa73480009', '4028818c5123f210015123f7d0cf0005', '租户注销/激活', '1', '2', '0', '/', 'tenant:tenantdelactivate', '租户注销', '008001002', '', b'0', '0'), ('4028818c5123f210015123fb4d64000b', '2c90a899540d1c4201540d3784160019', '租户角色管理', '0', '2', '0', '/sys/tenant/role/list', 'tenant:rolelist', '租户角色管理', '008002', 'icon-group', b'0', '0'), ('4028818c5123f210015123fe0143000e', '4028818c5123f210015123fb4d64000b', '租户角色添加', '1', '1', '0', '/', 'tenant:roleadd', '租户角色添加', '008002001', '', b'0', '0'), ('4028818c5123f210015123fe7a530010', '4028818c5123f210015123fb4d64000b', '租户角色修改', '1', '2', '0', '/', 'tenant:roleupdate', '租户角色修改', '008002002', '', b'0', '0'), ('4028818c5123f210015123feff1f0012', '4028818c5123f210015123fb4d64000b', '租户角色删除', '1', '3', '0', '/', 'tenant:roledel', '租户角色删除', '008002003', '', b'0', '0'), ('4028818c5123f210015123ffe0380014', '4028818c5123f210015123fb4d64000b', '租户角色关联资源', '1', '4', '0', '/', 'tenant:roleresource', '租户角色关联资源', '008002004', '', b'0', '0'), ('4028818c5123f21001512403cf050016', '402881f051229680015122dfef9a0004', '用户管理', '0', '1', '0', '/sys/tenant/user/list', 'tenant:userlist', '租户用户管理', '008001', 'icon-user', b'0', '1'), ('4028818c5123f210015124044d9f0018', '4028818c5123f21001512403cf050016', '邀请用户', '1', '1', '0', '/', 'tenant:userinvite', '邀请用户', '008001001', '', b'0', '1'), ('4028818c5123f21001512409c6180023', '1', '个人中心', '2', '7', '0', '/sys/tenant/user/profile', 'tenant:usercenter', '个人中心', '007', 'icon-user', b'0', '1'), ('4028818c51285fc901512869ba070002', '402881f051229680015122dfef9a0004', '租户信息', '0', '4', '0', '/sys/tenant/tenant/own/view', 'tenant:tenantownview', '租户信息维护', '008004', 'icon-group', b'0', '1'), ('4028818c51291e57015129211bb80002', '4028818c5123f21001512409c6180023', '访问日志', '0', '4', '0', '/sys/tenant/log/login/own/list', 'tenant:logown', '访问日志', '007004', 'icon-file', b'0', '1'), ('4028818c51292c1c015129392ecd0004', '402881f051229680015122dfef9a0004', '登录日志', '0', '5', '0', '/sys/tenant/log/login/admin/list', 'tenant:logadminlist', '登录日志,管理员查看', '008005', 'icon-file', b'0', '1'), ('4028818c512d231701512d33a84f0005', '4028818c51285fc901512869ba070002', '修改信息', '1', '1', '0', '/', 'tenant:tenantownupdate', '租户管理员修改所在租户信息', '008004001', '', b'0', '1'), ('4028818c512d231701512d3f2c7b0010', '4028818c5123f210015123f7d0cf0005', '租户信息', '1', '3', '0', '/', 'tenant:tenantplatfadminview', '租户信息', '008001003', '', b'0', '0'), ('4028818c5253f031015253fa1e350002', '1', '云监控', '2', '3', '0', '/monitor/saas/index', 'monitor:index*', '云监控', '003', '', b'0', '1'), ('402881e84d084724014d0865451c0000', '8a8081434c4e96b8014c4e9fbcfc0000', '通讯管理', '0', '6', '0', '/sys/admin/sms/config', 'adminSMS:*', '通讯管理', '010006', ' icon-list-alt', b'0', '0'), ('402881e84d084724014d086727ba0001', '402881e84d084724014d0865451c0000', '短信配置', '0', '1', '0', '/sys/admin/sms/config', 'adminSMS:config', '短信配置', '010006001', 'icon-cloud', b'0', '0'), ('402881e84d084724014d086819600002', '402881e84d084724014d0865451c0000', '短信模板', '0', '2', '0', '/sys/admin/sms/tpl', 'adminSMS:tpl', '短信模板', '010006002', 'icon-cloud', b'0', '0'), ('402881e84d1c6efc014d1c7182070000', '402881e84d084724014d0865451c0000', '邮件配置', '0', '3', '0', '/sys/admin/mail/config', 'adminMail:config', '邮件配置', '010006003', 'icon-cloud', b'0', '0'), ('402881e951330bbb0151334ed2420001', '1', '云资产', '2', '6', '0', '/sacm/host/ci/list', 'sacm:*', '云资产', '006', 'icon-file', b'0', '1'), ('402881e951330bbb01513351b7520009', '2c90a89254378859015437c3346c001c', '云安全检查加固', '0', '1', '0', '/bvs/dashboard', 'bvs:dashboard', '安全检查加固', '004001', 'icon-stethoscope', b'0', '1'), ('402881e951330bbb01513356141d000b', '2c90a89254378859015437c3346c001c', '云安全配置管控', '0', '2', '0', '/sbv/dashboard', 'sbv:dashboard', '云安全配置管控', '004002', ' icon-file', b'0', '1'), ('402881e951330bbb0151335c3f100013', '402881e951330bbb01513351b7520009', '仪表盘', '0', '1', '0', '/bvs/index', 'bvs:index', '概览', '004001001', 'icon-dashboard', b'0', '1'), ('402881e951330bbb0151335dead50015', '402881e951330bbb01513351b7520009', '安全问题', '0', '3', '0', '/bvs/warn', 'bvs:warn', '安全问题', '004001003', 'icon-warning-sign', b'0', '1'), ('402881e951330bbb0151335f77f40017', '402881e951330bbb01513351b7520009', '统计报表', '0', '8', '0', '/bvs/report', 'bvs:report', '统计报表', '004001008', 'icon-bar-chart', b'0', '1'), ('402881e951330bbb015133856adc0026', '402881e951330bbb01513356141d000b', '仪表盘', '0', '1', '0', '/sbv/index', 'sbv:index', '概览', '004002001', 'icon-dashboard', b'0', '1'), ('402881e951330bbb0151338b652d002c', '402881e951330bbb01513356141d000b', '告警记录', '0', '4', '0', '/sbv/baseline/host/list', 'sbv:baselinelist', '告警记录', '004002004', ' icon-cogs', b'0', '1'), ('402881e951330bbb0151338cfe2a002f', '402881e951330bbb01513356141d000b', '配置变更记录', '0', '3', '0', '/sbv/warnrecord/list', 'warnrecord:list', '配置变更', '004002003', ' icon-warning-sign', b'0', '1'), ('402881e951330bbb0151338e48900031', '402881e951330bbb01513356141d000b', '统计报表', '0', '5', '0', '/sbv/job/report/list', 'sbv:report', '统计报表', '004002005', 'icon-bar-chart', b'0', '1'), ('402881e951330bbb015133916f890033', '1', '首页', '2', '2', '1', '/dashboard', 'tenant:dashboard', '首页', '002', 'icon-home', b'0', '1'), ('402881e9513855d40151386f84740002', '402881e951330bbb01513351b7520009', '检查记录', '0', '5', '0', '/bvs/job/record/list', 'bvs:job-record', '检查记录', '004001005', 'icon-edit', b'0', '1'), ('402881f0511dc0ee01511e62e84f0034', '8a8081434c4e96b8014c4e9fbcfc0000', '用户管理', '0', '1', '0', '/sys/admin/user/list', 'adminUser:*', '平台用户管理', '010001', 'icon-user', b'0', '0'), ('402881f051229680015122dfef9a0004', '1', '系统管理', '2', '8', '0', '/sys/tenant/user/list', 'tenant:usersyslist', '前台系统管理', '008', '', b'0', '1'), ('402881f051251cf901512521934a0004', '2c90a899540d1c4201540d3784160019', '租户资源管理', '0', '3', '0', '/sys/tenant/resource/list/tree', 'tenantResource:tree', '租户资源管理', '008003', 'icon-inbox', b'0', '0'), ('402881f051251cf90151254d53ab000d', '8a8081434c4e96b8014c4e9fbcfc0000', '角色管理', '0', '2', '0', '/sys/admin/role/list', 'adminRole:*', '角色管理', '010002', 'icon-group', b'0', '0'), ('402881f051294d8c0151295287c00001', '8a295dcb4cbb6b38014cbb85058b0001', '访问日志', '0', '3', '0', '/sys/admin/log/security', 'adminlog:security', '访问日志', '011003', 'icon-file', b'0', '0'), ('402881f14d792bda014d7a8259e2000c', '8a8081434c4e96b8014c4e9fbcfc0000', '日志管理', '0', '5', '0', '/sys/admin/log/list', 'adminLog:*', '日志管理', '010005', 'icon-file', b'0', '0'), ('402881f14d792bda014d7a83f2410012', '402881f14d792bda014d7a8259e2000c', '登录日志', '0', '1', '0', '/sys/admin/log/security/all', 'adminLog:securityAll', '安全日志', '010005001', 'icon-cloud', b'0', '0'), ('402881f14d792bda014d7a84770e0014', '402881f14d792bda014d7a8259e2000c', '操作日志', '0', '2', '0', '/sys/admin/log/list', 'log:list', '操作日志', '010005002', 'icon-cloud', b'0', '0'), ('402881f44e238489014e2396b4f1002b', '2c90a89954098413015409b62805000f', '资产设置', '0', '1', '0', '/sacm/relationmetadata/list', 'sacm:cmdbmanage', 'CMDB管理', '007001', 'icon-cloud', b'0', '0'), ('402881f44e238489014e2397251b002d', '402881f44e238489014e2396b4f1002b', '配置项类型', '0', '1', '0', '/sacm/ciObject/list/tree', 'cmdbmanage:ciObject ', '配置项类型', '007001001', 'icon-cloud', b'0', '0'), ('402881f44e238489014e2397792d002f', '402881f44e238489014e2396b4f1002b', '关系类型', '0', '2', '0', '/sacm/relationmetadata/list ', 'cmdbmanage:relationmetadata ', '关系类型', '007001002', 'icon-cloud', b'0', '0'), ('4028c6ff5eace303015eb1a5db88000d', '2c90ee815e8461e5015e847bedd40003', '投票统计', '0', '8', '0', '/zzb/app/console/tp/', 'tp:*', '投票统计', '001008', 'icon-ok', b'0', '1'), ('4028e41151c782180151c79f0dc0000a', '8a8081b7513786a1015137d2059b0001', '分析概览', '0', '1', '0', '/dataAnalyse/dashboard', 'dataAnalyse:index', '仪表盘', '005001', 'icon-dashboard', b'0', '1'), ('4028e4315396cd0d0153972f307e043d', '402881e951330bbb0151334ed2420001', '主机管理', '0', '1', '0', '/sacm/host/ci/list', 'sacm:hostList', '主机管理', '006001', 'icon-tasks', b'0', '1'), ('4028e46654947e4601549482ce4e0002', '4028818c5253f031015253fa1e350002', '用户体验监控', '0', '4', '0', '/', 'webAnalysis:*', '网站分析', '003004', 'icon-bar-chart', b'0', '1'), ('4028e46654947e460154948451fc0004', '4028e46654947e4601549482ce4e0002', '概览', '0', '1', '0', '/webAnalysis/dashboard', 'webAnalysis:dashboard', '概览', '003004001', 'icon-dashboard', b'0', '1'), ('4028e46654947e46015494900f6b0006', '4028e46654947e4601549482ce4e0002', '网站管理', '0', '2', '0', '/webAnalysis/website/list', 'webAnalysis:list', '网站管理', '003004002', 'icon-list-alt', b'0', '1'), ('4028e46654947e46015494988b8c0008', '4028e46654947e4601549482ce4e0002', '访客分析', '0', '3', '0', '/', 'webAnalysis:user*', '访客分析', '003004003', 'icon-user', b'0', '1'), ('4028e46654947e460154949bcc7c000c', '4028e46654947e46015494988b8c0008', '访客日志', '0', '1', '0', '/webAnalysis/user/log/list', 'webAnalysis:userLog', '访客日志', '003004003001', 'icon-file', b'0', '1'), ('4028e46654947e460154949d2a45000e', '4028e46654947e46015494988b8c0008', '系统环境', '0', '2', '0', '/webAnalysis/user/system/list', 'webAnalysis:userSystem', '系统环境', '003004003002', 'icon-cogs', b'0', '1'), ('4028e46654947e460154949e8aa60010', '4028e46654947e46015494988b8c0008', '地域分布', '0', '3', '0', '/webAnalysis/user/log/geo', 'webAnalysis:geo', '地域分布', '003004003003', 'icon-map-marker', b'0', '1'), ('4028e46654947e460154949faa2d0012', '4028e46654947e46015494988b8c0008', '忠诚度', '0', '4', '0', '/webAnalysis/user/loyalty/list', 'webAnalysis:userLoyalty', '忠诚度', '003004003004', 'icon-heart', b'0', '1'), ('4028e46654947e46015494a0ff230014', '4028e46654947e4601549482ce4e0002', '页面分析', '0', '4', '0', '/', 'webAnalysis:page*', '页面分析', '003004004', 'icon-file', b'0', '1'), ('4028e46654947e46015494a2411e0016', '4028e46654947e46015494a0ff230014', '页面', '0', '1', '0', '/webAnalysis/page/list', 'webAnalysis:page', '页面', '003004004001', 'icon-file', b'0', '1'), ('4028e46654947e46015494a331990018', '4028e46654947e46015494a0ff230014', '入口页面', '0', '2', '0', '/webAnalysis/page/entry/list', 'webAnalysis:entryPage', '入口页面', '003004004002', 'icon-file', b'0', '1'), ('4028e46654947e46015494a3d9e7001a', '4028e46654947e46015494a0ff230014', '出口页面', '0', '3', '0', '/webAnalysis/page/exit/list', 'webAnalysis:exitPage', '出口页面', '003004004003', 'icon-file', b'0', '1'), ('4028e46654947e46015494a68a39001c', '4028e46654947e4601549482ce4e0002', '来源分析', '0', '5', '0', '/', 'webAnalysis:referrers*', '来源分析', '003004005', ' icon-screenshot', b'0', '1'), ('8a295dcb4cbb6b38014cbb85058b0001', '1', '个人中心', '2', '11', '0', '/sys/admin/user/profile', 'adminUser:all', '个人中心', '011', 'icon-user', b'0', '0'), ('8a8081344c64a8d1014c65520a990005', '8a8081434c4e96b8014c4e9fbcfc0000', '资源管理', '0', '4', '0', '/sys/admin/resource/list/tree', 'adminResource:tree', '平台资源管理', '010004', 'icon-inbox', b'0', '0'), ('8a8081434c4e96b8014c4e9fbcfc0000', '1', '系统管理', '2', '10', '0', '/sys/admin/user/list	', 'adminsys:*', '系统管理', '010', '', b'0', '0'), ('8a8081b7513786a1015137d2059b0001', '1', '云数据分析', '2', '5', '0', '/dataAnalyse/dashboard', 'dataAnalyse:dataAnalyse', '安全大数据分析', '005', '', b'0', '1'), ('8a80828a51254dfc015125764b1e000c', '4028818c5123f21001512409c6180023', '账号设置', '0', '1', '0', '/sys/tenant/user/profile', 'tenantUser:profile', '账号设置', '007001', 'icon-user', b'0', '1'), ('8a80828a51254dfc015125783f5b0010', '4028818c5123f21001512409c6180023', '消息中心', '0', '3', '0', '/sys/tenant/message/messages', 'tenantMessage:messages', '消息中心', '007003', 'icon-bell', b'0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL,
  `role_code` varchar(32) DEFAULT NULL,
  `role_name` varchar(64) DEFAULT NULL,
  `sort` varchar(24) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('8a8081344c744ddb014c7479ee440080', 'ROLE_ADMINISTRATOR', '超级管理员', '1', null, null, null, null, null, null, '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `role_id` varchar(32) NOT NULL,
  `resource_id` varchar(32) NOT NULL,
  KEY `FK_a0idc6bkhsfk9n88ckxsnx4xt` (`role_id`),
  KEY `FK_3lyx3gidon6wtfo9b4ak3omv7` (`resource_id`),
  CONSTRAINT `FK_3lyx3gidon6wtfo9b4ak3omv7` FOREIGN KEY (`resource_id`) REFERENCES `sys_resource` (`id`),
  CONSTRAINT `FK_a0idc6bkhsfk9n88ckxsnx4xt` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_role_resource`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_resource` VALUES ('8a8081344c744ddb014c7479ee440080', '2c90a899540d1c4201540d3784160019'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123f7d0cf0005'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123f967aa0007'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123fa73480009'), ('8a8081344c744ddb014c7479ee440080', '4028818c512d231701512d3f2c7b0010'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123fb4d64000b'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123fe0143000e'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123fe7a530010'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123feff1f0012'), ('8a8081344c744ddb014c7479ee440080', '4028818c5123f210015123ffe0380014'), ('8a8081344c744ddb014c7479ee440080', '402881f051251cf901512521934a0004'), ('8a8081344c744ddb014c7479ee440080', '8a8081434c4e96b8014c4e9fbcfc0000'), ('8a8081344c744ddb014c7479ee440080', '402881f0511dc0ee01511e62e84f0034'), ('8a8081344c744ddb014c7479ee440080', '402881f051251cf90151254d53ab000d'), ('8a8081344c744ddb014c7479ee440080', '8a8081344c64a8d1014c65520a990005'), ('8a8081344c744ddb014c7479ee440080', '402881f14d792bda014d7a8259e2000c'), ('8a8081344c744ddb014c7479ee440080', '402881f14d792bda014d7a83f2410012'), ('8a8081344c744ddb014c7479ee440080', '402881f14d792bda014d7a84770e0014'), ('8a8081344c744ddb014c7479ee440080', '402881e84d084724014d0865451c0000'), ('8a8081344c744ddb014c7479ee440080', '402881e84d084724014d086727ba0001'), ('8a8081344c744ddb014c7479ee440080', '402881e84d084724014d086819600002'), ('8a8081344c744ddb014c7479ee440080', '402881e84d1c6efc014d1c7182070000'), ('8a8081344c744ddb014c7479ee440080', '402881044d22c050014d22ef17110002'), ('8a8081344c744ddb014c7479ee440080', '297e2f164e04be0c014e04c7c1b10001'), ('8a8081344c744ddb014c7479ee440080', '297e2f164f062b0b014f063148d50007'), ('8a8081344c744ddb014c7479ee440080', '297e2f164f062b0b014f062d8ef70001'), ('8a8081344c744ddb014c7479ee440080', '297e566a519aa19d01519aa4c4450001'), ('8a8081344c744ddb014c7479ee440080', '8a295dcb4cbb6b38014cbb85058b0001'), ('8a8081344c744ddb014c7479ee440080', '297e2f1650bbd2d70150bbd86b1e000b'), ('8a8081344c744ddb014c7479ee440080', '4028810b4daecf13014daef0f5f20005'), ('8a8081344c744ddb014c7479ee440080', '402881f051294d8c0151295287c00001');
COMMIT;

-- ----------------------------
--  Table structure for `sys_serial`
-- ----------------------------
DROP TABLE IF EXISTS `sys_serial`;
CREATE TABLE `sys_serial` (
  `id` varchar(32) NOT NULL,
  `email` longtext NOT NULL,
  `end_date` datetime NOT NULL,
  `serial_key` varchar(160) NOT NULL,
  `satrt_date` datetime NOT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_sms_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_config`;
CREATE TABLE `sys_sms_config` (
  `id` varchar(32) NOT NULL,
  `add_tpl_uri` varchar(50) DEFAULT NULL,
  `apikey` varchar(50) NOT NULL,
  `del_tpl_uri` varchar(50) DEFAULT NULL,
  `get_tpl_uri` varchar(50) DEFAULT NULL,
  `send_uri` varchar(50) DEFAULT NULL,
  `sms_name` varchar(255) NOT NULL,
  `sms_server` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL,
  `tpl_send_uri` varchar(50) DEFAULT NULL,
  `update_tpl_uri` varchar(50) DEFAULT NULL,
  `version` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_sms_config`
-- ----------------------------
BEGIN;
INSERT INTO `sys_sms_config` VALUES ('402881f9516ad90201516ae9da1b0001', 'tpl/add.json', '0b6b415a46f627257a9960f8cc775b85', 'tpl/del.json', 'tpl/get.json', 'sms/send.json', '云片网', 'http://yunpian.com', b'1', 'sms/tpl_send.json', 'tpl/update.json', 'v1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_sms_template`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL,
  `check_status` varchar(10) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `tpl_content` varchar(255) NOT NULL,
  `tpl_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cc6iyto1ff2v425jlwxqej50f` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_sms_template`
-- ----------------------------
BEGIN;
INSERT INTO `sys_sms_template` VALUES ('4028818c5195321901519586ee35005b', 'SUCCESS', 'sbv_warning', null, '【三零优异云服务】尊敬的用户，您的主机#host_ip#发生了配置变更，风险级别为#level#，请您及时处理。', '1170535'), ('4028818c519532190151958896f1005d', 'SUCCESS', 'bvs_warning', null, '【三零优异云服务】尊敬的用户，系统检测到您的主机#host_ip#存在安全风险，风险级别为#level#，请您及时处理。', '1170547'), ('4028818c519532190151958b92a6005f', 'SUCCESS', 'bes_warning', null, '【三零优异云服务】尊敬的用户，系统对您的主机#host_ip#进行加固时出现了错误。', '1170565'), ('4028819b5317215f0153172bd5b10009', 'SUCCESS', 'ticket_create_notify_handle', null, '【三零优异云服务】你有一个新工单\"#title#\",请及时处理。', '1248827'), ('4028819b5317215f0153172c6194000b', 'SUCCESS', 'ticket_alert_response', null, '【三零优异云服务】工单\"#title#\"到达响应预警时间，请及时处理。', '1248829'), ('4028819b5317215f0153172ca9b0000d', 'SUCCESS', 'ticket_alert_complete', null, '【三零优异云服务】工单\"#title#\"到达完成预警时间，请尽快完成工单。', '1248831'), ('4028819b5317215f0153172d1763000f', 'SUCCESS', 'ticket_confirm_no', null, '【三零优异云服务】你处理的工单\"#title#\"客户确认不通过，请继续沟通处理。', '1248833'), ('4028819b5317215f0153172d69a40011', 'SUCCESS', 'ticket_need_confirm', null, '【三零优异云服务】您好，你创建的工单\"#title#\"已经解决请到系统确认。', '1248837'), ('4028819b5317215f0153172ddec70013', 'SUCCESS', 'ticket_expert_complete', null, '【三零优异云服务】您好，你创建的工单#title#已经处理完毕。', '1248839'), ('4028819b53173ecf015317413ea30006', 'SUCCESS', 'ticket_status_change', null, '【三零优异云服务】您好！你的创建的工单\"#title#\"状态已经改为#status#', '1248899'), ('4028819b53173ecf0153174190680008', 'SUCCESS', 'ticket_sla_change', null, '【三零优异云服务】你组织下处理的工单\"#title#\"的SLA级别发生改变。修改人是\"#username#\"。', '1248901'), ('4028819b53173ecf015317426fbf000a', 'SUCCESS', 'ticket_reply_notify', null, '【三零优异云服务】工单\"#title#\"有新回复，可以登录系统查看。', '1248905'), ('402881a45286f5000152870d98370090', 'SUCCESS', 'monitor_alarm_sms', null, '【三零优异云服务】尊敬的#username#用户，您好：\r\n 您的监控项 #items# 于 #time# 发生告警。\r\n 监控项：#items#\r\n 当前值：#data#\r\n 规则:#rule#\r\n 发生告警时间:#time#', '1229149'), ('402881a45286f5000152870e39330092', 'SUCCESS', 'monitor_guzhang_sms', null, '【三零优异云服务】尊敬的#username#用户，您好：  您的监控项目 #monitorName# 于 #time# 发生监控故障，原因：#errInfo#，请尽快处理。', '1229151'), ('402881a45286f5000152870e7b990094', 'SUCCESS', 'monitor_huifu_sms', null, '【三零优异云服务】尊敬的#username#用户，您好：  您的监控项目 #monitorName# 于 #time# 已恢复正常监控。', '1229157');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `tenant_name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant` VALUES ('0000000051b4a2b60151b4abd9f90001', '湘西州委组织部', null, '', '', '2017-09-15 15:39:15', '1', '超级管理员', '0', '', '0', 'MWqYKbYaO34Kxuutmep8of35kuHvgJoo');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant_customer`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_customer`;
CREATE TABLE `sys_tenant_customer` (
  `s_id` varchar(32) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `tenant_id` varchar(255) DEFAULT NULL,
  `tenant_sp_id` varchar(255) DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_log`;
CREATE TABLE `sys_tenant_log` (
  `id` varchar(32) NOT NULL,
  `content` longtext,
  `create_time` datetime NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7pwql7lsf077eebrt7jvqtlye` (`tenant_id`),
  CONSTRAINT `FK_7pwql7lsf077eebrt7jvqtlye` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant_log`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_log` VALUES ('2c90a89255063e960155063f44ce0000', null, '2016-05-31 17:57:38', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('2c90a89255063e960155063fcdec0002', 'net.wish30.cloud.platform.serialNumber.service.impl.SerialNumberDefinitionServiceImpl.saveOrUpdateGetSerialNumber[参数1，类型：String( SCANER_JOB)][参数2，类型：String( 1)][参数3，类型：Integer( 3)][参数4，类型：String( 0000000051b4a2b60151b4abd9f90001)]', '2016-05-31 17:58:13', '0(0:0:0:0:0:0:0:1)', '1', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('2c90a8925509920b01550993b8fa0000', null, '2016-06-01 09:28:44', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('2c90a892550995650155099655350000', null, '2016-06-01 09:31:35', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('2c90ee815e8461e5015e84845fe7000b', null, '2017-09-15 15:50:21', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('2c90ee815e862d92015e887ae38d0000', null, '2017-09-16 10:18:29', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e887c38015e887cb2ac0000', null, '2017-09-16 10:20:27', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e887c38015e8889a3e40001', null, '2017-09-16 10:34:35', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e88942a015e889498000000', null, '2017-09-16 10:46:33', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e88c94c015e88c9b98d0000', null, '2017-09-16 11:44:35', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8ad4ec015e8ad558420000', null, '2017-09-16 21:16:31', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8aeac9015e8aebc9300000', null, '2017-09-16 21:41:02', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8af0cb015e8af13fae0000', null, '2017-09-16 21:47:00', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8b10d5015e8b113d2c0000', null, '2017-09-16 22:21:56', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8b4238015e8b42a1140000', null, '2017-09-16 23:15:53', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8dbcdd015e8dbd37380000', null, '2017-09-17 10:49:01', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8e20d6015e8e23853f0000', null, '2017-09-17 12:40:46', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8e20d6015e8e96fe4d0001', null, '2017-09-17 14:46:54', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8e20d6015e8e9713a90002', null, '2017-09-17 14:46:59', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8ea0ff015e8ea1e5760000', null, '2017-09-17 14:58:48', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402880e95e8ea0ff015e8ea1e5760001', null, '2017-09-17 14:58:48', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881da5eb7ad92015eb7adfeda0000', null, '2017-09-25 14:16:27', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881da5eb7fb97015eb7fc31430000', null, '2017-09-25 15:41:52', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e926f51015e926fc0170000', null, '2017-09-18 08:42:31', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e92cfc2015e92d049bd0000', null, '2017-09-18 10:27:57', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e92cfc2015e9392af100001', null, '2017-09-18 14:00:17', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e92cfc2015e93b5a16a0002', null, '2017-09-18 14:38:28', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e92cfc2015e946348560003', null, '2017-09-18 17:48:08', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e946416015e94647db50000', null, '2017-09-18 17:49:27', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e946416015e95464f490001', null, '2017-09-18 21:56:07', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e946416015e978265b60007', null, '2017-09-19 08:20:59', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e946416015e978f3ef50009', null, '2017-09-19 08:35:01', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e946416015e98e1091c000b', null, '2017-09-19 14:43:58', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e98e964015e98e9cec40000', null, '2017-09-19 14:53:33', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e98e964015e996cb3cc007e', null, '2017-09-19 17:16:32', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e98e964015e9ab14e9d007f', null, '2017-09-19 23:11:05', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9cd227015e9cd28af10000', null, '2017-09-20 09:06:37', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9d3db1015e9d3e33ed0000', null, '2017-09-20 11:04:13', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9d3db1015e9d87b8680001', null, '2017-09-20 12:24:31', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9d3db1015e9de00da80002', null, '2017-09-20 14:01:00', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9d3db1015e9de31f4d0003', null, '2017-09-20 14:04:21', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015e9e72621e0000', null, '2017-09-20 16:40:50', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015e9f0754c40001', null, '2017-09-20 19:23:31', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015e9fa27ba5002c', null, '2017-09-20 22:12:59', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015ea1bef0c3002d', null, '2017-09-21 08:03:19', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015ea23122a100c4', null, '2017-09-21 10:08:03', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015ea24fbf2400c6', null, '2017-09-21 10:41:29', '0(0:0:0:0:0:0:0:1)', '4', '40283f84511f5da101511f5eef2e0000', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015ea264f8e100c9', null, '2017-09-21 11:04:40', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5e9e71fe015ea305c6cf0161', null, '2017-09-21 14:00:18', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5ea321be015ea324f6150000', null, '2017-09-21 14:34:22', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5ea321be015ea34321100096', null, '2017-09-21 15:07:19', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5ea321be015ea77391a500a6', null, '2017-09-22 10:38:43', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5ea321be015eac76896a0138', null, '2017-09-23 10:00:03', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('402881ea5ea321be015eac8c99c70139', null, '2017-09-23 10:24:09', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eaceb44d80000', null, '2017-09-23 12:07:33', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eacefbf760005', null, '2017-09-23 12:12:27', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eadd15e440008', null, '2017-09-23 16:18:53', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eae01c328000b', null, '2017-09-23 17:11:45', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eb1b0fe0c000e', null, '2017-09-24 10:22:00', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eb201aced0010', null, '2017-09-24 11:50:08', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eace303015eb32a28690012', null, '2017-09-24 17:13:58', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eb338eb015eb33a01500000', null, '2017-09-24 17:31:17', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eb35ed4015eb35f8d8c0000', null, '2017-09-24 18:12:17', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eb35ed4015eb7918daf0002', null, '2017-09-25 13:45:23', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001'), ('4028c6ff5eb35ed4015eb79265970003', null, '2017-09-25 13:46:18', '0(0:0:0:0:0:0:0:1)', '4', '402881ea5e9e71fe015ea2646bef00c7', null, null, null, null, null, null, '0', '0000000051b4a2b60151b4abd9f90001');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant_mapper`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_mapper`;
CREATE TABLE `sys_tenant_mapper` (
  `cismag_tenant_id` varchar(32) NOT NULL,
  `tenant_id` varchar(32) NOT NULL,
  PRIMARY KEY (`cismag_tenant_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_message`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_message`;
CREATE TABLE `sys_tenant_message` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `notice_email` bit(1) DEFAULT NULL,
  `notice_express` bit(1) DEFAULT NULL,
  `notice_sms` bit(1) DEFAULT NULL,
  `notice_smart` bit(1) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5mfxoplf98flawi2vjb4bd2yb` (`tenant_id`),
  CONSTRAINT `FK_5mfxoplf98flawi2vjb4bd2yb` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_notice`;
CREATE TABLE `sys_tenant_notice` (
  `id` varchar(32) NOT NULL,
  `notice_content` longtext,
  `notice_level` smallint(6) DEFAULT NULL,
  `notice_title` varchar(255) DEFAULT NULL,
  `push_way` smallint(6) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_d1sfe9hf4yyftt6wpuoybty0g` (`tenant_id`),
  CONSTRAINT `FK_d1sfe9hf4yyftt6wpuoybty0g` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_online_message`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_online_message`;
CREATE TABLE `sys_tenant_online_message` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_k4ysdo5nf5vmcjfpcvfsem5d5` (`tenant_id`),
  CONSTRAINT `FK_k4ysdo5nf5vmcjfpcvfsem5d5` FOREIGN KEY (`tenant_id`) REFERENCES `sys_tenant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_password_reset`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_password_reset`;
CREATE TABLE `sys_tenant_password_reset` (
  `id` varchar(32) NOT NULL,
  `tenant_user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_90t88tjm7gy0hmknjt56lhguq` (`tenant_user_id`),
  CONSTRAINT `FK_90t88tjm7gy0hmknjt56lhguq` FOREIGN KEY (`tenant_user_id`) REFERENCES `sys_tenant_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_register`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_register`;
CREATE TABLE `sys_tenant_register` (
  `id` varchar(32) NOT NULL,
  `activateDate` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `tenant_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `tenantName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_role`;
CREATE TABLE `sys_tenant_role` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_code` varchar(32) DEFAULT NULL,
  `sort` varchar(24) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_role` VALUES ('4028818c511d7e4901511d7ed6b30000', null, null, null, null, null, null, '0', '租户管理员', 'ROLE_TENANTADMIN', '99', null), ('4028818c5124f9cf015124fac3da0002', '2015-11-20 20:59:53', '1', 'admin', '2015-11-20 21:04:59', '1', 'admin', '0', '普通用户', 'ROLE_TENANT', '5', '普通用户');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant_role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_role_resource`;
CREATE TABLE `sys_tenant_role_resource` (
  `id` varchar(32) NOT NULL,
  `resource_id` varchar(32) DEFAULT NULL,
  `tenant_role_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4qnhbpofx15gdtlpcsifbinkc` (`tenant_role_id`),
  KEY `FK_jad2acnbom1icqefv9pcvp5h8` (`resource_id`),
  CONSTRAINT `FK_4qnhbpofx15gdtlpcsifbinkc` FOREIGN KEY (`tenant_role_id`) REFERENCES `sys_tenant_role` (`id`),
  CONSTRAINT `FK_jad2acnbom1icqefv9pcvp5h8` FOREIGN KEY (`resource_id`) REFERENCES `sys_resource` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant_role_resource`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_role_resource` VALUES ('0067071d27864bfe95a2470474f4fcc2', '402881f051229680015122dfef9a0004', '4028818c511d7e4901511d7ed6b30000'), ('015daea73c1c4378aaed09f52d194162', '2c90ee815e8461e5015e847bedd40003', '4028818c511d7e4901511d7ed6b30000'), ('0c0e1a6361784042bfe3c8ee4b2821fe', '2c90ee815e8461e5015e847eb2fe0004', '4028818c511d7e4901511d7ed6b30000'), ('11226a60bc004067b31248f7791e13d2', '2c90ee815e8461e5015e8483b0e1000a', '4028818c511d7e4901511d7ed6b30000'), ('15358640d2874f93a74e3b962e18c6fb', '4028818c512d231701512d33a84f0005', '4028818c511d7e4901511d7ed6b30000'), ('29654b507d794d3dbef5a71c4b62263d', '2c90ee815e8461e5015e8481e8340008', '4028818c5124f9cf015124fac3da0002'), ('306b6739fe224109a527eb8354ee65f4', '2c90ee815e8461e5015e848291470009', '4028818c5124f9cf015124fac3da0002'), ('30eb3672231e4c81844cb0abef574c95', '2c90ee815e8461e5015e84808bdd0006', '4028818c5124f9cf015124fac3da0002'), ('3f2aca09a1274764a60a1a2292d81234', '2c90ee815e8461e5015e848291470009', '4028818c511d7e4901511d7ed6b30000'), ('40384523536a4d05bac937395d4874af', '2c90ee815e8461e5015e84813a340007', '4028818c511d7e4901511d7ed6b30000'), ('4f01cbb4b6ee41e6b57bd86d26df1f7d', '8a80828a51254dfc015125764b1e000c', '4028818c5124f9cf015124fac3da0002'), ('5756bd85dbd240dd8a1741ef639a93f3', '4028818c51285fc901512869ba070002', '4028818c511d7e4901511d7ed6b30000'), ('5ba59baa8d2c498e9f9210ad6279652d', '4028c6ff5eace303015eb1a5db88000d', '4028818c511d7e4901511d7ed6b30000'), ('6f041ef354ca446fafc8088dfc7eb137', '2c90ee815e8461e5015e847eb2fe0004', '4028818c5124f9cf015124fac3da0002'), ('797f94762cfd49abb5362ae69ee1bb4e', '4028818c51291e57015129211bb80002', '4028818c5124f9cf015124fac3da0002'), ('8fe67d4275cf4cd8a185519f009173db', '4028818c5123f210015124044d9f0018', '4028818c511d7e4901511d7ed6b30000'), ('99c2cc412cd54c35aa2c37d0533e4339', '8a80828a51254dfc015125783f5b0010', '4028818c5124f9cf015124fac3da0002'), ('a10a861a073749c79c3d1479c2758e6d', '4028818c51292c1c015129392ecd0004', '4028818c511d7e4901511d7ed6b30000'), ('a3d8d372d40d45a1a8eb6e0343b93ef1', '2c90ee815e8461e5015e84808bdd0006', '4028818c511d7e4901511d7ed6b30000'), ('aa61bb64006643e9bdae99604e597137', '4028818c5123f21001512403cf050016', '4028818c511d7e4901511d7ed6b30000'), ('ad036f6ae23f4339ae26b412d3bbe585', '4028818c5123f21001512409c6180023', '4028818c5124f9cf015124fac3da0002'), ('b67afc9c7da7488087cb0080ae4a4dc3', '2c90ee815e8461e5015e84813a340007', '4028818c5124f9cf015124fac3da0002'), ('bcad67973ccf420f909034ef9fe35c19', '4028818c5123f21001512409c6180023', '4028818c511d7e4901511d7ed6b30000'), ('c09bc3163f804587a0db551ff3d0c66a', '4028818c51291e57015129211bb80002', '4028818c511d7e4901511d7ed6b30000'), ('c5cd2e26d82540279ead3cba84d31233', '8a80828a51254dfc015125783f5b0010', '4028818c511d7e4901511d7ed6b30000'), ('cc4b6f8a07c54960b92b0ef62be1415b', '8a80828a51254dfc015125764b1e000c', '4028818c511d7e4901511d7ed6b30000'), ('e21e87e185ec4ce5b80f3dbeaa541c07', '40283f8b512cfa0301512d14e7a60003', '4028818c511d7e4901511d7ed6b30000'), ('e29ba4fca01c4c04a03b621640fb7bb4', '2c90ee815e8461e5015e847bedd40003', '4028818c5124f9cf015124fac3da0002'), ('edd9f0f2c5214f80b1e646e132b5775c', '4028c6ff5eace303015eb1a5db88000d', '4028818c5124f9cf015124fac3da0002'), ('f0d39529c31242a58934804556b7e0ac', '2c90ee815e8461e5015e8483b0e1000a', '4028818c5124f9cf015124fac3da0002'), ('f31d62268de54f849b42de8fde8f9e42', '2c90ee815e8461e5015e8481e8340008', '4028818c511d7e4901511d7ed6b30000');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_user`;
CREATE TABLE `sys_tenant_user` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `birthday` date NOT NULL DEFAULT '1988-01-01',
  `email` longtext,
  `head_photo` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `positional` varchar(64) DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  `salt` varchar(64) DEFAULT NULL,
  `specialty` varchar(64) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `tenant_id` varchar(32) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `sex` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `FK_abqs5rrgmywes1176uai3cd7j` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_user` VALUES ('40283f84511f5da101511f5eef2e0000', 'test1', null, null, null, '2015-11-20 14:14:46', null, null, '0', null, '2016-03-31', '30SCloud@30wish.com', '40283f84511f5da101511f5eef2e0000_1450945242296.JPEG', b'0', 'bab4309e37b824dc7a42803c4e66c3aa', '产品经理', '测试用户', 'cc80d33b43580c3c355b1e4b9a662770', null, '18620868051', null, null, '1', b'0'), ('402881ea5e9e71fe015ea2646bef00c7', 'shijh', '2017-09-21 11:04:04', null, null, null, null, null, '0', null, '2017-09-21', '6709443@qq.com', 'avatar.JPEG', b'0', '7d9f7ffbb8609ae80cb3ff8f5943bd95', '科长', '石军辉', 'a261a9e6ac10879a0115c60fc8e9e867', null, '18907430003', null, '0000000051b4a2b60151b4abd9f90001', '0', b'1');
COMMIT;

-- ----------------------------
--  Table structure for `sys_tenant_user_mapper`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_user_mapper`;
CREATE TABLE `sys_tenant_user_mapper` (
  `cismag_user_id` varchar(32) NOT NULL,
  `tenant_user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`cismag_user_id`,`tenant_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_tenant_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_user_role`;
CREATE TABLE `sys_tenant_user_role` (
  `id` varchar(32) NOT NULL,
  `tenant_role_id` varchar(32) DEFAULT NULL,
  `tenant_user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2lmxf70q1g9ben5eynqx7w2ts` (`tenant_role_id`),
  KEY `FK_h4cmgr1el880ih28vetddjliv` (`tenant_user_id`),
  CONSTRAINT `FK_2lmxf70q1g9ben5eynqx7w2ts` FOREIGN KEY (`tenant_role_id`) REFERENCES `sys_tenant_role` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_h4cmgr1el880ih28vetddjliv` FOREIGN KEY (`tenant_user_id`) REFERENCES `sys_tenant_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_tenant_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_user_role` VALUES ('40283f84511fcc6e01511fcd23070004', '4028818c511d7e4901511d7ed6b30000', '40283f84511f5da101511f5eef2e0000'), ('402881ea5e9e71fe015ea2646bf200c8', '4028818c511d7e4901511d7ed6b30000', '402881ea5e9e71fe015ea2646bef00c7');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_user_id` varchar(255) DEFAULT NULL,
  `update_user_name` varchar(32) DEFAULT NULL,
  `tombstone` int(11) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `birthday` date NOT NULL DEFAULT '1988-01-01',
  `email` longtext,
  `head_photo` varchar(255) DEFAULT NULL,
  `is_admin` bit(1) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `positional` varchar(64) DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  `salt` varchar(64) DEFAULT NULL,
  `specialty` varchar(64) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sex` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_allq98r3p52nr51huusaldo32` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', '2015-11-18 16:15:41', null, null, '2015-11-18 16:15:44', null, null, '0', null, '2015-11-18', '30SCloud@30wish.net', '1_1459322616322.JPEG', b'1', b'0', '43dd423e9cff9914762a785aa1d71b3a', '超级管理员', '超级管理员', '64a16719a2e3573f0867e20349c4ca42', null, '18620868051', 'admin', null, null, b'0');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_65svasqtioc8l707w2assg3d2` (`role_id`),
  KEY `FK_ndy4c3nusea4ukrb9ws0plqj0` (`user_id`),
  CONSTRAINT `FK_65svasqtioc8l707w2assg3d2` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_ndy4c3nusea4ukrb9ws0plqj0` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', '8a8081344c744ddb014c7479ee440080', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
