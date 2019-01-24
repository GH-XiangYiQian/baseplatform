/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : baseplatform_db

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-01-21 09:20:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '操作用户',
  `ip` varchar(13) CHARACTER SET utf8 DEFAULT NULL COMMENT '操作IP',
  `location` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '位置',
  `method` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '操作的方法',
  `operation` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '具体操作',
  `params` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '参数',
  `excute_time` int(11) DEFAULT NULL COMMENT '执行时间',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '127.0.0.1', null, null, null, null, null, '2018-11-21 13:17:01', '2018-11-21 13:17:04');
INSERT INTO `sys_log` VALUES ('2', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:31', '2018-11-21 14:39:31');
INSERT INTO `sys_log` VALUES ('3', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:32', '2018-11-21 14:39:32');
INSERT INTO `sys_log` VALUES ('4', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:33', '2018-11-21 14:39:33');
INSERT INTO `sys_log` VALUES ('5', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:33', '2018-11-21 14:39:33');
INSERT INTO `sys_log` VALUES ('6', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:34', '2018-11-21 14:39:34');
INSERT INTO `sys_log` VALUES ('7', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:34', '2018-11-21 14:39:34');
INSERT INTO `sys_log` VALUES ('8', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:34', '2018-11-21 14:39:34');
INSERT INTO `sys_log` VALUES ('9', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:35', '2018-11-21 14:39:35');
INSERT INTO `sys_log` VALUES ('10', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:35', '2018-11-21 14:39:35');
INSERT INTO `sys_log` VALUES ('11', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:35', '2018-11-21 14:39:35');
INSERT INTO `sys_log` VALUES ('12', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:36', '2018-11-21 14:39:36');
INSERT INTO `sys_log` VALUES ('13', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:36', '2018-11-21 14:39:36');
INSERT INTO `sys_log` VALUES ('14', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:36', '2018-11-21 14:39:36');
INSERT INTO `sys_log` VALUES ('15', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:37', '2018-11-21 14:39:37');
INSERT INTO `sys_log` VALUES ('16', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:37', '2018-11-21 14:39:37');
INSERT INTO `sys_log` VALUES ('17', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:37', '2018-11-21 14:39:37');
INSERT INTO `sys_log` VALUES ('18', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:38', '2018-11-21 14:39:38');
INSERT INTO `sys_log` VALUES ('19', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:38', '2018-11-21 14:39:38');
INSERT INTO `sys_log` VALUES ('20', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:38', '2018-11-21 14:39:38');
INSERT INTO `sys_log` VALUES ('21', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:39', '2018-11-21 14:39:39');
INSERT INTO `sys_log` VALUES ('22', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:39', '2018-11-21 14:39:39');
INSERT INTO `sys_log` VALUES ('23', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:40', '2018-11-21 14:39:40');
INSERT INTO `sys_log` VALUES ('24', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:45', '2018-11-21 14:39:45');
INSERT INTO `sys_log` VALUES ('25', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:45', '2018-11-21 14:39:45');
INSERT INTO `sys_log` VALUES ('26', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:46', '2018-11-21 14:39:46');
INSERT INTO `sys_log` VALUES ('27', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:46', '2018-11-21 14:39:46');
INSERT INTO `sys_log` VALUES ('28', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:47', '2018-11-21 14:39:47');
INSERT INTO `sys_log` VALUES ('29', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:47', '2018-11-21 14:39:47');
INSERT INTO `sys_log` VALUES ('30', 'admin', '127.0.0.1', '', '', '', '', null, '2018-11-21 14:39:48', '2018-11-21 14:39:48');
INSERT INTO `sys_log` VALUES ('31', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '380', null, null);
INSERT INTO `sys_log` VALUES ('32', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '161', null, null);
INSERT INTO `sys_log` VALUES ('33', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '491', null, null);
INSERT INTO `sys_log` VALUES ('34', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '163', null, null);
INSERT INTO `sys_log` VALUES ('35', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '1086', null, null);
INSERT INTO `sys_log` VALUES ('36', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '2849', null, null);
INSERT INTO `sys_log` VALUES ('37', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@205ba2a9  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@28538fc4  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail', '12', null, null);
INSERT INTO `sys_log` VALUES ('38', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@636e5b2  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@20961ac  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail=n', '2', null, null);
INSERT INTO `sys_log` VALUES ('39', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@40bcd17f  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@8a39320  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail=', '9', null, null);
INSERT INTO `sys_log` VALUES ('40', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@277867b  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7d616a25  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail=', '9', null, null);
INSERT INTO `sys_log` VALUES ('41', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23ecf713  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1db923ae  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '7207', null, null);
INSERT INTO `sys_log` VALUES ('42', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4500f5fb  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4e300402  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail', '14', null, null);
INSERT INTO `sys_log` VALUES ('43', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@542d5b0e  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4cf2606f  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '300', null, null);
INSERT INTO `sys_log` VALUES ('44', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f1cb1d6  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@3a5cabe9  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '291', null, null);
INSERT INTO `sys_log` VALUES ('45', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '384', null, null);
INSERT INTO `sys_log` VALUES ('46', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '15', null, null);
INSERT INTO `sys_log` VALUES ('48', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '1192', null, null);
INSERT INTO `sys_log` VALUES ('49', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4b6d836a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5e223cf9  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '280', null, null);
INSERT INTO `sys_log` VALUES ('50', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e23eb6a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@75f90db9  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '53', null, null);
INSERT INTO `sys_log` VALUES ('51', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@52755ca  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@42afca9b  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '631', null, null);
INSERT INTO `sys_log` VALUES ('52', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@a210374  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@61ffb838  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '309', null, null);
INSERT INTO `sys_log` VALUES ('53', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@182f5b9a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@337cc3f8  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '8', null, null);
INSERT INTO `sys_log` VALUES ('54', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@c209692  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4ad6d57b  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '261', null, null);
INSERT INTO `sys_log` VALUES ('55', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@16a87762  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@75dffe31  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '6', null, null);
INSERT INTO `sys_log` VALUES ('56', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7faa318e  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@42645571  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '431', null, null);
INSERT INTO `sys_log` VALUES ('57', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2eeab844  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5b77cc79  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '21', null, null);
INSERT INTO `sys_log` VALUES ('58', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5f7a4d91  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@708d3823  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '19', null, null);
INSERT INTO `sys_log` VALUES ('59', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@694b55ed  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@478005b2  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '17', null, null);
INSERT INTO `sys_log` VALUES ('60', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@723604d8  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@f2fcd9d  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '22', null, null);
INSERT INTO `sys_log` VALUES ('61', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@f33c2d4  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@20f4e938  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '283', null, null);
INSERT INTO `sys_log` VALUES ('62', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SystemController.sqlPool', '连接池查看', '', '2366', null, null);
INSERT INTO `sys_log` VALUES ('63', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@27010c6d  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4fde1b49  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '345', null, null);
INSERT INTO `sys_log` VALUES ('64', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2ed7e62f  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@195106ae  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '9', null, null);
INSERT INTO `sys_log` VALUES ('65', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5beeee67  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5d2a467e  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '16', null, null);
INSERT INTO `sys_log` VALUES ('66', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@22a54dc2  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@3704ab7a  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '290', null, null);
INSERT INTO `sys_log` VALUES ('67', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@65e2c7c1  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4e842bb  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '272', null, null);
INSERT INTO `sys_log` VALUES ('68', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1fd72508  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@195eb0c5  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '7', null, null);
INSERT INTO `sys_log` VALUES ('69', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@492fff90  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7cba5f28  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '15', null, null);
INSERT INTO `sys_log` VALUES ('70', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6e7b477a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@6a10fdd1  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '9', null, null);
INSERT INTO `sys_log` VALUES ('71', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@378b2028  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5fa1c815  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '11', null, null);
INSERT INTO `sys_log` VALUES ('72', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2544a55a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@6d65063f  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '10', null, null);
INSERT INTO `sys_log` VALUES ('73', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d05e4fa  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@ba04507  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '15', null, null);
INSERT INTO `sys_log` VALUES ('74', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5dc11935  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@530d9182  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '6', null, null);
INSERT INTO `sys_log` VALUES ('75', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1037c1b5  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7c45ae6a  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '10', null, null);
INSERT INTO `sys_log` VALUES ('76', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@ee01bb8  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@391d9f3e  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '7', null, null);
INSERT INTO `sys_log` VALUES ('77', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7cee5c22  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1b205b40  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '5', null, null);
INSERT INTO `sys_log` VALUES ('78', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@a09bff8  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1da8673e  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '7', null, null);
INSERT INTO `sys_log` VALUES ('79', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@53304616  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@798787e2  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '273', null, null);
INSERT INTO `sys_log` VALUES ('80', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('81', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ae8aa2a  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2161e2d7  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '9', null, null);
INSERT INTO `sys_log` VALUES ('82', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('83', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7dd13127  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2ec8ab21  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '272', null, null);
INSERT INTO `sys_log` VALUES ('84', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('85', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('86', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23db1753  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@66935110  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '15', null, null);
INSERT INTO `sys_log` VALUES ('87', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('88', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('89', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('90', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('91', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('92', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('93', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('94', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@16794498  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@c515c64  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '438', null, null);
INSERT INTO `sys_log` VALUES ('95', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('96', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('97', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('98', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('99', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('100', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('101', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('102', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('103', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2757eb43  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@16eb7818  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '5', null, null);
INSERT INTO `sys_log` VALUES ('104', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('105', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('106', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('107', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('108', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('109', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('110', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('111', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('112', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('113', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('114', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '33', null, null);
INSERT INTO `sys_log` VALUES ('115', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('116', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '2', null, null);
INSERT INTO `sys_log` VALUES ('117', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '21', null, null);
INSERT INTO `sys_log` VALUES ('118', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6528', null, null);
INSERT INTO `sys_log` VALUES ('119', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('120', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('121', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '18', null, null);
INSERT INTO `sys_log` VALUES ('122', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11647', null, null);
INSERT INTO `sys_log` VALUES ('123', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('124', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('125', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('126', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('127', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('128', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('129', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('130', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('131', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('132', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('133', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('134', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('135', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('136', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('137', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('138', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('139', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('140', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('141', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('142', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('143', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('144', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@ad2e23c  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2a593e99  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '11', null, null);
INSERT INTO `sys_log` VALUES ('145', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('146', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('147', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('148', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('149', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('150', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@31ecf4e3  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@38e69764  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '268', null, null);
INSERT INTO `sys_log` VALUES ('151', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('152', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('153', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('154', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '4', null, null);
INSERT INTO `sys_log` VALUES ('155', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '2', null, null);
INSERT INTO `sys_log` VALUES ('156', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '4', null, null);
INSERT INTO `sys_log` VALUES ('157', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '3', null, null);
INSERT INTO `sys_log` VALUES ('158', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('159', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('160', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('161', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('162', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('163', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('164', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('165', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('166', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '2', null, null);
INSERT INTO `sys_log` VALUES ('167', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: b164f9ea-d029-4e4a-8fae-e72d12ea5e2f', '2', null, null);
INSERT INTO `sys_log` VALUES ('168', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@74b79616  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1c58b614  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '258', null, null);
INSERT INTO `sys_log` VALUES ('169', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('170', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('171', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 5970bfac-6023-4acb-9274-727cb81ee946', '3', null, null);
INSERT INTO `sys_log` VALUES ('172', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('173', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('174', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 5970bfac-6023-4acb-9274-727cb81ee946', '7749', null, null);
INSERT INTO `sys_log` VALUES ('175', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@833f47d  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@4b883512  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '332', null, null);
INSERT INTO `sys_log` VALUES ('176', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '35', null, null);
INSERT INTO `sys_log` VALUES ('177', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('178', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '8633', null, null);
INSERT INTO `sys_log` VALUES ('179', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '18', null, null);
INSERT INTO `sys_log` VALUES ('180', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('181', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '4', null, null);
INSERT INTO `sys_log` VALUES ('182', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '2', null, null);
INSERT INTO `sys_log` VALUES ('183', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '4', null, null);
INSERT INTO `sys_log` VALUES ('184', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '2', null, null);
INSERT INTO `sys_log` VALUES ('185', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '26', null, null);
INSERT INTO `sys_log` VALUES ('186', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('187', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '4', null, null);
INSERT INTO `sys_log` VALUES ('188', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '3', null, null);
INSERT INTO `sys_log` VALUES ('189', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '54', null, null);
INSERT INTO `sys_log` VALUES ('190', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('191', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('192', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('193', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '5', null, null);
INSERT INTO `sys_log` VALUES ('194', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('195', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('196', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '6', null, null);
INSERT INTO `sys_log` VALUES ('197', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '45', null, null);
INSERT INTO `sys_log` VALUES ('198', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('199', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '3', null, null);
INSERT INTO `sys_log` VALUES ('200', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '30', null, null);
INSERT INTO `sys_log` VALUES ('201', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('202', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 84799c75-5b0b-4532-b26f-4633c713221e', '3', null, null);
INSERT INTO `sys_log` VALUES ('203', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@665fd552  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@11cbc5f3  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '296', null, null);
INSERT INTO `sys_log` VALUES ('204', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('205', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('206', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('207', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('208', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('209', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 40b7073d-4f7b-4d85-9564-bfb160577a3b', '8', null, null);
INSERT INTO `sys_log` VALUES ('210', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2716c02f  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1b6fb723  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '327', null, null);
INSERT INTO `sys_log` VALUES ('211', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('212', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('213', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('214', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('215', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4a3ff4b  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@38814291  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '6', null, null);
INSERT INTO `sys_log` VALUES ('216', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('217', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('218', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4db5ffea  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@37ba5de9  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '9', null, null);
INSERT INTO `sys_log` VALUES ('219', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('220', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('221', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3b301112  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2f724cab  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '9', null, null);
INSERT INTO `sys_log` VALUES ('222', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('223', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('224', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('225', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('226', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('227', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('228', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('229', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('230', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('231', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('232', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('233', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('234', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('235', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('236', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('237', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('238', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('239', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('240', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('241', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('242', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('243', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('244', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('245', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f39efba  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1c426171  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '7', null, null);
INSERT INTO `sys_log` VALUES ('246', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('247', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('248', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@353488fe  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@40f2ec46  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '8', null, null);
INSERT INTO `sys_log` VALUES ('249', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('250', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7af1ae3b  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@e82d665  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '277', null, null);
INSERT INTO `sys_log` VALUES ('251', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '22', null, null);
INSERT INTO `sys_log` VALUES ('252', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12534', null, null);
INSERT INTO `sys_log` VALUES ('253', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4c5a7822  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7b8b30cb  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '284', null, null);
INSERT INTO `sys_log` VALUES ('254', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('255', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '23994', null, null);
INSERT INTO `sys_log` VALUES ('256', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4185', null, null);
INSERT INTO `sys_log` VALUES ('257', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4283', null, null);
INSERT INTO `sys_log` VALUES ('258', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4090', null, null);
INSERT INTO `sys_log` VALUES ('259', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@ab21ccc  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1d43c895  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '8', null, null);
INSERT INTO `sys_log` VALUES ('260', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('261', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '28593', null, null);
INSERT INTO `sys_log` VALUES ('262', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '23835', null, null);
INSERT INTO `sys_log` VALUES ('263', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@38c8308c  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1e346acb  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '8', null, null);
INSERT INTO `sys_log` VALUES ('264', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('265', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('266', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@205d0455  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@c8c97ac  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '301', null, null);
INSERT INTO `sys_log` VALUES ('267', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '20', null, null);
INSERT INTO `sys_log` VALUES ('268', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('269', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('270', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '37', null, null);
INSERT INTO `sys_log` VALUES ('271', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('272', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('273', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('274', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('275', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('276', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('277', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('278', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('279', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('280', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('281', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('282', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('283', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('284', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('285', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('286', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('287', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('288', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('289', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('290', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('291', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6e366247  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7b92e6b  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '9', null, null);
INSERT INTO `sys_log` VALUES ('292', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('293', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('294', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('295', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('296', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('297', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('298', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('299', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('300', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('301', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('302', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('303', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('304', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('305', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '20', null, null);
INSERT INTO `sys_log` VALUES ('306', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('307', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('308', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('309', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('310', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '25', null, null);
INSERT INTO `sys_log` VALUES ('311', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11124', null, null);
INSERT INTO `sys_log` VALUES ('312', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11243', null, null);
INSERT INTO `sys_log` VALUES ('313', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('314', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '25997', null, null);
INSERT INTO `sys_log` VALUES ('315', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@15f6ec11  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7329e463  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '12', null, null);
INSERT INTO `sys_log` VALUES ('316', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('317', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '18438', null, null);
INSERT INTO `sys_log` VALUES ('318', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@498351  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@22ea78e9  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCardN', '10', null, null);
INSERT INTO `sys_log` VALUES ('319', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('320', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '30616', null, null);
INSERT INTO `sys_log` VALUES ('321', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '20', null, null);
INSERT INTO `sys_log` VALUES ('322', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8026', null, null);
INSERT INTO `sys_log` VALUES ('323', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('324', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('325', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('326', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '30', null, null);
INSERT INTO `sys_log` VALUES ('327', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('328', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('329', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('330', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('331', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('332', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('333', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('334', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('335', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('336', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('337', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('338', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('339', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('340', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('341', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('342', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('343', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('344', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('345', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('346', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('347', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('348', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('349', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('350', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('351', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('352', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('353', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('354', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('355', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('356', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '19', null, null);
INSERT INTO `sys_log` VALUES ('357', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('358', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('359', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('360', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('361', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('362', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('363', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('364', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('365', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('366', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('367', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('368', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('369', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('370', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('371', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('372', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('373', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('374', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('375', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('376', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('377', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('378', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('379', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('380', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('381', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('382', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('383', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('384', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('385', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('386', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('387', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('388', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('389', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('390', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('391', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('392', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('393', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('394', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('395', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('396', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('397', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('398', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('399', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('400', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('401', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('402', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('403', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('404', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('405', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('406', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('407', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('408', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('409', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '40', null, null);
INSERT INTO `sys_log` VALUES ('410', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('411', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('412', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('413', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('414', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('415', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('416', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('417', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('418', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('419', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('420', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('421', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('422', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('423', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('424', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('425', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('426', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('427', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('428', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('429', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('430', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('431', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('432', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('433', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('434', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('435', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('436', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('437', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('438', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('439', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('440', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('441', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('442', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('443', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('444', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@73297786  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@7588feb4  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '36', null, null);
INSERT INTO `sys_log` VALUES ('445', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('446', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('447', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: 3e74609b-4cf1-4f68-ad20-ef6c1da0df07', '2', null, null);
INSERT INTO `sys_log` VALUES ('448', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('449', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4fe501b5  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@34052e5e  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '6', null, null);
INSERT INTO `sys_log` VALUES ('450', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('451', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('452', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('453', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('454', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('455', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('456', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('457', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: bce75bd6-e20d-4b3e-bc0a-f7fcc2d6c710', '1', null, null);
INSERT INTO `sys_log` VALUES ('458', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('459', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('460', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('461', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('462', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('463', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('464', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('465', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('466', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('467', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('468', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('469', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('470', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('471', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('472', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('473', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('474', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('475', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4cd1e627  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@54f6456  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '5', null, null);
INSERT INTO `sys_log` VALUES ('476', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('477', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('478', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4f9e7b63  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@43992988  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '7', null, null);
INSERT INTO `sys_log` VALUES ('479', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('480', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@16e3a0bb  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@36766614  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '5', null, null);
INSERT INTO `sys_log` VALUES ('481', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('482', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('483', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('484', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('485', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('486', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('487', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('488', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.forceLogout', '踢出用户', '  id: da022f39-fc0c-4f42-9c52-42b27128ebee', '1', null, null);
INSERT INTO `sys_log` VALUES ('489', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('490', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('491', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('492', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1046b7d1  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@6f8b9109  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '280', null, null);
INSERT INTO `sys_log` VALUES ('493', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('494', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('495', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23304127  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2200ac49  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '14', null, null);
INSERT INTO `sys_log` VALUES ('496', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('497', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('498', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('499', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('500', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('501', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '1', null, null);
INSERT INTO `sys_log` VALUES ('502', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '22', null, null);
INSERT INTO `sys_log` VALUES ('503', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('504', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('505', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('506', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('507', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('508', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('509', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('510', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('511', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('512', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('513', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('514', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('515', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('516', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('517', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('518', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('519', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('520', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('521', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('522', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('523', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '21', null, null);
INSERT INTO `sys_log` VALUES ('524', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('525', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('526', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('527', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('528', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('529', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('530', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('531', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('532', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('533', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('534', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('535', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('536', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('537', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('538', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('539', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('540', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('541', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('542', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('543', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('544', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('545', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('546', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('547', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('548', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('549', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('550', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('551', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('552', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('553', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('554', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('555', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('556', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('557', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('558', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('559', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('560', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('561', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('562', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('563', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('564', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '17', null, null);
INSERT INTO `sys_log` VALUES ('565', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('566', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('567', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('568', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('569', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('570', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('571', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('572', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('573', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '23', null, null);
INSERT INTO `sys_log` VALUES ('574', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('575', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('576', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '23', null, null);
INSERT INTO `sys_log` VALUES ('577', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('578', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('579', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('580', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('581', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('582', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('583', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('584', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('585', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('586', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('587', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('588', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('589', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('590', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('591', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('592', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('593', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('594', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('595', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('596', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('597', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('598', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('599', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('600', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('601', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('602', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('603', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('604', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('605', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('606', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('607', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('608', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('609', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('610', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('611', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('612', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('613', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('614', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('615', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('616', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('617', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('618', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('619', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '22', null, null);
INSERT INTO `sys_log` VALUES ('620', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('621', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('622', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('623', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('624', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('625', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('626', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('627', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('628', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@ce4d4d5  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@32ec52a  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCardN', '286', null, null);
INSERT INTO `sys_log` VALUES ('629', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('630', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('631', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('632', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '15', null, null);
INSERT INTO `sys_log` VALUES ('633', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('634', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('635', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('636', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('637', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('638', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('639', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('640', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('641', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('642', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('643', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('644', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('645', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('646', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('647', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '19', null, null);
INSERT INTO `sys_log` VALUES ('648', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('649', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('650', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('651', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('652', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('653', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '18', null, null);
INSERT INTO `sys_log` VALUES ('654', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('655', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('656', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('657', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('658', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('659', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '44', null, null);
INSERT INTO `sys_log` VALUES ('660', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('661', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('662', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('663', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('664', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('665', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('666', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('667', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('668', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('669', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('670', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('671', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('672', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('673', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('674', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('675', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  pageData: PageData(page=1, rows=10, data=null, records=[], condition=null)', '32184', null, null);
INSERT INTO `sys_log` VALUES ('676', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('677', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('678', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('679', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6361a455  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@2f4c9901  user: User(account=null, password=null, userName=null, sex=null, age=0, idCardNo=null, birthday=null, mail', '14', null, null);
INSERT INTO `sys_log` VALUES ('680', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2da04100  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@20c23d19  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '67', null, null);
INSERT INTO `sys_log` VALUES ('681', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('682', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('683', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('684', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('685', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('686', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('687', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('688', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('689', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('690', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('691', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('692', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('693', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('694', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('695', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('696', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('697', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('698', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('699', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('700', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('701', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('702', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('703', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('704', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('705', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('706', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('707', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('708', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('709', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('710', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4b1b5f48  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1eafb8f4  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '267', null, null);
INSERT INTO `sys_log` VALUES ('711', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '22', null, null);
INSERT INTO `sys_log` VALUES ('712', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('713', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('714', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '10', null, null);
INSERT INTO `sys_log` VALUES ('715', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('716', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('717', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('718', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('719', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('720', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '24', null, null);
INSERT INTO `sys_log` VALUES ('721', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('722', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('723', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '19', null, null);
INSERT INTO `sys_log` VALUES ('724', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('725', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('726', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('727', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('728', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('729', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '8', null, null);
INSERT INTO `sys_log` VALUES ('730', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('731', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('732', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('733', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('734', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('735', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('736', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@49b7af0e  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@91788b4  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '275', null, null);
INSERT INTO `sys_log` VALUES ('737', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '20', null, null);
INSERT INTO `sys_log` VALUES ('738', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('739', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('740', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1c1d517d  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@28d7a6e8  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '17', null, null);
INSERT INTO `sys_log` VALUES ('741', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('742', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('743', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('744', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '33', null, null);
INSERT INTO `sys_log` VALUES ('745', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('746', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('747', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('748', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('749', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('750', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@60a87fa  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@196a6800  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '13', null, null);
INSERT INTO `sys_log` VALUES ('751', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '14', null, null);
INSERT INTO `sys_log` VALUES ('752', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('753', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '20', null, null);
INSERT INTO `sys_log` VALUES ('754', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('755', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('756', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('757', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('758', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('759', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('760', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('761', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('762', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('763', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '46', null, null);
INSERT INTO `sys_log` VALUES ('764', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('765', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('766', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('767', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('768', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('769', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);
INSERT INTO `sys_log` VALUES ('770', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('771', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('772', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '18', null, null);
INSERT INTO `sys_log` VALUES ('773', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('774', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '1', null, null);
INSERT INTO `sys_log` VALUES ('775', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('776', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('777', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('778', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('779', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('780', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('781', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('782', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('783', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('784', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('785', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('786', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('787', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('788', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('789', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('790', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '5', null, null);
INSERT INTO `sys_log` VALUES ('791', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('792', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('793', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('794', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('795', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('796', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('797', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('798', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('799', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('800', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('801', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('802', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '21', null, null);
INSERT INTO `sys_log` VALUES ('803', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('804', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('805', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '9', null, null);
INSERT INTO `sys_log` VALUES ('806', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('807', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('808', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '11', null, null);
INSERT INTO `sys_log` VALUES ('809', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('810', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('811', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '39', null, null);
INSERT INTO `sys_log` VALUES ('812', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('813', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('814', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '37', null, null);
INSERT INTO `sys_log` VALUES ('815', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('816', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('817', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '29', null, null);
INSERT INTO `sys_log` VALUES ('818', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('819', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('820', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('821', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('822', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('823', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@60b9c168  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@37ec1324  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '280', null, null);
INSERT INTO `sys_log` VALUES ('824', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '38', null, null);
INSERT INTO `sys_log` VALUES ('825', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('826', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '4', null, null);
INSERT INTO `sys_log` VALUES ('827', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SessionController.getOnline', '查看在线用户', '', '33', null, null);
INSERT INTO `sys_log` VALUES ('828', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@785d0c03  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@77ccb54f  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '15', null, null);
INSERT INTO `sys_log` VALUES ('829', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('830', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('831', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('832', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@438a8cbf  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@190e65b  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCard', '10', null, null);
INSERT INTO `sys_log` VALUES ('833', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '6', null, null);
INSERT INTO `sys_log` VALUES ('834', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('835', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('836', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('837', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('838', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('839', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('840', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('841', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('842', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '12', null, null);
INSERT INTO `sys_log` VALUES ('843', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('844', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '45', null, null);
INSERT INTO `sys_log` VALUES ('845', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('846', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('847', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '7', null, null);
INSERT INTO `sys_log` VALUES ('848', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('849', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '0', null, null);
INSERT INTO `sys_log` VALUES ('850', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@474f83ef  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@24fc249a  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '2496', null, null);
INSERT INTO `sys_log` VALUES ('851', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '13', null, null);
INSERT INTO `sys_log` VALUES ('852', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('853', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.PermissionController.index', '查看权限信息', '', '3', null, null);
INSERT INTO `sys_log` VALUES ('854', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysLogController.getList', '查看日志', '  sysLog: SysLog(userName=null, ip=null, location=null, method=null, operation=null, params=null, excuteTime=0)  pageData: PageData(page=1, limit=10)', '13780', null, null);
INSERT INTO `sys_log` VALUES ('855', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d412f39  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@5c1da3d5  user: User(account=amdin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '6', null, null);
INSERT INTO `sys_log` VALUES ('856', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2b1bb725  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@3949c14c  user: User(account=amdin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '5', null, null);
INSERT INTO `sys_log` VALUES ('857', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@69fe5fa3  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@49e39b2c  user: User(account=amdin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '26', null, null);
INSERT INTO `sys_log` VALUES ('858', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.UserLoginController.userLogin', '用户登陆', '  request: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4327abd2  response: org.apache.shiro.web.servlet.ShiroHttpServletResponse@1842ad6c  user: User(account=admin, password=e10adc3949ba59abbe56e057f20f883e, userName=null, sex=null, age=0, idCar', '15', null, null);
INSERT INTO `sys_log` VALUES ('859', null, '127.0.0.1', '内网IP', 'com.platform.basics.controller.SysMenuController.buildMenuUrl', '查询角色所拥有的所有子菜单', '', '16', null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标',
  `pid` int(11) DEFAULT NULL COMMENT '父级菜单',
  `level` int(11) DEFAULT NULL COMMENT '目录等级',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '菜单名称',
  `soft` int(11) NOT NULL COMMENT '排序id',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '菜单url',
  `level_number` int(11) DEFAULT NULL COMMENT '子菜单数量',
  `iframe` bit(1) DEFAULT NULL COMMENT '是否为内嵌页面',
  `sys` tinyint(2) DEFAULT NULL COMMENT '是否为系统级的菜单 1为系统菜单0不是',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'layui-icon-set-sm', '0', '1', '系统管理', '1', null, '6', '\0', '1', '2018-12-03 14:16:52', '2018-12-03 14:16:52');
INSERT INTO `sys_menu` VALUES ('2', 'layui-icon-chart', '0', '1', '系统监控', '2', null, '4', '\0', '1', '2018-12-03 14:16:52', '2018-12-03 14:16:52');
INSERT INTO `sys_menu` VALUES ('3', 'layui-icon-username', '2', '2', '在线用户', '1', '/online/index', '0', '\0', '1', '2019-01-11 14:52:57', '2019-01-11 14:52:57');
INSERT INTO `sys_menu` VALUES ('4', 'layui-icon-set', '2', '2', 'SQL监控', '2', 'druid/index.html', '0', '', '1', '2019-01-11 14:52:57', '2019-01-11 14:52:57');
INSERT INTO `sys_menu` VALUES ('5', 'layui-icon-survey', '2', '2', '系统日志', '3', '', '0', '\0', '1', '2019-01-11 14:52:57', '2019-01-11 14:52:57');
INSERT INTO `sys_menu` VALUES ('6', 'layui-icon-console', '2', '2', 'Redis终端', '4', null, '0', '\0', '1', '2019-01-11 14:52:57', '2019-01-11 14:52:57');
INSERT INTO `sys_menu` VALUES ('7', 'layui-icon-user', '1', '2', '用户管理', '1', null, '0', '\0', '1', '2019-01-11 14:52:57', '2019-01-11 14:52:57');
INSERT INTO `sys_menu` VALUES ('8', 'layui-icon-top', '1', '2', '角色管理', '2', null, '0', '\0', '1', '2019-01-11 16:31:16', '2019-01-11 16:31:16');
INSERT INTO `sys_menu` VALUES ('9', 'layui-icon-password', '1', '2', '权限管理', '3', '/permission/index', '0', '\0', '1', '2019-01-11 16:31:16', '2019-01-11 16:31:16');
INSERT INTO `sys_menu` VALUES ('10', 'layui-icon-template', '1', '2', '菜单管理', '4', null, '0', '\0', '1', '2019-01-11 16:39:03', '2019-01-11 16:39:03');
INSERT INTO `sys_menu` VALUES ('11', 'layui-icon-read', '1', '2', '字典管理', '5', null, '0', '\0', '1', '2019-01-11 16:40:44', '2019-01-11 16:40:44');
INSERT INTO `sys_menu` VALUES ('12', 'layui-icon-file', '1', '2', '接口文档', '6', null, '0', '\0', '1', '2019-01-11 16:41:21', '2019-01-11 16:41:21');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '权限名称',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `pid` int(11) DEFAULT NULL COMMENT '父级菜单',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', 'admin', '超级管理员', '0', '2018-11-28 08:57:53', '2018-11-28 08:57:56');
INSERT INTO `sys_permission` VALUES ('2', 'log:all', '日志管理', '0', '2018-11-28 08:57:53', '2018-11-28 08:57:56');
INSERT INTO `sys_permission` VALUES ('3', 'user:all', '用户管理', '0', '2018-11-28 08:57:53', '2018-11-28 08:57:56');
INSERT INTO `sys_permission` VALUES ('4', 'permission:all', '权限管理', '0', '2018-11-28 08:57:53', '2018-11-28 08:57:56');
INSERT INTO `sys_permission` VALUES ('5', 'role:all', '角色管理', '0', '2018-11-28 08:57:53', '2018-11-28 08:57:56');
INSERT INTO `sys_permission` VALUES ('6', 'role:select', '角色查询', '5', '2019-01-14 09:38:52', '2019-01-14 09:38:52');
INSERT INTO `sys_permission` VALUES ('7', 'role:add', '角色新增', '5', '2019-01-14 09:38:52', '2019-01-14 09:38:52');
INSERT INTO `sys_permission` VALUES ('8', 'role:update', '角色更新', '5', '2019-01-14 09:40:03', '2019-01-14 09:40:03');
INSERT INTO `sys_permission` VALUES ('9', 'role:delete', '角色删除', '5', '2019-01-14 09:40:27', '2019-01-14 09:40:27');
INSERT INTO `sys_permission` VALUES ('10', 'permission:select', '权限查询', '4', '2019-01-16 10:06:17', '2019-01-16 10:06:17');
INSERT INTO `sys_permission` VALUES ('11', 'permission:update', '权限修改', '4', '2019-01-16 10:06:54', '2019-01-16 10:06:54');
INSERT INTO `sys_permission` VALUES ('12', 'permission:delete', '权限删除', '4', '2019-01-16 10:07:35', '2019-01-16 10:07:35');
INSERT INTO `sys_permission` VALUES ('13', 'permission:add', '权限添加', '4', '2019-01-16 10:08:08', '2019-01-16 10:08:10');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '角色编码',
  `role_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '001', 'admin', '系统管理员', '2018-11-28 08:56:12', '2018-11-28 08:56:15');
INSERT INTO `sys_role` VALUES ('2', '002', 'test', '测试用户', '2018-11-28 08:56:12', '2018-11-28 08:56:15');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '记录更变时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1', '1', '2018-12-03 14:31:41', '2018-12-03 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('2', '1', '2', '2018-12-03 14:31:41', '2018-12-03 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('3', '1', '3', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('4', '1', '4', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('5', '1', '5', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('6', '1', '6', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('7', '1', '7', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('8', '1', '8', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('9', '1', '9', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('10', '1', '10', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('11', '1', '11', '2019-01-11 14:31:41', '2019-01-11 14:31:41');
INSERT INTO `sys_role_menu` VALUES ('12', '1', '12', '2019-01-11 14:31:41', '2019-01-11 14:31:41');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更变时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('1', '1', '1', null, null);
INSERT INTO `sys_role_permission` VALUES ('2', '1', '2', null, null);
INSERT INTO `sys_role_permission` VALUES ('3', '1', '3', null, null);
INSERT INTO `sys_role_permission` VALUES ('4', '1', '4', null, null);
INSERT INTO `sys_role_permission` VALUES ('5', '1', '5', null, null);
INSERT INTO `sys_role_permission` VALUES ('6', '2', '1', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `account` varchar(18) NOT NULL COMMENT '用户登陆账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `user_name` varchar(16) DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别 0表示男1表示女',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `idcardno` varchar(19) DEFAULT NULL COMMENT '身份证号',
  `mail` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `address_provincial` varchar(50) DEFAULT NULL COMMENT '省',
  `address_city` varchar(100) DEFAULT NULL COMMENT '市',
  `address_county` varchar(100) DEFAULT NULL COMMENT '区县',
  `detailed_address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `icon` varchar(255) DEFAULT NULL COMMENT '头像',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '系统管理员', null, null, null, null, '602817433@qq.com', null, null, null, null, null, '2018-11-27 10:18:20', '2018-11-27 10:23:43');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1', '2018-11-29 14:21:58', '2018-11-29 14:22:01');
