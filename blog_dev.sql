/*
 Navicat MySQL Data Transfer

 Source Server         : 本地开发数据库
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : blog_dev

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 31/01/2021 20:34:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_del
-- ----------------------------
DROP TABLE IF EXISTS `activity_del`;
CREATE TABLE `activity_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动主键',
  `title` varchar(128) NOT NULL COMMENT '活动名称',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `city` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市',
  `cover` varchar(255) NOT NULL COMMENT '活动封面',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章',
  `code` tinyint(2) NOT NULL DEFAULT '1' COMMENT '文章类型 1 文章 2 沸点',
  `tag` varchar(120) NOT NULL COMMENT '标签',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章标题',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文章封面',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联地址 帖子',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章详情',
  `creationTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, 1, '', '哈哈哈哈', 'http://127.0.0.1:7001/public/upload/article/1593486601227p4d1r8olwce_fa2aaa04f30530933b648479c92bf3c1bcd0f1261605eb-dAYMLR_fw658.jpeg', '', '你好\n```\n这是我吗是我\n```', '2021-01-31 19:26:47');
INSERT INTO `article` VALUES (2, 1, '', 'dsds', 'http://127.0.0.1:7001/public/upload/article/1593481639664bdmyastvlf5_1111.png', '', '', '2021-01-31 19:26:48');
INSERT INTO `article` VALUES (3, 1, '', 'dsds', 'http://127.0.0.1:7001/public/upload/article/1593481639664bdmyastvlf5_1111.png', '', '', '2021-01-31 19:26:49');
INSERT INTO `article` VALUES (4, 1, '', 'dsds', 'http://127.0.0.1:7001/public/upload/article/1593481639664bdmyastvlf5_1111.png', '', '', '2021-01-31 19:26:50');
INSERT INTO `article` VALUES (5, 1, '', '2121', '', '', '', '2021-01-31 19:26:51');
INSERT INTO `article` VALUES (6, 1, '', 'dasa', '', '', '', '2021-01-31 19:26:52');
INSERT INTO `article` VALUES (7, 1, '', 'dasasa', '', '', '', '2021-01-31 19:26:53');
INSERT INTO `article` VALUES (8, 1, '', 'dsada大萨达所', '', '', '', '2021-01-31 19:26:54');
INSERT INTO `article` VALUES (9, 1, '', '大萨达撒撒', '', '', '', '2021-01-31 19:26:55');
INSERT INTO `article` VALUES (10, 1, '', '1111', '', '', '大萨达撒撒![1593487111021foaxjc9vw2p_1111.png](http://127.0.0.1:7001/public/upload/article/1593487111021foaxjc9vw2p_1111.png)\n大萨达撒大所大\n\n大萨达撒\n大萨达撒\n大萨达撒\n大萨达', '2021-01-31 19:26:55');
INSERT INTO `article` VALUES (11, 1, '', '11111', '', '', '', '2021-01-31 19:26:56');
COMMIT;

-- ----------------------------
-- Table structure for articleAtlas_del
-- ----------------------------
DROP TABLE IF EXISTS `articleAtlas_del`;
CREATE TABLE `articleAtlas_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图集主键',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `articleId` int(11) NOT NULL COMMENT '关联文章ID',
  `sort` tinyint(4) DEFAULT NULL COMMENT '图片排序',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for articleLike_del
-- ----------------------------
DROP TABLE IF EXISTS `articleLike_del`;
CREATE TABLE `articleLike_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞表主键',
  `userId` int(11) NOT NULL COMMENT '点赞的人',
  `articleId` int(11) NOT NULL COMMENT '文章主键',
  `creationTime` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for book_del
-- ----------------------------
DROP TABLE IF EXISTS `book_del`;
CREATE TABLE `book_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '书主键',
  `userId` int(11) NOT NULL COMMENT '会员ID',
  `categoryId` int(11) NOT NULL COMMENT '小册分类ID',
  `title` varchar(255) NOT NULL COMMENT '小册书名',
  `cover` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '书的封面',
  `recommended` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1推荐2不推荐',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '书描述',
  `through` tinyint(2) NOT NULL DEFAULT '2' COMMENT '1申请通过2申请中3未申请',
  `wordNum` int(11) NOT NULL DEFAULT '0' COMMENT '阅读时长',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `chapters` int(11) NOT NULL DEFAULT '0' COMMENT '文字节数',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_del
-- ----------------------------
BEGIN;
INSERT INTO `book_del` VALUES (1, 1, 2, '测试标题', 'http://127.0.0.1:7001/public/upload/article/15934336011714nbgvqr2bj7_1111.png', 2, '大萨达所', 1, 0, 0, 0, '2020-06-29 20:26:46');
INSERT INTO `book_del` VALUES (2, 1, 2, '测试小册', 'http://127.0.0.1:7001/public/upload/article/15934336011714nbgvqr2bj7_1111.png', 2, '大萨达所', 3, 0, 0, 0, '2020-06-29 20:26:56');
INSERT INTO `book_del` VALUES (3, 1, 6, '测试小册222', 'http://127.0.0.1:7001/public/upload/article/1593433687250mfxzbtrp62g_1111.png', 2, '大萨达所', 3, 0, 0, 0, '2020-06-29 20:28:12');
INSERT INTO `book_del` VALUES (4, 1, 2, '121212', NULL, 2, 'jhjh ', 3, 0, 0, 0, '2020-06-29 20:28:50');
COMMIT;

-- ----------------------------
-- Table structure for category_del
-- ----------------------------
DROP TABLE IF EXISTS `category_del`;
CREATE TABLE `category_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类表',
  `parentId` int(11) DEFAULT NULL COMMENT '父亲ID',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '分类标题',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类描述',
  `isDel` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1显示2删除',
  `creationTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_del
-- ----------------------------
BEGIN;
INSERT INTO `category_del` VALUES (1, NULL, NULL, '前端', '前端', 1, '2020-06-23 13:26:43');
INSERT INTO `category_del` VALUES (2, NULL, NULL, '后端', '后端', 1, '2020-06-23 13:27:01');
INSERT INTO `category_del` VALUES (3, NULL, NULL, 'Android', 'Android', 1, '2020-06-23 13:27:24');
INSERT INTO `category_del` VALUES (4, NULL, NULL, 'iOS', 'iOS', 1, '2020-06-23 13:27:41');
INSERT INTO `category_del` VALUES (5, NULL, NULL, '开发工具', '开发工具', 1, '2020-06-23 13:27:56');
INSERT INTO `category_del` VALUES (6, NULL, NULL, '代码人生', '代码人生', 1, '2020-06-23 13:28:40');
INSERT INTO `category_del` VALUES (7, 1, NULL, 'JavaScript', 'JavaScript', 1, '2020-06-23 13:46:16');
INSERT INTO `category_del` VALUES (8, 1, NULL, 'Vue.js', 'Vue.js', 1, '2020-06-23 13:46:16');
INSERT INTO `category_del` VALUES (9, 1, NULL, 'React.js', 'React.js', 1, '2020-06-23 13:47:17');
INSERT INTO `category_del` VALUES (10, 1, NULL, '面试', '面试', 1, '2020-06-23 13:48:03');
INSERT INTO `category_del` VALUES (11, 1, NULL, 'Webpack', 'Webpack', 1, '2020-06-23 13:48:20');
INSERT INTO `category_del` VALUES (12, 1, NULL, 'CSS', 'CSS', 1, '2020-06-23 13:48:49');
INSERT INTO `category_del` VALUES (13, 1, NULL, '微信小程序', '微信小程序', 1, '2020-06-23 13:49:30');
INSERT INTO `category_del` VALUES (14, 1, NULL, 'Node.js', 'Node.js', 1, '2020-06-23 13:49:30');
INSERT INTO `category_del` VALUES (15, 1, NULL, 'Flutter', 'Flutter', 1, '2020-06-23 13:49:41');
INSERT INTO `category_del` VALUES (16, 1, NULL, 'TypeScript', 'TypeScript', 1, '2020-06-23 13:50:04');
INSERT INTO `category_del` VALUES (17, 1, NULL, '前端框架', '前端框架', 1, '2020-06-23 13:50:18');
INSERT INTO `category_del` VALUES (18, 1, NULL, '算法', '算法', 1, '2020-06-23 13:50:32');
INSERT INTO `category_del` VALUES (19, 1, NULL, 'HTML', 'HTML', 1, '2020-06-23 13:50:46');
INSERT INTO `category_del` VALUES (20, 1, NULL, 'HTTP', 'HTTP', 1, '2020-06-23 13:51:01');
INSERT INTO `category_del` VALUES (21, 1, NULL, 'ECMAScript 6', 'ECMAScript 6', 1, '2020-06-23 13:51:25');
INSERT INTO `category_del` VALUES (22, 2, NULL, 'Php', 'Php', 1, '2020-06-23 13:53:02');
INSERT INTO `category_del` VALUES (23, 2, NULL, 'Java', 'Java', 1, '2020-06-23 13:53:23');
INSERT INTO `category_del` VALUES (24, 2, NULL, 'Spring Boot', 'Spring Boot', 1, '2020-06-23 13:53:38');
INSERT INTO `category_del` VALUES (25, 2, NULL, 'Go', 'Go', 1, '2020-06-23 13:53:52');
INSERT INTO `category_del` VALUES (26, 2, NULL, 'MySQL', 'MySQL', 1, '2020-06-23 13:54:41');
INSERT INTO `category_del` VALUES (27, 2, NULL, 'Redis', 'Redis', 1, '2020-06-23 13:55:46');
INSERT INTO `category_del` VALUES (28, 2, NULL, 'Spring', 'Spring', 1, '2020-06-23 13:55:59');
INSERT INTO `category_del` VALUES (29, 2, NULL, 'Linux', 'Linux', 1, '2020-06-23 13:56:14');
INSERT INTO `category_del` VALUES (30, 2, NULL, 'Python', 'Python', 1, '2020-06-23 13:56:29');
INSERT INTO `category_del` VALUES (31, 2, NULL, '面试', '面试', 1, '2020-06-23 13:56:41');
INSERT INTO `category_del` VALUES (32, 2, NULL, 'JVM', 'JVM', 1, '2020-06-23 13:56:54');
INSERT INTO `category_del` VALUES (33, 2, NULL, '云原生', '云原生', 1, '2020-06-23 13:57:06');
INSERT INTO `category_del` VALUES (34, 2, NULL, 'Spring Cloud', 'Spring Cloud', 1, '2020-06-23 13:57:22');
INSERT INTO `category_del` VALUES (35, 2, NULL, '架构', '架构', 1, '2020-06-23 13:57:34');
INSERT INTO `category_del` VALUES (36, 2, NULL, 'Kubernetes', 'Kubernetes', 1, '2020-06-23 13:57:48');
INSERT INTO `category_del` VALUES (37, 2, NULL, 'Docker', 'Docker', 1, '2020-06-23 13:58:03');
INSERT INTO `category_del` VALUES (38, 3, NULL, 'Kotlin', 'Kotlin', 1, '2020-06-23 13:58:42');
INSERT INTO `category_del` VALUES (39, 3, NULL, 'Android Jetpack', 'Android Jetpack', 1, '2020-06-23 13:59:04');
INSERT INTO `category_del` VALUES (40, 3, NULL, '源码', '源码', 1, '2020-06-23 13:59:18');
INSERT INTO `category_del` VALUES (41, 3, NULL, '面试', '面试', 1, '2020-06-23 13:59:34');
INSERT INTO `category_del` VALUES (42, 3, NULL, '性能优化', '性能优化', 1, '2020-06-23 13:59:50');
INSERT INTO `category_del` VALUES (43, 3, NULL, 'Java', 'Java', 1, '2020-06-23 14:00:06');
INSERT INTO `category_del` VALUES (44, 3, NULL, '设计模式', '设计模式', 1, '2020-06-23 14:00:23');
INSERT INTO `category_del` VALUES (45, 4, NULL, 'Swift', 'Swift', 1, '2020-06-23 14:00:51');
INSERT INTO `category_del` VALUES (46, 4, NULL, 'SwiftUI', 'SwiftUI', 1, '2020-06-23 14:01:11');
INSERT INTO `category_del` VALUES (47, 4, NULL, 'macOS', 'macOS', 1, '2020-06-23 14:01:30');
INSERT INTO `category_del` VALUES (48, 5, NULL, 'Git', 'Git', 1, '2020-06-23 14:02:13');
INSERT INTO `category_del` VALUES (49, 5, NULL, 'Linux', 'Linux', 1, '2020-06-23 14:02:32');
INSERT INTO `category_del` VALUES (50, 5, NULL, 'Serverless', 'Serverless', 1, '2020-06-23 14:06:22');
INSERT INTO `category_del` VALUES (51, 5, NULL, 'Java', 'Java', 1, '2020-06-23 14:06:39');
INSERT INTO `category_del` VALUES (52, 5, NULL, 'Visual Studio Code', 'Visual Studio Code', 1, '2020-06-23 14:06:54');
INSERT INTO `category_del` VALUES (53, 5, NULL, 'IntelliJ IDEA', 'IntelliJ IDEA', 1, '2020-06-23 14:07:08');
INSERT INTO `category_del` VALUES (54, 5, NULL, 'Ubuntu', 'Ubuntu', 1, '2020-06-23 14:07:23');
INSERT INTO `category_del` VALUES (55, 5, NULL, 'GitHub', 'GitHub', 1, '2020-06-23 14:07:36');
INSERT INTO `category_del` VALUES (56, 5, NULL, '开源', '开源', 1, '2020-06-23 14:07:48');
INSERT INTO `category_del` VALUES (57, 5, NULL, 'VIM', 'VIM', 1, '2020-06-23 14:08:00');
INSERT INTO `category_del` VALUES (58, 5, NULL, 'Markdown', 'Markdown', 1, '2020-06-23 14:08:12');
INSERT INTO `category_del` VALUES (59, 5, NULL, '敏捷开发', '敏捷开发', 1, '2020-06-23 14:08:23');
INSERT INTO `category_del` VALUES (60, 5, NULL, 'Kubernetes', 'Kubernetes', 1, '2020-06-23 14:08:34');
INSERT INTO `category_del` VALUES (61, 5, NULL, '大数据', '大数据', 1, '2020-06-23 14:08:48');
COMMIT;

-- ----------------------------
-- Table structure for comments_del
-- ----------------------------
DROP TABLE IF EXISTS `comments_del`;
CREATE TABLE `comments_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `parentId` int(11) DEFAULT NULL COMMENT '父亲ID',
  `articleId` int(11) NOT NULL COMMENT '文章主键',
  `userId` int(11) NOT NULL COMMENT '会员表主键',
  `parentUserId` int(11) DEFAULT NULL COMMENT '给谁评论的',
  `content` text NOT NULL COMMENT '评论内容',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for commentsLike_del
-- ----------------------------
DROP TABLE IF EXISTS `commentsLike_del`;
CREATE TABLE `commentsLike_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞表主键',
  `userId` int(11) NOT NULL COMMENT '点赞人',
  `commentsId` int(11) NOT NULL COMMENT '评论ID',
  `creationTime` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for mailLog
-- ----------------------------
DROP TABLE IF EXISTS `mailLog`;
CREATE TABLE `mailLog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '邮件发送记录主键',
  `theReceiver` varchar(255) NOT NULL COMMENT '接收者邮箱',
  `code` int(6) NOT NULL COMMENT '验证码',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mailLog
-- ----------------------------
BEGIN;
INSERT INTO `mailLog` VALUES (2, '464032204@qq.com', 10472, '2020-06-19 19:03:32');
INSERT INTO `mailLog` VALUES (5, '13524547691@qq.com', 94768, '2020-06-23 09:26:46');
INSERT INTO `mailLog` VALUES (6, '135245476@qq.com', 86778, '2020-06-23 09:26:54');
INSERT INTO `mailLog` VALUES (7, '3565731681@qq.com', 61673, '2020-06-23 09:29:31');
COMMIT;

-- ----------------------------
-- Table structure for statistical_del
-- ----------------------------
DROP TABLE IF EXISTS `statistical_del`;
CREATE TABLE `statistical_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计表主键',
  `userId` int(11) NOT NULL COMMENT '会员表',
  `articleCount` int(11) NOT NULL DEFAULT '0' COMMENT '文章统计',
  `bookCount` int(11) NOT NULL DEFAULT '0' COMMENT '小册统计',
  `postCount` int(11) NOT NULL DEFAULT '0' COMMENT '帖子统计',
  `likeCount` int(11) NOT NULL DEFAULT '0' COMMENT '点赞统计',
  `commentCount` int(11) NOT NULL DEFAULT '0' COMMENT '评论统计',
  `focusMyNum` int(11) NOT NULL COMMENT '关注我的人数统计',
  `myFocusNum` int(11) NOT NULL DEFAULT '0' COMMENT '我关注的人数统计',
  `creationTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statistical_del
-- ----------------------------
BEGIN;
INSERT INTO `statistical_del` VALUES (1, 1, 1, 2, 44, 212, 666, 0, 0, '2020-06-23 09:43:39');
INSERT INTO `statistical_del` VALUES (2, 2, 233, 0, 0, 0, 0, 0, 0, '2020-06-23 09:39:08');
COMMIT;

-- ----------------------------
-- Table structure for topic_del
-- ----------------------------
DROP TABLE IF EXISTS `topic_del`;
CREATE TABLE `topic_del` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '话题表',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '话题封面地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `name` varchar(100) NOT NULL COMMENT '话题名称',
  `isDel` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1显示2删除',
  `creationTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_del
-- ----------------------------
BEGIN;
INSERT INTO `topic_del` VALUES (1, NULL, NULL, '福利', 1, '2020-06-23 14:16:30');
INSERT INTO `topic_del` VALUES (2, NULL, NULL, '活动', 1, '2020-06-23 14:16:48');
INSERT INTO `topic_del` VALUES (3, NULL, NULL, '求职', 1, '2020-06-23 14:17:13');
INSERT INTO `topic_del` VALUES (4, NULL, NULL, '内推', 1, '2020-06-23 14:17:22');
INSERT INTO `topic_del` VALUES (5, NULL, NULL, '划水', 1, '2020-06-23 14:17:41');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员ID',
  `idEncrypted` varchar(100) NOT NULL COMMENT '加密微信ID',
  `email` varchar(120) NOT NULL COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录token',
  `creationTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`,`idEncrypted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '8571723d-3654-4a04-a35a-89bb0f88be45', '464032204@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWRFbmNyeXB0ZWQiOiI4NTcxNzIzZC0zNjU0LTRhMDQtYTM1YS04OWJiMGY4OGJlNDUiLCJpYXQiOjE2MTIwOTYzODMsImV4cCI6MTYxNDY4ODM4M30.asaG39aE8NwfndwEEY93xOwpefR8yvbjXykKdmJmkAU', '2021-01-31 20:33:03');
INSERT INTO `user` VALUES (2, 'ea7eeff7-d6ca-4783-be2b-32f25197e594', '3565731681@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2020-06-24 11:07:01');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
