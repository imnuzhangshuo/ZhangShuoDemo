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

 Date: 23/10/2018 17:05:40
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
INSERT INTO `tb_user` VALUES (1, '涓�绫冲叓鍏殑瀛﹂暱', '20151104769', '鐢�', 22);
INSERT INTO `tb_user` VALUES (2, '鏃跺皻濂充汉鐨勫効瀛�', '20151104798', '鐢�', 21);
INSERT INTO `tb_user` VALUES (3, '纭曠', '20151104769', '濂�', 18);
INSERT INTO `tb_user` VALUES (4, '寮犻洦', '20151104799', '鐢�', 22);
INSERT INTO `tb_user` VALUES (5, '寮犲痉瀹�', '20151104795', '鐢�', 20);
INSERT INTO `tb_user` VALUES (6, '閭板鐟�', '20151104801', '鐢�', 22);
INSERT INTO `tb_user` VALUES (7, '浣曡嫢鐞�', '20151104797', '濂�', 18);
INSERT INTO `tb_user` VALUES (8, '鐟剁懚', '20151104803', '濂�', 19);
INSERT INTO `tb_user` VALUES (9, '姣涙�濊��', '20151104803', '鐢�', 22);
INSERT INTO `tb_user` VALUES (10, '鍒橀泤濠�', '20151104784', '濂�', 19);
INSERT INTO `tb_user` VALUES (11, '鍖呮案瀹�', '20151104792', '鐢�', 127);
INSERT INTO `tb_user` VALUES (12, '鏉庨攼', '20151104794', '鐢�', 22);
INSERT INTO `tb_user` VALUES (13, '灏忓崥', '20151104804', '鐢�', 21);
INSERT INTO `tb_user` VALUES (14, '寮犵纭�', '20151104769', '濂�', 18);

SET FOREIGN_KEY_CHECKS = 1;
