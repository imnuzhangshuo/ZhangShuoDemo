/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : logindemo

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/09/2018 17:05:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` smallint(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '一米八八的学长', '20151104769', '男', 22);
INSERT INTO `tb_user` VALUES (2, '时尚女人的儿子', '20151104798', '男', 21);
INSERT INTO `tb_user` VALUES (3, '硕硕', '20151104769', '女', 18);
INSERT INTO `tb_user` VALUES (4, '张雨', '20151104799', '男', 22);
INSERT INTO `tb_user` VALUES (5, '张德宇', '20151104795', '男', 20);
INSERT INTO `tb_user` VALUES (6, '邰家瑞', '20151104801', '男', 22);
INSERT INTO `tb_user` VALUES (7, '何若琪', '20151104797', '女', 18);
INSERT INTO `tb_user` VALUES (8, '瑶瑶', '20151104803', '女', 19);
INSERT INTO `tb_user` VALUES (9, '毛思耀', '20151104803', '男', 22);
INSERT INTO `tb_user` VALUES (10, '刘雅婷', '20151104784', '女', 19);
INSERT INTO `tb_user` VALUES (11, '包永安', '20151104792', '男', 127);
INSERT INTO `tb_user` VALUES (12, '李锐', '20151104794', '男', 22);
INSERT INTO `tb_user` VALUES (13, '小博', '20151104804', '男', 21);
INSERT INTO `tb_user` VALUES (14, '张硕硕', '20151104769', '女', 18);

SET FOREIGN_KEY_CHECKS = 1;
