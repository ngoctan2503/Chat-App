/*
 Navicat Premium Data Transfer

 Source Server         : login
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : chat_application

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 23/06/2024 10:58:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `FileID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `FileExtension` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BlurHash` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`FileID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `message_type` int NOT NULL,
  `message_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 37, 36, 1, 'f', '2024-06-19 20:33:22');
INSERT INTO `messages` VALUES (2, 36, 37, 1, 'f', '2024-06-19 21:12:19');
INSERT INTO `messages` VALUES (3, 36, 37, 1, 'eee', '2024-06-19 21:12:22');
INSERT INTO `messages` VALUES (4, 37, 36, 1, 'r', '2024-06-19 22:03:17');
INSERT INTO `messages` VALUES (5, 36, 38, 1, 'rw', '2024-06-19 22:03:24');
INSERT INTO `messages` VALUES (6, 36, 37, 1, 'fff', '2024-06-19 22:04:42');
INSERT INTO `messages` VALUES (7, 36, 37, 1, 'b', '2024-06-23 09:52:37');
INSERT INTO `messages` VALUES (8, 39, 36, 1, 'hi', '2024-06-23 10:30:00');
INSERT INTO `messages` VALUES (9, 38, 39, 1, 'hi', '2024-06-23 10:30:51');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `UserID` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`UserID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (36, 'dara', '123');
INSERT INTO `user` VALUES (37, 'raven', '123');
INSERT INTO `user` VALUES (38, 'china', '123');
INSERT INTO `user` VALUES (39, 'dat', '123');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account`  (
  `UserID` int UNSIGNED NOT NULL,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Image` longblob NULL,
  `ImageString` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`UserID`) USING BTREE,
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES (36, 'dara', '', NULL, '', '1');
INSERT INTO `user_account` VALUES (37, 'raven', '', NULL, '', '1');
INSERT INTO `user_account` VALUES (38, 'china', '', NULL, '', '1');
INSERT INTO `user_account` VALUES (39, 'dat', '', NULL, '', '1');

SET FOREIGN_KEY_CHECKS = 1;
