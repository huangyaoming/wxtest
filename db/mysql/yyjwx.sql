/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : yyjwx

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2015-06-28 16:59:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for portal_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `portal_guestbook`;
CREATE TABLE `portal_guestbook` (
  `id` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of portal_guestbook
-- ----------------------------
INSERT INTO `portal_guestbook` VALUES ('4028c68149803b640149803bc05f0000', 'xd-fjx@qq.com', '2014-11-05 21:53:59', 'fengjx', null, '', 'test content...........');
INSERT INTO `portal_guestbook` VALUES ('4028c681498036fe014980383f770001', 'xd-fjx@qq.com', '2014-11-05 21:50:10', 'fengjx', null, '', 'test content...........');

-- ----------------------------
-- Table structure for wechat_data_dict
-- ----------------------------
DROP TABLE IF EXISTS `wechat_data_dict`;
CREATE TABLE `wechat_data_dict` (
  `id` varchar(32) NOT NULL,
  `dict_desc` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `is_valid` varchar(255) DEFAULT NULL,
  `order_num` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_data_dict
-- ----------------------------
INSERT INTO `wechat_data_dict` VALUES ('1', '微信文本消息', '文本消息', 'text', 'req_type', '2014-11-22 16:05:41', '1', '1', null, '请求消息类型');
INSERT INTO `wechat_data_dict` VALUES ('3', '微信图片消息', '图片消息', 'image', 'req_type', '2014-11-22 16:06:06', '1', '3', null, '请求消息类型');
INSERT INTO `wechat_data_dict` VALUES ('4', '消息请求类型', '语音消息', 'voice', 'req_type', '2014-11-30 22:33:25', '1', '4', null, '请求消息类型');
INSERT INTO `wechat_data_dict` VALUES ('5', '消息请求类型', '视频消息', 'video', 'req_type', '2014-11-30 22:34:04', '1', '5', null, '请求消息类型');
INSERT INTO `wechat_data_dict` VALUES ('6', '消息请求类型', '地理位置消息', 'location', 'req_type', '2014-11-30 22:36:25', '1', '6', null, '请求消息类型');
INSERT INTO `wechat_data_dict` VALUES ('7', '消息请求类型', '链接消息', 'link', 'req_type', '2014-11-30 22:36:43', '1', '7', null, '消息请求类型');
INSERT INTO `wechat_data_dict` VALUES ('8', '消息请求类型', '事件消息', 'event', 'req_type', '2014-11-30 22:34:35', '1', '8', null, '消息请求类型');
INSERT INTO `wechat_data_dict` VALUES ('12', '扩展应用', '本地api接口', 'api', 'app_type', '2015-04-07 07:24:41', '1', '1', null, '插件类型');
INSERT INTO `wechat_data_dict` VALUES ('13', 'web应用，url带入用户授权认证的用户标识', 'Web APP', 'web', 'app_type', '2015-04-07 07:24:46', '1', '2', null, '插件类型');
INSERT INTO `wechat_data_dict` VALUES ('14', '动作响应数据源(素材、接口)', '插件接口', 'api', 'action_type', '2014-11-30 21:01:00', '1', '2', null, '动作响应类型');
INSERT INTO `wechat_data_dict` VALUES ('15', '动作响应数据源(素材、接口)', '素材', 'material', 'action_type', '2014-11-30 19:35:07', '1', '1', null, '动作响应类型');
INSERT INTO `wechat_data_dict` VALUES ('16', '消息回复类型', '文字消息', 'text', 'resp_type', '2014-11-30 22:36:48', '1', '1', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('18', '消息回复类型', '音乐消息', 'music', 'resp_type', '2014-11-30 22:35:27', '1', '3', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('19', '消息回复消息', '图文消息', 'news', 'resp_type', '2014-11-30 22:35:34', '1', '4', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('20', '消息回复类型', '语音消息', 'voice', 'resp_type', '2014-11-30 22:35:40', '1', '5', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('21', '消息回复类型', '图片消息', 'image', 'resp_type', '2014-11-30 22:35:43', '1', '6', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('22', '消息回复类型', '视频消息', 'video', 'resp_type', '2014-11-30 22:35:47', '1', '7', null, '消息回复类型');
INSERT INTO `wechat_data_dict` VALUES ('23', '事件类型', '用户关注', 'subscribe', 'event_type', '2014-11-22 00:13:08', '1', '1', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('25', '事件类型', '二维码扫描（已关注用户）', 'SCAN', 'event_type', '2014-11-22 00:13:18', '1', '3', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('24', '事件类型', '取消关注', 'unsubscribe', 'event_type', '2014-11-22 00:13:12', '1', '2', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('26', '事件类型', '上报地理位置', 'LOCATION', 'event_type', '2014-11-22 00:13:22', '1', '4', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('27', '事件类型', '菜单点击', 'CLICK', 'event_type', '2014-11-22 00:13:28', '1', '5', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('28', '用户点击菜单，跳转URL事件', '菜单链接', 'VIEW', 'event_type', '2014-11-22 16:02:28', '1', '6', null, '事件类型');
INSERT INTO `wechat_data_dict` VALUES ('29', '调用restful接口，与其他系统对接，restful接口直接返回微信规范报文', 'restful远程接口', 'restful', 'app_type', '2015-04-07 07:24:52', '1', '3', null, '插件类型');

-- ----------------------------
-- Table structure for wechat_data_dict_copy
-- ----------------------------
DROP TABLE IF EXISTS `wechat_data_dict_copy`;
CREATE TABLE `wechat_data_dict_copy` (
  `id` varchar(32) NOT NULL,
  `dict_desc` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `in_time` varchar(255) DEFAULT NULL,
  `is_valid` varchar(255) DEFAULT NULL,
  `order_num` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_data_dict_copy
-- ----------------------------
INSERT INTO `wechat_data_dict_copy` VALUES ('1', '消息请求类型', '文本消息', 'text', 'req_type', '2014-2-26 17:47:18', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('3', '消息请求类型', '图片消息', 'image', 'req_type', '2014-2-26 17:50:32', '1', '3', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('4', '消息请求类型', '语音消息', 'voice', 'req_type', '2014-2-26 17:51:41', '1', '4', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('5', '消息请求类型', '视频消息', 'video', 'req_type', '2014-2-26 17:52:15', '1', '5', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('6', '消息请求类型', '地理位置消息', 'location', 'req_type', '2014-2-26 17:53:02', '1', '6', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('7', '消息请求类型', '链接消息', 'link', 'req_type', '2014-2-26 17:53:44', '1', '7', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('8', '消息请求类型', '事件消息', 'event', 'req_type', '2014-2-26 17:54:48', '1', '8', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('12', '扩展应用', '本地api接口', 'api', 'app_type', '2014-3-6 16:49:03', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('13', '扩展应用', 'web类型', 'web', 'app_type', '2014-3-6 16:49:35', '1', '2', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('14', '动作响应数据源(素材、接口)', '应用接口', 'busiapp_api', 'action_type', '2014-3-6 16:53:22', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('15', '动作响应数据源(素材、接口)', '素材', 'material', 'action_type', '2014-3-6 17:01:14', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('16', '消息回复类型', '文字消息', 'text', 'resp_type', '2014-3-20 15:20:59', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('17', '消息回复类型', '接口数据', 'busiapp_api', 'resp_type', '2014-3-20 15:22:04', '1', '2', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('18', '消息回复类型', '音乐消息', 'music', 'resp_type', '2014-3-20 15:28:16', '1', '3', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('19', '消息回复消息', '图文消息', 'news', 'resp_type', '2014-3-20 15:29:20', '1', '4', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('20', '消息回复类型', '语音消息', 'voice', 'resp_type', '2014-3-20 15:29:50', '1', '5', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('21', '消息回复类型', '图片消息', 'image', 'resp_type', '2014-3-20 15:30:32', '1', '6', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('22', '消息回复类型', '视频消息', 'video', 'resp_type', '2014-3-20 15:31:09', '1', '7', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('23', '事件类型', '用户关注', 'subscribe', 'event_type', '2014-3-20 17:17:32', '1', '1', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('25', '事件类型', '二维码扫描（已关注用户）', 'SCAN', 'event_type', '2014-3-20 17:18:55', '1', '3', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('24', '事件类型', '取消关注', 'unsubscribe', 'event_type', '2014-3-20 17:18:17', '1', '2', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('26', '事件类型', '上报地理位置', 'LOCATION', 'event_type', '2014-3-20 17:19:25', '1', '4', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('27', '事件类型', '菜单点击', 'CLICK', 'event_type', '2014-3-20 17:20:16', '1', '5', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('28', '事件类型', '菜单链接', 'VIEW', 'event_type', '2014-3-20 17:21:11', '1', '6', null, null);
INSERT INTO `wechat_data_dict_copy` VALUES ('29', '扩展应用', 'restful远程接口', 'restful', 'app_type', '2014-11-08 17:21:11', '1', '3', null, null);

-- ----------------------------
-- Table structure for wechat_ext_app
-- ----------------------------
DROP TABLE IF EXISTS `wechat_ext_app`;
CREATE TABLE `wechat_ext_app` (
  `id` varchar(32) NOT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `app_url` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `bean_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `restful_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_valid` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_ext_app
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_ext_app_support_type
-- ----------------------------
DROP TABLE IF EXISTS `wechat_ext_app_support_type`;
CREATE TABLE `wechat_ext_app_support_type` (
  `id` varchar(32) NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `msg_type` varchar(255) DEFAULT NULL,
  `ext_app_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK289AE0DFB93DCFCA` (`ext_app_id`),
  KEY `FK289AE0DF18D5C203` (`ext_app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_ext_app_support_type
-- ----------------------------

-- ----------------------------
-- Table structure for wechat_kefu_account
-- ----------------------------
DROP TABLE IF EXISTS `wechat_kefu_account`;
CREATE TABLE `wechat_kefu_account` (
  `id` varchar(32) NOT NULL,
  `kefu_id` varchar(255) DEFAULT NULL,
  `kefu_account` varchar(255) DEFAULT NULL,
  `kf_nick` varchar(255) DEFAULT NULL,
  `kf_headimgurl` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scene_value` (`kefu_account`),
  KEY `FK62F47EC7C382B81` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_kefu_account
-- ----------------------------
INSERT INTO `wechat_kefu_account` VALUES ('8a22da1f4ca10b87014ca10bf3ee0000', '测试1', '1', 'key_8a22da1f4ca10b87014ca10bf3ee0000', null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-04-10 09:57:37', '2015-04-10 14:35:25');
INSERT INTO `wechat_kefu_account` VALUES ('8a8184114d89e07f014d89ec78660000', '测试', '2', 'key_8a8184114d89e07f014d89ec78660000', null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 15:14:45', '2015-05-25 15:14:45');
INSERT INTO `wechat_kefu_account` VALUES ('8a8184114d8a35a7014d8a360df20000', '7', '7', 'key_8a8184114d8a35a7014d8a360df20000', null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:35:07', '2015-05-25 16:35:21');
INSERT INTO `wechat_kefu_account` VALUES ('8a8184114d8a35a7014d8a3870ee0003', '8', '8', null, null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:37:44', '2015-05-25 16:37:44');
INSERT INTO `wechat_kefu_account` VALUES ('8a8184114d8a35a7014d8a39c0d20007', '9', '9', 'key_8a8184114d8a35a7014d8a39c0d20007', null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:39:10', '2015-05-25 16:39:10');

-- ----------------------------
-- Table structure for wechat_material
-- ----------------------------
DROP TABLE IF EXISTS `wechat_material`;
CREATE TABLE `wechat_material` (
  `id` varchar(32) NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `msg_type` varchar(255) DEFAULT NULL,
  `xml_data` longtext NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK717D3620D3E19CF1` (`user_id`),
  KEY `FK717D3620EAEA3B74` (`user_id`),
  KEY `FK717D362078D1D69A` (`user_id`),
  KEY `FK717D3620C382B81` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_material
-- ----------------------------
INSERT INTO `wechat_material` VALUES ('4028c681492dde1601492df5a42a0000', '2014-10-20 22:28:33', 'text', '<xml>\n  <Content><![CDATA[1111111]]></Content>\n  <ToUserName><![CDATA[]]></ToUserName>\n  <FromUserName><![CDATA[]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681492dd51601492dd6fdd90000');
INSERT INTO `wechat_material` VALUES ('4028c681494818e2014948aa8f460000', '2014-10-26 02:56:17', 'text', '<xml>\n  <Content><![CDATA[222]]></Content>\n  <ToUserName><![CDATA[]]></ToUserName>\n  <FromUserName><![CDATA[]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681492dd51601492dd6fdd90000');
INSERT INTO `wechat_material` VALUES ('4028c681494b994701494cc0e8880002', '2014-10-26 21:59:11', 'text', '<xml>\n  <Content><![CDATA[啊啊啊啊啊]]></Content>\n  <ToUserName><![CDATA[]]></ToUserName>\n  <FromUserName><![CDATA[]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028818c49614e8f0149614f1de20000', '2014-10-30 21:46:55', 'text', '<xml>\n  <Content><![CDATA[111111111]]></Content>\n  <ToUserName><![CDATA[]]></ToUserName>\n  <FromUserName><![CDATA[]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028818c496159e301496162853e0002', '2014-10-30 22:08:06', 'text', '<xml>\n  <Content><![CDATA[2222222222222222]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c681496c4a9f01496c4c4a5e0000', '2014-11-02 00:59:39', 'news', '<xml><ToUserName><![CDATA[]]></ToUserName><FromUserName><![CDATA[]]></FromUserName><CreateTime><![CDATA[]]></CreateTime><MsgType><![CDATA[news]]></MsgType><ArticleCount>1</ArticleCount><Articles><item><Title><![CDATA[1111111111111111111111111]]></Title><Description><![CDATA[1111111111111111111111111111111111111111111111111111111111111111111111]]></Description><PicUrl><![CDATA[http://localhost/wechat/upload/images/material/20141102/15471414861124482.jpg]]></PicUrl><Url><![CDATA[http://www.baidu.com]]></Url></item></Articles></xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c681498a475c01498a49b1670000', '2014-11-07 20:45:25', 'text', '<xml>\n  <Content><![CDATA[4444444444]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c681498ae26201498b0b1c970001', '2014-11-08 00:16:41', 'text', '<xml>\n  <Content><![CDATA[5555555555]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149901719920000', '2014-11-08 23:47:53', 'text', '<xml>\n  <Content><![CDATA[3333333333333]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149901856940002', '2014-11-08 23:49:14', 'text', '<xml>\n  <Content><![CDATA[1111111111111]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c01499018668d0004', '2014-11-08 23:49:18', 'text', '<xml>\n  <Content><![CDATA[222222222222]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149901876830006', '2014-11-08 23:49:22', 'text', '<xml>\n  <Content><![CDATA[444444444444]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149901890e60008', '2014-11-08 23:49:29', 'text', '<xml>\n  <Content><![CDATA[5555555555]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c01499018ffde000a', '2014-11-08 23:49:57', 'text', '<xml>\n  <Content><![CDATA[111111111111111]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149901968bd000c', '2014-11-08 23:50:24', 'text', '<xml>\n  <Content><![CDATA[22222222222222]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c01499020e8d8000e', '2014-11-08 23:58:36', 'text', '<xml>\n  <Content><![CDATA[111111111111111122222222222223333]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149902299080010', '2014-11-09 00:00:26', 'text', '<xml>\n  <Content><![CDATA[2222222222222244444]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c01499028f57e0012', '2014-11-09 00:07:23', 'text', '<xml>\n  <Content><![CDATA[333344]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c014990291cb10014', '2014-11-09 00:07:33', 'text', '<xml>\n  <Content><![CDATA[333344fff]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c014990299ade0016', '2014-11-09 00:08:06', 'text', '<xml>\n  <Content><![CDATA[333344fff111]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149902d5b2d0018', '2014-11-09 00:12:11', 'text', '<xml>\n  <Content><![CDATA[333344fff111ghh]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149902fd4c9001a', '2014-11-09 00:14:54', 'text', '<xml>\n  <Content><![CDATA[333344fff111ghhfffff]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c014990340008001d', '2014-11-09 00:19:27', 'text', '<xml>\n  <Content><![CDATA[啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c014990360e9b0022', '2014-11-09 00:21:42', 'text', '<xml>\n  <Content><![CDATA[感谢你的关注！]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149903657590024', '2014-11-09 00:22:00', 'text', '<xml>\n  <Content><![CDATA[暂时无法匹配你发生的消息！]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814990122c0149903a2f970028', '2014-11-09 00:26:12', 'text', '<xml>\n  <Content><![CDATA[系统暂时无法匹配你发送的消息]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c68149b3614b0149b4002a130000', '2014-11-15 23:09:09', 'text', '<xml>\n  <Content><![CDATA[aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c68149c90bf60149c90df7e00002', '2014-11-20 01:16:16', 'text', '<xml>\n  <Content><![CDATA[ffffffffffff]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c68149c90bf60149c90e44460004', '2014-11-20 01:16:35', 'text', '<xml>\n  <Content><![CDATA[感谢你的关注！！！]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c68149c90bf60149c90e6ccf0006', '2014-11-20 01:16:46', 'text', '<xml>\n  <Content><![CDATA[系统暂时无法匹配你发送的消息！~]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814a00dad2014a0104bbf90001', '2014-11-30 22:04:55', 'text', '<xml>\n  <Content><![CDATA[aaaaaaaaaaaa]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('4028c6814a00dad2014a011752a0000b', '2014-11-30 22:25:13', 'text', '<xml>\n  <Content><![CDATA[啊啊啊啊啊啊啊啊啊啊啊啊]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4c90c2e8014c90c69d8b0002', '2015-04-07 06:07:57', 'text', '<xml>\n  <Content><![CDATA[亲爱的汤粉，小汤终于等到您啦！对营养健康有疑惑？将您的问题发给小汤，将有专业的营养师为您解答哦！]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4c90c2e8014c90c6dcf60004', '2015-04-07 06:08:14', 'text', '<xml>\n  <Content><![CDATA[亲爱的汤粉，您好！很抱歉~由于目前咨询的汤粉比较多，小汤可能无法及时回复您，请耐心等候哦~]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4c90c2e8014c90ca24270006', '2015-04-07 06:11:48', 'news', '<xml><ToUserName><![CDATA[]]></ToUserName><FromUserName><![CDATA[]]></FromUserName><CreateTime><![CDATA[]]></CreateTime><MsgType><![CDATA[news]]></MsgType><ArticleCount>1</ArticleCount><Articles><item><Title><![CDATA[下一任“汤女（男）郎”，就是你！]]></Title><Description><![CDATA[  ]]></Description><PicUrl><![CDATA[http://218.244.146.42/yyjwx/upload/images/material/20150407/49851428358178418.png]]></PicUrl><Url><![CDATA[http://218.244.146.42/yyjwx/upload/html/material/eb9f3248dca911e4bcd400163e02153a.html]]></Url></item></Articles></xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4c90c2e8014c90ce06430010', '2015-04-07 06:16:03', 'text', '<xml>\n  <Content><![CDATA[Hi，有疑问找小汤就对了，试试问我：“感冒了怎么办？ 小汤在线时间：9:00-17:30，其他时间请留言或者预约营养师吧。 详情请致电4000-916-916]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4c90da35014c90e7a221001f', '2015-04-07 06:44:01', 'text', '<xml>\n  <Content><![CDATA[你好]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a22da1f4d41661c014d6a4170350004', '2015-05-19 11:39:43', 'text', '<xml>\n  <Content><![CDATA[哈哈]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a8184114d89e07f014d89ec79100001', '2015-05-25 15:14:45', 'text', '<xml>\n  <Content><![CDATA[222]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a8184114d8a05f7014d8a073fe10000', '2015-05-25 15:44:00', 'text', '<xml>\n  <Content><![CDATA[dfdsfsd]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a8184114d8a2075014d8a2697db0003', '2015-05-25 16:18:14', 'text', '<xml>\n  <Content><![CDATA[33]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a8184114d8a35a7014d8a362d490001', '2015-05-25 16:35:15', 'text', '<xml>\n  <Content><![CDATA[8]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_material` VALUES ('8a8184114d8a35a7014d8a39c0d50008', '2015-05-25 16:39:10', 'text', '<xml>\n  <Content><![CDATA[9]]></Content>\n  <ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\n  <FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\n  <CreateTime><![CDATA[0]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', '8a22da1f4c90c2e8014c90c3d6d00000');

-- ----------------------------
-- Table structure for wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `id` varchar(32) NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `menu_key` varchar(255) DEFAULT NULL,
  `menu_level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_key` (`menu_key`),
  KEY `FKF7D64AD8D3E19CF1` (`user_id`),
  KEY `FKF7D64AD8CF82234E` (`parent_id`),
  KEY `FKF7D64AD8EAEA3B74` (`user_id`),
  KEY `FKF7D64AD878D1D69A` (`user_id`),
  KEY `FKF7D64AD86AC1EE68` (`parent_id`),
  KEY `FKF7D64AD8C382B81` (`user_id`),
  KEY `FKF7D64AD87C341C21` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------
INSERT INTO `wechat_menu` VALUES ('4028c681494818e2014948cd62bb0002', '2014-10-26 03:34:20', null, '0', 'aaaa', null, '2014-10-26 03:34:20', null, null, '4028c681492dd51601492dd6fdd90000');
INSERT INTO `wechat_menu` VALUES ('4028c681497aeaae01497b1476760004', '2014-11-04 21:52:58', null, '0', 'url', null, '2014-11-04 21:52:58', null, null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('4028c681497aeaae01497b15b0e00005', '2014-11-04 21:54:19', null, '0', 'csdn', 'view', '2014-11-04 21:54:50', 'http://www.csdn.net/', '4028c681497aeaae01497b1476760004', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('4028c68149c90bf60149c90d3fba0001', '2014-11-20 01:15:29', null, '0', '36kr', 'view', '2014-11-20 01:15:34', 'http://www.36kr.com/', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('4028c6814a23c307014a23d426bb0000', '2014-12-07 16:18:33', null, '0', 'fjx', 'view', '2014-12-07 16:18:57', 'http://ttwx.sinaapp.com/', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('4028c681497aeaae01497b15d31f0006', '2014-11-04 21:54:28', null, '0', '51cto', 'view', '2014-11-04 21:55:00', 'http://down.51cto.com/', '4028c681497aeaae01497b1476760004', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('4028c681497aeaae01497b15f8910007', '2014-11-04 21:54:37', null, '0', 'oschina', 'view', '2014-11-04 21:55:11', 'http://www.oschina.net/', '4028c681497aeaae01497b1476760004', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cac4480007', '2015-04-07 06:12:29', null, '1', '最新活动', null, '2015-04-07 06:12:29', null, null, '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90caffca0008', '2015-04-07 06:12:45', null, '1', '健康必备', null, '2015-04-07 06:12:45', null, null, '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cb2d270009', '2015-04-07 06:12:56', 'key_8a22da1f4c90c2e8014c90cb2d270009', '1', '问营养师', 'click', '2015-04-07 06:16:03', null, null, '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cb6ea5000a', '2015-04-07 06:13:13', 'key_8a22da1f4c90c2e8014c90cb6ea5000a', '2', '活动中奖公告', 'click', '2015-04-07 06:13:55', null, '8a22da1f4c90c2e8014c90cac4480007', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cbb4cd000b', '2015-04-07 06:13:31', null, '2', '透明工厂免费游', 'view', '2015-04-07 06:14:19', 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx2de2a30fc50dc9e5&redirect_uri=http%3a%2f%2fweixin.by-health.com%2fyyj%2foauth2.ashx&response_type=code&scope=snsapi_base&state=factory#wechat_redirect', '8a22da1f4c90c2e8014c90cac4480007', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90ccb0c3000d', '2015-04-07 06:14:35', null, '2', '健康测试', 'view', '2015-04-07 06:14:52', 'http://open.by-health.com.cn/HealthTest/Testing.html', '8a22da1f4c90c2e8014c90caffca0008', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cd2037000e', '2015-04-07 06:15:04', null, '2', '常用工具', 'view', '2015-04-07 06:15:20', 'http://open.by-health.com.cn/product/', '8a22da1f4c90c2e8014c90caffca0008', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_menu` VALUES ('8a22da1f4c90c2e8014c90cd9b2d000f', '2015-04-07 06:15:35', null, '2', '营养社区', 'view', '2015-04-07 06:15:48', 'http://m.wsq.qq.com/182463324', '8a22da1f4c90c2e8014c90caffca0008', '8a22da1f4c90c2e8014c90c3d6d00000');

-- ----------------------------
-- Table structure for wechat_msg_template
-- ----------------------------
DROP TABLE IF EXISTS `wechat_msg_template`;
CREATE TABLE `wechat_msg_template` (
  `id` varchar(32) NOT NULL,
  `description` longtext,
  `in_time` datetime DEFAULT NULL,
  `msg_content` longtext,
  `msg_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_msg_template
-- ----------------------------
INSERT INTO `wechat_msg_template` VALUES ('1', '接口验证成功', '2014-11-08 00:31:28', '<xml>\r\n<ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\r\n<FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\r\n<CreateTime>{#CreateTime#}</CreateTime>\r\n<MsgType><![CDATA[text]]></MsgType>\r\n<Content><![CDATA[验证成功，您的公众账号已成功对接。]]></Content>\r\n</xml>', 'api_valid_success');
INSERT INTO `wechat_msg_template` VALUES ('2', '接口验证失败', '2014-11-08 00:47:47', '<xml>\r\n<ToUserName><![CDATA[{#ToUserName#}]]></ToUserName>\r\n<FromUserName><![CDATA[{#FromUserName#}]]></FromUserName>\r\n<CreateTime>{#CreateTime#}</CreateTime>\r\n<MsgType><![CDATA[text]]></MsgType>\r\n<Content><![CDATA[发送的消息无效，接口未激活！]]></Content>\r\n</xml>', 'api_valid_fail');

-- ----------------------------
-- Table structure for wechat_public_account
-- ----------------------------
DROP TABLE IF EXISTS `wechat_public_account`;
CREATE TABLE `wechat_public_account` (
  `id` varchar(32) NOT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `ticket` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `valid_code` varchar(255) DEFAULT NULL,
  `valid_state` varchar(255) DEFAULT NULL,
  `sys_user_id` varchar(32) DEFAULT NULL,
  `encodingAESKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket` (`ticket`),
  KEY `FK255DDC9054A1E57F` (`sys_user_id`),
  KEY `FK255DDC906BAA8402` (`sys_user_id`),
  KEY `FK255DDC90F9921F28` (`sys_user_id`),
  KEY `FK255DDC908CF8740F` (`sys_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_public_account
-- ----------------------------
INSERT INTO `wechat_public_account` VALUES ('4028818c4961519d0149615397f00000', null, 'wx5afd9d53f7755357', '533d8a6047faf43fbc435246577d9c11', '2014-10-30 21:51:48', null, '780a0f7e7de711e498ac6036dd68230b', '78041c0d7de711e498ac6036dd68230b', null, 'http://localhost:8080/yyjwx/wechat/api?ticket=484CC8CCD1ADCBC9C971310E4195C99FCD90832DABE40C06D9920962A9CC23C2ACA3D33315EE60774521598134478BDD', null, '52731', '0', '4028c681494b994701494b99aba50000', null);
INSERT INTO `wechat_public_account` VALUES ('8a22da1f4c90c2e8014c90c4bbfc0001', 'gh_9e467d273ca4', 'wx2de2a30fc50dc9e5', '50195ebbc7af2c83fa4a6dc7d872cdcd', '2015-04-07 06:05:54', null, '32f247a7dca911e4bcd400163e02153a', '32f247a6dca911e4bcd400163e02153a', null, 'http://120.25.126.242/yyjwx/wechat/api?ticket=DFEF57F795AD414A307EA483728D963633812A1FB30800B6E7D2664B697021D9ACA3D33315EE60774521598134478BDD', null, '29094', '2', '8a22da1f4c90c2e8014c90c3d6d00000', null);

-- ----------------------------
-- Table structure for wechat_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `wechat_qrcode`;
CREATE TABLE `wechat_qrcode` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scene_value` varchar(255) DEFAULT NULL,
  `scene_action` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `kefu_account` varchar(255) DEFAULT NULL,
  `kefu_id` varchar(255) DEFAULT NULL,
  `kf_headimgurl` varchar(255) DEFAULT NULL,
  `kf_nick` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scene_value` (`scene_value`),
  KEY `FK62F47EC7C382B81` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_qrcode
-- ----------------------------
INSERT INTO `wechat_qrcode` VALUES ('8a22da1f4ca10b87014ca10bf3ee0000', '测试1', '1', 'key_8a22da1f4ca10b87014ca10bf3ee0000', '8a22da1f4c90c2e8014c90c3d6d00000', '2015-04-10 09:57:37', '2015-04-10 14:35:25', null, null, null, null);
INSERT INTO `wechat_qrcode` VALUES ('8a8184114d89e07f014d89ec78660000', '测试', '2', 'key_8a8184114d89e07f014d89ec78660000', '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 15:14:45', '2015-05-25 15:14:45', null, null, null, null);
INSERT INTO `wechat_qrcode` VALUES ('8a8184114d8a35a7014d8a360df20000', '7', '7', 'key_8a8184114d8a35a7014d8a360df20000', '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:35:07', '2015-05-25 16:35:21', null, null, null, null);
INSERT INTO `wechat_qrcode` VALUES ('8a8184114d8a35a7014d8a3870ee0003', '8', '8', null, '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:37:44', '2015-05-25 16:37:44', null, null, null, null);
INSERT INTO `wechat_qrcode` VALUES ('8a8184114d8a35a7014d8a39c0d20007', '9', '9', 'key_8a8184114d8a35a7014d8a39c0d20007', '8a22da1f4c90c2e8014c90c3d6d00000', '2015-05-25 16:39:10', '2015-05-25 16:39:10', null, null, null, null);

-- ----------------------------
-- Table structure for wechat_req_msg_log
-- ----------------------------
DROP TABLE IF EXISTS `wechat_req_msg_log`;
CREATE TABLE `wechat_req_msg_log` (
  `id` varchar(32) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `from_user_name` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `msg_id` bigint(20) DEFAULT NULL,
  `req_type` varchar(255) DEFAULT NULL,
  `req_xml` longtext,
  `resp_time` datetime DEFAULT NULL,
  `resp_xml` longtext,
  `to_user_name` varchar(255) DEFAULT NULL,
  `public_account_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7068134C9F275FAE` (`public_account_id`),
  KEY `FK7068134C46F171D4` (`public_account_id`),
  KEY `FK7068134C27B4A43B` (`public_account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_req_msg_log
-- ----------------------------
INSERT INTO `wechat_req_msg_log` VALUES ('8a8184114d8a93f8014d8a961fbb0006', '2015-05-25 18:20:03', 'subscribe', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-05-25 18:20:03', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1432549203</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[subscribe]]></Event>\n<EventKey><![CDATA[qrscene_8]]></EventKey>\n<Ticket><![CDATA[gQH37zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2cwakc3cVRsUFFwRWdKbFJrMkJnAAIERd9iVQMEAAAAAA==]]></Ticket>\n</xml>', '2015-05-25 18:20:04', '<xml>\n  <Content><![CDATA[亲爱的汤粉，小汤终于等到您啦！对营养健康有疑惑？将您的问题发给小汤，将有专业的营养师为您解答哦！]]></Content>\n  <ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\n  <FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\n  <CreateTime><![CDATA[1432549204163]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('8a8184114d8a93f8014d8a9659920008', '2015-05-25 18:20:18', 'SCAN', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-05-25 18:20:18', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1432549218</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[SCAN]]></Event>\n<EventKey><![CDATA[8]]></EventKey>\n<Ticket><![CDATA[gQH37zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2cwakc3cVRsUFFwRWdKbFJrMkJnAAIERd9iVQMEAAAAAA==]]></Ticket>\n</xml>', '2015-05-25 18:20:18', '', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('8a8184114d8a93f8014d8a9677a20009', '2015-05-25 18:20:26', 'SCAN', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-05-25 18:20:26', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1432549226</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[SCAN]]></Event>\n<EventKey><![CDATA[9]]></EventKey>\n<Ticket><![CDATA[gQHI7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL0pranlfeVBsQ1Fwd3R6eEVwMkJnAAIEkt9iVQMEAAAAAA==]]></Ticket>\n</xml>', '2015-05-25 18:20:26', '<xml>\n  <Content><![CDATA[9]]></Content>\n  <ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\n  <FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\n  <CreateTime><![CDATA[1432549226422]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('8a8184114d8a93f8014d8a96a335000a', '2015-05-25 18:20:37', 'SCAN', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-05-25 18:20:37', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1432549237</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[SCAN]]></Event>\n<EventKey><![CDATA[1]]></EventKey>\n<Ticket><![CDATA[gQGq7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2NVaWdBcTNsb3dyYWwydEY5V0JnAAIEFi4nVQMEAAAAAA==]]></Ticket>\n</xml>', '2015-05-25 18:20:37', '<xml><ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName><FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName><CreateTime><![CDATA[1432549237572]]></CreateTime><MsgType><![CDATA[news]]></MsgType><ArticleCount>1</ArticleCount><Articles><item><Title><![CDATA[下一任“汤女（男）郎”，就是你！]]></Title><Description><![CDATA[  ]]></Description><PicUrl><![CDATA[http://218.244.146.42/yyjwx/upload/images/material/20150407/49851428358178418.png]]></PicUrl><Url><![CDATA[http://218.244.146.42/yyjwx/upload/html/material/eb9f3248dca911e4bcd400163e02153a.html]]></Url></item></Articles></xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394be3510000', '2015-06-28 16:32:30', 'CLICK', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:32:31', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480350</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[CLICK]]></Event>\n<EventKey><![CDATA[key_8a22da1f4c90c2e8014c90cb6ea5000a]]></EventKey>\n</xml>', '2015-06-28 16:32:31', '', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394c15930001', '2015-06-28 16:32:44', null, 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:32:44', '6165341217638108126', 'text', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480364</CreateTime>\n<MsgType><![CDATA[text]]></MsgType>\n<Content><![CDATA[测试]]></Content>\n<MsgId>6165341217638108126</MsgId>\n</xml>', '2015-06-28 16:32:44', '<xml>\r\n<ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\r\n<FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\r\n<CreateTime><![CDATA[1435480364535]]></CreateTime>\r\n<MsgType><![CDATA[text]]></MsgType>\r\n<Content><![CDATA[发送的消息无效，接口未激活！]]></Content>\r\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394c507f0002', '2015-06-28 16:32:59', 'CLICK', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:32:59', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480379</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[CLICK]]></Event>\n<EventKey><![CDATA[key_8a22da1f4c90c2e8014c90cb2d270009]]></EventKey>\n</xml>', '2015-06-28 16:32:59', '', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394cdcea0003', '2015-06-28 16:33:35', 'CLICK', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:33:35', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480415</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[CLICK]]></Event>\n<EventKey><![CDATA[key_8a22da1f4c90c2e8014c90cb2d270009]]></EventKey>\n</xml>', '2015-06-28 16:33:35', '<xml>\n  <Content><![CDATA[Hi，有疑问找小汤就对了，试试问我：“感冒了怎么办？ 小汤在线时间：9:00-17:30，其他时间请留言或者预约营养师吧。 详情请致电4000-916-916]]></Content>\n  <ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\n  <FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\n  <CreateTime><![CDATA[1435480415626]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394cef190004', '2015-06-28 16:33:40', 'CLICK', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:33:40', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480420</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[CLICK]]></Event>\n<EventKey><![CDATA[key_8a22da1f4c90c2e8014c90cb2d270009]]></EventKey>\n</xml>', '2015-06-28 16:33:40', '<xml>\n  <Content><![CDATA[Hi，有疑问找小汤就对了，试试问我：“感冒了怎么办？ 小汤在线时间：9:00-17:30，其他时间请留言或者预约营养师吧。 详情请致电4000-916-916]]></Content>\n  <ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\n  <FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\n  <CreateTime><![CDATA[1435480420136]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394cfd770005', '2015-06-28 16:33:43', 'CLICK', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:33:43', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480423</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[CLICK]]></Event>\n<EventKey><![CDATA[key_8a22da1f4c90c2e8014c90cb6ea5000a]]></EventKey>\n</xml>', '2015-06-28 16:33:43', '<xml><ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName><FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName><CreateTime><![CDATA[1435480423822]]></CreateTime><MsgType><![CDATA[news]]></MsgType><ArticleCount>1</ArticleCount><Articles><item><Title><![CDATA[下一任“汤女（男）郎”，就是你！]]></Title><Description><![CDATA[  ]]></Description><PicUrl><![CDATA[http://218.244.146.42/yyjwx/upload/images/material/20150407/49851428358178418.png]]></PicUrl><Url><![CDATA[http://218.244.146.42/yyjwx/upload/html/material/eb9f3248dca911e4bcd400163e02153a.html]]></Url></item></Articles></xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e394d0b050006', '2015-06-28 16:33:47', 'VIEW', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:33:47', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480427</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[VIEW]]></Event>\n<EventKey><![CDATA[https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx2de2a30fc50dc9e5&redirect_uri=http%3a%2f%2fweixin.by-health.com%2fyyj%2foauth2.ashx&response_type=code&scope=snsapi_base&state=factory#wechat_redirect]]></EventKey>\n</xml>', '2015-06-28 16:33:47', '', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e39505d520007', '2015-06-28 16:37:24', null, 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:37:24', '6165342420228951208', 'text', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435480644</CreateTime>\n<MsgType><![CDATA[text]]></MsgType>\n<Content><![CDATA[Test]]></Content>\n<MsgId>6165342420228951208</MsgId>\n</xml>', '2015-06-28 16:37:24', '<xml>\n  <Content><![CDATA[哈哈]]></Content>\n  <ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName>\n  <FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName>\n  <CreateTime><![CDATA[1435480644989]]></CreateTime>\n  <MsgType><![CDATA[text]]></MsgType>\n  <FuncFlag><![CDATA[0]]></FuncFlag>\n</xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');
INSERT INTO `wechat_req_msg_log` VALUES ('4028b8814e394347014e3955e9490008', '2015-06-28 16:43:28', 'SCAN', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '2015-06-28 16:43:28', '0', 'event', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xml><ToUserName><![CDATA[gh_9e467d273ca4]]></ToUserName>\n<FromUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></FromUserName>\n<CreateTime>1435481008</CreateTime>\n<MsgType><![CDATA[event]]></MsgType>\n<Event><![CDATA[SCAN]]></Event>\n<EventKey><![CDATA[1]]></EventKey>\n<Ticket><![CDATA[gQGq7zoAAAAAAAAAASxodHRwOi8vd2VpeGluLnFxLmNvbS9xL2NVaWdBcTNsb3dyYWwydEY5V0JnAAIEFi4nVQMEAAAAAA==]]></Ticket>\n</xml>', '2015-06-28 16:43:28', '<xml><ToUserName><![CDATA[opH6Ns8Be4jv6RTzOIVukoteiVnc]]></ToUserName><FromUserName><![CDATA[gh_9e467d273ca4]]></FromUserName><CreateTime><![CDATA[1435481008495]]></CreateTime><MsgType><![CDATA[news]]></MsgType><ArticleCount>1</ArticleCount><Articles><item><Title><![CDATA[下一任“汤女（男）郎”，就是你！]]></Title><Description><![CDATA[  ]]></Description><PicUrl><![CDATA[http://218.244.146.42/yyjwx/upload/images/material/20150407/49851428358178418.png]]></PicUrl><Url><![CDATA[http://218.244.146.42/yyjwx/upload/html/material/eb9f3248dca911e4bcd400163e02153a.html]]></Url></item></Articles></xml>', 'gh_9e467d273ca4', '8a22da1f4c90c2e8014c90c4bbfc0001');

-- ----------------------------
-- Table structure for wechat_resp_msg_action
-- ----------------------------
DROP TABLE IF EXISTS `wechat_resp_msg_action`;
CREATE TABLE `wechat_resp_msg_action` (
  `id` varchar(32) NOT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `ext_type` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `key_word` varchar(255) DEFAULT NULL,
  `req_type` varchar(255) DEFAULT NULL,
  `app_id` varchar(32) DEFAULT NULL,
  `material_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_word` (`key_word`,`user_id`),
  KEY `FKF894DD6AD3E19CF1` (`user_id`),
  KEY `FKF894DD6A59F26BD2` (`app_id`),
  KEY `FKF894DD6AD7A67133` (`material_id`),
  KEY `FKF894DD6AEAEA3B74` (`user_id`),
  KEY `FKF894DD6A78D1D69A` (`user_id`),
  KEY `FKF894DD6A24B7D3EC` (`app_id`),
  KEY `FKF894DD6A6B23ACD` (`material_id`),
  KEY `FKF894DD6AC382B81` (`user_id`),
  KEY `FKF894DD6A844FC625` (`app_id`),
  KEY `FKF894DD6AE01682C6` (`material_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_resp_msg_action
-- ----------------------------
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c681492dde1601492df5a44e0001', 'material', '', '', '2014-10-20 22:28:33', '1', 'text', null, '4028c681492dde1601492df5a42a0000', '4028c681492dd51601492dd6fdd90000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c681494818e2014948aa8f630001', 'material', '', '', '2014-10-26 02:56:17', '11', 'text', null, '4028c681494818e2014948aa8f460000', '4028c681492dd51601492dd6fdd90000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c6814a00dad2014a011c2e91000f', 'api', '', 'wechat_default_msg', '2014-11-30 22:30:31', null, '', '4028c6814a00dad2014a011b6cd5000d', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c6814990122c01499022990f0011', 'material', '', '', '2014-11-09 00:00:26', '2', 'text', null, '4028c6814990122c0149902299080010', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c68149b3614b0149b4002a250001', 'material', '', '', '2014-11-15 23:09:09', 'aaaa', 'text', null, '4028c68149b3614b0149b4002a130000', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c681497aeaae01497b0812970000', 'api', 'CLICK', '', '2014-11-04 21:39:26', 'key_4028c681495273930149528ecd500000', 'event', '1', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c6814990122c0149902fd4d1001b', 'material', '', '', '2014-11-09 00:14:54', '3', 'text', null, '4028c6814990122c0149902fd4c9001a', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c68149c90bf60149c90e444f0005', 'material', 'subscribe', '', '2014-11-20 01:16:35', null, 'event', null, '4028c68149c90bf60149c90e44460004', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c68149c90bf60149c90df7f10003', 'material', '', '', '2014-11-20 01:16:16', 'ff', 'text', null, '4028c68149c90bf60149c90df7e00002', '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c6814a00dad2014a011d51ae0010', 'api', '', '', '2014-11-30 22:31:46', 'b', 'text', '4028c6814a00dad2014a010597060004', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('4028c6814a00dad2014a0104e6030003', 'api', '', '', '2014-11-30 22:05:05', null, 'location', '4028c68149ffd2a60149ffe491ab0000', null, '4028c681494b994701494b99aba50000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4c90c2e8014c90c69d8e0003', 'material', 'subscribe', '', '2015-04-07 06:07:57', null, 'event', null, '8a22da1f4c90c2e8014c90c69d8b0002', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4c90c2e8014c90c6dcf90005', 'material', '', 'wechat_default_msg', '2015-04-07 06:08:14', null, '', null, '8a22da1f4c90c2e8014c90c6dcf60004', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4c90c2e8014c90cc117f000c', 'material', 'CLICK', '', '2015-04-07 06:13:55', 'key_8a22da1f4c90c2e8014c90cb6ea5000a', 'event', null, '8a22da1f4c90c2e8014c90ca24270006', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4c90c2e8014c90ce06430011', 'material', 'CLICK', '', '2015-04-07 06:16:03', 'key_8a22da1f4c90c2e8014c90cb2d270009', 'event', null, '8a22da1f4c90c2e8014c90ce06430010', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4c90f1d5014c9c69b61f0014', 'material', '', '', '2015-04-09 12:21:55', '你好', 'text', null, '8a22da1f4c90c2e8014c90ca24270006', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4ca205c7014ca20a4b9d0004', 'material', 'SCAN', '', null, 'key_8a22da1f4ca10b87014ca10bf3ee0000', 'event', null, '8a22da1f4c90c2e8014c90ca24270006', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a22da1f4d41661c014d6a4170380005', 'material', '', '', '2015-05-19 11:39:43', 'test', 'text', null, '8a22da1f4d41661c014d6a4170350004', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a8184114d89e07f014d89ec79100002', 'material', 'SCAN', '', null, 'key_8a8184114d89e07f014d89ec78660000', 'event', null, '8a8184114d89e07f014d89ec79100001', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a8184114d8a05f7014d8a07dd190003', 'material', '', '', '2015-05-25 15:44:40', null, 'location', null, '8a22da1f4c90c2e8014c90ca24270006', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a8184114d8a2075014d8a2697db0004', 'material', 'SCAN', '', null, 'key_8a8184114d8a2075014d8a2697790002', 'event', null, '8a8184114d8a2075014d8a2697db0003', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a8184114d8a35a7014d8a362d490002', 'material', 'SCAN', '', null, 'key_8a8184114d8a35a7014d8a360df20000', 'event', null, '8a8184114d8a35a7014d8a362d490001', '8a22da1f4c90c2e8014c90c3d6d00000');
INSERT INTO `wechat_resp_msg_action` VALUES ('8a8184114d8a35a7014d8a39c0d50009', 'material', 'SCAN', '', null, 'key_8a8184114d8a35a7014d8a39c0d20007', 'event', null, '8a8184114d8a35a7014d8a39c0d50008', '8a22da1f4c90c2e8014c90c3d6d00000');

-- ----------------------------
-- Table structure for wechat_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `wechat_sys_user`;
CREATE TABLE `wechat_sys_user` (
  `id` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `is_valid` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `valid_uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `valid_uid` (`valid_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_sys_user
-- ----------------------------
INSERT INTO `wechat_sys_user` VALUES ('4028c681494b994701494b99aba50000', 'xd-fjx@qq.com', '2014-10-26 16:36:42', '1', null, '4a3e00961a08879c34f91ca0070ea2f5', '0', 'fengjx', '3641cfbb5ceb11e483ae6036dd68230b');
INSERT INTO `wechat_sys_user` VALUES ('4028c681495265ac0149526735890000', '466516623@qq.com', '2014-10-28 00:18:55', '1', null, '4a3e00961a08879c34f91ca0070ea2f5', '0', 'fjx', 'f31c02705df411e481cb6036dd68230b');
INSERT INTO `wechat_sys_user` VALUES ('4028c68149800d340149800ea1270000', 'fengjx_mt@qq.com', '2014-11-05 21:04:42', '0', null, '4a3e00961a08879c34f91ca0070ea2f5', '0', 'xd-fjx', '4ef7f5eb64ec11e4b7af6036dd68230b');
INSERT INTO `wechat_sys_user` VALUES ('8a22da1f4c90c2e8014c90c3d6d00000', 'huiming_xie@163.com', '2015-04-07 06:04:55', '1', null, '318c5274e6716e141dd54e10af813b4d', '0', 'xiehm', 'f577e833dca811e4bcd400163e02153a');

-- ----------------------------
-- Table structure for wechat_user_group
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user_group`;
CREATE TABLE `wechat_user_group` (
  `id` varchar(32) NOT NULL,
  `in_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_user_group
-- ----------------------------
INSERT INTO `wechat_user_group` VALUES ('4028f28c4d7a9dbd014d7abb8e760003', '2015-05-22 16:27:01', '测试');

-- ----------------------------
-- Table structure for wechat_user_info
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user_info`;
CREATE TABLE `wechat_user_info` (
  `id` varchar(32) NOT NULL,
  `busi_user_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `subscribe` varchar(255) DEFAULT NULL,
  `unsubscribe_time` datetime DEFAULT NULL,
  `wechat_openid` varchar(255) DEFAULT NULL,
  `public_account_id` varchar(32) NOT NULL,
  `group_id` varchar(32) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA9C826C99F275FAE` (`public_account_id`),
  KEY `FKA9C826C9FFCFAA76` (`group_id`),
  KEY `FKA9C826C946F171D4` (`public_account_id`),
  KEY `FKA9C826C92814BF9C` (`group_id`),
  KEY `FKA9C826C927B4A43B` (`public_account_id`),
  KEY `FKA9C826C933A73D83` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_user_info
-- ----------------------------
INSERT INTO `wechat_user_info` VALUES ('8a8184114d8a93f8014d8a9620970007', null, '江门', '中国', 'http://wx.qlogo.cn/mmopen/MCicjzKph4QsYKOFJ5AdRSH1K9PZCmGvkEkG26wiceMetNFjQJGRU6Vf2bVR8WvbQWqvNaDtMu1OXAs963xXNr08ab1icmCibiatc/0', 'zh_CN', '剑圣', 'opH6Ns8Be4jv6RTzOIVukoteiVnc', '广东', '1', null, null, null, '8a22da1f4c90c2e8014c90c4bbfc0001', null, '2015-05-25 18:20:03');
