/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_web_cert

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-06-16 11:38:42
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
INSERT INTO `tbl_dept` VALUES ('104', 'Engineering', 'XEN/Project', 'eng', 'eng@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'eng', '123456');
INSERT INTO `tbl_dept` VALUES ('105', 'Mechanical', 'DY.CPLE', 'mec', 'mec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'mec', '123456');
INSERT INTO `tbl_dept` VALUES ('106', 'Medical', 'DMO', 'med', 'med@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'med', '123456');
INSERT INTO `tbl_dept` VALUES ('107', 'Personnel', 'SPO/GAZ', 'per', 'per@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'per', '123456');
INSERT INTO `tbl_dept` VALUES ('108', 'Security', 'CRS/Admin', 'sec', 'sec@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sec', '123456');
INSERT INTO `tbl_dept` VALUES ('109', 'Stores', 'AMM/Genl     ', 'sto', 'sto@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'sto', '123456');
INSERT INTO `tbl_dept` VALUES ('110', 'Vigilance', 'Sr.VO', 'vig', 'vig@123', '2023', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'Null', 'vig', '123456');
INSERT INTO `tbl_dept` VALUES ('111', 'SuperUser', 'Sr.EDPM/ICF', 'sus', 'sus@123', '2023', '', '', '', '', '', '', '', '', '', '', '', '', null, null);
