/*
 Navicat Premium Data Transfer

 Source Server         : 170
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 192.168.30.170:3306
 Source Schema         : oauth

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 24/06/2019 18:38:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单',
  `level` bigint(2) NULL DEFAULT NULL COMMENT '菜单层级',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单联集',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `href` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `bg_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示背景色',
  `is_show` tinyint(2) NULL DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` bigint(20) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` bigint(20) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 907 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '系统管理', NULL, 1, '1,', 10000, '', NULL, '', NULL, 1, '', 1, '2018-01-16 11:29:46', 1, '2018-01-20 03:09:26', NULL, 0);
INSERT INTO `permission` VALUES (2, '系统用户管理', 1, 2, '1,2,', 9, '/admin/system/user/list', NULL, '', '#47e69c', 1, 'sys:user:list', 1, '2018-01-16 11:31:18', 1, '2018-01-20 05:59:20', NULL, 0);
INSERT INTO `permission` VALUES (3, '系统角色管理', 1, 2, '1,3,', 10, '/admin/system/role/list', NULL, '', '#c23ab9', 1, 'sys:role:list', 1, '2018-01-16 11:32:33', 1, '2018-01-20 05:58:58', NULL, 0);
INSERT INTO `permission` VALUES (4, '系统权限管理', 1, 2, '1,4,', 20, '/admin/system/menu/list', NULL, '', '#d4573b', 1, 'sys:menu:list', 1, '2018-01-16 11:33:19', 1, '2018-02-08 09:49:28', NULL, 0);
INSERT INTO `permission` VALUES (5, '系统资源管理', 1, 2, '1,5,', 30, '/admin/system/rescource/list', NULL, '', '#f5e42a', 1, 'sys:rescource:list', 1, '2018-01-16 11:34:48', 1, '2018-01-20 05:56:35', NULL, 0);
INSERT INTO `permission` VALUES (6, '系统日志管理', 1, 2, '1,6,', 40, '/admin/system/log/list', NULL, '', '#b56c18', 1, 'sys:log:list', 1, '2018-01-16 11:35:31', 1, '2018-01-20 05:12:17', NULL, 0);
INSERT INTO `permission` VALUES (7, '网站基本信息', 1, 2, '1,7,', 50, '/admin/system/site/show', NULL, '', '#95deb9', 1, 'sys:site:list', 1, '2018-01-16 11:36:50', 1, '2018-01-20 05:55:44', NULL, 0);
INSERT INTO `permission` VALUES (8, '数据库管理', 1, 2, '1,8,', 60, '/admin/system/table/list', NULL, '', '#369e16', 1, 'sys:table:list', 1, '2018-01-16 11:38:29', 1, '2018-01-20 03:14:23', NULL, 0);
INSERT INTO `permission` VALUES (9, '系统字典管理', 1, 2, '1,9,', 70, '/admin/system/dict/list', NULL, '', '#1bbcc2', 1, 'sys:dict:list', 1, '2018-01-16 14:51:52', 1, '2018-01-20 03:12:27', NULL, 0);
INSERT INTO `permission` VALUES (10, '博客管理', NULL, 1, '10,', 10010, '', NULL, '', NULL, 1, '', 1, '2018-01-17 13:21:53', 1, '2018-01-22 00:28:28', NULL, 0);
INSERT INTO `permission` VALUES (11, '栏目管理', 10, 2, '10,11,', 6, '/admin/blogChannel/list', NULL, '', NULL, 1, 'blog:channel:list', 1, '2018-01-17 13:22:57', 1, '2018-02-08 10:20:54', NULL, 0);
INSERT INTO `permission` VALUES (12, '博客评论', 10, 2, '10,12,', 7, '/admin/blogComment/list', NULL, '', '#c8e332', 1, 'blog:comment:list', 1, '2018-01-17 13:23:52', 1, '2018-02-08 10:25:26', NULL, 0);
INSERT INTO `permission` VALUES (13, '博客文章', 10, 2, '10,13,', 8, '/admin/blogArticle/list', NULL, '', '#1962b5', 1, 'blog:article:list', 1, '2018-01-17 16:02:07', 1, '2018-02-08 10:26:13', NULL, 0);
INSERT INTO `permission` VALUES (14, '定时任务', NULL, 1, '14,', 10020, '', NULL, '', NULL, 1, '', 1, '2018-01-26 22:39:35', 1, '2018-02-08 10:31:05', NULL, 0);
INSERT INTO `permission` VALUES (15, '任务列表', 14, 2, '14,15,', 15, '/admin/quartzTask/list', NULL, '', '#d6d178', 1, 'quartz:task:list', 1, '2018-01-26 22:41:25', 1, '2018-02-08 10:31:11', NULL, 0);
INSERT INTO `permission` VALUES (16, '任务执行日志', 14, 2, '14,16,', 10, '/admin/quartzTaskLog/list', NULL, '', '#5158d6', 1, 'quartz:log:list', 1, '2018-01-27 01:07:11', 1, '2018-02-08 10:37:51', NULL, 0);
INSERT INTO `permission` VALUES (17, '新增字典', 9, 3, '1,9,17,', 0, '', NULL, NULL, NULL, 0, 'sys:dict:add', 1, '2018-02-08 09:39:09', 1, '2018-02-08 09:39:19', NULL, 0);
INSERT INTO `permission` VALUES (18, '编辑字典', 9, 3, '1,9,18,', 10, '', NULL, NULL, NULL, 0, 'sys:dict:edit', 1, '2018-02-08 09:40:37', 1, '2018-02-08 09:40:46', NULL, 0);
INSERT INTO `permission` VALUES (19, '编辑字典类型', 9, 3, '1,9,19,', 20, '', NULL, NULL, NULL, 0, 'sys:dict:editType', 1, '2018-02-08 09:42:46', 1, '2018-02-08 09:54:07', NULL, 0);
INSERT INTO `permission` VALUES (20, '新增系统权限', 4, 3, '1,4,20,', 0, '', NULL, NULL, NULL, 0, 'sys:menu:add', 1, '2018-02-08 09:49:15', 1, '2018-02-08 09:49:38', NULL, 0);
INSERT INTO `permission` VALUES (21, '编辑系统权限', 4, 3, '1,4,21,', 10, '', NULL, NULL, NULL, 0, 'sys:menu:edit', 1, '2018-02-08 09:50:16', 1, '2018-02-08 09:50:25', NULL, 0);
INSERT INTO `permission` VALUES (22, '删除系统权限', 4, 3, '1,4,22,', 20, '', NULL, NULL, NULL, 0, 'sys:menu:delete', 1, '2018-02-08 09:51:53', 1, '2018-02-08 09:53:42', NULL, 0);
INSERT INTO `permission` VALUES (23, '删除系统资源', 5, 3, '1,5,23,', 0, '', NULL, NULL, NULL, 0, 'sys:rescource:delete', 1, '2018-02-08 09:56:44', 1, '2018-02-08 09:56:53', NULL, 0);
INSERT INTO `permission` VALUES (24, '新增系统角色', 3, 3, '1,3,24,', 0, '', NULL, NULL, NULL, 0, 'sys:role:add', 1, '2018-02-08 09:58:11', 1, '2018-02-08 09:58:11', NULL, 0);
INSERT INTO `permission` VALUES (25, '编辑菜单权限', 3, 3, '1,3,25,', 10, '', NULL, NULL, NULL, 0, 'sys:role:edit', 1, '2018-02-08 09:59:01', 1, '2018-02-08 09:59:01', NULL, 0);
INSERT INTO `permission` VALUES (26, '删除角色', 3, 3, '1,3,26,', 20, '', NULL, NULL, NULL, 0, 'sys:role:delete', 1, '2018-02-08 09:59:56', 1, '2018-02-08 09:59:56', NULL, 0);
INSERT INTO `permission` VALUES (27, '编辑系统信息', 7, 3, '1,7,27,', 0, '', NULL, NULL, NULL, 0, 'sys:site:edit', 1, '2018-02-08 10:01:40', 1, '2018-02-08 10:01:40', NULL, 0);
INSERT INTO `permission` VALUES (28, '数据库新增', 8, 3, '1,8,28,', 0, '', NULL, NULL, NULL, 0, 'sys:table:add', 1, '2018-02-08 10:02:51', 1, '2018-02-08 10:02:51', NULL, 0);
INSERT INTO `permission` VALUES (29, '编辑数据库', 8, 3, '1,8,29,', 10, '', NULL, NULL, NULL, 0, 'sys:table:edit', 1, '2018-02-08 10:03:58', 1, '2018-02-08 10:03:58', NULL, 0);
INSERT INTO `permission` VALUES (30, '新增数据库字段', 8, 3, '1,8,30,', 20, '', NULL, NULL, NULL, 0, 'sys:table:addField', 1, '2018-02-08 10:05:11', 1, '2018-02-08 10:05:11', NULL, 0);
INSERT INTO `permission` VALUES (31, '编辑数据库字段', 8, 3, '1,8,31,', 30, '', NULL, NULL, NULL, 0, 'sys:table:editField', 1, '2018-02-08 10:05:47', 1, '2018-02-08 10:05:47', NULL, 0);
INSERT INTO `permission` VALUES (32, '删除数据库字段', 8, 3, '1,8,32,', 40, '', NULL, NULL, NULL, 0, 'sys:table:deleteField', 1, '2018-02-08 10:07:29', 1, '2018-02-08 10:15:39', NULL, 0);
INSERT INTO `permission` VALUES (33, '删除数据库', 8, 3, '1,8,33,', 50, '', NULL, NULL, NULL, 0, 'sys:table:deleteTable', 1, '2018-02-08 10:08:16', 1, '2018-02-08 10:08:16', NULL, 0);
INSERT INTO `permission` VALUES (34, '下载源码', 8, 3, '1,8,34,', 60, '', NULL, NULL, NULL, 0, 'sys:table:download', 1, '2018-02-08 10:09:28', 1, '2018-02-08 10:09:28', NULL, 0);
INSERT INTO `permission` VALUES (35, '新增系统用户', 2, 3, '1,2,35,', 0, '', NULL, NULL, NULL, 0, 'sys:user:add', 1, '2018-02-08 10:10:32', 1, '2018-02-08 10:10:32', NULL, 0);
INSERT INTO `permission` VALUES (36, '编辑系统用户', 2, 3, '1,2,36,', 10, '', NULL, NULL, NULL, 0, 'sys:user:edit', 1, '2018-02-08 10:11:49', 1, '2018-02-08 10:11:49', NULL, 0);
INSERT INTO `permission` VALUES (37, '删除系统用户', 2, 3, '1,2,37,', 20, '', NULL, NULL, NULL, 0, 'sys:user:delete', 1, '2018-02-08 10:12:43', 1, '2018-02-08 10:12:43', NULL, 0);
INSERT INTO `permission` VALUES (38, '新增博客文章', 13, 3, '10,13,38,', 0, '', NULL, NULL, NULL, 0, 'blog:article:add', 1, '2018-02-08 10:16:59', 1, '2018-02-08 10:16:59', NULL, 0);
INSERT INTO `permission` VALUES (39, '博客文章编辑', 13, 3, '10,13,39,', 10, '', NULL, NULL, NULL, 0, 'blog:article:edit', 1, '2018-02-08 10:17:16', 1, '2018-02-08 10:17:16', NULL, 0);
INSERT INTO `permission` VALUES (40, '博客文章删除', 13, 3, '10,13,40,', 20, '', NULL, NULL, NULL, 0, 'blog:article:delete', 1, '2018-02-08 10:17:34', 1, '2018-02-08 10:44:02', NULL, 0);
INSERT INTO `permission` VALUES (41, '博客评论回复', 12, 3, '10,12,41,', 0, '', NULL, NULL, NULL, 0, 'blog:comment:reply', 1, '2018-02-08 10:19:29', 1, '2018-02-08 10:20:33', NULL, 0);
INSERT INTO `permission` VALUES (42, '新增博客栏目', 11, 3, '10,11,42,', 0, '', NULL, NULL, NULL, 0, 'blog:channel:add', 1, '2018-02-08 10:22:06', 1, '2018-02-08 10:22:06', NULL, 0);
INSERT INTO `permission` VALUES (43, '编辑博客栏目', 11, 3, '10,11,43,', 10, '', NULL, NULL, NULL, 0, 'blog:channel:edit', 1, '2018-02-08 10:23:31', 1, '2018-02-08 10:23:31', NULL, 0);
INSERT INTO `permission` VALUES (44, '删除博客栏目', 11, 3, '10,11,44,', 20, '', NULL, NULL, NULL, 0, 'blog:channel:delete', 1, '2018-02-08 10:23:57', 1, '2018-02-08 10:23:57', NULL, 0);
INSERT INTO `permission` VALUES (45, '删除博客评论', 12, 3, '10,12,45,', 10, '', NULL, NULL, NULL, 0, 'blog:comment:delete', 1, '2018-02-08 10:28:48', 1, '2018-02-08 10:28:48', NULL, 0);
INSERT INTO `permission` VALUES (46, '新增定时任务', 15, 3, '14,15,46,', 0, '', NULL, NULL, NULL, 0, 'quartz:task:add', 1, '2018-02-08 10:32:46', 1, '2018-02-08 10:32:46', NULL, 0);
INSERT INTO `permission` VALUES (47, '编辑定时任务', 15, 3, '14,15,47,', 10, '', NULL, NULL, NULL, 0, 'quartz:task:edit', 1, '2018-02-08 10:34:18', 1, '2018-02-08 10:34:18', NULL, 0);
INSERT INTO `permission` VALUES (48, '删除定时任务', 15, 3, '14,15,48,', 20, '', NULL, NULL, NULL, 0, 'quartz:task:delete', 1, '2018-02-08 10:35:07', 1, '2018-02-08 10:35:07', NULL, 0);
INSERT INTO `permission` VALUES (49, '暂停定时任务', 15, 3, '14,15,49,', 30, '', NULL, NULL, NULL, 0, 'quartz:task:pause', 1, '2018-02-08 10:35:43', 1, '2018-02-08 10:35:43', NULL, 0);
INSERT INTO `permission` VALUES (50, '恢复运行任务', 15, 3, '14,15,50,', 40, '', NULL, NULL, NULL, 0, 'quartz:task:resume', 1, '2018-02-08 10:36:26', 1, '2018-02-08 10:36:26', NULL, 0);
INSERT INTO `permission` VALUES (51, '立即执行运行任务', 15, 3, '14,15,51,', 50, '', NULL, NULL, NULL, 0, 'quartz:task:run', 1, '2018-02-08 10:36:55', 1, '2018-02-08 10:36:55', NULL, 0);
INSERT INTO `permission` VALUES (52, '删除定时任务日志', 16, 3, '14,16,52,', 0, '', NULL, NULL, NULL, 0, 'quartz:log:delete', 1, '2018-02-08 10:39:04', 1, '2018-02-08 10:39:04', NULL, 0);
INSERT INTO `permission` VALUES (53, '修改密码', 2, 3, '1,2,53,', 30, '', NULL, '', NULL, 0, 'sys:user:changePassword', 1, '2018-03-15 10:14:06', 1, '2018-03-15 10:14:06', NULL, 0);
INSERT INTO `permission` VALUES (54, '删除字典', 9, 3, '1,9,54,', 30, '', NULL, NULL, NULL, 0, 'sys:dict:delete', 1, '2018-03-15 10:16:55', 1, '2018-03-15 10:16:55', NULL, 0);
INSERT INTO `permission` VALUES (55, '系统日志删除', 6, 3, '1,6,55,', 0, '', NULL, NULL, NULL, 0, 'system:logs:delete', 1, '2018-06-16 04:30:32', 1, '2018-06-16 04:30:32', NULL, 0);
INSERT INTO `permission` VALUES (56, '博客标签', 10, 2, '10,56,', 3, '/admin/blogTags/list', NULL, '', '#c3e8ce', 1, 'blog:tags:list', 1, '2018-06-16 04:42:15', 1, '2018-06-16 04:42:30', NULL, 0);
INSERT INTO `permission` VALUES (57, '博客标签新增', 56, 3, '10,56,57,', 0, '', NULL, NULL, NULL, 0, 'blog:tags:add', 1, '2018-06-16 04:43:02', 1, '2018-06-16 04:43:02', NULL, 0);
INSERT INTO `permission` VALUES (58, '博客标签编辑', 56, 3, '10,56,58,', 10, '', NULL, NULL, NULL, 0, 'blog:tags:edit', 1, '2018-06-16 04:43:26', 1, '2018-06-16 04:43:26', NULL, 0);
INSERT INTO `permission` VALUES (59, '博客标签删除', 56, 3, '10,56,59,', 20, '', NULL, NULL, NULL, 0, 'blog:tags:delete', 1, '2018-06-16 04:43:56', 1, '2018-06-16 04:43:56', NULL, 0);
INSERT INTO `permission` VALUES (60, 'Druid数据监控', 1, 2, '1,60,', 25, '/admin/druid/list', NULL, '', '#7e8755', 1, 'sys:druid:list', 1, '2018-06-16 05:06:17', 1, '2018-06-16 05:06:26', NULL, 0);
INSERT INTO `permission` VALUES (61, '七牛云存储信息', 7, 3, '1,7,61,', 10, '', NULL, NULL, NULL, 0, 'sys:site:editQiniu', 1, '2018-07-12 18:46:39', 1, '2018-07-12 18:46:39', NULL, 0);
INSERT INTO `permission` VALUES (62, '阿里云信息存储', 7, 3, '1,7,62,', 20, '', NULL, NULL, NULL, 0, 'sys:site:editOss', 1, '2018-07-12 18:47:05', 1, '2018-07-12 18:47:05', NULL, 0);
INSERT INTO `permission` VALUES (100, '图文与专题', NULL, 1, '100,', 10, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (101, '新闻滚动图', 100, 2, '100,101,', 40, 'http://adms.e-ports-ms.com:8080/newsSet/newsBannerList', NULL, '', '', 1, '', 1, '2019-06-05 17:24:15', 1, '2019-06-17 13:49:05', NULL, 0);
INSERT INTO `permission` VALUES (102, '新闻类别', 100, 2, '100,102,', 50, 'http://adms.e-ports-ms.com:8080/newsSet/list', NULL, '', '', 1, '', 1, '2019-06-05 17:24:57', 1, '2019-06-05 17:24:57', NULL, 0);
INSERT INTO `permission` VALUES (103, '首页滚动页', 100, 2, '100,103,', 60, 'http://adms.e-ports-ms.com:8080/homeBanner/list', NULL, '', '', 1, '', 1, '2019-06-05 17:26:04', 1, '2019-06-11 13:50:37', NULL, 0);
INSERT INTO `permission` VALUES (110, '文章管理', 100, 2, '100,110,', 10, 'http://adms.e-ports-ms.com:8080/news/list', NULL, '', '#47e69c', 1, '', 1, '2019-05-01 11:11:11', 1, '2019-06-05 15:02:55', NULL, 0);
INSERT INTO `permission` VALUES (120, '图库管理', 100, 2, '100,120,', 20, 'http://adms.e-ports-ms.com:8080/imageGroup/list', NULL, '', '#c23ab9', 1, '', 1, '2019-05-01 11:11:11', 1, '2019-06-05 15:04:47', NULL, 0);
INSERT INTO `permission` VALUES (130, '专题管理', 100, 2, '100,130,', 30, 'http://adms.e-ports-ms.com:8080/subject/list', NULL, '', '#d4573b', 1, 'todo', 1, '2019-05-01 11:11:11', 1, '2019-06-05 15:05:26', NULL, 0);
INSERT INTO `permission` VALUES (200, '基础数据管理', NULL, 1, '200,', 20, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (210, '船舶管理', 200, 2, '200,210,', 10, 'http://adms.e-ports-ms.com:8080/ship/list', NULL, '', '#f5e42a', 1, 'adms:ship:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (211, '添加船舶', 210, 3, '200,210,211,', 10, '', NULL, '', '#f5e42a', 0, 'adms:ship:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (212, '编辑船舶', 210, 3, '200,210,212,', 20, '', NULL, '', '#f5e42a', 0, 'adms:ship:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (213, '删除船舶', 210, 3, '200,210,213,', 30, '', NULL, '', '#f5e42a', 0, 'adms:ship:del', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (220, '港口管理', 200, 2, '200,220,', 20, 'http://adms.e-ports-ms.com:8080/port/list', NULL, '', '#b56c18', 1, 'adms:port:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (221, '查看港口', 220, 3, '200,220,221,', 10, '', NULL, '', '', 0, 'adms:port:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (222, '添加港口', 220, 3, '200,220,222,', 20, '', NULL, '', '', 0, 'adms:port:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (223, '删除港口', 220, 3, '200,220,223,', 30, '', NULL, '', '', 0, 'adms:port:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (224, '编辑港口', 220, 3, '200,220,224,', 40, '', NULL, '', '', 0, 'adms:port:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (225, '添加港区', 220, 3, '200,220,225,', 50, '', NULL, '', '', 0, 'adms:terminal:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (230, '编辑泊位', 220, 3, '200,220,230,', 100, '', NULL, '', '', 0, 'adms:berth:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (231, '添加锚地', 220, 3, '200,220,231,', 110, '', NULL, '', '', 0, 'adms:anchorage:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (232, '删除锚地', 220, 3, '200,220,232,', 120, '', NULL, '', '', 0, 'adms:anchorage:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (233, '编辑锚地', 220, 3, '200,220,233,', 130, '', NULL, '', '', 0, 'adms:anchorage:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (234, '船东事务', 220, 3, '200,220,234,', 140, '', NULL, '', '', 0, 'adms:husbandrymatter:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (236, '删除港区', 220, 3, '200,220,236,', 60, '', NULL, '', '', 0, 'adms:terminal:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (237, '编辑港区', 220, 3, '200,220,237,', 70, '', NULL, '', '', 0, 'adms:terminal:edit', 1, '2019-05-01 11:11:11', 1, '2019-04-11 16:41:50', NULL, 0);
INSERT INTO `permission` VALUES (238, '添加泊位', 220, 3, '200,220,238,', 80, '', NULL, '', '', 0, 'adms:berth:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (239, '删除泊位', 220, 3, '200,220,239,', 90, '', NULL, '', '', 0, 'adms:berth:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (240, '公司管理', 200, 2, '200,240,', 40, 'http://adms.e-ports-ms.com:8080/account/list', NULL, '', '#f5e42a', 1, 'adms:account:list', 1, '2019-05-01 11:11:11', 1, '2019-04-10 10:25:02', NULL, 0);
INSERT INTO `permission` VALUES (241, '编辑公司', 240, 3, '200,240,241,', 10, '', NULL, '', '', 0, 'adms:account:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (242, '审核公司', 240, 3, '200,240,242,', 20, '', NULL, '', '', 0, 'adms:account:audit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (243, '推荐公司', 240, 3, '200,240,243,', 30, '', NULL, '', '', 0, 'adms:account:rec', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (250, '船厂管理', 200, 2, '200,250,', 50, 'http://adms.e-ports-ms.com:8080/shipyard/list', NULL, '', '#b56c18', 1, 'adms:shipyard:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (251, '查看船厂', 250, 3, '200,250,251,', 10, '', NULL, '', '', 0, 'adms:shipyard:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (252, '新增船厂', 250, 3, '200,250,252,', 20, '', NULL, '', '', 0, 'adms:shipyard:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (253, '编辑船厂', 250, 3, '200,250,253,', 30, '', NULL, '', '', 0, 'adms:shipyard:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (254, '上传船厂', 250, 3, '200,250,254,', 40, '', NULL, '', '', 0, 'adms:shipyard:upload', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (255, '删除船厂', 250, 3, '200,250,255,', 40, '', NULL, '', '', 0, 'adms:shipyard:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (260, '航运规则', 200, 2, '260,', 60, 'http://adms.e-ports-ms.com:8080/regulation/list', NULL, '', '#f5e42a', 1, 'adms:regulation:list', 1, '2019-05-01 11:11:11', 1, '2019-04-10 11:50:07', NULL, 0);
INSERT INTO `permission` VALUES (261, '添加规则', 260, 3, '200,260,261,', 0, '', NULL, NULL, NULL, 0, 'adms:regulation:add', 1, '2019-04-10 11:53:52', 1, '2019-04-10 11:53:52', NULL, 0);
INSERT INTO `permission` VALUES (262, '编辑规则', 260, 3, '200,260,262,', 10, '', NULL, NULL, NULL, 0, 'adms:regulation:edit', 1, '2019-04-10 11:54:26', 1, '2019-04-10 11:54:26', NULL, 0);
INSERT INTO `permission` VALUES (263, '删除规则', 260, 3, '200,260,263,', 20, '', NULL, NULL, NULL, 0, 'adms:regulation:delete', 1, '2019-04-10 11:56:04', 1, '2019-04-10 11:56:04', NULL, 0);
INSERT INTO `permission` VALUES (264, '查看规则', 260, 3, '200,260,264,', 30, '', NULL, NULL, NULL, 0, 'adms:regulation:detail', 1, '2019-04-11 16:17:52', 1, '2019-04-11 16:17:52', NULL, 0);
INSERT INTO `permission` VALUES (265, '发布规则', 260, 3, '200,260,265,', 40, '', NULL, NULL, NULL, 0, 'adms:regulation:publish', 1, '2019-04-16 09:53:38', 1, '2019-04-16 09:53:38', NULL, 0);
INSERT INTO `permission` VALUES (266, '推荐规则', 260, 3, '200,260,266,', 50, '', NULL, NULL, NULL, 0, 'adms:regulation:recommend', 1, '2019-04-16 09:54:05', 1, '2019-04-16 09:54:05', NULL, 0);
INSERT INTO `permission` VALUES (270, '船员管理', 200, 2, '270,', 70, 'todo', NULL, '', '#b56c18', 1, 'todo', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (300, '交易数据管理', NULL, 1, '300,', 30, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (310, '询价单管理', 300, 2, '300,310,', 10, 'http://adms.e-ports-ms.com:8080/orderInquiry/list', NULL, '', '#f5e42a', 1, 'adms:orderInquiry:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (311, '询价单导出', 310, 3, '300,310,311,', 10, '', NULL, '', '', 0, 'adms:orderInquiry:export', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (320, '订单管理', 300, 2, '300,320,', 20, 'http://adms.e-ports-ms.com:8080/order/list', NULL, '', '#f5e42a', 1, 'adms:order:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (321, '更换港口', 320, 3, '300,320,321,', 10, '', NULL, '', '', 0, 'adms:order:updatePort', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (322, '导出订单', 320, 3, '300,320,322,', 20, '', NULL, '', '', 0, 'adms:order:export', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (323, '转移订单', 320, 3, '300,320,323,', 30, '', NULL, '', '', 0, 'adms:order:transOrder', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (400, '航运工具管理', NULL, 1, '400,', 40, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (410, '计算器工具', 400, 2, '400,410,', 10, 'http://adms.e-ports-ms.com:8080/toolkit/list', NULL, '', '#f5e42a', 1, 'adms:toolkit:list', 1, '2019-05-01 11:11:11', 1, '2019-04-10 13:30:38', NULL, 0);
INSERT INTO `permission` VALUES (411, '添加条目', 410, 3, '400,410,411,', 0, '', NULL, '', NULL, 0, 'adms:toolkitItem:add', 1, '2019-04-12 10:30:42', 1, '2019-04-12 10:33:13', NULL, 0);
INSERT INTO `permission` VALUES (412, '添加自定义指标', 410, 3, '400,410,412,', 10, '', NULL, '', NULL, 0, 'adms:toolkitQuota:add', 1, '2019-04-12 10:32:28', 1, '2019-04-12 10:32:50', NULL, 0);
INSERT INTO `permission` VALUES (413, '删除条目', 410, 3, '400,410,413,', 20, '', NULL, '', NULL, 0, 'adms:toolkitItem:del', 1, '2019-04-12 10:34:30', 1, '2019-04-12 10:34:30', NULL, 0);
INSERT INTO `permission` VALUES (414, '修改条目', 410, 3, '400,410,414,', 30, '', NULL, '', NULL, 0, 'adms:toolkitItem:update', 1, '2019-04-12 10:35:14', 1, '2019-04-12 10:35:14', NULL, 0);
INSERT INTO `permission` VALUES (415, '修改自定义指标', 410, 3, '400,410,415,', 40, '', NULL, '', NULL, 0, 'adms:toolkitQuota:update', 1, '2019-04-12 10:36:43', 1, '2019-04-12 10:36:43', NULL, 0);
INSERT INTO `permission` VALUES (416, '删除自定义指标', 410, 3, '400,410,416,', 50, '', NULL, NULL, NULL, 0, 'adms:toolkitQuota:del', 1, '2019-04-12 10:37:29', 1, '2019-04-12 10:37:29', NULL, 0);
INSERT INTO `permission` VALUES (420, '港口船期表', 400, 2, '400,420,', 20, 'http://adms.e-ports-ms.com:8080/lineUp/list', NULL, '', '#b56c18', 1, 'adms:lineUp:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (421, '上传船期', 420, 3, '400,420,421,', 10, '', NULL, '', '', 0, 'adms:lineUp:upload', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (430, '邀请函管理', 400, 2, '400,430,', 30, 'http://adms.e-ports-ms.com:8080/letter/list', NULL, '', '#b56c18', 1, 'adms:letter:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (431, '查看邀请函', 430, 3, '400,430,431,', 10, '', NULL, '', '', 0, 'adms:letter:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (432, '编辑邀请函', 430, 3, '400,430,432,', 20, '', NULL, '', '', 0, 'adms:letter:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (433, '删除邀请函', 430, 3, '400,430,433,', 30, '', NULL, '', '', 0, 'adms:letter:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (434, '邀请函预览', 430, 3, '400,430,434,', 40, '', NULL, '', '', 0, 'adms:letter:view', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (435, '下载邀请函', 430, 3, '400,430,435,', 50, '', NULL, '', '', 0, 'adms:letter:export', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (436, '邀请函人员', 430, 3, '400,430,436,', 60, '', NULL, '', '', 0, 'adms:letterPeople:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (440, '邀请函模板', 400, 2, '400,440,', 40, 'http://adms.e-ports-ms.com:8080/letterModule/list', NULL, '', '#b56c18', 0, 'adms:letterModule:list', 1, '2019-05-01 11:11:11', 1, '2019-04-10 17:01:00', NULL, 0);
INSERT INTO `permission` VALUES (441, '添加模板', 440, 3, '400,440,441,', 10, '', NULL, '', '', 0, 'adms:letterModule:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (442, '编辑模板', 440, 3, '400,440,442,', 20, '', NULL, '', '', 0, 'adms:letterModule:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (443, '删除模板', 440, 3, '400,440,443,', 30, '', NULL, '', '', 0, 'adms:letterModule:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (444, '选择模板', 440, 3, '400,440,444,', 40, '', NULL, '', '', 0, 'adms:letterModule:choose', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (500, '帮助中心管理', NULL, 1, '500,', 50, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (510, '问答管理', 500, 2, '500,510,', 10, 'http://adms.e-ports-ms.com:8080/helpAnswer/list', NULL, '', '#f5e42a', 1, 'adms:helpAnswer:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (511, '添加问答', 510, 3, '500,510,511,', 10, '', NULL, '', '', 0, 'adms:helpAnswer:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (512, '查看问答', 510, 3, '500,510,512,', 20, '', NULL, '', '', 0, 'adms:helpAnswer:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (513, '删除问答', 510, 3, '500,510,513,', 30, '', NULL, '', '', 0, 'adms:helpAnswer:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (514, '编辑问答', 510, 3, '500,510,514,', 40, '', NULL, '', '', 0, 'adms:helpAnswer:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (515, '问答类型管理', 510, 3, '500,510,515,', 50, '', NULL, '', '', 0, 'adms:helpAnswerType:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (516, '查看问答类型', 510, 3, '500,510,516,', 60, '', NULL, '', '', 0, 'adms:helpAnswerType:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (517, '删除问答类型', 510, 3, '500,510,517,', 70, '', NULL, '', '', 0, 'adms:helpAnswerType:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (518, '添加问答类型', 510, 3, '500,510,518,', 80, '', NULL, '', '', 0, 'adms:helpAnswerType:add', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (519, '编辑问答类型', 510, 3, '500,510,519,', 90, '', NULL, '', '', 0, 'adms:helpAnswerType:edit', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (530, '电话客服', 500, 2, '500,530,', 30, 'http://adms.e-ports-ms.com:8080/helpTelService/list', NULL, '', '#f5e42a', 1, 'adms:helpTelService:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (531, '电话服务处理', 530, 3, '500,530,531,', 10, '', NULL, '', '', 0, 'adms:helpTelService:process', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (532, '电话服务删除', 530, 3, '500,530,532,', 20, '', NULL, '', '', 0, 'adms:helpTelService:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (533, '电话服务详情', 530, 3, '500,530,533,', 30, '', NULL, '', '', 0, 'adms:helpTelService:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (540, '意见建议', 500, 2, '500,540,', 40, 'http://adms.e-ports-ms.com:8080/helpSuggestion/list', NULL, '', '#f5e42a', 1, 'adms:helpSuggestion:list', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (541, '意见建议详情', 540, 3, '500,540,541,', 10, '', NULL, '', '', 0, 'adms:helpSuggestion:detail', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (542, '意见建议编辑', 540, 3, '500,540,542,', 20, '', NULL, '', '', 0, 'adms:helpSuggestion:process', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (543, '意见建议删除', 540, 3, '500,540,543,', 30, '', NULL, '', '', 0, 'adms:helpSuggestion:delete', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (600, '统计分析', NULL, 1, '500,', 60, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (610, '通用报表', 600, 2, '600,610,', 10, '/admin/report/chart', NULL, '', '#f5e42a', 1, 'admin:report:chart', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (620, '船舶统计', 600, 2, '600,620,', 20, 'http://adms.e-ports-ms.com:8080/report/shipStat', NULL, '', '#f5e42a', 1, 'adms:report:shipStat', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (630, '港口统计', 600, 2, '600,630,', 30, 'http://adms.e-ports-ms.com:8080/report/portStat', NULL, '', '#f5e42a', 1, 'adms:report:portStat', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (640, '用户注册统计', 600, 2, '600,640', 40, 'http://adms.e-ports-ms.com:8080/report/userStat', NULL, '', '', 1, 'adms:report:userStat', 1, '2019-06-11 13:49:32', 1, '2019-06-11 16:11:18', NULL, 0);
INSERT INTO `permission` VALUES (700, '营销管理', NULL, 1, '600,', 70, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (800, '财务管理', NULL, 1, '700,', 80, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (900, '设置', NULL, 1, '800,', 90, '', NULL, '', NULL, 1, '', 1, '2019-05-01 11:11:11', 1, '2019-05-01 11:11:11', NULL, 0);
INSERT INTO `permission` VALUES (904, '计算器统计数据', 600, 2, '500,904,', 40, 'http://adms.e-ports-ms.com:8080/toolkit/statistics/list', NULL, '', '', 1, '', 1, '2019-06-10 14:14:43', 1, '2019-06-10 14:16:10', NULL, 0);
INSERT INTO `permission` VALUES (905, '合作伙伴', 100, 2, '100,905,', 70, 'http://adms.e-ports-ms.com:8080/partner/list', NULL, '', '', 1, '', 1, '2019-06-13 17:15:19', 1, '2019-06-13 17:15:19', NULL, 0);
INSERT INTO `permission` VALUES (906, 'APP版本设置', 900, 2, '900,906', 10, 'http://adms.e-ports-ms.com:8080/versionControl/list', NULL, '', '', 1, 'adms:versionControl:list', 1, '2019-06-18 14:51:58', 1, '2019-06-18 15:34:53', NULL, 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` bigint(20) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` bigint(20) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '老司机', '2017-11-02 14:19:07', 1, '2019-06-18 14:52:24', 1, '', 0);
INSERT INTO `role` VALUES (2, '系统管理员', '2017-11-29 19:36:37', 1, '2019-03-12 17:24:56', 1, '', 0);
INSERT INTO `role` VALUES (3, '小白鸡', '2019-01-29 14:59:38', 1, '2019-03-12 15:55:15', 1, '2', 1);
INSERT INTO `role` VALUES (4, '测试组', '2019-03-13 10:18:27', 1, '2019-01-29 14:59:38', 1, '', 0);
INSERT INTO `role` VALUES (5, '运营', '2019-03-14 17:57:17', 1, '2019-01-29 14:59:38', 1, '', 0);
INSERT INTO `role` VALUES (8, 'test', '2019-03-27 11:58:13', 1, '2019-04-03 16:40:39', 1, '', 0);

-- ----------------------------
-- Table structure for role_permission_pk
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_pk`;
CREATE TABLE `role_permission_pk`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission_pk
-- ----------------------------
INSERT INTO `role_permission_pk` VALUES (1, 1);
INSERT INTO `role_permission_pk` VALUES (1, 2);
INSERT INTO `role_permission_pk` VALUES (1, 3);
INSERT INTO `role_permission_pk` VALUES (1, 4);
INSERT INTO `role_permission_pk` VALUES (1, 6);
INSERT INTO `role_permission_pk` VALUES (1, 7);
INSERT INTO `role_permission_pk` VALUES (1, 8);
INSERT INTO `role_permission_pk` VALUES (1, 10);
INSERT INTO `role_permission_pk` VALUES (1, 11);
INSERT INTO `role_permission_pk` VALUES (1, 14);
INSERT INTO `role_permission_pk` VALUES (1, 15);
INSERT INTO `role_permission_pk` VALUES (1, 16);
INSERT INTO `role_permission_pk` VALUES (1, 20);
INSERT INTO `role_permission_pk` VALUES (1, 21);
INSERT INTO `role_permission_pk` VALUES (1, 22);
INSERT INTO `role_permission_pk` VALUES (1, 24);
INSERT INTO `role_permission_pk` VALUES (1, 25);
INSERT INTO `role_permission_pk` VALUES (1, 26);
INSERT INTO `role_permission_pk` VALUES (1, 27);
INSERT INTO `role_permission_pk` VALUES (1, 28);
INSERT INTO `role_permission_pk` VALUES (1, 29);
INSERT INTO `role_permission_pk` VALUES (1, 30);
INSERT INTO `role_permission_pk` VALUES (1, 31);
INSERT INTO `role_permission_pk` VALUES (1, 32);
INSERT INTO `role_permission_pk` VALUES (1, 33);
INSERT INTO `role_permission_pk` VALUES (1, 34);
INSERT INTO `role_permission_pk` VALUES (1, 35);
INSERT INTO `role_permission_pk` VALUES (1, 36);
INSERT INTO `role_permission_pk` VALUES (1, 37);
INSERT INTO `role_permission_pk` VALUES (1, 42);
INSERT INTO `role_permission_pk` VALUES (1, 43);
INSERT INTO `role_permission_pk` VALUES (1, 44);
INSERT INTO `role_permission_pk` VALUES (1, 46);
INSERT INTO `role_permission_pk` VALUES (1, 47);
INSERT INTO `role_permission_pk` VALUES (1, 48);
INSERT INTO `role_permission_pk` VALUES (1, 49);
INSERT INTO `role_permission_pk` VALUES (1, 50);
INSERT INTO `role_permission_pk` VALUES (1, 51);
INSERT INTO `role_permission_pk` VALUES (1, 52);
INSERT INTO `role_permission_pk` VALUES (1, 53);
INSERT INTO `role_permission_pk` VALUES (1, 56);
INSERT INTO `role_permission_pk` VALUES (1, 57);
INSERT INTO `role_permission_pk` VALUES (1, 58);
INSERT INTO `role_permission_pk` VALUES (1, 59);
INSERT INTO `role_permission_pk` VALUES (1, 100);
INSERT INTO `role_permission_pk` VALUES (1, 101);
INSERT INTO `role_permission_pk` VALUES (1, 102);
INSERT INTO `role_permission_pk` VALUES (1, 103);
INSERT INTO `role_permission_pk` VALUES (1, 110);
INSERT INTO `role_permission_pk` VALUES (1, 120);
INSERT INTO `role_permission_pk` VALUES (1, 130);
INSERT INTO `role_permission_pk` VALUES (1, 200);
INSERT INTO `role_permission_pk` VALUES (1, 210);
INSERT INTO `role_permission_pk` VALUES (1, 211);
INSERT INTO `role_permission_pk` VALUES (1, 212);
INSERT INTO `role_permission_pk` VALUES (1, 213);
INSERT INTO `role_permission_pk` VALUES (1, 220);
INSERT INTO `role_permission_pk` VALUES (1, 221);
INSERT INTO `role_permission_pk` VALUES (1, 222);
INSERT INTO `role_permission_pk` VALUES (1, 223);
INSERT INTO `role_permission_pk` VALUES (1, 224);
INSERT INTO `role_permission_pk` VALUES (1, 225);
INSERT INTO `role_permission_pk` VALUES (1, 230);
INSERT INTO `role_permission_pk` VALUES (1, 231);
INSERT INTO `role_permission_pk` VALUES (1, 232);
INSERT INTO `role_permission_pk` VALUES (1, 233);
INSERT INTO `role_permission_pk` VALUES (1, 234);
INSERT INTO `role_permission_pk` VALUES (1, 236);
INSERT INTO `role_permission_pk` VALUES (1, 237);
INSERT INTO `role_permission_pk` VALUES (1, 238);
INSERT INTO `role_permission_pk` VALUES (1, 239);
INSERT INTO `role_permission_pk` VALUES (1, 240);
INSERT INTO `role_permission_pk` VALUES (1, 241);
INSERT INTO `role_permission_pk` VALUES (1, 242);
INSERT INTO `role_permission_pk` VALUES (1, 243);
INSERT INTO `role_permission_pk` VALUES (1, 250);
INSERT INTO `role_permission_pk` VALUES (1, 251);
INSERT INTO `role_permission_pk` VALUES (1, 252);
INSERT INTO `role_permission_pk` VALUES (1, 253);
INSERT INTO `role_permission_pk` VALUES (1, 254);
INSERT INTO `role_permission_pk` VALUES (1, 260);
INSERT INTO `role_permission_pk` VALUES (1, 261);
INSERT INTO `role_permission_pk` VALUES (1, 262);
INSERT INTO `role_permission_pk` VALUES (1, 263);
INSERT INTO `role_permission_pk` VALUES (1, 264);
INSERT INTO `role_permission_pk` VALUES (1, 265);
INSERT INTO `role_permission_pk` VALUES (1, 266);
INSERT INTO `role_permission_pk` VALUES (1, 270);
INSERT INTO `role_permission_pk` VALUES (1, 300);
INSERT INTO `role_permission_pk` VALUES (1, 310);
INSERT INTO `role_permission_pk` VALUES (1, 311);
INSERT INTO `role_permission_pk` VALUES (1, 320);
INSERT INTO `role_permission_pk` VALUES (1, 321);
INSERT INTO `role_permission_pk` VALUES (1, 322);
INSERT INTO `role_permission_pk` VALUES (1, 323);
INSERT INTO `role_permission_pk` VALUES (1, 400);
INSERT INTO `role_permission_pk` VALUES (1, 410);
INSERT INTO `role_permission_pk` VALUES (1, 411);
INSERT INTO `role_permission_pk` VALUES (1, 412);
INSERT INTO `role_permission_pk` VALUES (1, 413);
INSERT INTO `role_permission_pk` VALUES (1, 414);
INSERT INTO `role_permission_pk` VALUES (1, 415);
INSERT INTO `role_permission_pk` VALUES (1, 416);
INSERT INTO `role_permission_pk` VALUES (1, 420);
INSERT INTO `role_permission_pk` VALUES (1, 421);
INSERT INTO `role_permission_pk` VALUES (1, 430);
INSERT INTO `role_permission_pk` VALUES (1, 431);
INSERT INTO `role_permission_pk` VALUES (1, 432);
INSERT INTO `role_permission_pk` VALUES (1, 433);
INSERT INTO `role_permission_pk` VALUES (1, 434);
INSERT INTO `role_permission_pk` VALUES (1, 435);
INSERT INTO `role_permission_pk` VALUES (1, 436);
INSERT INTO `role_permission_pk` VALUES (1, 440);
INSERT INTO `role_permission_pk` VALUES (1, 441);
INSERT INTO `role_permission_pk` VALUES (1, 442);
INSERT INTO `role_permission_pk` VALUES (1, 443);
INSERT INTO `role_permission_pk` VALUES (1, 444);
INSERT INTO `role_permission_pk` VALUES (1, 500);
INSERT INTO `role_permission_pk` VALUES (1, 510);
INSERT INTO `role_permission_pk` VALUES (1, 511);
INSERT INTO `role_permission_pk` VALUES (1, 512);
INSERT INTO `role_permission_pk` VALUES (1, 513);
INSERT INTO `role_permission_pk` VALUES (1, 514);
INSERT INTO `role_permission_pk` VALUES (1, 515);
INSERT INTO `role_permission_pk` VALUES (1, 516);
INSERT INTO `role_permission_pk` VALUES (1, 517);
INSERT INTO `role_permission_pk` VALUES (1, 518);
INSERT INTO `role_permission_pk` VALUES (1, 519);
INSERT INTO `role_permission_pk` VALUES (1, 530);
INSERT INTO `role_permission_pk` VALUES (1, 531);
INSERT INTO `role_permission_pk` VALUES (1, 532);
INSERT INTO `role_permission_pk` VALUES (1, 533);
INSERT INTO `role_permission_pk` VALUES (1, 540);
INSERT INTO `role_permission_pk` VALUES (1, 541);
INSERT INTO `role_permission_pk` VALUES (1, 542);
INSERT INTO `role_permission_pk` VALUES (1, 543);
INSERT INTO `role_permission_pk` VALUES (1, 600);
INSERT INTO `role_permission_pk` VALUES (1, 610);
INSERT INTO `role_permission_pk` VALUES (1, 620);
INSERT INTO `role_permission_pk` VALUES (1, 630);
INSERT INTO `role_permission_pk` VALUES (1, 640);
INSERT INTO `role_permission_pk` VALUES (1, 800);
INSERT INTO `role_permission_pk` VALUES (1, 900);
INSERT INTO `role_permission_pk` VALUES (1, 904);
INSERT INTO `role_permission_pk` VALUES (1, 905);
INSERT INTO `role_permission_pk` VALUES (1, 906);
INSERT INTO `role_permission_pk` VALUES (4, 1);
INSERT INTO `role_permission_pk` VALUES (4, 2);
INSERT INTO `role_permission_pk` VALUES (4, 3);
INSERT INTO `role_permission_pk` VALUES (4, 4);
INSERT INTO `role_permission_pk` VALUES (4, 5);
INSERT INTO `role_permission_pk` VALUES (4, 6);
INSERT INTO `role_permission_pk` VALUES (4, 7);
INSERT INTO `role_permission_pk` VALUES (4, 8);
INSERT INTO `role_permission_pk` VALUES (4, 9);
INSERT INTO `role_permission_pk` VALUES (4, 10);
INSERT INTO `role_permission_pk` VALUES (4, 11);
INSERT INTO `role_permission_pk` VALUES (4, 12);
INSERT INTO `role_permission_pk` VALUES (4, 13);
INSERT INTO `role_permission_pk` VALUES (4, 14);
INSERT INTO `role_permission_pk` VALUES (4, 15);
INSERT INTO `role_permission_pk` VALUES (4, 16);
INSERT INTO `role_permission_pk` VALUES (4, 17);
INSERT INTO `role_permission_pk` VALUES (4, 18);
INSERT INTO `role_permission_pk` VALUES (4, 19);
INSERT INTO `role_permission_pk` VALUES (4, 20);
INSERT INTO `role_permission_pk` VALUES (4, 21);
INSERT INTO `role_permission_pk` VALUES (4, 22);
INSERT INTO `role_permission_pk` VALUES (4, 23);
INSERT INTO `role_permission_pk` VALUES (4, 24);
INSERT INTO `role_permission_pk` VALUES (4, 25);
INSERT INTO `role_permission_pk` VALUES (4, 26);
INSERT INTO `role_permission_pk` VALUES (4, 27);
INSERT INTO `role_permission_pk` VALUES (4, 28);
INSERT INTO `role_permission_pk` VALUES (4, 29);
INSERT INTO `role_permission_pk` VALUES (4, 30);
INSERT INTO `role_permission_pk` VALUES (4, 32);
INSERT INTO `role_permission_pk` VALUES (4, 33);
INSERT INTO `role_permission_pk` VALUES (4, 34);
INSERT INTO `role_permission_pk` VALUES (4, 35);
INSERT INTO `role_permission_pk` VALUES (4, 36);
INSERT INTO `role_permission_pk` VALUES (4, 37);
INSERT INTO `role_permission_pk` VALUES (4, 38);
INSERT INTO `role_permission_pk` VALUES (4, 39);
INSERT INTO `role_permission_pk` VALUES (4, 40);
INSERT INTO `role_permission_pk` VALUES (4, 41);
INSERT INTO `role_permission_pk` VALUES (4, 42);
INSERT INTO `role_permission_pk` VALUES (4, 43);
INSERT INTO `role_permission_pk` VALUES (4, 44);
INSERT INTO `role_permission_pk` VALUES (4, 45);
INSERT INTO `role_permission_pk` VALUES (4, 53);
INSERT INTO `role_permission_pk` VALUES (4, 65);
INSERT INTO `role_permission_pk` VALUES (4, 66);
INSERT INTO `role_permission_pk` VALUES (4, 67);
INSERT INTO `role_permission_pk` VALUES (4, 68);
INSERT INTO `role_permission_pk` VALUES (4, 69);
INSERT INTO `role_permission_pk` VALUES (4, 71);
INSERT INTO `role_permission_pk` VALUES (4, 72);
INSERT INTO `role_permission_pk` VALUES (4, 73);
INSERT INTO `role_permission_pk` VALUES (4, 74);
INSERT INTO `role_permission_pk` VALUES (4, 75);
INSERT INTO `role_permission_pk` VALUES (4, 76);
INSERT INTO `role_permission_pk` VALUES (4, 77);
INSERT INTO `role_permission_pk` VALUES (4, 78);
INSERT INTO `role_permission_pk` VALUES (4, 79);
INSERT INTO `role_permission_pk` VALUES (4, 80);
INSERT INTO `role_permission_pk` VALUES (4, 81);
INSERT INTO `role_permission_pk` VALUES (4, 82);
INSERT INTO `role_permission_pk` VALUES (4, 83);
INSERT INTO `role_permission_pk` VALUES (4, 84);
INSERT INTO `role_permission_pk` VALUES (4, 89);
INSERT INTO `role_permission_pk` VALUES (4, 90);
INSERT INTO `role_permission_pk` VALUES (4, 91);
INSERT INTO `role_permission_pk` VALUES (4, 92);
INSERT INTO `role_permission_pk` VALUES (4, 93);
INSERT INTO `role_permission_pk` VALUES (4, 94);
INSERT INTO `role_permission_pk` VALUES (4, 95);
INSERT INTO `role_permission_pk` VALUES (4, 96);
INSERT INTO `role_permission_pk` VALUES (4, 97);
INSERT INTO `role_permission_pk` VALUES (4, 98);
INSERT INTO `role_permission_pk` VALUES (4, 99);
INSERT INTO `role_permission_pk` VALUES (4, 100);
INSERT INTO `role_permission_pk` VALUES (4, 101);
INSERT INTO `role_permission_pk` VALUES (4, 102);
INSERT INTO `role_permission_pk` VALUES (4, 104);
INSERT INTO `role_permission_pk` VALUES (4, 105);
INSERT INTO `role_permission_pk` VALUES (4, 106);
INSERT INTO `role_permission_pk` VALUES (4, 107);
INSERT INTO `role_permission_pk` VALUES (4, 108);
INSERT INTO `role_permission_pk` VALUES (4, 109);
INSERT INTO `role_permission_pk` VALUES (4, 110);
INSERT INTO `role_permission_pk` VALUES (4, 111);
INSERT INTO `role_permission_pk` VALUES (4, 112);
INSERT INTO `role_permission_pk` VALUES (4, 113);
INSERT INTO `role_permission_pk` VALUES (4, 114);
INSERT INTO `role_permission_pk` VALUES (4, 115);
INSERT INTO `role_permission_pk` VALUES (4, 116);
INSERT INTO `role_permission_pk` VALUES (4, 117);
INSERT INTO `role_permission_pk` VALUES (4, 118);
INSERT INTO `role_permission_pk` VALUES (4, 119);
INSERT INTO `role_permission_pk` VALUES (4, 120);
INSERT INTO `role_permission_pk` VALUES (4, 121);
INSERT INTO `role_permission_pk` VALUES (4, 122);
INSERT INTO `role_permission_pk` VALUES (4, 123);
INSERT INTO `role_permission_pk` VALUES (4, 124);
INSERT INTO `role_permission_pk` VALUES (4, 125);
INSERT INTO `role_permission_pk` VALUES (4, 126);
INSERT INTO `role_permission_pk` VALUES (4, 127);
INSERT INTO `role_permission_pk` VALUES (4, 128);
INSERT INTO `role_permission_pk` VALUES (4, 130);
INSERT INTO `role_permission_pk` VALUES (4, 132);
INSERT INTO `role_permission_pk` VALUES (4, 133);
INSERT INTO `role_permission_pk` VALUES (4, 134);
INSERT INTO `role_permission_pk` VALUES (4, 135);
INSERT INTO `role_permission_pk` VALUES (4, 136);
INSERT INTO `role_permission_pk` VALUES (4, 137);
INSERT INTO `role_permission_pk` VALUES (4, 138);
INSERT INTO `role_permission_pk` VALUES (4, 139);
INSERT INTO `role_permission_pk` VALUES (5, 1);
INSERT INTO `role_permission_pk` VALUES (5, 2);
INSERT INTO `role_permission_pk` VALUES (5, 3);
INSERT INTO `role_permission_pk` VALUES (5, 4);
INSERT INTO `role_permission_pk` VALUES (5, 5);
INSERT INTO `role_permission_pk` VALUES (5, 6);
INSERT INTO `role_permission_pk` VALUES (5, 7);
INSERT INTO `role_permission_pk` VALUES (5, 8);
INSERT INTO `role_permission_pk` VALUES (5, 9);
INSERT INTO `role_permission_pk` VALUES (5, 20);
INSERT INTO `role_permission_pk` VALUES (5, 21);
INSERT INTO `role_permission_pk` VALUES (5, 22);
INSERT INTO `role_permission_pk` VALUES (5, 23);
INSERT INTO `role_permission_pk` VALUES (5, 24);
INSERT INTO `role_permission_pk` VALUES (5, 25);
INSERT INTO `role_permission_pk` VALUES (5, 26);
INSERT INTO `role_permission_pk` VALUES (5, 28);
INSERT INTO `role_permission_pk` VALUES (5, 29);
INSERT INTO `role_permission_pk` VALUES (5, 30);
INSERT INTO `role_permission_pk` VALUES (5, 31);
INSERT INTO `role_permission_pk` VALUES (5, 32);
INSERT INTO `role_permission_pk` VALUES (5, 33);
INSERT INTO `role_permission_pk` VALUES (5, 34);
INSERT INTO `role_permission_pk` VALUES (5, 35);
INSERT INTO `role_permission_pk` VALUES (5, 36);
INSERT INTO `role_permission_pk` VALUES (5, 37);
INSERT INTO `role_permission_pk` VALUES (5, 53);
INSERT INTO `role_permission_pk` VALUES (5, 60);
INSERT INTO `role_permission_pk` VALUES (5, 65);
INSERT INTO `role_permission_pk` VALUES (5, 77);
INSERT INTO `role_permission_pk` VALUES (6, 135);
INSERT INTO `role_permission_pk` VALUES (6, 136);
INSERT INTO `role_permission_pk` VALUES (6, 137);
INSERT INTO `role_permission_pk` VALUES (6, 138);
INSERT INTO `role_permission_pk` VALUES (6, 139);
INSERT INTO `role_permission_pk` VALUES (7, 135);
INSERT INTO `role_permission_pk` VALUES (7, 136);
INSERT INTO `role_permission_pk` VALUES (7, 137);
INSERT INTO `role_permission_pk` VALUES (7, 138);
INSERT INTO `role_permission_pk` VALUES (7, 139);
INSERT INTO `role_permission_pk` VALUES (8, 10);
INSERT INTO `role_permission_pk` VALUES (8, 13);
INSERT INTO `role_permission_pk` VALUES (8, 38);
INSERT INTO `role_permission_pk` VALUES (8, 39);
INSERT INTO `role_permission_pk` VALUES (8, 40);
INSERT INTO `role_permission_pk` VALUES (8, 126);
INSERT INTO `role_permission_pk` VALUES (8, 127);
INSERT INTO `role_permission_pk` VALUES (8, 128);
INSERT INTO `role_permission_pk` VALUES (8, 130);
INSERT INTO `role_permission_pk` VALUES (8, 166);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) NULL DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` bigint(20) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` bigint(20) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'test', '我是管理员', 'http://192.168.30.103:8888/group1/M00/00/22/wKgeZ1zc2sSAWCFCAALd5PnYniU064.png', 'b5685b5a4e1648a28fd89644ff0bb1fd', '3fb62b5aeede1bbf', '', '', 0, '2017-11-27 22:19:39', 1, '2019-05-16 11:39:52', 1, '', 0);
INSERT INTO `user` VALUES (2, 'test1', 'test1', NULL, '14771550035209a093b8312dfab46c2aeb535e3e', '1e80ffd98ed29355', '', '', 0, '2019-03-13 09:33:48', 1, '2019-04-29 15:26:50', 1, NULL, 0);
INSERT INTO `user` VALUES (4, 'caimin', '', NULL, 'b11023dec6889ca683a76146bd831d43ba71fb82', '80612d155c287175', '', '', 0, '2019-03-13 10:24:54', 1, '2019-04-29 15:26:57', 1, NULL, 0);
INSERT INTO `user` VALUES (5, 'jadin', 'jadin', NULL, '5a6648c743f96ebc160a905847b6bb6182886ca3', 'e73ef5e8c8786e38', '', '', 0, '2019-03-14 17:54:50', 1, '2019-03-14 18:10:44', 1, NULL, 0);
INSERT INTO `user` VALUES (6, 'nathnn', '111', NULL, '6401ee94ff1f0461106ba0e6f0d01045be389330', '82d7c65600e0e0a0', '13578994322', '111@11.com', 0, '2019-05-08 10:27:27', 1, '2019-05-08 10:27:27', 1, NULL, 0);

-- ----------------------------
-- Table structure for user_role_pk
-- ----------------------------
DROP TABLE IF EXISTS `user_role_pk`;
CREATE TABLE `user_role_pk`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role_pk
-- ----------------------------
INSERT INTO `user_role_pk` VALUES (1, 1);
INSERT INTO `user_role_pk` VALUES (2, 1);
INSERT INTO `user_role_pk` VALUES (3, 4);
INSERT INTO `user_role_pk` VALUES (4, 4);
INSERT INTO `user_role_pk` VALUES (5, 5);
INSERT INTO `user_role_pk` VALUES (6, 1);

SET FOREIGN_KEY_CHECKS = 1;
