/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_web_cert

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-06-28 10:59:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(3) NOT NULL AUTO_INCREMENT,
  `dept` varchar(20) NOT NULL,
  `dept_incharge` varchar(50) DEFAULT NULL,
  `dept_uname` varchar(15) DEFAULT NULL,
  `dept_password` varchar(15) DEFAULT NULL,
  `sign_year` varchar(4) DEFAULT NULL,
  `jan_flag` varchar(15) DEFAULT '',
  `feb_flag` varchar(15) DEFAULT '',
  `mar_flag` varchar(15) DEFAULT '',
  `apr_flag` varchar(15) DEFAULT '',
  `may_flag` varchar(15) DEFAULT '',
  `jun_flag` varchar(15) DEFAULT '',
  `jul_flag` varchar(15) DEFAULT '',
  `aug_flag` varchar(15) DEFAULT '',
  `sep_flag` varchar(15) DEFAULT '',
  `oct_flag` varchar(15) DEFAULT '',
  `nov_flag` varchar(15) DEFAULT '',
  `dec_flag` varchar(15) DEFAULT '',
  `uname` varchar(3) DEFAULT NULL,
  `pwd` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('101', 'Accounts', 'AFA/Sett.', 'acc', 'acc@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Acc_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'acc', '123456');
INSERT INTO `tbl_dept` VALUES ('102', 'Administration', 'Dy. Secy. to GM', 'adm', 'adm@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'adm', '123456');
INSERT INTO `tbl_dept` VALUES ('103', 'Electrical', 'AEE/M  ', 'ele', 'ele@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'ele', '123456');
INSERT INTO `tbl_dept` VALUES ('104', 'Engineering', 'XEN/FUR', 'eng', 'eng@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'eng', '123456');
INSERT INTO `tbl_dept` VALUES ('105', 'Mechanical', 'DY.CPLE', 'mec', 'mec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'mec', '123456');
INSERT INTO `tbl_dept` VALUES ('106', 'Medical', 'DMO', 'med', 'med@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'med', '123456');
INSERT INTO `tbl_dept` VALUES ('107', 'Personnel', 'SPO/WS', 'per', 'per@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'per', '123456');
INSERT INTO `tbl_dept` VALUES ('108', 'Security', 'CRS/Admin', 'sec', 'sec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sec', '123456');
INSERT INTO `tbl_dept` VALUES ('109', 'Stores', 'Dy.CMM/Genl', 'sto', 'sto@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sto', '123456');
INSERT INTO `tbl_dept` VALUES ('110', 'Vigilance', 'Sr.VO', 'vig', 'vig@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'vig', '123456');
INSERT INTO `tbl_dept` VALUES ('111', 'SuperUser', 'Sr.EDPM/ICF', 'sus', 'sus@123', '2023', '', '', '', '', '', '', '', '', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `tbl_dept_incharge`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept_incharge`;
CREATE TABLE `tbl_dept_incharge` (
  `dept_id` int(3) NOT NULL AUTO_INCREMENT,
  `dept` varchar(20) NOT NULL,
  `dept_incharge` varchar(50) DEFAULT NULL,
  `dept_uname` varchar(15) DEFAULT NULL,
  `dept_password` varchar(15) DEFAULT NULL,
  `sign_year` varchar(4) DEFAULT NULL,
  `jan_flag` varchar(15) DEFAULT '',
  `feb_flag` varchar(15) DEFAULT '',
  `mar_flag` varchar(15) DEFAULT '',
  `apr_flag` varchar(15) DEFAULT '',
  `may_flag` varchar(15) DEFAULT '',
  `jun_flag` varchar(15) DEFAULT '',
  `jul_flag` varchar(15) DEFAULT '',
  `aug_flag` varchar(15) DEFAULT '',
  `sep_flag` varchar(15) DEFAULT '',
  `oct_flag` varchar(15) DEFAULT '',
  `nov_flag` varchar(15) DEFAULT '',
  `dec_flag` varchar(15) DEFAULT '',
  `uname` varchar(3) DEFAULT NULL,
  `pwd` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_dept_incharge
-- ----------------------------
INSERT INTO `tbl_dept_incharge` VALUES ('101', 'Accounts', 'AFA/Sett.', 'acc', 'acc@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Acc_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'acc', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('102', 'Administration', 'Dy. Secy. to GM', 'adm', 'adm@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Adm_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'adm', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('103', 'Electrical', 'AEE/M  ', 'ele', 'ele@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Ele_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'ele', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('104', 'Engineering', 'XEN/FUR', 'eng', 'eng@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Eng_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'eng', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('105', 'Mechanical', 'DY.CPLE', 'mec', 'mec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Mec_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'mec', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('106', 'Medical', 'DMO', 'med', 'med@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'med', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('107', 'Personnel', 'SPO/WS', 'per', 'per@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'per', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('108', 'Security', 'CRS/Admin', 'sec', 'sec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Sec_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sec', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('109', 'Stores', 'Dy.CMM/Genl     ', 'sto', 'sto@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Sto_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sto', '123456');
INSERT INTO `tbl_dept_incharge` VALUES ('110', 'Vigilance', 'Sr.VO', 'vig', 'vig@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Vig_23061S.pdf', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'vig', '123456');

-- ----------------------------
-- Table structure for `tbl_web_cert_details`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_web_cert_details`;
CREATE TABLE `tbl_web_cert_details` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `off_incharge` varchar(30) DEFAULT NULL,
  `dt_signed` date DEFAULT NULL,
  `file_path` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_web_cert_details
-- ----------------------------
