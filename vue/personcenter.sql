/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : personcenter

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-11-02 15:54:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `pubimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'https://image2.suning.cn/uimg/cms/img/169096443267223332.jpg', 'https://image2.suning.cn/uimg/cms/img/169044595730663675.png');
INSERT INTO `banner` VALUES ('2', 'https://oss.suning.com/adpp/creative_kit/material/picture/20221121-05774678a842473ebbd92eeb02291119db2f1de540bd469c.jpg', 'https://image2.suning.cn/uimg/cms/img/169044595730663675.png');
INSERT INTO `banner` VALUES ('3', 'https://oss.suning.com/adpp/creative_kit/material/picture/20221101-19aedfe3b37d47ff9f1ad8f8ec77b0164c3eb0b8aa574e0c.jpg', 'https://image2.suning.cn/uimg/cms/img/169044595730663675.png');
INSERT INTO `banner` VALUES ('4', 'https://image2.suning.cn/uimg/cms/img/169199494832453427.jpg?format=is', 'https://image2.suning.cn/uimg/cms/img/169044595730663675.png');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', 'https://20476873.s61i.faiusr.com/4/AD0IyefhCRAEGAAg3_m17AUohJWomgIw7gU46AI!900x900.png.webp');
INSERT INTO `banners` VALUES ('2', 'https://20476873.s61i.faiusr.com/4/AD0IyefhCRAEGAAg3_m17AUowPuI6wIw7gU46QI!900x900.png.webp');

-- ----------------------------
-- Table structure for common
-- ----------------------------
DROP TABLE IF EXISTS `common`;
CREATE TABLE `common` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common
-- ----------------------------
INSERT INTO `common` VALUES ('240', '啊啊啊啊啊啊啊啊啊啊啊11111', null);
INSERT INTO `common` VALUES ('233', '啊啊啊啊啊啊啊啊啊啊亲戚去去去', null);
INSERT INTO `common` VALUES ('232', '啊啊啊啊啊啊啊啊啊啊', null);
INSERT INTO `common` VALUES ('238', '去去去', null);

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `imgF` varchar(255) DEFAULT NULL,
  `imgS` varchar(255) DEFAULT NULL,
  `imgT` varchar(255) DEFAULT NULL,
  `imgFour` varchar(255) DEFAULT NULL,
  `imgFive` varchar(255) DEFAULT NULL,
  `imgSix` varchar(255) DEFAULT NULL,
  `imgServen` varchar(255) DEFAULT NULL,
  `imgEight` varchar(255) DEFAULT NULL,
  `imgNine` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `titlesmall` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `sprice` varchar(255) DEFAULT NULL,
  `btprice` varchar(255) DEFAULT NULL,
  `yhj` varchar(255) DEFAULT NULL,
  `yhjs` varchar(255) DEFAULT NULL,
  `newprice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('1', 'https://imgservice.suning.cn/uimg1/b2c/image/DSyBcDadIa3WA1NR-HkqHg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/Ub7Mc-eEPmud1Dr4ERYCxg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/_uqOcrGBLU8pjcu2jkP9NQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/rzXLaj8GksvvNXoN8Qa8qg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/SqF80YQvEQlGNOhFEesF1g.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/RrKviq97LkWuRMDGw2JT9A.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/L191IjHP_Vev3bn5rSPcZA.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/9T_xn3gIg5suD56OcZnSUQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/bKE2A-J5TUIiRoODqZ_mbg.jpg_800w_800h_4e_80Q_is', '2999', '[格力官方旗舰店]云佳新能效1.5匹变频冷暖挂机空调 KFR-35GW/NhGc1B 家用低音 新一级能效', '苏宁物流', '【整机10年免费包修，以旧换新更优惠！】新一级能效节能省电，56℃净菌自洁出风更健康，智能除湿更干爽，4种舒睡模式更贴心。', '13.5元', '￥2679', '', '', '');
INSERT INTO `details` VALUES ('2', 'https://imgservice.suning.cn/uimg1/b2c/image/AFdkKoevmA5vTL46ngWbJg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/Ub7Mc-eEPmud1Dr4ERYCxg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/_uqOcrGBLU8pjcu2jkP9NQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/rzXLaj8GksvvNXoN8Qa8qg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/SqF80YQvEQlGNOhFEesF1g.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/RrKviq97LkWuRMDGw2JT9A.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/L191IjHP_Vev3bn5rSPcZA.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/9T_xn3gIg5suD56OcZnSUQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/bKE2A-J5TUIiRoODqZ_mbg.jpg_800w_800h_4e_80Q_is', '6849', '[格力官方旗舰店]云逸-Ⅱ新能效3匹变频柜机空调 KFR-72LW/NhGm1BAs 家用冷暖低音 新一级能效', '苏宁物流', '【整机10年免费包修，以旧换新更优惠！】新一级能效，85°广角送风，8℃保温关怀，56℃净菌自洁，出风口自动闭合，智能除湿干爽宜人', '31.27元', '￥6399', '', '', '');
INSERT INTO `details` VALUES ('3', 'https://imgservice.suning.cn/uimg1/b2c/image/cAqptM99t8Pu3c5Ex62L7w.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/lXrhbvJPuSyszewGeV6x6A.png_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/2CGGLiXfq3tp0__YS46uXg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/fx5H-uZnoqETCIDqu_g3EA.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/0k-BVsD4LY-aF_-mNciSWQ.jpg_800w_800h_4e_80Q_is', '', null, null, null, '29', '新茶春茶安徽天方茶叶250g黄山毛峰绿茶春茶 雨前高山土种毛峰 炒青绿茶袋装 醇香耐泡', '运费险', '高山毛峰 醇香耐泡', '0.57元', null, null, null, null);
INSERT INTO `details` VALUES ('4', 'https://imgservice.suning.cn/uimg1/b2c/image/r9J8r_ZNZ_JaNvicYDFTiQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/k8rzgW6M7pd97lkAoXGH-w.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/nZgg0lpG3Qow8pt98X0Khw.png_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/rzXLaj8GksvvNXoN8Qa8qg.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/SqF80YQvEQlGNOhFEesF1g.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/RrKviq97LkWuRMDGw2JT9A.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/L191IjHP_Vev3bn5rSPcZA.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/9T_xn3gIg5suD56OcZnSUQ.jpg_800w_800h_4e_80Q_is', 'https://imgservice.suning.cn/uimg1/b2c/image/bKE2A-J5TUIiRoODqZ_mbg.jpg_800w_800h_4e_80Q_is', '2699', '[新一级能效]美的空调冷静星1.5匹p智能冷暖变频卧室壁挂式节能省电挂机KFR-35GW/BDN8Y-PH200(1)A', '运费险', '【#美的狂暑季#咨询领券价更低！下单送壕礼！送延保卡！】23年度新升级冷静星 门店同款 一键防直吹 室内室外自清洁 省电放心开 全直流变频稳定运行', '12.15元', '￥2329', null, null, null);

-- ----------------------------
-- Table structure for homeimg
-- ----------------------------
DROP TABLE IF EXISTS `homeimg`;
CREATE TABLE `homeimg` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homeimg
-- ----------------------------
INSERT INTO `homeimg` VALUES ('1', 'https://image2.suning.cn/uimg/cms/img/166519830495916803.jpg', '￥5999');
INSERT INTO `homeimg` VALUES ('2', 'https://image2.suning.cn/uimg/cms/img/166519837827005655.jpg', '￥22');
INSERT INTO `homeimg` VALUES ('3', 'https://image2.suning.cn/uimg/cms/img/168559797812358425.png', '大牌好货');
INSERT INTO `homeimg` VALUES ('4', 'https://image2.suning.cn/uimg/cms/img/168559799948870817.png', '官方补贴');
INSERT INTO `homeimg` VALUES ('5', 'https://image1.suning.cn/uimg/cms/img/169139291701567052.png', '三星Flip5');
INSERT INTO `homeimg` VALUES ('6', 'https://image1.suning.cn/uimg/cms/img/169139303259176755.png', '跟榜不亏');
INSERT INTO `homeimg` VALUES ('7', 'https://image2.suning.cn/uimg/cms/img/167566490288432368.png', '直播专属价');
INSERT INTO `homeimg` VALUES ('8', 'https://image2.suning.cn/uimg/cms/img/167566509744278273.gif', '抽好礼');

-- ----------------------------
-- Table structure for imgdata
-- ----------------------------
DROP TABLE IF EXISTS `imgdata`;
CREATE TABLE `imgdata` (
  `img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgdata
-- ----------------------------
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/176145/18/36359/48893/64a7b09cFc91b5f93/6a937a3e6f6f97c2.jpg.webp', '七彩虹（Colorful）隐星P15 15.6英寸4050/4060满血游戏本学生PS设计3A视频制作手提笔记本电脑 i5-12450H/RTX4050/144HZ电竞 16G内存/512G固态/标配', '4300￥');
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/168348/33/34413/56571/63eceb49F4f1a6b20/142a7a53b2a0e829.jpg.webp', '联想小新16 2023超轻薄本16英寸学习办公pro设计笔记本电脑英特尔13代酷睿十二核 i5-13500H 16G 512G 标配版 IPS 全面屏', '6320￥');
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/14047/35/11339/37870/64215a6bF083deaa5/0d780e9c133f7e7c.jpg.webp', '荣耀笔记本电脑MagicBook X 16 Pro 2023 13代酷睿标压i5-13500H 16+1T 16吋高性能轻薄本 大电池 手机互联', '4650￥');
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/107215/2/19557/122442/6419c56cF75b196ea/b6020ad1875c7ff7.jpg.webp', '联想（Lenovo）拯救者Y9000P 2023游戏笔记本电脑 13代酷睿i9 16英寸(13代i9-13900HX 16G 1T RTX4060显卡 2.5k 240Hz屏)灰', '10230￥');
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/109285/29/40800/35874/644a9553Fecb474f9/14318ecbc56874d7.jpg.webp', '联想笔记本电脑小新14轻薄本 英特尔酷睿i5 14英寸超薄本(高性能标压i5 16G 512G)灰 商务办公学生', '4444￥');
INSERT INTO `imgdata` VALUES ('https://m.360buyimg.com/babel/jfs/t1/5141/23/22699/54302/6466f0c7Fb770bcff/1891d20e0bf3b234.jpg.webp', '七彩虹将星X15新款RTX4060系独显高清游戏本电竞笔记本电脑 将星i7-12650H/4060/15.6吋144 16G/512G/官方标配', '5699￥');

-- ----------------------------
-- Table structure for peoplemanage
-- ----------------------------
DROP TABLE IF EXISTS `peoplemanage`;
CREATE TABLE `peoplemanage` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `classed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peoplemanage
-- ----------------------------
INSERT INTO `peoplemanage` VALUES ('2', 'admin', '123', '普通用户');
INSERT INTO `peoplemanage` VALUES ('4', 'ww', '123', '普通用户');

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `imgx` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `juan` varchar(255) DEFAULT NULL,
  `juantwo` varchar(255) DEFAULT NULL,
  `common` varchar(255) DEFAULT NULL,
  `percent` varchar(255) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('1', 'https://imgservice.suning.cn/uimg1/b2c/image/9fsOf8AhoFCw4v1pl90Fow.png_800w_800h_4e_80Q_is', '鲜木 [顺丰空运]秘鲁进口蓝莓 新鲜应季水果 高山甜莓 精选中果2盒装 每盒125g(果经14mm+)', '', '精选品质 | 坏果包赔 | 皮薄多汁', '44.80', '领券35-5', '苏宁益品', '4条评价', '好评率50%', '鲜木水果旗舰店');
INSERT INTO `search` VALUES ('2', 'https://imgservice.suning.cn/uimg1/b2c/image/93DjJO9A5D20pERZZQsLog.jpg_800w_800h_4e_80Q_is', '[苏鲜生]顺丰快递 新鲜 山东 红毛水蜜桃 蜜桃新鲜水果 净重4.5斤装 应季现摘脆甜毛桃子 整箱', '自营', ' 个头饱满 | 脆甜可口 |  坏果包赔', '28.90', '大聚惠', '领券105-5', '80+条评价', '好评率100%', '苏宁自有品牌苏宁自营旗舰店');
INSERT INTO `search` VALUES ('3', 'https://imgservice.suning.cn/uimg1/b2c/image/2Cg1lEygpEhks3zPSjBYcg.jpg_800w_800h_4e_80Q_is', '[苏鲜生] 攀枝花新鲜凯特芒 当季 9斤装 中果 单果400g左右 整箱新鲜现摘热带时令水果甜心芒应季芒果', '自营', ' 产地直发 |  鲜嫩可口 |  肉质细腻', '29.80', '领券105-5', null, '500+条评价', '好评率97%', '苏宁自有品牌苏宁自营旗舰店');
INSERT INTO `search` VALUES ('4', 'https://imgservice.suning.cn/uimg1/b2c/image/v74ykrbFZlSODpjiKYWZ3A.png_800w_800h_4e_80Q_is', '[西沛生鲜]福建古田油奈李 5斤 中果装 现摘酸甜李子 应季新鲜水果', '自营', '脆爽可口 | 酸甜多汁 | 产地直发', '26.80', '大聚惠', '领券105-5', '80+条评价', '好评率98%', '苏宁自营');
INSERT INTO `search` VALUES ('5', 'https://imgservice.suning.cn/uimg1/b2c/image/hqEidCQsynbRdp5ZKuUAfw.jpg_800w_800h_4e_80Q_is', '三星Galaxy Z Fold5 5G (SM-F9460) 12GB+512GB 冰萃蓝 折叠屏手机 fold5新品官方正品', '自营', null, '12999.00', null, null, '6条评价', '好评率100%', '三星手机苏宁自营旗舰店');
INSERT INTO `search` VALUES ('6', 'https://imgservice.suning.cn/uimg1/b2c/image/sk3KUQHTFUtWNArAakKWig.jpg_800w_800h_4e_80Q_is', '店铺上新 华为Mate50 Pro 12+256GB 66W超级快充[燃橙色]荣耀X50 8GB+128GB 120Hz全视屏 双卡双待全网通5g手机', null, '骁龙6nm | 66W快充 | 120Hz', '1999.00', '24期免息', null, '50+条评价', '好评率98%', '质点旗舰店');
INSERT INTO `search` VALUES ('7', 'https://imgservice.suning.cn/uimg1/b2c/atmosphere/opqi56zqJgwxvVQlJkj9eA.png_800w_800h_4e_80Q_is', 'Redmi K60 12GB+256GB 晴雪 骁龙8+处理器 2K高光屏 6400万超清相机', '自营', ' 全国联保 |  原装正品 |  大容量电池', '2219.00', '领券105-5', null, '100+条评价', '好评率100%', '小米苏宁自营旗舰店');
INSERT INTO `search` VALUES ('8', 'https://imgservice.suning.cn/uimg1/b2c/atmosphere/xfelYHrC59-tjpXejS4gxw.png_800w_800h_4e_80Q_is', '荣耀X50 8GB+128GB 勃朗蓝 SGS整机五星抗跌耐摔认证 5800mAh超耐久长续航 第一代骁龙6移动平台 一亿像素大底主摄 120Hz智能高刷 5G手机', null, '大电池长续航 | 五星抗跌耐摔', '1399.00', '领券105-5', '大聚惠', '100+条评价', '好评率96%', '荣耀苏宁自营旗舰店');

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prices` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('https://imgservice.suning.cn/uimg1/b2c/image/DSyBcDadIa3WA1NR-HkqHg.jpg_800w_800h_4e_80Q_is', '[格力官方旗舰店]云佳新能效1.5匹变频冷暖挂机空调 KFR-35GW/NhGc1B 家用低音 新一级能效', '【整机10年免费包修，以旧换新更优惠！】新一级能效节能省电，56℃净菌自洁出风更健康，智能除湿更干爽，4种舒睡模式更贴心。', '2999', '1', '58');
INSERT INTO `shopcar` VALUES ('https://imgservice.suning.cn/uimg1/b2c/image/cAqptM99t8Pu3c5Ex62L7w.jpg_800w_800h_4e_80Q_is', '新茶春茶安徽天方茶叶250g黄山毛峰绿茶春茶 雨前高山土种毛峰 炒青绿茶袋装 醇香耐泡', '高山毛峰 醇香耐泡', '29', '1', '59');

-- ----------------------------
-- Table structure for shoppinglist
-- ----------------------------
DROP TABLE IF EXISTS `shoppinglist`;
CREATE TABLE `shoppinglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `detailimg` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `prince` varchar(255) DEFAULT NULL,
  `common` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppinglist
-- ----------------------------
INSERT INTO `shoppinglist` VALUES ('1', 'https://imgservice.suning.cn/uimg1/b2c/image/4DIWOsIB_pe8-y1OFHINuA.png?format=_is_300w_300h_4e.webp', '格力空调KFR-35GW/NHc1B', 'https://image2.suning.cn/uimg/cms/img/163056848800641855.png', '', '百亿补贴', '￥2999', '3.0万+评价', '/ShoppingDetails/glkfrB');
INSERT INTO `shoppinglist` VALUES ('2', 'https://imgservice.suning.cn/uimg1/b2c/image/IympjR6YS3DSRJ84sGLLqA.jpg?format=_is_300w_300h_4e.webp', '格力空调 KFR-72LW/NhGm1BAs', null, '百亿补贴', '包邮', '￥6849', '8100+评价', '/ShoppingDetails/glkfrs');
INSERT INTO `shoppinglist` VALUES ('3', 'https://imgservice.suning.cn/uimg1/b2c/image/cAqptM99t8Pu3c5Ex62L7w.jpg?format=_is_300w_300h_4e.webp', '【雨前毛峰手工揉捻】 安徽天方茶叶250g黄山毛峰绿茶，口味清爽', null, '大聚惠', '包邮', '￥29', '5700+评价', '/ShoppingDetails/lvc');
INSERT INTO `shoppinglist` VALUES ('4', 'https://imgservice.suning.cn/uimg1/b2c/image/O5TNXrt7QTP4-UU3XKByag.jpg?format=_is_300w_300h_4e.webp', '美的空调KFR-35GW/BDN8Y-PH200(1)A', null, '百亿补贴', '包邮', '￥2699', '3900+评价', '/ShoppingDetails/mdkfrA');
INSERT INTO `shoppinglist` VALUES ('5', 'https://imgservice.suning.cn/uimg1/b2c/image/txGqvKAOLym_VEAkybrnhA.jpg?format=_is_300w_300h_4e.webp', '格力空调KFR-35GW/NhGc1B', null, '百亿补贴', '包邮', '￥5699', '2800+评价', '/ShoppingDetails/');
INSERT INTO `shoppinglist` VALUES ('6', 'https://imgservice.suning.cn/uimg1/b2c/image/PcGFFaMhKW-MpH7Me1H-dA.jpg?format=_is_300w_300h_4e.webp', '美的 冰箱 BCD-528WFPZM(E) 迷楼灰-锦缎', 'https://image2.suning.cn/uimg/cms/img/163056848800641855.png', '', '', '￥5499', '200+评价', '/ShoppingDetails/');
INSERT INTO `shoppinglist` VALUES ('7', 'https://imgservice.suning.cn/uimg1/b2c/image/blPxd5IT3BgBo3v0BsetLA.jpg?format=_is_300w_300h_4e.webp', '舒可乐卫生纸12卷家用整箱实惠装纸巾竹浆卷纸无芯增厚，坚韧不易破', null, '大聚惠', '包邮', '￥6.99', '70+评价', '/ShoppingDetails/');
INSERT INTO `shoppinglist` VALUES ('8', 'https://imgservice.suning.cn/uimg1/b2c/image/8SJ2RI36Z_BR4IilQtW4Sw.jpg?format=_is_300w_300h_4e.webp', '派力特干脆面整箱零食方便面20包后掌心脆干吃面点心121212', 'https://image3.suning.cn/uimg/cms/img/163056849761176320.png', '', '满19减2', '￥19.8', '3500+评价', '/ShoppingDetails/');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '类型：1超级用户2管理员用户',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042', 'werwre', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIwMDAuMC4iLCJpYXQiOjE2OTA5Njk4MzB9.0ED_Rg58ZBX2C1ljLsXRNsPJQZTyc0IA9wh84d_tGwE', '2023-08-02 17:50:30');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000043', 'xx', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTA5NzQ0NzJ9.R9KiSAUtyor-KGMVZlvpHMWrHBkGmkyWzIesoeiJTwU', '2023-08-02 19:07:52');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000045', 'ww', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTY3ODkiLCJpYXQiOjE2OTQyMjkyMjR9.2OqU3h5b0Jyv115ZD2_3JuQj-Gwb51-FkmdFDytmcWU', '2023-09-09 11:13:44');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040', 'qqqqqq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiJxcXFxcXFxcXFxcSIsImlhdCI6MTY5MDk2OTcxOX0.uWeD0V0qUQhjo9jU__OR0XSsltKU_bpnHUYlHCIvwKA', '2023-08-02 17:48:39');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000047', 'qq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTI2MTg0NTd9.OvdKrPDZAa47A2G1Ab2PjUjBQWmTw8SsOXteRCbu_FE', '2023-08-21 19:47:37');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048', 'qqq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTI2MTg1Mzh9.sj-mEPs4_ZVWAvB1lK1Ks5XGowBrOyRzQpPajd_PrCQ', '2023-08-21 19:48:58');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000049', 'qqqq', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTI2MTg2NTR9.mGjOjsRoIGAkfGladiz93ZsgkohueC5Q4TbBz0Lwd9M', '2023-08-21 19:50:54');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050', 'www', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTI2MTg3MjB9.x5c6L4BbRQ4ACRjkw2qGd8oLZ-RSnpAI5HlCeDTyx1M', '2023-08-21 19:52:00');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000051', 'xw', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTQyMjMxNzZ9.aa-GnzeRYSWtxatyB6K0xy8L9sqJg4QTJEsoKFsTaEU', '2023-09-09 09:32:56');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000052', 'uu', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTQyMjkxMjB9.ifrl-xUkSxkCf3dgN2pB7esDOl0_73PUHs22-410KK8', '2023-09-09 11:12:00');
INSERT INTO `user` VALUES ('000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053', 'wx2002', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwc3ciOiIxMjM0NTYiLCJpYXQiOjE2OTQ1MDM2OTl9.hIauYvObcf2B3VIs9FFFi_mHJJSRB53G08WbkMKF1Y0', '2023-09-12 15:28:19');
