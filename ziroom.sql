/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : ziroom

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 15/06/2023 17:06:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for areas
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaMargin` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES (1, '10㎡以下');
INSERT INTO `areas` VALUES (2, '10-20㎡');
INSERT INTO `areas` VALUES (3, '20-30㎡');
INSERT INTO `areas` VALUES (4, '40㎡以下');
INSERT INTO `areas` VALUES (5, '40-60㎡');
INSERT INTO `areas` VALUES (6, '60-80㎡');
INSERT INTO `areas` VALUES (7, '80-100㎡');
INSERT INTO `areas` VALUES (8, '100-120㎡');

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `attrId` int(11) NOT NULL AUTO_INCREMENT,
  `attrName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attrId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (1, '找房方式');
INSERT INTO `attribute` VALUES (2, '类型');
INSERT INTO `attribute` VALUES (3, '租金');
INSERT INTO `attribute` VALUES (4, '特色户型');
INSERT INTO `attribute` VALUES (5, '优惠活动');
INSERT INTO `attribute` VALUES (6, '房源面积');
INSERT INTO `attribute` VALUES (7, '房源朝向');
INSERT INTO `attribute` VALUES (8, '供暖方式');
INSERT INTO `attribute` VALUES (9, '租期时长');
INSERT INTO `attribute` VALUES (10, '房源状态');

-- ----------------------------
-- Table structure for attrvalue
-- ----------------------------
DROP TABLE IF EXISTS `attrvalue`;
CREATE TABLE `attrvalue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attrId` int(11) NULL DEFAULT NULL,
  `valueName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `valueId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attrvalue
-- ----------------------------
INSERT INTO `attrvalue` VALUES (1, 2, '合租', NULL);
INSERT INTO `attrvalue` VALUES (2, 2, '整租', NULL);
INSERT INTO `attrvalue` VALUES (3, 2, '自如寓', NULL);
INSERT INTO `attrvalue` VALUES (4, 2, '曼舍', NULL);
INSERT INTO `attrvalue` VALUES (5, 3, '1500以下', NULL);
INSERT INTO `attrvalue` VALUES (6, 3, '1500-2500元', NULL);
INSERT INTO `attrvalue` VALUES (7, 3, '2500-3500元', NULL);
INSERT INTO `attrvalue` VALUES (8, 3, '3500-4500元', NULL);
INSERT INTO `attrvalue` VALUES (9, 3, '4500-6000元', NULL);
INSERT INTO `attrvalue` VALUES (10, 3, '6000-8000元', NULL);
INSERT INTO `attrvalue` VALUES (11, 3, '8000-9000元', NULL);
INSERT INTO `attrvalue` VALUES (12, 3, '9000元以上', NULL);
INSERT INTO `attrvalue` VALUES (13, 4, 'loft', NULL);
INSERT INTO `attrvalue` VALUES (14, 4, '近地铁', NULL);
INSERT INTO `attrvalue` VALUES (15, 4, '有电梯', NULL);
INSERT INTO `attrvalue` VALUES (16, 4, '主卧独卫', NULL);
INSERT INTO `attrvalue` VALUES (17, 4, '次卧DIY', NULL);
INSERT INTO `attrvalue` VALUES (18, 4, '公共盥洗室', NULL);
INSERT INTO `attrvalue` VALUES (19, 4, '独立阳台', NULL);
INSERT INTO `attrvalue` VALUES (20, 4, '双卫生间', NULL);
INSERT INTO `attrvalue` VALUES (21, 5, '超级秒杀日', NULL);
INSERT INTO `attrvalue` VALUES (22, 5, '必看好房', NULL);
INSERT INTO `attrvalue` VALUES (23, 6, '10㎡以下', NULL);
INSERT INTO `attrvalue` VALUES (24, 6, '10-20㎡', NULL);
INSERT INTO `attrvalue` VALUES (25, 6, '20㎡以上', NULL);
INSERT INTO `attrvalue` VALUES (26, 6, '40㎡以下', NULL);
INSERT INTO `attrvalue` VALUES (27, 6, '40-60㎡', NULL);
INSERT INTO `attrvalue` VALUES (28, 6, '60-80㎡', NULL);
INSERT INTO `attrvalue` VALUES (29, 6, '80-100㎡', NULL);
INSERT INTO `attrvalue` VALUES (30, 6, '100-120㎡', NULL);
INSERT INTO `attrvalue` VALUES (31, 7, '南', NULL);
INSERT INTO `attrvalue` VALUES (32, 7, '北', NULL);
INSERT INTO `attrvalue` VALUES (33, 7, '东', NULL);
INSERT INTO `attrvalue` VALUES (34, 7, '西', NULL);
INSERT INTO `attrvalue` VALUES (35, 8, '集体供暖', NULL);
INSERT INTO `attrvalue` VALUES (36, 8, '独立供暖', NULL);
INSERT INTO `attrvalue` VALUES (37, 8, '中央供暖', NULL);
INSERT INTO `attrvalue` VALUES (38, 10, '可立即入住', NULL);
INSERT INTO `attrvalue` VALUES (39, 10, '可预签', NULL);
INSERT INTO `attrvalue` VALUES (40, 10, '自如客转租', NULL);
INSERT INTO `attrvalue` VALUES (41, 10, '可预订', NULL);
INSERT INTO `attrvalue` VALUES (42, 10, '可闪定', NULL);
INSERT INTO `attrvalue` VALUES (43, 9, '长租一年', NULL);
INSERT INTO `attrvalue` VALUES (44, 9, '长租一年以上', NULL);
INSERT INTO `attrvalue` VALUES (45, 9, '可短签', NULL);
INSERT INTO `attrvalue` VALUES (46, 1, '区域', NULL);
INSERT INTO `attrvalue` VALUES (47, 1, '地铁', NULL);
INSERT INTO `attrvalue` VALUES (48, NULL, '东城', 46);
INSERT INTO `attrvalue` VALUES (49, NULL, '西城', 46);
INSERT INTO `attrvalue` VALUES (50, NULL, '南城', 46);
INSERT INTO `attrvalue` VALUES (51, NULL, '北城', 46);
INSERT INTO `attrvalue` VALUES (52, NULL, '1号线', 47);
INSERT INTO `attrvalue` VALUES (53, NULL, '2号线', 47);
INSERT INTO `attrvalue` VALUES (54, NULL, '3号线', 47);
INSERT INTO `attrvalue` VALUES (55, NULL, '4号线', 47);
INSERT INTO `attrvalue` VALUES (56, NULL, '长租两年以下', 44);
INSERT INTO `attrvalue` VALUES (57, NULL, '长租两年', 44);
INSERT INTO `attrvalue` VALUES (58, NULL, '长租两年以上', 44);
INSERT INTO `attrvalue` VALUES (59, NULL, '<=1个月', 45);
INSERT INTO `attrvalue` VALUES (60, NULL, '1-2个月', 45);
INSERT INTO `attrvalue` VALUES (61, NULL, '2-4个月', 45);
INSERT INTO `attrvalue` VALUES (62, NULL, '4-7个月', 45);
INSERT INTO `attrvalue` VALUES (63, NULL, '7-12个月', 45);

-- ----------------------------
-- Table structure for consulthouse
-- ----------------------------
DROP TABLE IF EXISTS `consulthouse`;
CREATE TABLE `consulthouse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` int(11) NULL DEFAULT NULL COMMENT '房屋Id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '中介ID',
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题',
  `cPhone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '咨询电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consulthouse
-- ----------------------------
INSERT INTO `consulthouse` VALUES (1, 1, 1, '123', '123131');
INSERT INTO `consulthouse` VALUES (2, 2, 2, '水电是否免费', '112131231');

-- ----------------------------
-- Table structure for consultsee
-- ----------------------------
DROP TABLE IF EXISTS `consultsee`;
CREATE TABLE `consultsee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomId` int(11) NULL DEFAULT NULL COMMENT '房屋Id',
  `uid` int(11) NULL DEFAULT NULL COMMENT '中介ID',
  `seeTime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约看时间',
  `seePhone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '约看手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consultsee
-- ----------------------------
INSERT INTO `consultsee` VALUES (1, 2, 2, '2020-12-23', '2132131');
INSERT INTO `consultsee` VALUES (2, 2, 2, '2020-12-23', '2132131');

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist`  (
  `houseid` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `userlist_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES (17, '深圳市盐田区沙头角856号4楼', 1300.00, '已出租', '1、不能使用灶火。\n2、基本家电齐全，拎包入住。', 31, '何小琳');
INSERT INTO `houselist` VALUES (20, '深圳市盐田区大梅沙66号1楼', 900.00, '已出租', '无', 32, '王大锤');
INSERT INTO `houselist` VALUES (21, '深圳市盐田区大梅沙66号3楼', 800.00, '已出租', '无', 29, '周晓二');
INSERT INTO `houselist` VALUES (23, '深圳市龙华新区民塘路绿景公馆1699（南区）', 2000.00, '未出租', '无', NULL, NULL);
INSERT INTO `houselist` VALUES (26, '深圳市盐田区大梅沙96号1楼', 900.00, '未出租', '家电齐全，拎包入住。', NULL, NULL);
INSERT INTO `houselist` VALUES (27, '深圳市盐田区大梅沙909号3楼', 1800.00, '未出租', '无', NULL, NULL);

-- ----------------------------
-- Table structure for leaselength
-- ----------------------------
DROP TABLE IF EXISTS `leaselength`;
CREATE TABLE `leaselength`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaseTime` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leaselength
-- ----------------------------
INSERT INTO `leaselength` VALUES (1, '<=1个月', 1);
INSERT INTO `leaselength` VALUES (2, '1-2个月', 1);
INSERT INTO `leaselength` VALUES (3, '2-4个月', 1);
INSERT INTO `leaselength` VALUES (4, '4-7个月', 1);
INSERT INTO `leaselength` VALUES (5, '7-12个月', 1);
INSERT INTO `leaselength` VALUES (6, '长租两年以下', 2);
INSERT INTO `leaselength` VALUES (7, '长租两年', 2);
INSERT INTO `leaselength` VALUES (8, '长租两年以上', 2);

-- ----------------------------
-- Table structure for paid
-- ----------------------------
DROP TABLE IF EXISTS `paid`;
CREATE TABLE `paid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `paydate` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paid
-- ----------------------------
INSERT INTO `paid` VALUES (30, '深圳市盐田区沙头角856号4楼', 1300.00, '2019-04-01', NULL, '何小琳', 31, '未缴', 17);
INSERT INTO `paid` VALUES (31, '深圳市盐田区大梅沙66号1楼', 900.00, '2019-04-01', NULL, '王大锤', 32, '未缴', 20);
INSERT INTO `paid` VALUES (32, '深圳市盐田区大梅沙66号3楼', 800.00, '2019-04-01', NULL, '周晓二', 29, '未缴', 21);

-- ----------------------------
-- Table structure for roompicture
-- ----------------------------
DROP TABLE IF EXISTS `roompicture`;
CREATE TABLE `roompicture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roomId` int(11) NULL DEFAULT NULL COMMENT '房间ID',
  `pictureURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间|房屋图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 360 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roompicture
-- ----------------------------
INSERT INTO `roompicture` VALUES (1, 2, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (2, 2, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (3, 2, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (4, 2, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (5, 2, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (6, 2, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (7, 2, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (8, 2, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (9, 2, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (10, 2, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (11, 2, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (12, 3, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (13, 3, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (14, 3, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (15, 3, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (16, 3, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (17, 3, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (18, 3, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (19, 4, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (20, 4, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (21, 4, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (22, 4, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (23, 4, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (24, 4, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (25, 4, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (26, 5, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (27, 5, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (28, 5, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (29, 5, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (30, 5, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (31, 5, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (32, 5, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (33, 5, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (34, 6, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (35, 6, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (36, 6, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (37, 6, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (38, 6, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (39, 6, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (40, 6, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (41, 6, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (42, 6, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (43, 6, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (44, 6, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (45, 7, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (46, 7, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (47, 7, 'https://imgpro.ziroom.com/6613bbd1-0307-41f9-b110-c545d2c642d4_542.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (48, 7, 'https://imgpro.ziroom.com/39c3e81cdef5b945c2f7820bb028dcd4_105.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (49, 7, 'https://imgpro.ziroom.com/88ec8dc5aac685b3b52ca415555246b7_652.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (50, 7, 'https://imgpro.ziroom.com/2565d5c913f4398c7df0606618997a1a_956.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (51, 7, 'https://imgpro.ziroom.com/7d3e2b1d688edfd2ff0d48e32920f8a0_524.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (52, 7, 'https://imgpro.ziroom.com/a0fb6353d5945eefa64166fadd42c8fa_560.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (53, 7, 'https://imgpro.ziroom.com/95e6d03cc92b46ae2f1764f0faa43bb4_918.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (54, 1, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (55, 1, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (56, 1, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (57, 1, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (58, 1, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (59, 1, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (60, 1, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (61, 1, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (62, 1, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (63, 8, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (64, 8, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (65, 8, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (66, 8, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (67, 8, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (68, 8, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (69, 8, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (70, 8, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (71, 8, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (72, 9, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (73, 9, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (74, 9, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (75, 9, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (76, 9, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (77, 9, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (78, 9, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (79, 9, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (80, 9, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (81, 9, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (82, 9, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (83, 10, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (84, 10, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (85, 10, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (86, 10, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (87, 10, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (88, 10, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (89, 10, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (90, 11, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (91, 11, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (92, 11, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (93, 11, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (94, 11, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (95, 11, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (96, 11, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (97, 12, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (98, 12, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (99, 12, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (100, 12, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (101, 12, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (102, 12, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (103, 12, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (104, 12, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (105, 13, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (106, 13, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (107, 13, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (108, 13, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (109, 13, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (110, 13, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (111, 13, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (112, 13, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (113, 13, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (114, 13, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (115, 13, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (116, 14, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (117, 14, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (118, 14, 'https://imgpro.ziroom.com/6613bbd1-0307-41f9-b110-c545d2c642d4_542.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (119, 14, 'https://imgpro.ziroom.com/39c3e81cdef5b945c2f7820bb028dcd4_105.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (120, 14, 'https://imgpro.ziroom.com/88ec8dc5aac685b3b52ca415555246b7_652.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (121, 14, 'https://imgpro.ziroom.com/2565d5c913f4398c7df0606618997a1a_956.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (122, 14, 'https://imgpro.ziroom.com/7d3e2b1d688edfd2ff0d48e32920f8a0_524.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (123, 14, 'https://imgpro.ziroom.com/a0fb6353d5945eefa64166fadd42c8fa_560.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (124, 14, 'https://imgpro.ziroom.com/95e6d03cc92b46ae2f1764f0faa43bb4_918.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (125, 15, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (126, 15, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (127, 15, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (128, 15, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (129, 15, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (130, 15, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (131, 15, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (132, 15, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (133, 15, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (134, 16, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (135, 16, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (136, 16, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (137, 16, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (138, 16, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (139, 16, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (140, 16, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (141, 16, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (142, 16, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (143, 16, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (144, 16, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (145, 17, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (146, 17, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (147, 17, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (148, 17, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (149, 17, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (150, 17, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (151, 17, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (152, 18, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (153, 18, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (154, 18, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (155, 18, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (156, 18, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (157, 18, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (158, 18, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (159, 19, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (160, 19, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (161, 19, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (162, 19, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (163, 19, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (164, 19, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (165, 19, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (166, 19, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (167, 20, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (168, 20, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (169, 20, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (170, 20, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (171, 20, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (172, 20, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (173, 20, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (174, 20, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (175, 20, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (176, 20, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (177, 21, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (178, 21, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (179, 21, 'https://imgpro.ziroom.com/6613bbd1-0307-41f9-b110-c545d2c642d4_542.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (180, 21, 'https://imgpro.ziroom.com/39c3e81cdef5b945c2f7820bb028dcd4_105.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (181, 21, 'https://imgpro.ziroom.com/88ec8dc5aac685b3b52ca415555246b7_652.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (182, 21, 'https://imgpro.ziroom.com/2565d5c913f4398c7df0606618997a1a_956.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (183, 21, 'https://imgpro.ziroom.com/7d3e2b1d688edfd2ff0d48e32920f8a0_524.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (184, 21, 'https://imgpro.ziroom.com/a0fb6353d5945eefa64166fadd42c8fa_560.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (185, 21, 'https://imgpro.ziroom.com/95e6d03cc92b46ae2f1764f0faa43bb4_918.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (186, 22, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (187, 22, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (188, 22, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (189, 22, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (190, 22, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (191, 22, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (192, 22, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (193, 22, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (194, 22, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (195, 23, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (196, 23, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (197, 23, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (198, 23, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (199, 23, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (200, 23, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (201, 23, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (202, 23, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (203, 23, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (204, 23, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (205, 23, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (206, 24, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (207, 24, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (208, 24, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (209, 24, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (210, 24, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (211, 24, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (212, 24, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (213, 25, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (214, 25, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (215, 25, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (216, 25, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (217, 25, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (218, 25, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (219, 25, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (220, 26, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (221, 26, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (222, 26, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (223, 26, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (224, 26, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (225, 26, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (226, 26, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (227, 26, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (228, 27, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (229, 27, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (230, 27, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (231, 27, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (232, 27, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (233, 27, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (234, 27, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (235, 27, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (236, 27, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (237, 27, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (238, 28, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (239, 28, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (240, 28, 'https://imgpro.ziroom.com/6613bbd1-0307-41f9-b110-c545d2c642d4_542.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (241, 28, 'https://imgpro.ziroom.com/39c3e81cdef5b945c2f7820bb028dcd4_105.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (242, 28, 'https://imgpro.ziroom.com/88ec8dc5aac685b3b52ca415555246b7_652.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (243, 28, 'https://imgpro.ziroom.com/2565d5c913f4398c7df0606618997a1a_956.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (244, 28, 'https://imgpro.ziroom.com/7d3e2b1d688edfd2ff0d48e32920f8a0_524.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (245, 28, 'https://imgpro.ziroom.com/a0fb6353d5945eefa64166fadd42c8fa_560.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (246, 28, 'https://imgpro.ziroom.com/95e6d03cc92b46ae2f1764f0faa43bb4_918.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (247, 29, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (248, 29, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (249, 29, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (250, 29, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (251, 29, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (252, 29, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (253, 29, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (254, 29, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (255, 29, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (256, 30, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (257, 30, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (258, 30, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (259, 30, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (260, 30, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (261, 30, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (262, 30, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (263, 30, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (264, 30, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (265, 30, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (266, 30, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (267, 31, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (268, 31, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (269, 31, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (270, 31, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (271, 31, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (272, 31, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (273, 31, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (274, 32, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (275, 32, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (276, 32, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (277, 32, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (278, 32, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (279, 32, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (280, 32, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (281, 33, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (282, 33, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (283, 33, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (284, 33, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (285, 33, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (286, 33, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (287, 33, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (288, 33, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (289, 34, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (290, 34, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (291, 34, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (292, 34, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (293, 34, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (294, 34, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (295, 34, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (296, 34, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (297, 34, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (298, 34, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (299, 35, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (300, 35, 'https://imgpro.ziroom.com/120cbee9-b5a5-478d-856e-aa0f109300c1_960.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (301, 35, 'https://imgpro.ziroom.com/6613bbd1-0307-41f9-b110-c545d2c642d4_542.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (302, 35, 'https://imgpro.ziroom.com/39c3e81cdef5b945c2f7820bb028dcd4_105.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (303, 35, 'https://imgpro.ziroom.com/88ec8dc5aac685b3b52ca415555246b7_652.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (304, 35, 'https://imgpro.ziroom.com/2565d5c913f4398c7df0606618997a1a_956.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (305, 35, 'https://imgpro.ziroom.com/7d3e2b1d688edfd2ff0d48e32920f8a0_524.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (306, 35, 'https://imgpro.ziroom.com/a0fb6353d5945eefa64166fadd42c8fa_560.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (307, 35, 'https://imgpro.ziroom.com/95e6d03cc92b46ae2f1764f0faa43bb4_918.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (308, 36, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (309, 36, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (310, 36, 'https://imgpro.ziroom.com/785d0ca7-50ad-49f1-99b0-5a2e6dade830_133.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (311, 36, 'https://imgpro.ziroom.com/370fb36a-d375-4a60-8c6f-441df9aa9447_303.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (312, 36, 'https://imgpro.ziroom.com/b3c455ac-9064-474a-b07f-8863da594303_597.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (313, 36, 'https://imgpro.ziroom.com/9c27a00a-c5d7-479c-9a25-02726c206f13_396.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (314, 36, 'https://imgpro.ziroom.com/e0ccc576-e08c-4e61-9938-37fc4b93eb4b_970.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (315, 36, 'https://imgpro.ziroom.com/57f0b2de-04f0-43b1-bf7b-f0b72fe293df_559.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (316, 36, 'https://imgpro.ziroom.com/bdf8a0c6-fcdf-4e5b-bf66-d9ae3baebd49_766.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (317, 37, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (318, 37, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (319, 37, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (320, 37, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (321, 37, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (322, 37, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (323, 37, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (324, 37, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (325, 37, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (326, 37, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (327, 37, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (328, 38, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (329, 38, 'https://imgpro.ziroom.com/9a62e84f-f908-45ef-8acb-6d37ca35663a_822.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (330, 38, 'https://imgpro.ziroom.com/66be6753-23ac-4cf3-9408-5507a57820d3_603.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (331, 38, 'https://imgpro.ziroom.com/ecae71b50cbeb344573115f6fbfcceec_276.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (332, 38, 'https://imgpro.ziroom.com/086e9992a74bcdc2c1c9bbbf82c45f28_698.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (333, 38, 'https://imgpro.ziroom.com/b35f661cd11cc6e69f6fc9013861ea49_018.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (334, 38, 'https://imgpro.ziroom.com/87dbf34681eec1d8f60d66d8b57465ac_580.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (335, 39, 'https://imgpro.ziroom.com/1bd32b8b-f6a9-44ed-9a45-17d496265c08_996.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (336, 39, 'https://imgpro.ziroom.com/e8d47ed2-bb0c-4f3f-a7e2-e0012fc0b494_595.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (337, 39, 'https://imgpro.ziroom.com/e872dc3dfbe50cc132859f65420afb24_504.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (338, 39, 'https://imgpro.ziroom.com/9ab3d068c49ff8b26b5a9dfe53124a64_627.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (339, 39, 'https://imgpro.ziroom.com/d4cdf4496027c932ab47d626bcfd82ab_733.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (340, 39, 'https://imgpro.ziroom.com/289bea671d65cc8718af28ca684671f8_731.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (341, 39, 'https://imgpro.ziroom.com/5fca9d1e749798b15505ffa6d575d1bd_033.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (342, 40, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (343, 40, 'https://imgpro.ziroom.com/3418a568-4208-4bbf-8834-c5251ba5b6ba_537.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (344, 40, 'https://imgpro.ziroom.com/63ad4db9-23bb-4cdf-bd46-c72bb6341c12_220.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (345, 40, 'https://imgpro.ziroom.com/a0d5ab361066cad78040db3c810222c6_878.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (346, 40, 'https://imgpro.ziroom.com/6cb3daabe7bbf8d2afce26878b5cdfee_494.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (347, 40, 'https://imgpro.ziroom.com/3234638973296291c3d6f3fe898e782e_417.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (348, 40, 'https://imgpro.ziroom.com/e4bad9ab736b396099ac4d443390b9c2_192.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (349, 40, 'https://imgpro.ziroom.com/a88173f442414ee0a6d60537b0e7f8f2_305.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (350, 41, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_380_285_Q80.jpg_C_380_285_Q80.webp');
INSERT INTO `roompicture` VALUES (351, 41, 'https://imgpro.ziroom.com/bc97ba9b-9629-465c-9258-3c656f6e5623_875.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (352, 41, 'https://imgpro.ziroom.com/ee426066-b86f-42d0-874b-61e7a881d136_633.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (353, 41, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (354, 41, 'https://imgpro.ziroom.com/142a37faeea230e03fe0af72231b6845_670.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (355, 41, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (356, 41, 'https://imgpro.ziroom.com/09b73d8de8bba0ebe28ef083847a6373_300.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (357, 41, 'https://imgpro.ziroom.com/e74b8887b8af64d9433ea8711d4725b4_641.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (358, 41, 'https://imgpro.ziroom.com/f3c143538c0c4ab5e88efd093b3dda78_343.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');
INSERT INTO `roompicture` VALUES (359, 41, 'https://imgpro.ziroom.com/c71e2477b789273faa225f0cdfb4ff80_365.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp');

-- ----------------------------
-- Table structure for roomprice
-- ----------------------------
DROP TABLE IF EXISTS `roomprice`;
CREATE TABLE `roomprice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priceMargin` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomprice
-- ----------------------------
INSERT INTO `roomprice` VALUES (1, '1500以下');
INSERT INTO `roomprice` VALUES (2, '1500--2500元');
INSERT INTO `roomprice` VALUES (3, '2500--3500元');
INSERT INTO `roomprice` VALUES (4, '3500--4500元');
INSERT INTO `roomprice` VALUES (5, '4500--6000元');
INSERT INTO `roomprice` VALUES (6, '6000元以上');

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `roomId` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋ID',
  `roomName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋名称',
  `roomArea` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋面积',
  `roomNumber` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间编号，合租存在',
  `roomNumbers` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间数量，合租存在',
  `houseType` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '户型名称',
  `floor` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼层',
  `roomLocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `elevator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电梯有无',
  `completion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建成日期',
  `heatingType` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '供暖方式',
  `afforest` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绿化面积',
  `areaLocation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在区域',
  `subway` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地铁线',
  `tenementName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租房类型名称',
  `roomPrice` int(11) NULL DEFAULT NULL COMMENT '房间价格',
  `characterName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特色户型名称',
  `orientationName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间朝向',
  `statusName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房源状态名称',
  `specialOffer` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠活动',
  `roomTime` int(11) NULL DEFAULT NULL COMMENT '房间租赁时长',
  `videoURL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间视频地址',
  `roomPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示图片',
  `uid` int(11) NULL DEFAULT NULL COMMENT '中介id',
  PRIMARY KEY (`roomId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES (1, '华诚花园', '85.2', NULL, '2居室', '两室一厅', '5/6', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '自如寓', 5530, '近地铁', '朝南', '可立即入住', '必看好房', 30, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (2, '华诚花园', '85.2', NULL, '2居室', '两室一厅', '5/6', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '整租', 5530, '近地铁', '朝南', '可立即入住', '必看好房', 24, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (3, '阳光', '78', NULL, '2居室', '两室一厅', '5/10', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '整租', 5530, '主卧独卫', '朝南', '可预签', '必看好房', 6, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (4, '前进花园石门苑', '19.1', '03室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '集体供暖', '10%', '西城', '15号线', '合租', 1890, '主卧独卫', '朝南', '可立即入住', '特惠秒杀', 12, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (5, '华诚花园', '85.2', NULL, '2居室', '两室一厅', '5/6', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '整租', 5530, '主卧独卫', '朝南', '可预签', '必看好房', 14, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (6, '前进花园石门苑', '19.1', '03室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '集体供暖', '10%', '西城', '15号线', '合租', 1429, '近地铁', '朝南', '可立即入住', '特惠秒杀', 35, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (7, '五和万科长阳天地9号院', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '自如寓', 1860, '有电梯', '朝南', '可预签', '特惠秒杀', 8, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (8, '双兴南区', '18', '03卧', '3居室', '3室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '合租', 1300, '近地铁', '朝南', '可立即入住', '特惠秒杀', 24, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (9, '碧波园', '25', '04卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '自采暖', '35%', '南城', '房山线', '曼舍', 2060, '近地铁', '朝南', '可立即入住', '特惠秒杀', 12, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (10, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '集体供暖', '30%', '北城', '6号线', '整租', 6946, '次卧DIY', '朝东', '可预签', '特惠秒杀', 19, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (11, '阳光', '78', NULL, '2居室', '两室一厅', '5/10', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '曼舍', 5530, '次卧DIY', '朝西', '可立即入住', '必看好房', 21, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (12, '金隅康惠园1号院', '19.1', '01室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '集体供暖', '10%', '西城', '15号线', '合租', 1890, '次卧DIY', '朝北', '可闪定', '特惠秒杀', 24, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (13, '新华联家园南区', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '自如寓', 1860, '有电梯', '朝南', '可预签', '特惠秒杀', 27, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (14, '天通西苑三区', '18', '03卧', '4居室', '4室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '合租', 1749, '近地铁', '朝南', '可立即入住', '特惠秒杀', 32, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (15, '双惠小区', '25', '03卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '自采暖', '35%', '南城', '房山线', '合租', 2060, '近地铁', '朝北', '可预签', '特惠秒杀', 42, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (16, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '中央供暖', '30%', '北城', '6号线', '自如寓', 6946, '独立阳台', '朝南', '可闪定', '特惠秒杀', 26, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (17, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '中央供暖', '30%', '北城', '6号线', '整租', 6946, '独立阳台', '朝北', '可立即入住', '特惠秒杀', 13, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (18, '华诚花园', '85.2', NULL, '2居室', '两室一厅', '5/6', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '中央供暖', '35%', '东城', '一号线', '整租', 5530, '独立阳台', '朝南', '自如客转租', '必看好房', 2, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (19, '前进花园石门苑', '19.1', '03室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '集体供暖', '10%', '西城', '15号线', '合租', 1890, '近地铁', '朝南', '可立即入住', '特惠秒杀', 1, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (20, '五和万科长阳天地9号院', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '自如寓', 1860, '有电梯', '朝北', '可立即入住', '特惠秒杀', 7, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (21, '双兴南区', '18', '03卧', '3居室', '3室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '合租', 1749, '近地铁', '朝南', '自如客转租', '特惠秒杀', 30, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (22, '碧波园', '25', '04卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '独立供暖', '35%', '南城', '房山线', '合租', 2060, '可养宠物', '朝北', '可立即入住', '特惠秒杀', 23, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (23, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '独立供暖', '30%', '北城', '6号线', '整租', 6946, '可养宠物', '朝南', '自如客转租', '特惠秒杀', 26, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (24, '阳光', '78', NULL, '2居室', '两室一厅', '5/10', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '中央供暖', '35%', '东城', '一号线', '曼舍', 5530, '可养宠物', '朝南', '自如客转租', '必看好房', 56, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (25, '金隅康惠园1号院', '19.1', '01室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '中央供暖', '10%', '西城', '15号线', '合租', 1890, '近地铁', '朝东', '可立即入住', '特惠秒杀', 48, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (26, '新华联家园南区', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '自如寓', 1860, '有电梯', '朝南', '自如客转租', '特惠秒杀', 46, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (27, '天通西苑三区', '18', '03卧', '4居室', '4室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '合租', 1749, '近地铁', '朝东', '可立即入住', '特惠秒杀', 32, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (28, '双惠小区', '25', '03卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '集体供暖', '35%', '南城', '房山线', '合租', 2060, '近地铁', '朝南', '自如客转租', '特惠秒杀', 24, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (29, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '独立供暖', '30%', '北城', '6号线', '整租', 6946, '近地铁', '朝东', '可闪定', '特惠秒杀', 15, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (30, '华诚花园', '85.2', NULL, '2居室', '两室一厅', '5/6', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '集体供暖', '35%', '东城', '一号线', '曼舍', 5530, 'loft', '朝南', '可立即入住', '必看好房', 17, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (31, '前进花园石门苑', '19.1', '03室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '独立供暖', '10%', '西城', '15号线', '合租', 1890, 'loft', '朝西', '可预订', '特惠秒杀', 19, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (32, '五和万科长阳天地9号院', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '合租', 1860, 'loft', '朝南', '可预订', '特惠秒杀', 22, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (33, '双兴南区', '18', '03卧', '3居室', '3室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '自如寓', 1749, 'loft', '朝西', '可立即入住', '特惠秒杀', 32, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (34, '碧波园', '25', '04卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '自采暖', '35%', '南城', '房山线', '合租', 2060, 'loft', '朝南', '可立即入住', '特惠秒杀', 32, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (35, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '独立供暖', '30%', '北城', '6号线', '整租', 6946, '灵之智能', '朝西', '可预订', '特惠秒杀', 45, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);
INSERT INTO `rooms` VALUES (36, '阳光', '78', NULL, '2居室', '两室一厅', '5/10', '小区距6号线物资学院路站步行约300米', '无', '1997年建成', '独立供暖', '35%', '东城', '一号线', '曼舍', 5530, '灵之智能', '朝南', '可预订', '必看好房', 25, 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 'https://imgpro.ziroom.com/15a19993-e465-4d96-bf96-051450f1c091_784.jpg_C_800_600_Q90.jpg_C_800_600_Q90.webp', 1);
INSERT INTO `rooms` VALUES (37, '金隅康惠园1号院', '19.1', '01室', '3居室', '3室1厅', '4/6', '小区距15号线石门站步行约116米', '无', '2008年建成', '集体供暖', '10%', '西城', '15号线', '合租', 1890, '灵之智能', '朝南', '可立即入住', '特惠秒杀', 16, NULL, 'https://imgpro.ziroom.com/a8ac0592-9e06-4b1d-af7b-0d4d45ccf9bb_925.jpg_C_640_480_Q100.jpg', 2);
INSERT INTO `rooms` VALUES (38, '新华联家园南区', '18', '02室', '4居室', '4室1厅', '2/10', '小区距房山线篱笆房站步行约112米', '有', '2017年建成', '集体供暖', '30%', '南城', '房山线', '自如寓', 1860, '灵之智能', '朝西', '可预订', '特惠秒杀', 18, NULL, 'https://imgpro.ziroom.com/4c62db72-1da1-47f8-8d30-765ee63b884c_129.jpg_C_640_480_Q100.jpg', 3);
INSERT INTO `rooms` VALUES (39, '天通西苑三区', '18', '03卧', '4居室', '4室1厅', '5/6', '小区距15号线顺义站步行约1348米', '无', '2016年建成', '集体供暖', '30%', '北城', '15号线', '合租', 1749, '公共盥洗室', '朝南', '可立即入住', '特惠秒杀', 20, NULL, 'https://imgpro.ziroom.com/9f0d1b2f-2119-44f0-8c41-07112456958d_345.jpg_C_640_480_Q100.jpg', 4);
INSERT INTO `rooms` VALUES (40, '双惠小区', '25', '03卧', '4居室', '4室1厅', '5/6', '小区距房山线广阳城站步行约358米', '无', '2007年建成', '中央供暖', '35%', '南城', '房山线', '曼舍', 2060, '公共盥洗室', '朝北', '可闪定', '特惠秒杀', 24, NULL, 'https://imgpro.ziroom.com/efbc737a-c809-4274-bd28-9dcdc320bca0_363.jpg_C_640_480_Q100.jpg', 5);
INSERT INTO `rooms` VALUES (41, '金铸阳光苑', '75', NULL, '2居室', '2室1厅', '25/28', '小区距6号线金安桥站步行约685米', '无', '2018年建成', '集体供暖', '30%', '北城', '6号线', '整租', 6946, '公共盥洗室', '朝南', '可立即入住', '特惠秒杀', 24, NULL, 'https://imgpro.ziroom.com/0a61cec2-7332-425c-b396-6639fa1e97ba_621.jpg_C_640_480_Q100.jpg', 6);

-- ----------------------------
-- Table structure for roomtitle
-- ----------------------------
DROP TABLE IF EXISTS `roomtitle`;
CREATE TABLE `roomtitle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `titleName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间|房屋标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomtitle
-- ----------------------------
INSERT INTO `roomtitle` VALUES (1, 1, '灵活短签');
INSERT INTO `roomtitle` VALUES (2, 1, '原味');
INSERT INTO `roomtitle` VALUES (3, 1, '住宅用途');
INSERT INTO `roomtitle` VALUES (4, 17, '灵活短签');
INSERT INTO `roomtitle` VALUES (5, 17, '原味');
INSERT INTO `roomtitle` VALUES (6, 17, '住宅用途');
INSERT INTO `roomtitle` VALUES (7, 2, '灵活短签');
INSERT INTO `roomtitle` VALUES (8, 2, '原味');
INSERT INTO `roomtitle` VALUES (9, 2, '住宅用途');
INSERT INTO `roomtitle` VALUES (10, 3, '灵活短签');
INSERT INTO `roomtitle` VALUES (11, 3, '原味');
INSERT INTO `roomtitle` VALUES (12, 3, '住宅用途');
INSERT INTO `roomtitle` VALUES (13, 4, '灵活短签');
INSERT INTO `roomtitle` VALUES (14, 4, '原味');
INSERT INTO `roomtitle` VALUES (15, 4, '住宅用途');
INSERT INTO `roomtitle` VALUES (16, 5, '灵活短签');
INSERT INTO `roomtitle` VALUES (17, 5, '原味');
INSERT INTO `roomtitle` VALUES (18, 5, '住宅用途');
INSERT INTO `roomtitle` VALUES (19, 6, '灵活短签');
INSERT INTO `roomtitle` VALUES (20, 6, '原味');
INSERT INTO `roomtitle` VALUES (21, 6, '住宅用途');
INSERT INTO `roomtitle` VALUES (22, 7, '灵活短签');
INSERT INTO `roomtitle` VALUES (23, 7, '原味');
INSERT INTO `roomtitle` VALUES (24, 7, '住宅用途');
INSERT INTO `roomtitle` VALUES (25, 8, '灵活短签');
INSERT INTO `roomtitle` VALUES (26, 8, '原味');
INSERT INTO `roomtitle` VALUES (27, 8, '住宅用途');
INSERT INTO `roomtitle` VALUES (28, 9, '灵活短签');
INSERT INTO `roomtitle` VALUES (29, 9, '原味');
INSERT INTO `roomtitle` VALUES (30, 9, '住宅用途');
INSERT INTO `roomtitle` VALUES (31, 10, '灵活短签');
INSERT INTO `roomtitle` VALUES (32, 10, '原味');
INSERT INTO `roomtitle` VALUES (33, 10, '住宅用途');
INSERT INTO `roomtitle` VALUES (34, 11, '灵活短签');
INSERT INTO `roomtitle` VALUES (35, 11, '原味');
INSERT INTO `roomtitle` VALUES (36, 11, '住宅用途');
INSERT INTO `roomtitle` VALUES (37, 12, '灵活短签');
INSERT INTO `roomtitle` VALUES (38, 12, '原味');
INSERT INTO `roomtitle` VALUES (39, 12, '住宅用途');
INSERT INTO `roomtitle` VALUES (40, 13, '灵活短签');
INSERT INTO `roomtitle` VALUES (41, 13, '原味');
INSERT INTO `roomtitle` VALUES (42, 13, '住宅用途');
INSERT INTO `roomtitle` VALUES (43, 14, '灵活短签');
INSERT INTO `roomtitle` VALUES (44, 14, '原味');
INSERT INTO `roomtitle` VALUES (45, 14, '住宅用途');
INSERT INTO `roomtitle` VALUES (46, 15, '灵活短签');
INSERT INTO `roomtitle` VALUES (47, 15, '原味');
INSERT INTO `roomtitle` VALUES (48, 15, '住宅用途');
INSERT INTO `roomtitle` VALUES (49, 16, '灵活短签');
INSERT INTO `roomtitle` VALUES (50, 16, '原味');
INSERT INTO `roomtitle` VALUES (51, 16, '住宅用途');
INSERT INTO `roomtitle` VALUES (52, 17, '灵活短签');
INSERT INTO `roomtitle` VALUES (53, 17, '原味');
INSERT INTO `roomtitle` VALUES (54, 17, '住宅用途');
INSERT INTO `roomtitle` VALUES (55, 18, '灵活短签');
INSERT INTO `roomtitle` VALUES (56, 18, '原味');
INSERT INTO `roomtitle` VALUES (57, 18, '住宅用途');
INSERT INTO `roomtitle` VALUES (58, 19, '灵活短签');
INSERT INTO `roomtitle` VALUES (59, 19, '原味');
INSERT INTO `roomtitle` VALUES (60, 19, '住宅用途');
INSERT INTO `roomtitle` VALUES (61, 20, '灵活短签');
INSERT INTO `roomtitle` VALUES (62, 20, '原味');
INSERT INTO `roomtitle` VALUES (63, 20, '住宅用途');
INSERT INTO `roomtitle` VALUES (64, 21, '灵活短签');
INSERT INTO `roomtitle` VALUES (65, 21, '原味');
INSERT INTO `roomtitle` VALUES (66, 21, '住宅用途');
INSERT INTO `roomtitle` VALUES (67, 22, '灵活短签');
INSERT INTO `roomtitle` VALUES (68, 22, '原味');
INSERT INTO `roomtitle` VALUES (69, 22, '住宅用途');
INSERT INTO `roomtitle` VALUES (70, 23, '灵活短签');
INSERT INTO `roomtitle` VALUES (71, 23, '原味');
INSERT INTO `roomtitle` VALUES (72, 23, '住宅用途');
INSERT INTO `roomtitle` VALUES (73, 24, '灵活短签');
INSERT INTO `roomtitle` VALUES (74, 24, '原味');
INSERT INTO `roomtitle` VALUES (75, 24, '住宅用途');
INSERT INTO `roomtitle` VALUES (76, 25, '灵活短签');
INSERT INTO `roomtitle` VALUES (77, 25, '原味');
INSERT INTO `roomtitle` VALUES (78, 25, '住宅用途');
INSERT INTO `roomtitle` VALUES (79, 26, '灵活短签');
INSERT INTO `roomtitle` VALUES (80, 26, '原味');
INSERT INTO `roomtitle` VALUES (81, 26, '住宅用途');
INSERT INTO `roomtitle` VALUES (82, 27, '灵活短签');
INSERT INTO `roomtitle` VALUES (83, 27, '原味');
INSERT INTO `roomtitle` VALUES (84, 27, '住宅用途');
INSERT INTO `roomtitle` VALUES (85, 28, '灵活短签');
INSERT INTO `roomtitle` VALUES (86, 28, '原味');
INSERT INTO `roomtitle` VALUES (87, 28, '住宅用途');
INSERT INTO `roomtitle` VALUES (88, 29, '灵活短签');
INSERT INTO `roomtitle` VALUES (89, 29, '原味');
INSERT INTO `roomtitle` VALUES (90, 29, '住宅用途');
INSERT INTO `roomtitle` VALUES (91, 30, '灵活短签');
INSERT INTO `roomtitle` VALUES (92, 30, '原味');
INSERT INTO `roomtitle` VALUES (93, 30, '住宅用途');
INSERT INTO `roomtitle` VALUES (94, 31, '灵活短签');
INSERT INTO `roomtitle` VALUES (95, 31, '原味');
INSERT INTO `roomtitle` VALUES (96, 31, '住宅用途');
INSERT INTO `roomtitle` VALUES (97, 32, '灵活短签');
INSERT INTO `roomtitle` VALUES (98, 32, '原味');
INSERT INTO `roomtitle` VALUES (99, 32, '住宅用途');
INSERT INTO `roomtitle` VALUES (100, 33, '灵活短签');
INSERT INTO `roomtitle` VALUES (101, 33, '原味');
INSERT INTO `roomtitle` VALUES (102, 33, '住宅用途');
INSERT INTO `roomtitle` VALUES (103, 34, '灵活短签');
INSERT INTO `roomtitle` VALUES (104, 34, '原味');
INSERT INTO `roomtitle` VALUES (105, 34, '住宅用途');
INSERT INTO `roomtitle` VALUES (106, 35, '灵活短签');
INSERT INTO `roomtitle` VALUES (107, 35, '原味');
INSERT INTO `roomtitle` VALUES (108, 35, '住宅用途');
INSERT INTO `roomtitle` VALUES (109, 36, '灵活短签');
INSERT INTO `roomtitle` VALUES (110, 36, '原味');
INSERT INTO `roomtitle` VALUES (111, 36, '住宅用途');
INSERT INTO `roomtitle` VALUES (112, 37, '灵活短签');
INSERT INTO `roomtitle` VALUES (113, 37, '原味');
INSERT INTO `roomtitle` VALUES (114, 37, '住宅用途');
INSERT INTO `roomtitle` VALUES (115, 38, '灵活短签');
INSERT INTO `roomtitle` VALUES (116, 38, '原味');
INSERT INTO `roomtitle` VALUES (117, 38, '住宅用途');
INSERT INTO `roomtitle` VALUES (118, 39, '灵活短签');
INSERT INTO `roomtitle` VALUES (119, 39, '原味');
INSERT INTO `roomtitle` VALUES (120, 39, '住宅用途');
INSERT INTO `roomtitle` VALUES (121, 40, '灵活短签');
INSERT INTO `roomtitle` VALUES (122, 40, '原味');
INSERT INTO `roomtitle` VALUES (123, 40, '住宅用途');
INSERT INTO `roomtitle` VALUES (124, 41, '灵活短签');
INSERT INTO `roomtitle` VALUES (125, 41, '原味');
INSERT INTO `roomtitle` VALUES (126, 41, '住宅用途');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL COMMENT '公告持续天数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (6, '2019-04-01', '注意及时缴纳本月房租', 7);
INSERT INTO `schedule` VALUES (8, '2019-04-15', '电梯停止使用一周，敬请见谅。', 7);
INSERT INTO `schedule` VALUES (9, '2019-04-15', '本月还未缴纳月租的租客请注意及时缴纳月租。', 7);

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `houseid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solve
-- ----------------------------
INSERT INTO `solve` VALUES (11, '深圳市盐田区沙头角856号4楼', '2019-04-16', '房门门栓损坏。', '何小琳', 31, '未处理', 17);

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant`  (
  `tId` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tNickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `tPhone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `tEmail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `tPassword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '123456' COMMENT '密码',
  PRIMARY KEY (`tId`) USING BTREE,
  UNIQUE INDEX `tPhone`(`tPhone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tenant
-- ----------------------------
INSERT INTO `tenant` VALUES (1, '12312', '15436726754', NULL, '123456');
INSERT INTO `tenant` VALUES (2, '自如客JcB5D', '231213213', NULL, '123123');
INSERT INTO `tenant` VALUES (3, '自如客REFlf', '19090', NULL, '123123');
INSERT INTO `tenant` VALUES (4, '自如客4ouTB', '123123', NULL, '123123');
INSERT INTO `tenant` VALUES (5, '自如客6hwLk', '1234567890123', NULL, '123456');
INSERT INTO `tenant` VALUES (6, '自如客D2Dst', '123456', NULL, '23456');
INSERT INTO `tenant` VALUES (7, '自如客o9ttG', '1232323232', NULL, NULL);
INSERT INTO `tenant` VALUES (8, '自如客UfAQb', '123123123', NULL, '');
INSERT INTO `tenant` VALUES (9, '自如客IbRQY', 'kk123456', NULL, '123456');
INSERT INTO `tenant` VALUES (10, '自如客ZGxlY', '13237234697', NULL, '123456');
INSERT INTO `tenant` VALUES (11, 'k9QnU', NULL, NULL, '123456');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '1为管理员，2为普通用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '88888888', 1);
INSERT INTO `user` VALUES (19, '13192664967', '13192664967', 2);
INSERT INTO `user` VALUES (21, '13192665859', '13192665859', 2);
INSERT INTO `user` VALUES (22, '13356998564', '13356998564', 2);

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES (27, '李老铁', '440582199712267459', '13199772826', 1);
INSERT INTO `userlist` VALUES (29, '周晓二', '445215966585236985', '13192664967', 19);
INSERT INTO `userlist` VALUES (31, '何小琳', '440582199512137569', '13192665859', 21);
INSERT INTO `userlist` VALUES (32, '王大锤', '440569199514285698', '13356998564', 22);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `upicture` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '李松华 ', 'https://image.ziroom.com/g2m4/M00/EF/5C/ChAZ2GL004WAODXdAADbSLLx558267.jpg', '1134', NULL);
INSERT INTO `users` VALUES (2, '王延康', 'https://img.zcool.cn/community/0198405eeebe6ba801215aa00d9907.jpg@1280w_1l_2o_100sh.jpg', '31', NULL);
INSERT INTO `users` VALUES (3, '巴金秋', 'https://p5.itc.cn/q_70/images01/20210429/2ebd14d2554449b1921e5fd35379c1e4.png', '4231', NULL);
INSERT INTO `users` VALUES (4, '王俊义', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fci.xiaohongshu.com%2Fd93ce4e3-f568-bdf0-5ff6-1138be24bda9%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fci.xiaohongshu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1682751529&t=799d2df26850ded0896c6379c85d6671', '2134', NULL);
INSERT INTO `users` VALUES (5, '王燕', 'https://img.zcool.cn/community/0172f75d0d89a7a801213ec2874848.jpg@1280w_1l_2o_100sh.jpg', '4231', NULL);
INSERT INTO `users` VALUES (6, '张平', 'https://img.zcool.cn/community/01a2835f0812c6a801206621de50d0.jpg?x-oss-process=image/auto-orient,1/resize,m_lfit,w_1280,limit_1/sharpen,100', '4132', NULL);
INSERT INTO `users` VALUES (7, '李沃华', 'https://img.zcool.cn/community/017bbf5d5665e0a80120695c36984c.jpg?x-oss-process=image/auto-orient,1/resize,m_lfit,w_1280,limit_1/sharpen,100', '4324', NULL);
INSERT INTO `users` VALUES (8, 'zwx', NULL, '45451548', NULL);
INSERT INTO `users` VALUES (9, 'zwx1', NULL, '123', NULL);
INSERT INTO `users` VALUES (10, 'cccdd', NULL, 'cccdd', NULL);
INSERT INTO `users` VALUES (17, 'zzz', NULL, 'zzzz', NULL);
INSERT INTO `users` VALUES (18, 'admin', NULL, 'admin', NULL);
INSERT INTO `users` VALUES (19, 'abc', NULL, 'zzz', NULL);
INSERT INTO `users` VALUES (20, 'cyk', NULL, 'cyk', NULL);

SET FOREIGN_KEY_CHECKS = 1;
