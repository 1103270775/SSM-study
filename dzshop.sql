/*
 Navicat Premium Data Transfer

 Source Server         : libraryDBMS
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : dzshop

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 05/08/2020 20:51:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mailnum` int(11) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '小明', '湖北省 宜昌市 西陵区三峡大学欣苑', 417100, '123456789', 6);
INSERT INTO `address` VALUES (2, '孙悟空', '花果山水帘洞猴王宝座', 417200, '1234567', 8);
INSERT INTO `address` VALUES (3, '何伟军', '湖北省三峡大学校长办公室', 42300, '1223131', 9);
INSERT INTO `address` VALUES (4, '吴旦', '湖北省武汉市', 33434, '343434', 10);

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `adminpwd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `admindate` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin', 'in', 'in', NULL);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  `imgurl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`carid`) USING BTREE,
  INDEX `c_uid`(`uid`) USING BTREE,
  CONSTRAINT `c_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (33, 7, '华为 HUAWEI P30 Pro 手机', 1, 'https://gd4.alicdn.com/imgextra/i4/364116646/O1CN01glW4mw1yxurC7GnTD_!!364116646-0-lubanu-s.jpg', 10, 3488.00);
INSERT INTO `cart` VALUES (35, 11, '小米笔记本Air 12.5\" 2019款', 1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9da19c26b55c0c22fea23c3b8a31dc28.jpg', 10, 3299.00);
INSERT INTO `cart` VALUES (40, 7, '华为 HUAWEI P30 Pro 手机', 2, 'https://gd4.alicdn.com/imgextra/i4/364116646/O1CN01glW4mw1yxurC7GnTD_!!364116646-0-lubanu-s.jpg', 22, 3488.00);
INSERT INTO `cart` VALUES (41, 8, 'Redmi K30 Pro手机', 1, 'https://gd4.alicdn.com/imgextra/i4/3163962920/O1CN01F41aQK1XRP5ggz59l_!!3163962920.jpg', 22, 2699.00);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '手机');
INSERT INTO `category` VALUES (2, '电视');
INSERT INTO `category` VALUES (3, '路由器');
INSERT INTO `category` VALUES (4, '笔记本');
INSERT INTO `category` VALUES (5, '键盘');
INSERT INTO `category` VALUES (6, '配件');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double(6, 2) UNSIGNED NULL DEFAULT NULL,
  `imgurl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pdesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `cid`(`cid`) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '华为wifi6路由器', 223.00, 'https://img.alicdn.com/imgextra/i1/111771455/O1CN01fnH6fX1McQssQIPJ0_!!0-saturn_solar.jpg_240x240xz.jpg_.webp', '千兆端口穿墙王家用大户型高速双千兆双频全屋无线wifi光纤路由器ax3双核3000m', 3);
INSERT INTO `products` VALUES (2, '小米Redmi路由器AX5', 249.00, 'https://img.alicdn.com/imgextra/i4/44096902/O1CN01TKg1Km20rAG3e1pd9_!!0-saturn_solar.jpg_240x240xz.jpg_.webp', '高通5核wifi6 Mesh组网全千兆端口5G双频无线速率家用大户型穿墙王', 3);
INSERT INTO `products` VALUES (3, 'TP-LINK双频AC1200无线路由器', 139.90, 'https://img.alicdn.com/imgextra/i4/109953527/O1CN01XwsLcY1bvPXIgYZL3_!!0-saturn_solar.jpg_240x240xz.jpg_.webp', '千兆端口家用高速穿墙王5G光纤tplink双千兆mesh全屋wifi有线网络路由器WDR5620', 3);
INSERT INTO `products` VALUES (4, '水星全千兆端口D268G路由器', 198.00, 'https://img.alicdn.com/imgextra/i3/127790372/O1CN01YLtqGu1EcPuhQH7en_!!0-saturn_solar.jpg_240x240xz.jpg_.webp', '2600M双频千兆无线路由器 家用穿墙高速wifi 双千兆大功率智能5G稳定穿墙王光纤宽带', 3);
INSERT INTO `products` VALUES (5, '一加 OnePlus 8 Pro手机', 5399.00, 'https://img.alicdn.com/imgextra/i2/2432146763/O1CN01v9SuuS1zpVCU12911_!!2432146763.jpg_430x430q90.jpg', '一加 OnePlus 8 Pro 5G旗舰 2K+120Hz 柔性屏 30W无线闪充 高通骁龙865 8GB+128GB 青空 拍照游戏手机', 1);
INSERT INTO `products` VALUES (6, 'Apple iPhone 11手机', 5899.00, 'https://gd4.alicdn.com/imgextra/i4/201522459/O1CN014vKrwf1U2GXOQSfkV_!!201522459-0-lubanu-s.jpg', 'Apple iPhone 11 (A2223) 128GB 白色 移动联通电信4G手机 双卡双待', 1);
INSERT INTO `products` VALUES (7, '华为 HUAWEI P30 Pro 手机', 3488.00, 'https://gd4.alicdn.com/imgextra/i4/364116646/O1CN01glW4mw1yxurC7GnTD_!!364116646-0-lubanu-s.jpg', '华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+128GB亮黑色全网通版双4G手机', 1);
INSERT INTO `products` VALUES (8, 'Redmi K30 Pro手机', 2699.00, 'https://gd4.alicdn.com/imgextra/i4/3163962920/O1CN01F41aQK1XRP5ggz59l_!!3163962920.jpg', 'Redmi K30 Pro 5G先锋 骁龙865旗舰处理器 4700mAh长续航 33W闪充 8GB+128GB 天际蓝', 1);
INSERT INTO `products` VALUES (9, 'RedmiBook 16笔记本', 4699.00, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1594113149.87593534.jpg', '全新十代酷睿处理器，MX350独显，16英寸超窄边框高清屏', 4);
INSERT INTO `products` VALUES (10, 'Pro 15.6\" 2020款笔记本', 5999.00, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1591872046.56035016.jpg', '全新第十代英特尔酷睿处理器 ，MX350显卡 ，全尺寸背光键盘，100%sRGB高色域', 4);
INSERT INTO `products` VALUES (11, '小米笔记本Air 12.5\" 2019款', 3299.00, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9da19c26b55c0c22fea23c3b8a31dc28.jpg', '采用第八代英特尔酷睿 i5/m3处理器，同时还有全金属机身、全贴合FHD屏、全尺寸背光键盘的超薄本', 4);
INSERT INTO `products` VALUES (12, '小米笔记本 15.6\" 独显版', 4299.00, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/cd2aa2dcad6440b469c22e27db9b6236.jpg', ' 延续小米笔记本正面无 LOGO 的极简设计，采用了深空灰金属上盖。15.6\" 全高清屏、依然保证机身薄至 19.9mm。集高性能、长续航与移动性于一身，小米笔记本 15.6\"，办公、生活全天候的选择。', 4);
INSERT INTO `products` VALUES (13, 'Sharp/夏普 60A3UC 60英寸', 3899.00, 'https://img.alicdn.com/imgextra/i4/2993567440/O1CN015Mdf9124pZKCyvFMn_!!2993567440.png_430x430q90.jpg', 'Sharp/夏普 60A3UC 60英寸4K高清智能网络平板液晶电视机55 65\r\n2020年新品上市/日本原装液晶面板 承诺送货入户', 2);
INSERT INTO `products` VALUES (14, 'changhong/长虹55D8K 55英寸', 4999.00, 'https://img.alicdn.com/imgextra/i4/186811816/O1CN01FsMEaE1PHlqthSUqu_!!186811816.jpg_430x430q90.jpg\"', 'changhong/长虹55D8K 55英寸8K高清智能语音全面屏平板液晶电视机', 2);
INSERT INTO `products` VALUES (15, '小米电视4A 50英寸', 1599.00, 'https://img.alicdn.com/imgextra/i1/2616970884/O1CN01Kh6DYo1IOub4Kqxf5_!!2616970884.jpg_430x430q90.jpg', '小米电视4A 50英寸4K超高清家用wifi智能液晶网络平板电视机55 65\r\n4K超高清 智能语音 超窄边框', 2);
INSERT INTO `products` VALUES (16, '小米电视全面屏55英寸4k', 1799.00, 'https://img.alicdn.com/imgextra/i3/2616970884/O1CN01kGwkKf1IOugcLmmMy_!!0-item_pic.jpg_430x430q90.jpg', ' 小米电视全面屏55英寸4k超高清家用wifi智能网络平板液晶电视机65\r\n全面屏 杜比音效 4K高清 内置小爱 大存储', 2);
INSERT INTO `products` VALUES (77, '戴尔多媒体有线键盘', 69.00, 'https://img1.360buyimg.com/n6/jfs/t24778/302/964779034/124977/8eb9e87c/5b84a75dN6422c0e3.jpg', '戴尔多媒体键盘108键有线键盘家用办公', 5);
INSERT INTO `products` VALUES (78, '罗技k380无线键盘', 160.00, 'https://paimgcdn.baidu.com/52BA09B3BAA659?src=http%3A%2F%2Fms.bdimg.com%2Fdsp-image%2F3271639815.jpg&rz=urar_2_968_600&v=0', '罗技蓝牙键盘造型简约、时尚且功能丰富的K380轻薄多设备键盘', 5);
INSERT INTO `products` VALUES (79, '海盗船K83无线娱乐键盘', 1299.00, 'https://www.corsair.com/medias/sys_master/images/images/h1e/h1f/9188239605790/-CH-9268046-CN-Gallery-K83-Wireless-01.png', 'K83无线娱乐键盘是一款新客厅多媒体控制产品。采用铝材的设计，白色背光和灵活的无线技术为您的客厅娱乐带来贵宾般的享受', 5);
INSERT INTO `products` VALUES (80, 'c210机械键盘', 499.00, 'https://img1.360buyimg.com/n6/jfs/t1/108405/1/7115/755088/5e57cbd1Ecdf4fc5f/1b96a63aa6518e53.jpg', 'ikbc C210 机械键盘 有线键盘 游戏键盘 108键 cherry轴 樱桃轴 笔记本键盘 粉色 青轴', 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo` varbinary(100) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '撒大多数', 'asdasd', 'sadas', 'dasdas', 'dasdasd', NULL);
INSERT INTO `user` VALUES (6, '小周', '1234', 'Password', '123@qq.com', '123', NULL);
INSERT INTO `user` VALUES (7, '吴诗寒', 'wuh', '1234124', '124124', '123124124', NULL);
INSERT INTO `user` VALUES (8, 'ss', 'asdasd', 'sadas', 'dasdas', 'dasdasd', NULL);
INSERT INTO `user` VALUES (10, '小hei', 'admin', 'admin', '9992@qq.com', '179', NULL);
INSERT INTO `user` VALUES (22, '哈哈哈', 'abc', '456', 'fgdfgdg', '123232', NULL);

SET FOREIGN_KEY_CHECKS = 1;
