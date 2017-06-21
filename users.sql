/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50717
Source Host           : localhost:3307
Source Database       : klinik_keuangan_daerah

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-12 08:31:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `bidang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'brillian musyafa', 'brillianmusyafa@gmail.com', '$2y$10$1vvPlEp9Qqsvowm6WlJMWu2WLlCRMusNbVCFegiq2d4k8eT1dFrV2', '8FA7bp3L9NQ6YX8pMVcVTBJVyh1aSyyrQQVTC4jzlcnXQh2qbZXO8YUCeDaw', '2017-05-03 01:02:09', '2017-05-03 01:02:09', '1', null);
INSERT INTO `users` VALUES ('2', 'Sri Hono', 'srihono@gmail.com', '$2y$10$uwbSfhC5IE0.zdluZWoU8.LczwXJTuPlL/PmnEhSyD4/YhFlYL/rm', 'zCDuQlATXuNcP1Rt3ZJoS3MZzDGuC94oWPAAkFF66mtCBpuNkVMwzLvgw2gB', '2017-05-09 08:06:43', '2017-05-09 08:06:43', '2', '1');
