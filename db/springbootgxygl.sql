/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : springbootgxygl

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-12-20 17:57:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chuzuren`
-- ----------------------------
DROP TABLE IF EXISTS `chuzuren`;
CREATE TABLE `chuzuren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1602637975275 DEFAULT CHARSET=utf8 COMMENT='出租人';

-- ----------------------------
-- Records of chuzuren
-- ----------------------------
INSERT INTO `chuzuren` VALUES ('1602635323898', '2022-12-21 08:28:43', '001', '001', '王雷', '男', 'http://localhost:8080/springbootGxYgl/upload/1602635310334.png', '441214121412141211', '15214121412');
INSERT INTO `chuzuren` VALUES ('1602635345642', '2022-12-21 08:29:05', '002', '002', '刘倩', '女', 'http://localhost:8080/springbootGxYgl/upload/1602635344735.png', '441214121412141212', '15214121412');
INSERT INTO `chuzuren` VALUES ('1602637975274', '2022-12-21 09:12:55', '003', '003', '李曼', '女', 'http://localhost:8080/springbootGxYgl/upload/1602638003708.png', '441214121412141214', '15214121412');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springbootGxYgl/upload/1602636856289.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springbootGxYgl/upload/1602636961591.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springbootGxYgl/upload/1602636971571.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/springbootGxYgl/upload/1602636981726.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/springbootGxYgl/upload/1602636989619.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `discussfangwuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussfangwuxinxi`;
CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638806952 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';

-- ----------------------------
-- Records of discussfangwuxinxi
-- ----------------------------
INSERT INTO `discussfangwuxinxi` VALUES ('1602636582445', '2022-12-21 08:49:41', '1602635641072', '很舒服', '1602635291306');
INSERT INTO `discussfangwuxinxi` VALUES ('1602638806951', '2022-12-21 09:26:46', '1602638155079', '非常舒适', '1602638743405');

-- ----------------------------
-- Table structure for `fangwufenlei`
-- ----------------------------
DROP TABLE IF EXISTS `fangwufenlei`;
CREATE TABLE `fangwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602637755992 DEFAULT CHARSET=utf8 COMMENT='房屋分类';

-- ----------------------------
-- Records of fangwufenlei
-- ----------------------------
INSERT INTO `fangwufenlei` VALUES ('1602635360499', '2022-12-21 08:29:19', '一房一厅');
INSERT INTO `fangwufenlei` VALUES ('1602635366649', '2022-12-21 08:29:26', '两房一厅');
INSERT INTO `fangwufenlei` VALUES ('1602635374200', '2022-12-21 08:29:33', '三房一厅');
INSERT INTO `fangwufenlei` VALUES ('1602637755991', '2022-12-21 09:09:15', '两房两厅');

-- ----------------------------
-- Table structure for `fangwuxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `fangwuxinxi`;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fangwubianhao` varchar(200) NOT NULL COMMENT '房屋编号',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `shineitupian` varchar(200) DEFAULT NULL COMMENT '室内图片',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `zulinjiage` int(11) DEFAULT NULL COMMENT '租赁价格',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638155080 DEFAULT CHARSET=utf8 COMMENT='房屋信息';

-- ----------------------------
-- Records of fangwuxinxi
-- ----------------------------
INSERT INTO `fangwuxinxi` VALUES ('1602635532556', '2022-12-21 08:32:12', '1001', '一房一厅', 'http://localhost:8080/springbootGxYgl/upload/1602635404957.jpg', '<p><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635430732.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635435036.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635441279.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635450330.jpg\"></p><p>刚重新装修，环境舒适，周边靠近地铁，超市，家具齐全，有阳台还能看风景</p>', '2500', '北京', '北京市环市路', '2022-09-30', '001', '王雷', '15214121412', '待出租', '2022-12-21 01:27:30', '5');
INSERT INTO `fangwuxinxi` VALUES ('1602635641072', '2022-12-21 08:34:00', '1002', '两房一厅', 'http://localhost:8080/springbootGxYgl/upload/1602635586397.jpg', '<p><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635612509.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635617308.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635622666.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635630026.jpg\"></p><p>刚重新装修，环境舒适，周边靠近地铁，超市，家具齐全，有阳台还能看风景</p>', '3500', '上海', '上海市人名南路', '2022-09-30', '001', '王雷', '15214121412', '待出租', '2022-12-21 00:50:02', '3');
INSERT INTO `fangwuxinxi` VALUES ('1602635745253', '2022-12-21 08:35:44', '1003', '三房一厅', 'http://localhost:8080/springbootGxYgl/upload/1602635674658.jpg', '<p><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635702092.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635705377.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635731406.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602635739352.jpg\"></p><p><br></p><p>刚重新装修，环境舒适，周边靠近地铁，超市，家具齐全，有阳台还能看风景</p>', '5000', '南京', '南京路', '2022-09-29', '002', '刘倩', '15214121412', '待出租', '2022-12-21 01:27:53', '3');
INSERT INTO `fangwuxinxi` VALUES ('1602638155079', '2022-12-21 09:15:54', '1004', '两房两厅', 'http://localhost:8080/springbootGxYgl/upload/1602638039205.jpg', '<p><img src=\"http://localhost:8080/springbootGxYgl/upload/1602638071920.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602638075864.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602638081491.jpg\"><img src=\"http://localhost:8080/springbootGxYgl/upload/1602638092330.jpg\"></p><p><br></p><p>靠近周边地铁，附近有超市市场，交通便利，房间很大都是新装修的，环境舒适还有阳台可看周边风景，物超所值，赶紧来看吧</p>', '4500', '浙江', '浙江杭州', '2022-09-30', '003', '李曼', '15214121412', '待出租', '2022-12-21 01:27:49', '2');

-- ----------------------------
-- Table structure for `hetongxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `hetongxinxi`;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hetongmingcheng` varchar(200) NOT NULL COMMENT '合同名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `hetongneirong` longtext COMMENT '合同内容',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `qiandingriqi` date DEFAULT NULL COMMENT '签订日期',
  `shengxiaoriqi` date DEFAULT NULL COMMENT '生效日期',
  `nianxian` varchar(200) DEFAULT NULL COMMENT '年限',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638987280 DEFAULT CHARSET=utf8 COMMENT='合同信息';

-- ----------------------------
-- Records of hetongxinxi
-- ----------------------------
INSERT INTO `hetongxinxi` VALUES ('1602638987279', '2022-12-21 09:29:46', '租赁合同', '2', '王芳', '客户看了房后觉得满意，现在特签订租赁合同', 'http://localhost:8080/springbootGxYgl/upload/1602638945026.doc', '2022-09-29', '2022-09-29', '2个月', '001', '王雷', '是', '合同有效');

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '留言人用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638862548 DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1602636568837', '2022-12-21 08:49:28', '1602635291306', '1', '我要留言', null);
INSERT INTO `messages` VALUES ('1602638862547', '2022-12-21 09:27:42', '1602638743405', '2', '有问题可以在这里给管理员留言', '好的 有问题可以随时联系我');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602637850078 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1602635884637', '2022-12-21 08:38:03', '最新租赁优惠', 'http://localhost:8080/springbootGxYgl/upload/1602635836294.jpg', '<p> 热烈庆祝国庆，现在搞活动，所以租赁都打8折优惠</p>');
INSERT INTO `news` VALUES ('1602635967961', '2022-12-21 08:39:27', '北京市房屋好地方', 'http://localhost:8080/springbootGxYgl/upload/1602635896254.jpg', '<p>北京市环市路这里是地段好的地方靠近地铁，附近有超市，十分方便，这里租赁价格还方便，心不动不如行动你们还在等什么呢</p>');
INSERT INTO `news` VALUES ('1602636016228', '2022-12-21 08:40:16', '房屋出租带阳台', 'http://localhost:8080/springbootGxYgl/upload/1602635984743.jpg', '<p>北京市环市路这里是地段好的地方靠近地铁，附近有超市，十分方便，而且还都带阳台，这里租赁价格还方便，心不动不如行动你们还在等什么呢</p>');
INSERT INTO `news` VALUES ('1602636074541', '2022-12-21 08:41:13', '房地产价格暴跌10%', 'http://localhost:8080/springbootGxYgl/upload/1602636048060.jpg', '<p>由于政府调控，最近房屋价格将降低10%</p>');
INSERT INTO `news` VALUES ('1602636147949', '2022-12-21 08:42:27', '热销房源', 'http://localhost:8080/springbootGxYgl/upload/1602636108237.jpg', '<p>最近上海浦东机场这一带的房源销售量非常的好，大家可以去看下</p>');
INSERT INTO `news` VALUES ('1602636196275', '2022-12-21 08:43:16', '三房两厅便宜出租', 'http://localhost:8080/springbootGxYgl/upload/1602636177051.jpg', '<p>三房两厅便宜出租，有需要的可以联系电话15214121412李先生</p>');
INSERT INTO `news` VALUES ('1602637850077', '2022-12-21 09:10:49', '光明区周边房价均涨', 'http://localhost:8080/springbootGxYgl/upload/1602637828190.jpg', '<p>由于光明区周边的地铁建造，直接影响了周边的价格</p>');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638800688 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1602636575936', '2022-12-21 08:49:35', '1602635291306', '1602635641072', 'fangwuxinxi', '1002', 'http://localhost:8080/springbootGxYgl/upload/1602635586397.jpg');
INSERT INTO `storeup` VALUES ('1602638800687', '2022-12-21 09:26:40', '1602638743405', '1602638155079', 'fangwuxinxi', '1004', 'http://localhost:8080/springbootGxYgl/upload/1602638039205.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '1970-01-01 10:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '439it90dbostbyyi24ai2v9grv25q99m', '2022-12-21 08:27:15', '2022-12-21 02:30:11');
INSERT INTO `token` VALUES ('2', '1602635323898', '001', 'chuzuren', '出租人', 'or9rcfxg0qiijn5uvb8qsbqvsj7qwnw8', '2022-12-21 08:29:39', '2022-12-21 02:28:28');
INSERT INTO `token` VALUES ('3', '1602635345642', '002', 'chuzuren', '出租人', '2i4ocsbrg489a3cs0iw99kf5fwa1ai9y', '2022-12-21 08:34:08', '2022-12-21 02:28:23');
INSERT INTO `token` VALUES ('4', '1602635291306', '1', 'zuhu', '租户', 'yjgnnpc0falzuysx7ghchuta6phynudd', '2022-12-21 08:40:32', '2022-12-21 02:20:37');
INSERT INTO `token` VALUES ('5', '1602637975274', '003', 'chuzuren', '出租人', '1s0o0z1xtbftsw6u9p26r2bjbs4p6wpu', '2022-12-21 09:13:03', '2022-12-21 02:28:16');
INSERT INTO `token` VALUES ('6', '1602638743405', '2', 'zuhu', '租户', 'gk9aiz8jxuoi54t182to04ahkw4z245i', '2022-12-21 09:25:48', '2022-12-21 02:30:53');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2022-12-21 08:24:26');

-- ----------------------------
-- Table structure for `yuyuexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yuyuexinxi`;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yuyueneirong` longtext COMMENT '预约内容',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638848837 DEFAULT CHARSET=utf8 COMMENT='预约信息';

-- ----------------------------
-- Records of yuyuexinxi
-- ----------------------------
INSERT INTO `yuyuexinxi` VALUES ('1602636597261', '2022-12-21 08:49:57', '1002', '001', '<p>可以先去看看吗</p>', '2022-09-29', '1', '李铭', '是', '可以的');
INSERT INTO `yuyuexinxi` VALUES ('1602638848836', '2022-12-21 09:27:28', '1001', '001', '<p>你好，能先去看下房子吗</p>', '2022-09-29', '2', '王芳', '是', '可以的，明天8点去看');

-- ----------------------------
-- Table structure for `zuhu`
-- ----------------------------
DROP TABLE IF EXISTS `zuhu`;
CREATE TABLE `zuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1602638743406 DEFAULT CHARSET=utf8 COMMENT='租户';

-- ----------------------------
-- Records of zuhu
-- ----------------------------
INSERT INTO `zuhu` VALUES ('1602635291306', '2022-12-21 08:28:11', '1', '1', '李铭', '男', 'http://localhost:8080/springbootGxYgl/upload/1602635278638.png', '441214121412141211', '15214121412');
INSERT INTO `zuhu` VALUES ('1602638743405', '2022-12-21 09:25:43', '2', '2', '王芳', '女', 'http://localhost:8080/springbootGxYgl/upload/1602638772117.png', '441214121412141214', '15214121412');
