-- ----------------------------
-- Table structure for `wechat_resp_msg_action`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_qrcode`;
CREATE TABLE `wechat_qrcode` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scene_value` varchar(255) DEFAULT NULL,
  `scene_action` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
   `in_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scene_value` (`scene_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;