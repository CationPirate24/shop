/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : yjy
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : YJY

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2016-10-29 13:24:25
*/


-- ----------------------------
-- Table structure for ACCOUNT_ROLE
-- ----------------------------
DROP TABLE "YJY"."ACCOUNT_ROLE";
CREATE TABLE "YJY"."ACCOUNT_ROLE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"ACCOUNT_ID" VARCHAR2(32 BYTE) NULL ,
"ROLE_ID" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ACCOUNT_ROLE
-- ----------------------------
INSERT INTO "YJY"."ACCOUNT_ROLE" VALUES ('cb54c5f0f2a54d4398c0a2183db35921', 'ee95c865d8b747f5901f316690745b02', '788805ad884c481689baf4a3f6001dd0');
INSERT INTO "YJY"."ACCOUNT_ROLE" VALUES ('700805ad884c481689baf4a3f6909dd0', '788805ad884c481689baf4a3f6988dd0', '788801ad884c481689baf4a3f6901dd0');
INSERT INTO "YJY"."ACCOUNT_ROLE" VALUES ('701805ad884c481689baf4a3f6909dd0', '788805ad884c481689baf4a3f6988d01', '788802ad884c481689baf4a3f6901dd0');
INSERT INTO "YJY"."ACCOUNT_ROLE" VALUES ('703805ad884c481689baf4a3f6909dd0', '788805ad884c481689baf4a3f6988d02', '788803ad884c481689baf4a3f6901dd0');
INSERT INTO "YJY"."ACCOUNT_ROLE" VALUES ('704805ad884c481689baf4a3f6909dd1', 'ee95c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0');

-- ----------------------------
-- Table structure for ADDRESS
-- ----------------------------
DROP TABLE "YJY"."ADDRESS";
CREATE TABLE "YJY"."ADDRESS" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"ADDRESS" VARCHAR2(1000 BYTE) NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PHONE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ADDRESS
-- ----------------------------
INSERT INTO "YJY"."ADDRESS" VALUES ('bd4536bb6ced4c8089f3cd3e5c3d8c01', 'bd4536bb6ced4c8089f3cd3e5c3d8cda', '深圳龙岗区', '姚琳', '15623340809');
INSERT INTO "YJY"."ADDRESS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df3d', '788805ad884c481689baf4a3f6988002', '郑州市郑东新区', 'yjy', '15538706839');
INSERT INTO "YJY"."ADDRESS" VALUES ('bd4536bb6ced4c8089f3cd3e5c3d8c03', '788805ad884c481689baf4a3f6988004', '北京大兴区', '丽丽', '12308092356');
INSERT INTO "YJY"."ADDRESS" VALUES ('bd4536bb6ced4c8089f3cd3e5c3d8c04', '788805ad884c481689baf4a3f6988002', '上海松山区', '小小', '12308092309');
INSERT INTO "YJY"."ADDRESS" VALUES ('e12447a9536d494c84dde9b03da8de21', '698b3f5759f04e46a27c5baab955b55d', '河南省郑州市郑东新区', '小明', '15838902845');
INSERT INTO "YJY"."ADDRESS" VALUES ('fccf24f5e9d5498183960e0220b27da7', '788805ad884c481689baf4a3f6988dd1', '北京朝阳区', '小四', '123445');
INSERT INTO "YJY"."ADDRESS" VALUES ('c8b6256ba70d49aa83c76c2b5edc9ec4', '698b3f5759f04e46a27c5baab955b55d', '河南省郑州市二七区', '小超', '13636452367');
INSERT INTO "YJY"."ADDRESS" VALUES ('b0fbaaac1c1243ceb65e1fe3866572f4', '698b3f5759f04e46a27c5baab955b55d', '河南省郑州市金水区', '小坤', '13535677892');
INSERT INTO "YJY"."ADDRESS" VALUES ('6390bcfedf1d48679e7433cac51d297a', '788805ad884c481689baf4a3f6988dd1', '上海浦东区', '小二', '123445');

-- ----------------------------
-- Table structure for ADVICE
-- ----------------------------
DROP TABLE "YJY"."ADVICE";
CREATE TABLE "YJY"."ADVICE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"COMMENT" VARCHAR2(1000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ADVICE
-- ----------------------------
INSERT INTO "YJY"."ADVICE" VALUES ('364643aa05134e8d9f7472026782a58e', '264643aa05134e8d9f7472026782a58e', '哈哈，太喜欢了，好评！');

-- ----------------------------
-- Table structure for AFTER_SALE
-- ----------------------------
DROP TABLE "YJY"."AFTER_SALE";
CREATE TABLE "YJY"."AFTER_SALE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(100 BYTE) NULL ,
"STATE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AFTER_SALE
-- ----------------------------
INSERT INTO "YJY"."AFTER_SALE" VALUES ('788805ad884c481689bgf4a3f6988002', '788805ad884c481689bgf4a3f6988003', '788805ad884c481689bgf4a3f6988004', '退货', '2016-09-02 09:34:20', '待处理');

-- ----------------------------
-- Table structure for BUYS
-- ----------------------------
DROP TABLE "YJY"."BUYS";
CREATE TABLE "YJY"."BUYS" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"NUMS" VARCHAR2(100 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(100 BYTE) NULL ,
"STATE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BUYS
-- ----------------------------
INSERT INTO "YJY"."BUYS" VALUES ('9461c305408a46dc84e5efbed8333c76', '698b3f5759f04e46a27c5baab955b55d', '6c620098crtgfhfgh026f73fb486a7sa', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('bc3883a2eaad4e69a6908bd7414b013e', '788805ad884c481689baf4a3f6988dd1', '44decebcbb034e3098b14132f96d3821', '1', '2016-10-13 ', '已评价');
INSERT INTO "YJY"."BUYS" VALUES ('ba07eb50ef5241e2b28ef56c370fb231', '788805ad884c481689baf4a3f6988004', '44decebcbb034e3098b14132f96d3821', '1', '2016-10-13 ', '已评价');
INSERT INTO "YJY"."BUYS" VALUES ('6eaeb841fe954a42a625b7dea5301eda', '823caafffc1f433fac804e0369c2e8a4', 'ce0bee0c74eb4cb29d26f90ad679df50', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('5f7884028a614c8b945271a5d61c93e4', '698b3f5759f04e46a27c5baab955b55d', 'afsadfkjafdsdfasjkdfhsd234353012', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('288c32ba96374c00aaf815db6268d7f7', '698b3f5759f04e46a27c5baab955b55d', 'ce0bee0c74eb4cb29d26f90ad679d025', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('0ae1f5fa25ba4618838fb0a7452f7365', '788805ad884c481689baf4a3f6988001', '44decebcbb034e3098b14132f96d3821', '1', '2016-10-13 ', '已评价');
INSERT INTO "YJY"."BUYS" VALUES ('f0ae445cff594ac8b510c1069155bdb4', '788805ad884c481689baf4a3f6988dd1', '6c620dfgdgtwerewrrt6f73fb486asad', '1', '2016-10-13 ', '已评价');
INSERT INTO "YJY"."BUYS" VALUES ('925ced4972de4f429b88a97f468570af', '698b3f5759f04e46a27c5baab955b55d', '44decebcbb034e3098b14132f96d3822', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('4a96f74470a7442ca42e16c9c36daa66', '698b3f5759f04e46a27c5baab955b55d', 'afsadfkjafdsdfasjkdfhsd234353002', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('eedd346fbc574a98a54c84ebb123d31c', '698b3f5759f04e46a27c5baab955b55d', '6c620098cf8047dca026f73fb48asdaf', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('2ef4979380234807b2c10cbd413dd942', '698b3f5759f04e46a27c5baab955b55d', '44decebcbb034e3098b14132f96d3822', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('0dce11d0393e4b6b8fe3cf82c53d7d51', '698b3f5759f04e46a27c5baab955b55d', '44decebcbb034e3098b14132f96d3822', '1', '2016-10-13 ', '待评价');
INSERT INTO "YJY"."BUYS" VALUES ('719b1801441e4a65b881d93c92d1a89d', '823caafffc1f433fac804e0369c2e8a4', '6c620098cf8047dca026f73fb48asdaf', '1', '2016-10-13 ', '已评价');
INSERT INTO "YJY"."BUYS" VALUES ('aa292fb41ff647178ddce12ae6d01b33', '823caafffc1f433fac804e0369c2e8a4', 'ce0bee0c74eb4cb29d26f90ad679df53', '1', '2016-10-13 ', '待评价');

-- ----------------------------
-- Table structure for CODE_JSP
-- ----------------------------
DROP TABLE "YJY"."CODE_JSP";
CREATE TABLE "YJY"."CODE_JSP" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"CODE_KEY" VARCHAR2(100 BYTE) NULL ,
"CODE_VALUE" VARCHAR2(100 BYTE) NULL ,
"CODE_TYPE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CODE_JSP
-- ----------------------------
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d10', 'A', '超级管理员', 'ADMIN');
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d11', 'B', '商品管理员', 'ADMIN');
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d12', 'C', '用户管理员', 'ADMIN');
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d13', 'D', '系统管理员', 'ADMIN');
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d14', 'E', '信息管理员', 'ADMIN');
INSERT INTO "YJY"."CODE_JSP" VALUES ('788805ad884c481689baf4a3f6988d15', 'F', '普通用户', 'PT');

-- ----------------------------
-- Table structure for COMMENTS
-- ----------------------------
DROP TABLE "YJY"."COMMENTS";
CREATE TABLE "YJY"."COMMENTS" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"CONTENT" VARCHAR2(2000 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(100 BYTE) NULL ,
"TYPE" VARCHAR2(100 BYTE) NULL ,
"GOODS_TYPE" VARCHAR2(33 BYTE) NULL ,
"TEXTTURE" VARCHAR2(232 BYTE) NULL ,
"USER_ID" VARCHAR2(3232 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of COMMENTS
-- ----------------------------
INSERT INTO "YJY"."COMMENTS" VALUES ('bf4e58f1ceb74eebacedaed963571653', '44decebcbb034e3098b14132f96d3821', '挺好看的', '2016-10-13 ', '好评', '戒指', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('48e7ab19a7a44ba39d94cc1bd3dab0f8', '44decebcbb034e3098b14132f96d3821', '特别喜欢', '2016-10-13 ', '好评', '戒指', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('c2363167c02841cd91ceecae47fc34f9', '44decebcbb034e3098b14132f96d3821', 'very good!', '2016-10-13 ', '好评', '戒指', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('788805ad884c481686baf4a3f6988ddy', '788805ad884c481689baf4a3f6988ddy', '这个手镯好漂亮啊', '2016-09-02 09:34:20', '好评', '戒指', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('11111111111111111111111111111111', '22222222222222222222222222222222', '33333333333333', '2222222', '差评', '手镯', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('22222222222222222222222222222222', '33333333333333333333333333333333', '44444444444444', '1111111', '中评', '项链', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('33333333333333333333333333333333', '44444444444444444444444444444444', '11111111111111', '3333333', '一般', '脚链', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('6d6c9b3c6bb742c186be659cf5adf9bf', '6c620098cf8047dca026f73fb48asdaf', 'dsfsdfsd', '2016-10-13 ', '好评', '戒指', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('8a064193498b478292ebe25228eb35d0', '6c620dfgdgtwerewrrt6f73fb486asad', 'asdasdadasd', '2016-10-13 ', '好评', '手链/脚链', '黄金', null);
INSERT INTO "YJY"."COMMENTS" VALUES ('66dda73de57b407eb39450753744f1fc', '6c620dfgdgtwerewrrt6f73fb486asad', 'sdfdfsdf', '2016-10-13 ', '好评', '手链/脚链', '黄金', null);

-- ----------------------------
-- Table structure for COMMENTS_REPLY
-- ----------------------------
DROP TABLE "YJY"."COMMENTS_REPLY";
CREATE TABLE "YJY"."COMMENTS_REPLY" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"COMMENTS_ID" VARCHAR2(32 BYTE) NULL ,
"REPLY_ID" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of COMMENTS_REPLY
-- ----------------------------
INSERT INTO "YJY"."COMMENTS_REPLY" VALUES ('12121212121212121211212122222222', '788805ad884c481686baf4a3f6988ddy', '11111111111111111111111111111111');
INSERT INTO "YJY"."COMMENTS_REPLY" VALUES ('23224234234234234234543252643654', '788805ad884c481686baf4a3f6988ddy', '22222222222222222222222222222222');
INSERT INTO "YJY"."COMMENTS_REPLY" VALUES ('08493502345892345980324579832465', '11111111111111111111111111111111', '22222222222222222222222222222222');
INSERT INTO "YJY"."COMMENTS_REPLY" VALUES ('20952743890634298643985679063420', '11111111111111111111111111111111', '33333333333333333333333333333333');
INSERT INTO "YJY"."COMMENTS_REPLY" VALUES ('12398149382740999999999999999999', '22222222222222222222222222222222', '33333333333333333333333333333333');

-- ----------------------------
-- Table structure for GOODS
-- ----------------------------
DROP TABLE "YJY"."GOODS";
CREATE TABLE "YJY"."GOODS" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(200 BYTE) NULL ,
"TEXTTURE" VARCHAR2(100 BYTE) NULL ,
"TYPE" VARCHAR2(100 BYTE) NULL ,
"WEIGHT" VARCHAR2(100 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"PRICE" VARCHAR2(100 BYTE) NULL ,
"NUMS" VARCHAR2(100 BYTE) NULL ,
"USE" VARCHAR2(100 BYTE) NULL ,
"STATE" VARCHAR2(100 BYTE) NULL ,
"CREATE_DATE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of GOODS
-- ----------------------------
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353001', '高贵优雅天鹅钻石吊坠', '钻石', '吊坠', '3.44', '高贵优雅天鹅钻石吊坠', '6754', '345', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353002', '怦然系列浪漫心动白色18K金镶钻石吊坠', '钻石', '吊坠', '4.44', '怦然系列浪漫心动白色18K金镶钻石吊坠', '7765', '33', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353003', '怦然星动蝴蝶铂金钻', '钻石', '吊坠', '3.45', '怦然星动蝴蝶铂金钻', '4567', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353004', '三打白骨精系列钻石吊坠', '钻石', '吊坠', '3.57', '三打白骨精系列钻石吊坠', '7658', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353005', '时尚造型Pt950铂金镶钻石吊坠', '钻石', '吊坠', '3.56', '时尚造型Pt950铂金镶钻石吊坠', '6795', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353006', '水中花系列PT950铂金镶钻石吊坠', '钻石', '吊坠', '2.34', '水中花系列PT950铂金镶钻石吊坠', '5667', '34', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353007', '水中花系列Pt950镶钻石吊坠', '钻石', '吊坠', '3.42', '水中花系列Pt950镶钻石吊坠', '8989', '45', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353008', '唯美雪花镶钻吊坠', '钻石', '吊坠', '4.56', '唯美雪花镶钻吊坠', '7789', '35', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353009', '心翼Pt950铂金镶钻石吊坠', '钻石', '吊坠', '3.44', '心翼Pt950铂金镶钻石吊坠', '4589', '34', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353010', 'Hello Kitty 凯蒂猫18K玫瑰金镶钻石耳钉', '钻石', '耳坠', '2.22', 'Hello Kitty 凯蒂猫18K玫瑰金镶钻石耳钉', '2200', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353035', '闪耀之星', '宝石', '耳坠', '4.35', '闪耀之星', '2200', '10', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353012', '迪士尼公主系列雪花白色18K金镶钻石耳环', '钻石', '耳坠', '1.12', '迪士尼公主系列雪花白色18K金镶钻石耳环', '1500', '80', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353013', '闪耀之花18K金镶钻石耳钉', '钻石', '耳坠', '1.11', '闪耀之花18K金镶钻石耳钉', '2600', '30', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353014', '小心意-Y时代玫瑰色18K金镶钻石耳钉', '钻石', '耳坠', '1.25', '小心意-Y时代玫瑰色18K金镶钻石耳钉', '3200', '16', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353015', '小心意蝴蝶结玫瑰色18K金镶钻石耳饰', '钻石', '耳坠', '2.01', '小心意蝴蝶结玫瑰色18K金镶钻石耳饰', '3100', '20', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353016', '旋恋系列雪花白色18K金镶宝石钻石耳钉', '钻石', '耳坠', '1.25', '旋恋系列雪花白色18K金镶宝石钻石耳钉', '2900', '10', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353017', '旋恋系列雪花白色18K金镶钻石耳钉', '钻石', '耳坠', '2.01', '旋恋系列雪花白色18K金镶钻石耳钉', '3900', '5', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353018', '逸彩精美简雅18K金镶钻石耳钉', '钻石', '耳坠', '2.02', '逸彩精美简雅18K金镶钻石耳钉', '3800', '6', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353019', '高贵系列铂金吊坠', '铂金', '吊坠', '2.50', '高贵系列铂金吊坠', '2600', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353020', '怦然系列铂金爱心吊坠', '铂金', '吊坠', '3.20', '怦然系列铂金爱心吊坠', '2300', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353021', '怦然系列浪漫心动铂金吊坠', '铂金', '吊坠', '3.11', '怦然系列浪漫心动铂金吊坠', '2100', '6', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353022', '怦然心动白色1铂金吊坠', '铂金', '吊坠', '2.09', '怦然心动白色1铂金吊坠', '3200', '11', '婚礼', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353023', '时尚优雅铂金镶钻石吊坠', '铂金', '吊坠', '2.01', '时尚优雅铂金镶钻石吊坠', '2100', '8', '婚礼', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353024', '时尚造型Pt950铂金吊坠', '铂金', '吊坠', '2.78', '时尚造型Pt950铂金吊坠', '3500', '9', '婚礼', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353025', '水中花系列铂金吊坠', '铂金', '吊坠', '2.22', '水中花系列铂金吊坠', '2900', '6', '婚礼', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353026', '心翼Pt950铂金吊坠', '铂金', '吊坠', '1.98', '心翼Pt950铂金吊坠', '1800', '5', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353027', '简约圆润珍珠耳钉', '珍珠', '耳坠', '0.99', '简约圆润珍珠耳钉', '320', '10', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353028', '流水银镶珍珠吊坠', '珍珠', '吊坠', '1.99', '流水银镶珍珠吊坠', '450', '20', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353029', '可爱皇冠银吊坠', '珍珠', '吊坠', '2.30', '可爱皇冠银吊坠', '460', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353030', '典雅银镶珍珠戒指', '珍珠', '戒指', '2.23', '典雅银镶珍珠戒指', '760', '32', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353031', '故宫文化系列锦绣良缘', '珍珠', '手镯', '7.88', '故宫文化系列锦绣良缘', '11600', '5', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353032', '流水银镶珍珠吊坠', '珍珠', '吊坠', '6.67', '流水银镶珍珠吊坠', '7800', '8', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353033', '小心意玫瑰色', '珍珠', '戒指', '3.89', '小心意玫瑰色', '1900', '9', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353034', '典雅白色坦桑石耳钉', '宝石', '耳坠', '5.33', '典雅白色坦桑石耳钉', '14400', '6', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353036', '小心意', '宝石', '戒指', '1.25', '小心意', '1600', '20', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353037', '简约独特花纹戒指', '宝石', '戒指', '1.53', '简约独特花纹戒指', '4000', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353038', '中国风石来运转', '宝石', '手镯', '5.67', '中国风石来运转', '3700', '20', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353039', '小清新手镯', '宝石', '手镯', '6.21', '小清新手镯', '4700', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353040', 'CoCo猫 金粉女王', '宝石', '吊坠', '4.38', 'CoCo猫 金粉女王', '1600', '13', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353041', '福禄葫芦', '宝石', '吊坠', '3.22', '福禄葫芦', '1800', '17', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353042', '炫恋蝴蝶结', '宝石', '项链', '5.66', '炫恋蝴蝶结', '12200', '6', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353043', '灵动魔法黄色宝石', '宝石', '项链', '5.32', '灵动魔法黄色宝石', '2100', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353044', '典雅时尚珍珠项链', '珍珠', '项链', '7.90', '典雅时尚珍珠项链', '8600', '32', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353045', '花样铂金戒指', '铂金', '戒指', '5.60', '花样铂金戒指', '1300', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353046', '高贵铂金戒指', '铂金', '戒指', '6.30', '高贵铂金戒指', '1600', '13', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353047', 'LOVE铂金项链', '铂金', '项链', '7.00', 'LOVE铂金项链', '2300', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353048', '简约铂金项链', '铂金', '项链', '6.70', '简约铂金项链', '2100', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353049', '花形黄色18K金吊坠', 'K金', '吊坠', '6.90', '花形黄色18K金吊坠', '1800', '17', '礼品', '上架 ', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353050', '车花星星18K金吊坠', 'K金', '吊坠', '5.80', '车花星星18K金吊坠', '1380', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353051', '爱心粉色黄色18K金耳饰', 'K金', '耳坠', '5.80', '爱心粉色黄色18K金耳饰', '1200', '11', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353052', '白红二色心形18K玫瑰金耳环', 'K金', '耳坠', '5.09', '白红二色心形18K玫瑰金耳环', '1100', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df31', 'EffileTower吊坠', 'K金', '吊坠', '4.56', 'EffileTower吊坠', '1300', '13', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df32', '失忆蝴蝶吊坠', 'K金', '吊坠', '5.65', '失忆蝴蝶吊坠', '1850', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df33', '拉丝太阳花', 'K金', '吊坠', '4.33', '拉丝太阳花', '1290', '17', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df34', '蝴蝶对心', 'K金', '吊坠', '5.09', '蝴蝶对心', '1390', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df35', '艺术 心心相印', 'K金', '吊坠', '4.55', '艺术 心心相印', '1260', '18', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df36', 'SAMSUNG boom7', 'K金', '吊坠', '4.31', 'SAMSUNG boom7', '1340', '22', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df37', 'HelloKity可爱吊坠', 'K金', '吊坠', '4.34', 'HelloKity可爱吊坠', '1540', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df38', '小天使K金吊坠', 'K金', '吊坠', '3.45', '小天使K金吊坠', '1200', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df39', '玉兔镶钻可爱吊坠', 'K金', '吊坠', '3.22', '玉兔镶钻可爱吊坠', '1220', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df40', '迪士尼冰雪奇缘雪花', 'K金', '吊坠', '3.34', '迪士尼冰雪奇缘雪花', '1300', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df41', '简约心形耳钉', 'K金', '耳饰', '1.21', '简约心形耳钉', '5600', '24', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df42', '中国风镂空耳坠', 'K金', '耳饰', '2.21', '中国风镂空耳坠', '6800', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df43', '领结心形耳钉', 'K金', '耳饰', '2.31', '领结心形耳钉', '5300', '26', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df44', '十字小皇冠', 'K金', '耳饰', '2.16', '十字小皇冠', '4300', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df45', '时尚花纹耳坠', 'K金', '耳饰', '2.17', '时尚花纹耳坠', '5400', '22', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df46', '可爱小海星耳钉', 'K金', '耳饰', '2.18', '可爱小海星耳钉', '6100', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df47', '简约花朵耳坠', 'K金', '耳饰', '2.19', '简约花朵耳坠', '6100', '26', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df48', '艺术耳坠', 'K金', '耳饰', '3.12', '艺术耳坠', '2100', '25', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df49', '简约心形耳钉', 'K金', '耳饰', '3.15', '简约心形耳钉', '8500', '27', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df50', '刻花简约戒指', 'K金', '戒指', '2.31', '刻花简约戒指', '6700', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df51', '蛇纹大方戒指', 'K金', '戒指', '2.31', '蛇纹大方戒指', '9800', '27', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df52', 'K金撞色戒指', 'K金', '戒指', '2.34', 'K金撞色戒指', '7800', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df53', '镂空拼花戒指', 'K金', '戒指', '2.35', '镂空拼花戒指', '8900', '28', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df54', '一箭穿心戒指', 'K金', '戒指', '3.22', '一箭穿心戒指', '9800', '25', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df55', '皇冠形状戒指', 'K金', '戒指', '4.21', '皇冠形状戒指', '9400', '31', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df56', '爱心连心戒指', 'K金', '戒指', '4.55', '爱心连心戒指', '1010', '34', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df57', '简约心形戒指', 'K金', '戒指', '4.34', '简约心形戒指', '1050', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df58', '碎花K金手链', 'K金', '手链/脚链', '3.12', '碎花K金手链', '1090', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df59', '彩色美丽手链', 'K金', '手链/脚链', '3.12', '彩色美丽手链', '8300', '14', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df60', '海洋之豚 手链', 'K金', '手链/脚链', '3.26', '海洋之豚 手链', '6800', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df61', '幸运四叶草手链', 'K金', '手链/脚链', '4.11', '幸运四叶草手链', '9100', '22', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df62', '幸运小花镶钻 手链', 'K金', '手链/脚链', '3.14', '幸运小花镶钻 手链', '5600', '14', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df63', '简约链条项链', 'K金', '项链', '5.34', '简约链条项链', '8900', '22', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df64', '扣环项链', 'K金', '项链', '4.56', '扣环项链', '7600', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df65', '蝴蝶翩翩飞', 'K金', '项链', '6.31', '蝴蝶翩翩飞', '1300', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df66', '麻绳领结', 'K金', '项链', '6.32', '麻绳领结', '1320', '24', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df67', '羽翼之剪', 'K金', '项链', '6.32', '羽翼之剪', '1220', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df68', '跳动之心', 'K金', '项链', '6.54', '跳动之心', '1550', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df69', '简约几何图形', 'K金', '项链', '6.55', '简约几何图形', '1600', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df70', '水中花系列Pt950铂金耳钉', '铂金', '耳饰', '2.21', '水中花系列Pt950铂金耳钉', '1200', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df71', '水中花系列铂金耳钉', '铂金', '耳饰', '2.22', '水中花系列铂金耳钉', '1120', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df72', '小心意-k系列铂金耳钉', '铂金', '耳饰', '2.34', '小心意-k系列铂金耳钉', '1200', '23', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df73', '小心意-Y时代铂金耳钉', '铂金', '耳饰', '2.32', '小心意-Y时代铂金耳钉', '1320', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df74', '小心意-铂金耳钉', '铂金', '耳饰', '3.21', '小心意-铂金耳钉', '1340', '22', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df75', '逸彩精美蝴蝶铂金耳钉', '铂金', '耳饰', '3.22', '逸彩精美蝴蝶铂金耳钉', '1450', '32', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df76', '逸彩精美简雅18K金镶钻石耳钉', '铂金', '耳饰', '3.44', '逸彩精美简雅18K金镶钻石耳钉', '1520', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df77', '逸彩精美简雅铂金耳钉', '铂金', '耳饰', '3.32', '逸彩精美简雅铂金耳钉', '1450', '11', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df78', '铂金戒指', '铂金', '戒指', '3.34', '铂金戒指', '2100', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df79', '花漾铂金戒指', '铂金', '戒指', '4.34', '花漾铂金戒指', '2500', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df80', '【灵犀】高贵铂金戒指', '铂金', '戒指', '5.12', '【灵犀】高贵铂金戒指', '2600', '11', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df81', '【灵犀】逸彩简约时尚铂金', '铂金', '戒指', '6.31', '【灵犀】逸彩简约时尚铂金', '3200', '8', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df82', '小心意系列bojin戒指', '铂金', '戒指', '5.98', '小心意系列bojin戒指', '3120', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df83', '小心意系列时尚闪耀白色铂金戒指', '铂金', '戒指', '5.56', '小心意系列时尚闪耀白色铂金戒指', '2900', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df84', '优雅系列铂金戒指', '铂金', '戒指', '6.32', '优雅系列铂金戒指', '3320', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df85', '优雅铂金戒指', '铂金', '戒指', '6.21', '优雅铂金戒指', '3100', '17', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df86', '焕美天然系列铂金手链', '铂金', '手链/脚链', '5.32', '焕美天然系列铂金手链', '2100', '6', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df87', '铂金手链', '铂金', '手链/脚链', '5.61', '铂金手链', '1600', '8', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df88', '简约艺术手链', '铂金', '手链/脚链', '3.43', '简约艺术手链', '1300', '9', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df89', '五角星艺术手链', '铂金', '手链/脚链', '4.43', '五角星艺术手链', '1230', '10', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df90', '简约大方款式 手链', '铂金', '手链/脚链', '4.56', '简约大方款式 手链', '1300', '11', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df91', '艺术小花', '铂金', '手链/脚链', '5.12', '艺术小花', '1610', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df92', '艺术鱼儿', '铂金', '手链/脚链', '4.51', '艺术鱼儿', '1300', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df93', '优雅天然系列铂金手链', '铂金', '手链/脚链', '3.21', '优雅天然系列铂金手链', '1150', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df94', '简约金线', '铂金', '手镯', '4.21', '简约金线', '1600', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df95', '迪士尼米老鼠系列', '铂金', '手镯', '4.54', '迪士尼米老鼠系列', '2100', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df96', '福禄手镯', '铂金', '手镯', '5.66', '福禄手镯', '3200', '11', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df97', '可爱卡通人物', '铂金', '手镯', '6.12', '可爱卡通人物', '3600', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df98', '爱情系列forever', '铂金', '手镯', '6.55', '爱情系列forever', '3800', '21', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679df99', '皇冠个性手镯', '铂金', '手镯', '4.43', '皇冠个性手镯', '3230', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d001', '迪士尼 冰雪奇缘', '铂金', '项链', '4.55', '迪士尼 冰雪奇缘', '3500', '13', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d002', '镶钻双心', '铂金', '项链', '5.32', '镶钻双心', '3800', '18', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d003', '镶钻四叶草', '铂金', '项链', '4.56', '镶钻四叶草', '4000', '16', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d004', '聚爱瓶 项链', '铂金', '项链', '5.43', '聚爱瓶 项链', '4120', '14', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d005', '简约镶钻项链', '铂金', '项链', '5.46', '简约镶钻项链', '4130', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d006', '简约钻石戒指', '钻石', '戒指', '1.12', '简约钻石戒指', '2100', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d007', '钻石婚戒', '钻石', '戒指', '1.13', '钻石婚戒', '3200', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d008', '奢华钻石婚戒', '钻石', '戒指', '1.21', '奢华钻石婚戒', '12000', '9', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d009', '奢华七钻大气婚戒', '钻石', '戒指', '1.55', '奢华七钻大气婚戒', '32000', '6', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d010', '玫瑰形婚戒', '钻石', '戒指', '1.21', '玫瑰形婚戒', '11500', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d011', '经典花型钻戒', '钻石', '戒指', '1.22', '经典花型钻戒', '11200', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d012', '简约大气钻戒', '钻石', '戒指', '1.13', '简约大气钻戒', '9800', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d013', '镶钻艺术项链', '钻石', '项链', '2,34', '镶钻艺术项链', '13200', '7', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d014', '精美艺术项链', '钻石', '项链', '1.85', '精美艺术项链', '11850', '8', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d015', '镶钻心形项链', '钻石', '项链', '2.01', '镶钻心形项链', '9780', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d016', '皇冠镶钻项链', '钻石', '项链', '2.05', '皇冠镶钻项链', '10800', '12', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d017', '立体心形镶钻项链', '钻石', '项链', '2.30', '立体心形镶钻项链', '12800', '15', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d018', '简约个性皇冠镶钻项链', '钻石', '项链', '2.01', '简约个性皇冠镶钻项链', '8900', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d019', '镶钻个性领结项链', '钻石', '项链', '1.95', '镶钻个性领结项链', '7280', '22', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d020', '个性镶钻五角星项链', '钻石', '项链', '1.83', '个性镶钻五角星项链', '7020', '24', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d021', '简约立体镶钻手镯', '钻石', '手镯', '1.23', '简约立体镶钻手镯', '8890', '14', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d022', '蝴蝶结优雅镶钻手镯', '钻石', '手镯', '1.12', '蝴蝶结优雅镶钻手镯', '7680', '23', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d023', '吉祥红绳镶钻手链', '钻石', '手链/脚链', '1.21', '吉祥红绳镶钻手链', '6880', '24', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d024', '镶钻优雅手链', '钻石', '手链/脚链', '0.89', '镶钻优雅手链', '5600', '32', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d025', '镶钻优雅手链', '钻石', '手链/脚链', '0.78', '镶钻优雅手链', '5580', '26', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d026', '故宫系列翩翩起舞玫瑰色珍珠耳饰', '珍珠', '耳饰', '3.21', '故宫系列翩翩起舞玫瑰色珍珠耳饰', '11800', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d027', '婚嫁时尚白色珍珠耳饰', '珍珠', '耳饰', '4.21', '婚嫁时尚白色珍珠耳饰', '4900', '13', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d028', '小心意玫瑰色金镶珍珠耳环', '珍珠', '耳饰', '4.51', '小心意玫瑰色金镶珍珠耳环', '2500', '17', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d029', '婚嫁金镶钻石耳饰', '珍珠', '耳饰', '4.42', '婚嫁金镶钻石耳饰', '2300', '21', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d030', '婚嫁转运珠镶珍珠手链', '珍珠', '手链/脚链', '6.90', '婚嫁转运珠镶珍珠手链', '780', '32', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d031', '故宫文化系列珍珠手串', '珍珠', '手链/脚链', '5.80', '故宫文化系列珍珠手串', '9400', '6', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d032', '清新皓白珍珠手链', '珍珠', '手链/脚链', '8.80', '清新皓白珍珠手链', '9000', '14', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d033', '双节银镶珍珠手链', '珍珠', '手链/脚链', '7.40', '双节银镶珍珠手链', '5000', '13', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d034', '华丽银镶珍珠项链', '珍珠', '项链', '8.00', '华丽银镶珍珠项链', '720', '14', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d035', '链链不忘金镶珍珠项链', '珍珠', '项链', '9.80', '链链不忘金镶珍珠项链', '1800', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('ce0bee0c74eb4cb29d26f90ad679d036', '福字珍珠项链', '珍珠', '项链', '8.90', '福字珍珠项链', '920', '15', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353053', '花朵盛开玫瑰色18K金戒指', 'K金', '戒指', '6.01', '花朵盛开玫瑰色18K金戒指', '1300', '16', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353055', '花朵白色18K金手链', 'K金', '手链/脚链', '10.11', '花朵白色18K金手链', '3200', '13', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353056', '时尚圆环通宝18K金手链', 'K金', '手链/脚链', '10.34', '时尚圆环通宝18K金手链', '4312', '12', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('44decebcbb034e3098b14132f96d3821', '交错心形足金戒指', '黄金', '戒指', '1.12', '交错心形足戒指', '1213', '432', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('44decebcbb034e3098b14132f96d3822', '精致蝴蝶节黄金足金戒指', '黄金', '戒指', '2.13', '精致蝴蝶节黄金足金戒指', '1230', '2443', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca026f73fb486a7bh', '光沙皇冠黄金足金戒指', '黄金', '戒指', '1.12', '光沙皇冠黄金足金戒指', '1314', '645', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca026f73fb486a7bg', '富贵大花黄金足金戒指', '黄金', '戒指', '1.34', '富贵大花黄金足金戒指', '1315', '782', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca026f73fb48asdaf', '【网店尊享款】心心相印黄金足金戒指', '黄金', '戒指', '1.12', '【网店尊享款】心心相印黄金足金戒指', '1324', '450', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca026fhkhkhjlhjds', '周大福花月佳期黄金足金戒指', '黄金', '戒指', '1.22', '周大福花月佳期黄金足金戒指', '1342', '982', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('dtuyyiuopokjhgfdseeertgfhgnbvfds', '镂空花瓣黄金足金戒指', '黄金', '戒指', '1.14', '镂空花瓣黄金足金戒指', '1234', '346', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca026asfsgxhygjui', '花月佳期馨茉足金戒指', '黄金', '戒指', '1.45', '花月佳期馨茉足金戒指', '1467', '923', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf804fdxghgjkiupooikj7bg', '车花棱形黄金足金戒指', '黄金', '戒指', '1.23', '车花棱形黄金足金戒指', '1348', '753', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('xfggfhggyjhkllkfddgfdgdlkjhgfgdr', '周大福花月佳期茉莉黄金足金手镯', '黄金', '手镯', '3.24', '周大福花月佳期茉莉黄金足金手镯', '1298', '156', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwewfhhjj', '光沙交错黄金足金手镯', '黄金', '手镯', '3.52', '光沙交错黄金足金手镯', '1892', '145', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwewfhhsd', '西游记之三打系列平安黄金足金BB手镯', '黄金', '手镯', '3.12', '西游记之三打系列平安黄金足金BB手镯', '2632', '568', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgasdasdassss', '【儿童首饰】光沙扭身黄金足金手镯', '黄金', '手镯', '3.42', '【儿童首饰】光沙扭身黄金足金手镯', '2843', '461', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgwwwqeeeeeee', '光沙LUCKY黄金足金手镯', '黄金', '手镯', '3.24', '光沙LUCKY黄金足金手镯', '2924', '582', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwewfhrgf', '光沙心形黄金足金手镯', '黄金', '手镯', '3.15', '光沙心形黄金足金手镯', '2763', '591', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwewiqjjv', '优雅花蔓黄金足金手镯', '黄金', '手镯', '3.18', '优雅花蔓黄金足金手镯', '2371', '361', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwesdfkhk', '周大福花月佳期黄金足金手镯', '黄金', '手镯', '3.19', '周大福花月佳期黄金足金手镯', '2914', '491', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098cf8047dca02xgfrtwewyhwud', '【儿童首饰】可爱铃铛黄金足金手镯', '黄金', '手镯', '3.14', '【儿童首饰】可爱铃铛黄金足金手镯', '2918', '401', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fb486a7bg', '【网店尊享款】蝴蝶叶黄金足金项链', '黄金', '项链', '3.24', '【网店尊享款】蝴蝶叶黄金足金项链', '2999', '532', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fb486a7sa', '【网店尊享款】玫瑰花黄金足金项链', '黄金', '项链', '3.12', '【网店尊享款】玫瑰花黄金足金项链', '2888', '534', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fb486a7hb', '婚嫁皇冠典雅黄金足金项链', '黄金', '项链', '3.19', '婚嫁皇冠典雅黄金足金项链', '2666', '634', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fb486ssew', 'Angel天使之翼足金项链', '黄金', '项链', '3.24', 'Angel天使之翼足金项链', '9999', '9', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fb48wwwef', '周大福花月佳期绚烂繁华黄金足金项链', '黄金', '项链', '3.19', '周大福花月佳期绚烂繁华黄金足金项链', '6688', '8', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620098crtgfhfgh026f73fsdfgdfgf', '"杏"福相拥浪漫优雅银杏黄金足金吊坠', '黄金', '项链', '3.15', '"杏"福相拥浪漫优雅银杏黄金足金吊坠', '3421', '534', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtgfhfgh026f73fb486a7bg', '精美时尚黄金足金项链', '黄金', '项链', '3.16', '精美时尚黄金足金项链', '2314', '421', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtgfhfgh026f73fb486ahfg', '婚嫁玫瑰花典雅黄金足金项链', '黄金', '项链', '3.22', '婚嫁玫瑰花典雅黄金足金项链', '2451', '231', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrt6f73fb486ahfg', '字母Luck足金手链', '黄金', '手链/脚链', '2.23', '字母Luck足金手链', '1823', '342', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrt6f73fb486ahsd', '环环扣黄金足金手链', '黄金', '手链/脚链', '2.13', '环环扣黄金足金手链', '1923', '345', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrt6f73fb486asad', '幸运转运珠黄金足金手链', '黄金', '手链/脚链', '2.14', '幸运转运珠黄金足金手链', '1378', '134', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrt6f73asdsffgfd', '车花心形足金手链', '黄金', '手链/脚链', '2.17', '车花心形足金手链', '1988', '156', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdsaderewrrt6f73asdsffgfd', '福星黄金足金手链', '黄金', '手链/脚链', '2.15', '福星黄金足金手链', '1966', '158', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgwarefghfrrt6f73fb486ahfg', '光沙扭绳蝴蝶结黄金足金手链', '黄金', '手链/脚链', '2.11', '光沙扭绳蝴蝶结黄金足金手链', '1931', '139', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgt23454rrt6f73fb486ahfg', '婚嫁玫瑰花黄金足金手链', '黄金', '手链/脚链', '2.12', '婚嫁玫瑰花黄金足金手链', '1873', '146', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrdgh3fb486ahfg', '猴赛雷黄金足金吊坠', '黄金', '吊坠', '2.13', '猴赛雷黄金足金吊坠', '1941', '148', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrdgh3fb486ajssd', '葫芦足金吊坠', '黄金', '吊坠', '2.74', '葫芦足金吊坠', '1973', '621', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dghhgfdsdewrrdgh3fb486ajssd', '猴王黄金足金吊坠', '黄金', '吊坠', '2.32', '猴王黄金足金吊坠', '2899', '721', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewrrdgh3fb48fghjhj', '送寿桃猴子黄金足金吊坠', '黄金', '吊坠', '2.91', '送寿桃猴子黄金足金吊坠', '2811', '612', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtweressadh3fb48fghjhj', '花月佳期馨茉黄金足金吊坠', '黄金', '吊坠', '2.99', '花月佳期馨茉黄金足金吊坠', '2777', '623', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c6asddfdffwerewrrdgh3fb48fghjhj', '慈祥笑脸佛黄金足金吊坠', '黄金', '吊坠', '2.33', '慈祥笑脸佛黄金足金吊坠', '2183', '444', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c6asddfdffwerewrrddsgfghffghjhj', '光沙字母Y黄金足金吊坠转运珠', '黄金', '吊坠', '3.83', '光沙字母Y黄金足金吊坠转运珠', '2341', '342', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfgdgtwerewqwweh3fb48fghjhj', '光身可爱秀气铃铛黄金足金吊坠', '黄金', '吊坠', '2.14', '光身可爱秀气铃铛黄金足金吊坠', '2999', '777', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfwertgfgewrrdgh3fb48fghjhj', '平安福星宝宝硬足金吊坠', '黄金', '吊坠', '2.43', '平安福星宝宝硬足金吊坠', '2666', '888', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c62asdasdasddawrrdgh3fb48fghjhj', '光身圆圈足金耳环', '黄金', '耳坠', '1.24', '光身圆圈足金耳环', '1999', '199', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c62asddertgfgewrrdgh3fb48fghjhj', '浪漫玫瑰足金耳环', '黄金', '耳坠', '1.26', '浪漫玫瑰足金耳环', '1883', '299', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c6zsdfwertgfgewrrdgh3fb48fghjhj', '光沙皇冠足金耳环', '黄金', '耳坠', '1.27', '光沙皇冠足金耳环', '1889', '255', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c6zsdfwertgfgewrrdgh3fb48fgsdsd', '光沙甜美心形黄金足金耳钉', '黄金', '耳坠', '1.32', '光沙甜美心形黄金足金耳钉', '1834', '266', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6sadadfwertgfgewrrdgh3fb48fghjhj', '花月佳期夏荷足金耳钉', '黄金', '耳坠', '1.24', '花月佳期夏荷足金耳钉', '1829', '277', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('asdasdasdsagfgewrrdgh3fb48fghjhj', '光沙蝴蝶黄金足金耳钉', '黄金', '耳坠', '1.42', '光沙蝴蝶黄金足金耳钉', '1845', '288', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620dfwertgsdadrrdgh3fb48fghjhj', '车花经典黄金足金耳环', '黄金', '耳坠', '1.21', '车花经典黄金足金耳环', '1923', '299', '婚嫁', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('6c620asdartgfgewrrdgh3fb48fghjhj', '花意黄金足金耳环', '黄金', '耳坠', '1.23', '花意黄金足金耳环', '1923', '155', '礼品', '上架', null);
INSERT INTO "YJY"."GOODS" VALUES ('afsadfkjafdsdfasjkdfhsd234353000', '高贵皇冠铂金钻', '钻石', '吊坠', '1.22', '高贵皇冠铂金钻', '7896', '34', '婚嫁', '上架', null);

-- ----------------------------
-- Table structure for GOODS_SALE
-- ----------------------------
DROP TABLE "YJY"."GOODS_SALE";
CREATE TABLE "YJY"."GOODS_SALE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"NU" VARCHAR2(100 BYTE) NULL ,
"SALES" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of GOODS_SALE
-- ----------------------------

-- ----------------------------
-- Table structure for MY_ACCOUNT
-- ----------------------------
DROP TABLE "YJY"."MY_ACCOUNT";
CREATE TABLE "YJY"."MY_ACCOUNT" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(100 BYTE) NULL ,
"PASSWORD" VARCHAR2(100 BYTE) NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_ACCOUNT
-- ----------------------------
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('68be75c1f2164c8da3b0c7b848b17d8d', 'hml', '123', '823caafffc1f433fac804e0369c2e8a4');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('788805ad884c481689baf4a3f6988dd0', 'cj', '123', '788805ad884c481689baf4a3f6988dd1');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('788805ad884c481689baf4a3f6988d01', 'sp', '123', '788805ad884c481689baf4a3f6988001');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('788805ad884c481689baf4a3f6988d02', 'yh', '123', '788805ad884c481689baf4a3f6988003');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('ee95c865d8b747f5901f316690745b72', 'xt', '123', '788805ad884c481689baf4a3f6988002');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('d8210d9d520d4a84b6ecb9a27e0e49fc', 'ss', '123', 'ac74e919100f4085a436b86c252c523e');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('4bca8acda788415ba919d1e1fdeecf1e', 'ff', '123', 'bd4536bb6ced4c8089f3cd3e5c3d8cda');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('5627a8eaa15142b89a2570985da22991', 'zs', '123', '698b3f5759f04e46a27c5baab955b55d');
INSERT INTO "YJY"."MY_ACCOUNT" VALUES ('ee95c865d8b747f5901f316690745b02', 'xx', '123', '788805ad884c481689baf4a3f6988004');

-- ----------------------------
-- Table structure for MY_RESOURCE
-- ----------------------------
DROP TABLE "YJY"."MY_RESOURCE";
CREATE TABLE "YJY"."MY_RESOURCE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"CONTENT" VARCHAR2(100 BYTE) NULL ,
"BZ" VARCHAR2(1000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_RESOURCE
-- ----------------------------
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6911dd0', 'user/toadmin-list.do', '跳转到管理员列表');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909010', '/user/memberAdd.do', '会员添加页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909020', 'user/memberDelete.do', '会员删除页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909030', '/user/updateType.do', '修改会员类型');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909040', '/user/toMemberGrade.do', '跳转到会员等级');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909050', '/user/toChangePassword.do', '跳转到会员修改密码');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909060', '/user/changePassword.do', '会员修改密码');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909070', '/user/checkDeleteUser.do', '批量删除会员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909080', '/user/toIntegral.do', '跳转到会员积分');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909090', 'user/toMyRole.do', '跳转到管理员角色');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf401f6909090', 'user/toAddRole.do', '跳转到管理员角色添加');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf402f6909090', 'user/addRole.do', '管理员角色添加');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf403f6909090', 'user/deleteRole.do', '管理员角色删除');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf404f6909090', 'user/toUpdateRole.do', '跳转到修改管理员角色');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf405f6909090', 'user/updateRole.do', '管理员角色修改');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf406f6909090', 'user/checkDeleteRole.do', '批量删除管理员角色');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('701805ad884c481689baf401f6909090', 'user/toMyResource.do', '跳转到管理员资源表');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('101805ad884c481689baf401f6909090', 'user/toAddResource.do', '跳转到添加资源');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('201805ad884c481689baf401f6909090', 'user/addResource.do', '管理员资源添加操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('301805ad884c481689baf401f6909090', 'user/deleteResource.do', '管理员删除资源操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('401805ad884c481689baf401f6909090', 'user/toUpdateResource.do', '跳转到管理员修改资源');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('501805ad884c481689baf401f6909090', 'user/updateResource.do', '管理员修改资源操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('601805ad884c481689baf401f6909090', 'user/checkDeleteResource.do', '管理员批量删除资源');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('801805ad884c481689baf401f6909090', '/user/charts_bing.do', '管理员到饼状图操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('901805ad884c481689baf401f6909090', '/user/charts_zhu.do', '管理员到柱状图操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('911805ad884c481689baf401f6909090', '/user/systemSZ.do', '管理员到系统设置操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('921805ad884c481689baf401f6909090', '/user/toUpdate.do', '管理员到修改设置操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('931805ad884c481689baf401f6909090', '/user/toPictureList.do', '管理员到图片列表页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('941805ad884c481689baf401f6909090', '/user/todelete.do', '管理员删除图片操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('951805ad884c481689baf401f6909090', '/user/pldelete.do', '管理员批量删除图片操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('961805ad884c481689baf401f6909090', 'user/toAddpicture.do', '管理员跳转到添加图片操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('971805ad884c481689baf401f6909090', 'user/addpic.do', '管理员添加图片操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('981805ad884c481689baf401f6909090', 'user/toUpdatepicture.do', '管理员跳转到修改图片页面（上）');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('991805ad884c481689baf401f6909090', 'user/toUpdateR.do', '管理员跳转到修改图片页面（右）');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('991805ad884c481689baf401f6909091', 'user/updatePic.do', '管理员进行修改图片操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd1', 'user/admindelete.do', '删除管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd2', 'user/toaddAdmin.do', '跳转到添加管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd3', 'deleteadmin.do', '批量删除管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd4', 'user/toAdminUpdate.do', '修改管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd5', 'user/addadmin.do', '添加管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd6', 'user/toAdminUpdate.do', '跳转到修改管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd7', 'user/updateadmin.do', '修改管理员');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd8', '/user/memberList.do', '跳转到会员列表');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd9', '/user/toMemberUpdate.do', '跳转到会员修改页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909d10', '/user/toMemberAdd.do', '跳转到会员添界页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6910dd0', 'user/checkdelete.do', '商品的批量删除');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6901dd0', 'USER/TOADDPERSON.DO', '跳转到添加个人信息');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6902dd0', 'user/toArticle-list.do', '跳转到商品列表页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6903dd0', 'user/tocheckList.do', '跳转到查询列表页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6904dd0', 'user/toAddarticle.do', '跳转到添加商品页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6905dd0', 'user/add.do', '添加商品');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6906dd0', 'user/tocheckUpdate.do', '跳转到头部修改');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6907dd0', 'user/toArticleUpdate.do', '跳转到商品修改');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6908dd0', 'user/update.do', '商品修改');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('788805ad884c481689baf4a3f6909dd0', 'user/Articledelete.do', '商品删除');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35921', 'user/toPay.do', '跳转到已付款订单');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35922', '/user/toWaitPay.do', '//跳转到代付款订单');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35923', '/user/toDeletePay.do', '跳转到删除订单');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35924', 'user/toDeleteWaitPay.do', '删除待付款订单');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35925', 'user/toAfterSale.do', '跳转到售后申请表');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35926', '/user/toDeleteAfterSale.do', '删除售后申请操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35927', '/user/toDeleteAfterSaleAll.do', '批量删除售后申请操作');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35928', '/user/toComments.do', '跳转到评论管理');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('cb54c5f0f2a54d4398c0a2183db35929', 'user/toAdviceList.do', '跳转到意见反馈列表页');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056900', 'user/toadminroleresource.do', '跳转到角色资源列列表');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056901', 'user/toRoleRsourceUpdate.do', '跳转到修改角色资源');
INSERT INTO "YJY"."MY_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056902', 'user/roleRsourceUpdate.do', '修改角色资源');

-- ----------------------------
-- Table structure for MY_ROLE
-- ----------------------------
DROP TABLE "YJY"."MY_ROLE";
CREATE TABLE "YJY"."MY_ROLE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"CONTENT" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_ROLE
-- ----------------------------
INSERT INTO "YJY"."MY_ROLE" VALUES ('788802ad884c481689baf4a3f6901dd0', '商品管理员');
INSERT INTO "YJY"."MY_ROLE" VALUES ('788803ad884c481689baf4a3f6901dd0', '用户管理员');
INSERT INTO "YJY"."MY_ROLE" VALUES ('788804ad884c481689baf4a3f6901dd0', '系统管理员');
INSERT INTO "YJY"."MY_ROLE" VALUES ('788805ad884c481689baf4a3f6001dd0', '信息管理员');
INSERT INTO "YJY"."MY_ROLE" VALUES ('788801ad884c481689baf4a3f6901dd0', '超级管理员');

-- ----------------------------
-- Table structure for MY_USER
-- ----------------------------
DROP TABLE "YJY"."MY_USER";
CREATE TABLE "YJY"."MY_USER" (
"ID" VARCHAR2(32 BYTE) NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PHONE" VARCHAR2(100 BYTE) NULL ,
"ADDRESS" VARCHAR2(1000 BYTE) NULL ,
"TYPE" VARCHAR2(100 BYTE) NULL ,
"SEX" VARCHAR2(10 BYTE) NULL ,
"AGE" VARCHAR2(100 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"INTEGRAL" VARCHAR2(100 BYTE) NULL ,
"EMAIL" VARCHAR2(200 BYTE) NULL ,
"BIRTH" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_USER
-- ----------------------------
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988001', '李四', '15638230809', '上海', '白金会员', '男', '20', '土豪', '50', '1019700856@qq.com', '1990-1-1');
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988003', '赵六', '15638230809', '郑州', '黄金会员', '男', '21', '土豪', '60', '1019700856@126.com', '1993-1-1');
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988002', '王五', '15638230809', '深圳', '普通会员', '男', '18', '土豪', '70', '10197yjy@qq.com', '1994-1-1');
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988004', '乐乐', '15638230809', '杭州', '普通会员', '女', '19', '土豪', '70', '10197856@qq.com', '1995-1-1');
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988005', '笑笑', '15638230809', '沈阳', '普通会员', '女', '20', '土豪', '70', '101971856@qq.com', '1996-1-1');
INSERT INTO "YJY"."MY_USER" VALUES ('788805ad884c481689baf4a3f6988dd1', '明礼', '123456789', '北京', '普通会员', '男', '23', '土豪', '70', '101972856@qq.com', '1991-9-10');
INSERT INTO "YJY"."MY_USER" VALUES ('bd4536bb6ced4c8089f3cd3e5c3d8cda', '小付', '15638230809', '深圳', '普通会员', '男', '23', '土豪', '30', '15638230809@qq.com', '2015-12-21');
INSERT INTO "YJY"."MY_USER" VALUES ('698b3f5759f04e46a27c5baab955b55d', '张三', '15638230809', '郑州', '白金会员', '男', '25', '土豪', '50', '15638230807@qq.com', '1995-1-1');

-- ----------------------------
-- Table structure for ORDER
-- ----------------------------
DROP TABLE "YJY"."ORDER";
CREATE TABLE "YJY"."ORDER" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"STATE" VARCHAR2(100 BYTE) NULL ,
"TYPE" VARCHAR2(100 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ORDER
-- ----------------------------

-- ----------------------------
-- Table structure for PICTURE
-- ----------------------------
DROP TABLE "YJY"."PICTURE";
CREATE TABLE "YJY"."PICTURE" (
"ID" VARCHAR2(32 BYTE) NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"DO_PATH" VARCHAR2(255 BYTE) NULL ,
"GOODS_NAME" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of PICTURE
-- ----------------------------
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353038', 'afsadfkjafdsdfasjkdfhsd234353038', 'p2/160811/V100627.jpg', '中国风石来运转');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353039', 'afsadfkjafdsdfasjkdfhsd234353039', 'p2/160811/V102522.jpg', '小清新手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353040', 'afsadfkjafdsdfasjkdfhsd234353040', 'p2/160811/NX974.jpg', 'CoCo猫 金粉女王');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353041', 'afsadfkjafdsdfasjkdfhsd234353041', 'p2/160811/nx960.jpg', '福禄葫芦');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353042', 'afsadfkjafdsdfasjkdfhsd234353042', 'p2/160811/fu127071.jpg', '炫恋蝴蝶结');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353043', 'afsadfkjafdsdfasjkdfhsd234353043', 'p2/160811/V94482.jpg', '灵动魔法黄色宝石');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353044', 'afsadfkjafdsdfasjkdfhsd234353044', 'p2/160811/T65432.jpg', '典雅时尚珍珠项链');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353045', 'afsadfkjafdsdfasjkdfhsd234353045', 'p2/160811/U152634.jpg', '花样铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353046', 'afsadfkjafdsdfasjkdfhsd234353046', 'p2/160811/U131379.jpg', '高贵铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353047', 'afsadfkjafdsdfasjkdfhsd234353047', 'p2/160811/a1-001.jpg', 'LOVE铂金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353048', 'afsadfkjafdsdfasjkdfhsd234353048', 'p2/160811/a5-001.jpg', '简约铂金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353049', 'afsadfkjafdsdfasjkdfhsd234353049', 'p2/160811/E119767.jpg', '花形黄色18K金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353050', 'afsadfkjafdsdfasjkdfhsd234353050', 'p2/160811/P150138.jpg', '车花星星18K金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353051', 'afsadfkjafdsdfasjkdfhsd234353051', 'p2/160811/E118834.jpg', '爱心粉色黄色18K金耳饰');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353052', 'afsadfkjafdsdfasjkdfhsd234353052', 'p2/160811/E105867.jpg', '白红二色心形18K玫瑰金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353053', 'afsadfkjafdsdfasjkdfhsd234353053', 'p2/160811/E120342.jpg', '花朵盛开玫瑰色18K金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353055', 'afsadfkjafdsdfasjkdfhsd234353055', 'p2/160811/P153247.jpg', '花朵白色18K金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353056', 'afsadfkjafdsdfasjkdfhsd234353056', 'p2/160811/e119762.jpg', '时尚圆环通宝18K金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df94', 'ce0bee0c74eb4cb29d26f90ad679df94', 'p2/160811/c1-001.jpg', '简约金线');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df95', 'ce0bee0c74eb4cb29d26f90ad679df95', 'p2/160811/c2-002.jpg', '迪士尼米老鼠系列');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df96', 'ce0bee0c74eb4cb29d26f90ad679df96', 'p2/160811/c3-003.jpg', '福禄手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df97', 'ce0bee0c74eb4cb29d26f90ad679df97', 'p2/160811/c4-002.jpg', '可爱卡通人物');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df98', 'ce0bee0c74eb4cb29d26f90ad679df98', 'p2/160811/c5-003.jpg', '爱情系列forever');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df99', 'ce0bee0c74eb4cb29d26f90ad679df99', 'p2/160811/c6-001.jpg', '皇冠个性手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d001', 'ce0bee0c74eb4cb29d26f90ad679d001', 'p2/160811/a1-001.jpg', '迪士尼 冰雪奇缘');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d002', 'ce0bee0c74eb4cb29d26f90ad679d002', 'p2/160811/a2-003.jpg', '镶钻双心');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d003', 'ce0bee0c74eb4cb29d26f90ad679d003', 'p2/160811/a4-001.jpg', '镶钻四叶草');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d004', 'ce0bee0c74eb4cb29d26f90ad679d004', 'p2/160811/a5-001.jpg', '聚爱瓶 项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d005', 'ce0bee0c74eb4cb29d26f90ad679d005', 'p2/160811/a6-001.jpg', '简约镶钻项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d006', 'ce0bee0c74eb4cb29d26f90ad679d006', 'p2/160811/A146359.png', '简约钻石戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d007', 'ce0bee0c74eb4cb29d26f90ad679d007', 'p2/160811/U106422.jpg', '钻石婚戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d008', 'ce0bee0c74eb4cb29d26f90ad679d008', 'p2/160811/U108489.jpg', '奢华钻石婚戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d009', 'ce0bee0c74eb4cb29d26f90ad679d009', 'p2/160811/U139589a.jpg', '奢华七钻大气婚戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d010', 'ce0bee0c74eb4cb29d26f90ad679d010', 'p2/160811/U149968.png', '玫瑰形婚戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d011', 'ce0bee0c74eb4cb29d26f90ad679d011', 'p2/160811/U150086.jpg', '经典花型钻戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d012', 'ce0bee0c74eb4cb29d26f90ad679d012', 'p2/160811/U152524.jpg', '简约大气钻戒');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d013', 'ce0bee0c74eb4cb29d26f90ad679d013', 'p2/160811/FT66006.jpg', '镶钻艺术项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d014', 'ce0bee0c74eb4cb29d26f90ad679d014', 'p2/160811/FT66012.jpg', '精美艺术项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d015', 'ce0bee0c74eb4cb29d26f90ad679d015', 'p2/160811/U123296.jpg', '镶钻心形项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d016', 'ce0bee0c74eb4cb29d26f90ad679d016', 'p2/160811/U128987.jpg', '皇冠镶钻项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d017', 'ce0bee0c74eb4cb29d26f90ad679d017', 'p2/160811/U139118.jpg', '立体心形镶钻项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d018', 'ce0bee0c74eb4cb29d26f90ad679d018', 'p2/160811/U147075.jpg', '简约个性皇冠镶钻项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d019', 'ce0bee0c74eb4cb29d26f90ad679d019', 'p2/160811/U147325.jpg', '镶钻个性领结项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d020', 'ce0bee0c74eb4cb29d26f90ad679d020', 'p2/160811/U151412.jpg', '个性镶钻五角星项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d021', 'ce0bee0c74eb4cb29d26f90ad679d021', 'p2/160811/EPCM86179DIK_67d01f11-4966-438c-b2e3-0544db625565_700.jpg', '简约立体镶钻手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d022', 'ce0bee0c74eb4cb29d26f90ad679d022', 'p2/160811/EPCM86685DIK_ee9a6753-0e29-4583-ae3e-6268177c7c00_700.jpg', '蝴蝶结优雅镶钻手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d023', 'ce0bee0c74eb4cb29d26f90ad679d023', 'p2/160811/EPCM87102DIB_18c61834-69c5-4212-b54e-203aaccabb18_700.jpg', '吉祥红绳镶钻手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d024', 'ce0bee0c74eb4cb29d26f90ad679d024', 'p2/160811/U131905.jpg', '镶钻优雅手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d025', 'ce0bee0c74eb4cb29d26f90ad679d025', 'p2/160811/U131909.jpg', '镶钻优雅手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d026', 'ce0bee0c74eb4cb29d26f90ad679d026', 'p2/160811/FT66007.jpg', '故宫系列翩翩起舞玫瑰色珍珠耳饰');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d027', 'ce0bee0c74eb4cb29d26f90ad679d027', 'p2/160811/T69113.jpg', '婚嫁时尚白色珍珠耳饰');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d028', 'ce0bee0c74eb4cb29d26f90ad679d028', 'p2/160811/T72103.jpg', '小心意玫瑰色金镶珍珠耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d029', 'ce0bee0c74eb4cb29d26f90ad679d029', 'p2/160811/t72038.jpg', '婚嫁金镶钻石耳饰');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d030', 'ce0bee0c74eb4cb29d26f90ad679d030', 'p2/160811/AQ33181.jpg', '婚嫁转运珠镶珍珠手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d031', 'ce0bee0c74eb4cb29d26f90ad679d031', 'p2/160811/FC65464.jpg', '故宫文化系列珍珠手串');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d032', 'ce0bee0c74eb4cb29d26f90ad679d032', 'p2/160811/T60493.jpg', '清新皓白珍珠手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d033', 'ce0bee0c74eb4cb29d26f90ad679d033', 'p2/160811/T69676.jpg', '双节银镶珍珠手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d034', 'ce0bee0c74eb4cb29d26f90ad679d034', 'p2/160811/T70793a.jpg', '华丽银镶珍珠项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d035', 'ce0bee0c74eb4cb29d26f90ad679d035', 'p2/160811/T71061.jpg', '链链不忘金镶珍珠项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679d036', 'ce0bee0c74eb4cb29d26f90ad679d036', 'p2/160811/T71897.jpg', '福字珍珠项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df31', 'ce0bee0c74eb4cb29d26f90ad679df31', 'p2/160811/E108674.jpg', 'EffileTower吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df32', 'ce0bee0c74eb4cb29d26f90ad679df32', 'p2/160811/E110089.jpg', '失忆蝴蝶吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df33', 'ce0bee0c74eb4cb29d26f90ad679df33', 'p2/160811/E119765b.jpg', '拉丝太阳花');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df34', 'ce0bee0c74eb4cb29d26f90ad679df34', 'p2/160811/E121060.jpg', '蝴蝶对心');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df35', 'ce0bee0c74eb4cb29d26f90ad679df35', 'p2/160811/KSG108790.jpg', '艺术 心心相印');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df36', 'ce0bee0c74eb4cb29d26f90ad679df36', 'p2/160811/P150138.jpg', 'SAMSUNG boom7');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df37', 'ce0bee0c74eb4cb29d26f90ad679df37', 'p2/160811/T71987.jpg', 'HelloKity可爱吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df38', 'ce0bee0c74eb4cb29d26f90ad679df38', 'p2/160811/U129627.jpg', '小天使K金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df39', 'ce0bee0c74eb4cb29d26f90ad679df39', 'p2/160811/U149589.jpg', '玉兔镶钻可爱吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df40', 'ce0bee0c74eb4cb29d26f90ad679df40', 'p2/160811/U149665.jpg', '迪士尼冰雪奇缘雪花');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df41', 'ce0bee0c74eb4cb29d26f90ad679df41', 'p2/160811/E107677.jpg', '简约心形耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df42', 'ce0bee0c74eb4cb29d26f90ad679df42', 'p2/160811/E110868.jpg', '中国风镂空耳坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df43', 'ce0bee0c74eb4cb29d26f90ad679df43', 'p2/160811/E112845a.jpg', '领结心形耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df44', 'ce0bee0c74eb4cb29d26f90ad679df44', 'p2/160811/E119068.jpg', '十字小皇冠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df45', 'ce0bee0c74eb4cb29d26f90ad679df45', 'p2/160811/E119083.jpg', '时尚花纹耳坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df46', 'ce0bee0c74eb4cb29d26f90ad679df46', 'p2/160811/E119757.jpg', '可爱小海星耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df47', 'ce0bee0c74eb4cb29d26f90ad679df47', 'p2/160811/E120354b.jpg', '简约花朵耳坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df48', 'ce0bee0c74eb4cb29d26f90ad679df48', 'p2/160811/E120708.jpg', '艺术耳坠');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df49', 'ce0bee0c74eb4cb29d26f90ad679df49', 'p2/160811/E120353.jpg', '简约心形耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df50', 'ce0bee0c74eb4cb29d26f90ad679df50', 'p2/160811/E37451.jpg', '刻花简约戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df51', 'ce0bee0c74eb4cb29d26f90ad679df51', 'p2/160811/E48191.jpg', '蛇纹大方戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df52', 'ce0bee0c74eb4cb29d26f90ad679df52', 'p2/160811/E107952.jpg', 'K金撞色戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df53', 'ce0bee0c74eb4cb29d26f90ad679df53', 'p2/160811/e118846.jpg', '镂空拼花戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df54', 'ce0bee0c74eb4cb29d26f90ad679df54', 'p2/160811/E118971.jpg', '一箭穿心戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df55', 'ce0bee0c74eb4cb29d26f90ad679df55', 'p2/160811/E119054.jpg', '皇冠形状戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df56', 'ce0bee0c74eb4cb29d26f90ad679df56', 'p2/160811/E119576.jpg', '爱心连心戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df57', 'ce0bee0c74eb4cb29d26f90ad679df57', 'p2/160811/e119749.jpg', '简约心形戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df58', 'ce0bee0c74eb4cb29d26f90ad679df58', 'p2/160811/e105908.jpg', '碎花K金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df59', 'ce0bee0c74eb4cb29d26f90ad679df59', 'p2/160811/e119259.jpg', '彩色美丽手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df60', 'ce0bee0c74eb4cb29d26f90ad679df60', 'p2/160811/E119991.jpg', '海洋之豚 手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df61', 'ce0bee0c74eb4cb29d26f90ad679df61', 'p2/160811/e120060.jpg', '幸运四叶草手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df62', 'ce0bee0c74eb4cb29d26f90ad679df62', 'p2/160811/U151865.jpg', '幸运小花镶钻 手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df63', 'ce0bee0c74eb4cb29d26f90ad679df63', 'p2/160811/E2903.jpg', '简约链条项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df64', 'ce0bee0c74eb4cb29d26f90ad679df64', 'p2/160811/e111457.jpg', '扣环项链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df65', 'ce0bee0c74eb4cb29d26f90ad679df65', 'p2/160811/E119051.jpg', '蝴蝶翩翩飞');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df66', 'ce0bee0c74eb4cb29d26f90ad679df66', 'p2/160811/E119758a.jpg', '麻绳领结');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df67', 'ce0bee0c74eb4cb29d26f90ad679df67', 'p2/160811/E119758a.jpg', '羽翼之剪');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df68', 'ce0bee0c74eb4cb29d26f90ad679df68', 'p2/160811/E120344.jpg', '跳动之心');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df69', 'ce0bee0c74eb4cb29d26f90ad679df69', 'p2/160811/E120364.jpg', '简约几何图形');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df70', 'ce0bee0c74eb4cb29d26f90ad679df70', 'p2/160811/NA55.jpg', '水中花系列Pt950铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df71', 'ce0bee0c74eb4cb29d26f90ad679df71', 'p2/160811/NA855.jpg', '水中花系列铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df72', 'ce0bee0c74eb4cb29d26f90ad679df72', 'p2/160811/U1508348.jpg', '小心意-k系列铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df73', 'ce0bee0c74eb4cb29d26f90ad679df73', 'p2/160811/U1508d38.jpg', '小心意-Y时代铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df74', 'ce0bee0c74eb4cb29d26f90ad679df74', 'p2/160811/U1508384.jpg', '小心意-铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df75', 'ce0bee0c74eb4cb29d26f90ad679df75', 'p2/160811/u133544.jpg', '逸彩精美蝴蝶铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df76', 'ce0bee0c74eb4cb29d26f90ad679df76', 'p2/160811/u133544 (2).jpg', '逸彩精美简雅18K金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df77', 'ce0bee0c74eb4cb29d26f90ad679df77', 'p2/160811/u1335443.jpg', '逸彩精美简雅铂金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df78', 'ce0bee0c74eb4cb29d26f90ad679df78', 'p2/160811/U152634.jpg', '铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df79', 'ce0bee0c74eb4cb29d26f90ad679df79', 'p2/160811/U1526343.jpg', '花漾铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df80', 'ce0bee0c74eb4cb29d26f90ad679df80', 'p2/160811/U131379.jpg', '【灵犀】高贵铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df81', 'ce0bee0c74eb4cb29d26f90ad679df81', 'p2/160811/379b2-001.jpg', '【灵犀】逸彩简约时尚铂金');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df82', 'ce0bee0c74eb4cb29d26f90ad679df82', 'p2/160811/A146359.jpg', '小心意系列bojin戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df83', 'ce0bee0c74eb4cb29d26f90ad679df83', 'p2/160811/A14s6359.jpg', '小心意系列时尚闪耀白色铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df84', 'ce0bee0c74eb4cb29d26f90ad679df84', 'p2/160811/U106422a.jpg', '优雅系列铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df85', 'ce0bee0c74eb4cb29d26f90ad679df85', 'p2/160811/U152709.jpg', '优雅铂金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df86', 'ce0bee0c74eb4cb29d26f90ad679df86', 'p2/160811/U151391.jpg', '焕美天然系列铂金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df87', 'ce0bee0c74eb4cb29d26f90ad679df87', 'p2/160811/e2-001.jpg', '铂金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df88', 'ce0bee0c74eb4cb29d26f90ad679df88', 'p2/160811/e1-001.jpg', '简约艺术手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df89', 'ce0bee0c74eb4cb29d26f90ad679df89', 'p2/160811/e3-001.jpg', '五角星艺术手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df90', 'ce0bee0c74eb4cb29d26f90ad679df90', 'p2/160811/e4-002.jpg', '简约大方款式 手链');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df91', 'ce0bee0c74eb4cb29d26f90ad679df91', 'p2/160811/e5-002.jpg', '艺术小花');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df92', 'ce0bee0c74eb4cb29d26f90ad679df92', 'p2/160811/e6-001.jpg', '艺术鱼儿');
INSERT INTO "YJY"."PICTURE" VALUES ('ce0bee0c74eb4cb29d26f90ad679df93', 'ce0bee0c74eb4cb29d26f90ad679df93', 'p2/160811/098.jpg', '优雅天然系列铂金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dghhgfdsdewrrdgh3fb486ajssd', '6c620dghhgfdsdewrrdgh3fb486ajssd', 'p2/160811/f188936.jpg', '猴王黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrdgh3fb48fghjhj', '6c620dfgdgtwerewrrdgh3fb48fghjhj', 'p2/160811/f188934.jpg', '送寿桃猴子黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtweressadh3fb48fghjhj', '6c620dfgdgtweressadh3fb48fghjhj', 'p2/160811/f165646.jpg', '花月佳期馨茉黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c6asddfdffwerewrrdgh3fb48fghjhj', '6c6asddfdffwerewrrdgh3fb48fghjhj', 'p2/160811/f163126.jpg', '慈祥笑脸佛黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c6asddfdffwerewrrddsgfghffghjhj', '6c6asddfdffwerewrrddsgfghffghjhj', 'p2/160811/F189568.jpg', '光沙字母Y黄金足金吊坠转运珠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewqwweh3fb48fghjhj', '6c620dfgdgtwerewqwweh3fb48fghjhj', 'p2/160811/f194217.jpg', '光身可爱秀气铃铛黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfwertgfgewrrdgh3fb48fghjhj', '6c620dfwertgfgewrrdgh3fb48fghjhj', 'p2/160811/R7617.jpg', '平安福星宝宝硬足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c62asdasdasddawrrdgh3fb48fghjhj', '6c62asdasdasddawrrdgh3fb48fghjhj', 'p2/160811/F3545.jpg', '光身圆圈足金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('6c62asddertgfgewrrdgh3fb48fghjhj', '6c62asddertgfgewrrdgh3fb48fghjhj', 'p2/160811/F63286.jpg', '浪漫玫瑰足金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('6c6zsdfwertgfgewrrdgh3fb48fghjhj', '6c6zsdfwertgfgewrrdgh3fb48fghjhj', 'p2/160811/F157901.jpg', '光沙皇冠足金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('6c6zsdfwertgfgewrrdgh3fb48fgsdsd', '6c6zsdfwertgfgewrrdgh3fb48fgsdsd', 'p2/160811/F161062.jpg', '光沙甜美心形黄金足金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('6sadadfwertgfgewrrdgh3fb48fghjhj', '6sadadfwertgfgewrrdgh3fb48fghjhj', 'p2/160811/f165627.jpg', '花月佳期夏荷足金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('asdasdasdsagfgewrrdgh3fb48fghjhj', 'asdasdasdsagfgewrrdgh3fb48fghjhj', 'p2/160811/F167640.jpg', '光沙蝴蝶黄金足金耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfwertgsdadrrdgh3fb48fghjhj', '6c620dfwertgsdadrrdgh3fb48fghjhj', 'p2/160811/F172352.jpg', '车花经典黄金足金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620asdartgfgewrrdgh3fb48fghjhj', '6c620asdartgfgewrrdgh3fb48fghjhj', 'p2/160811/1118.jpg', '花意黄金足金耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026f73fb486a7ba', '44decebcbb034e3098b14132f96d3821', 'p2/160811/h28.jpg', '交错心形足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026f73fb486a7bh', '44decebcbb034e3098b14132f96d3822', 'p2/160811/h30.jpg', '精致蝴蝶节黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026f73fb486a7bh', '6c620098cf8047dca026f73fb486a7bh', 'p2/160811/10.jpg', '光沙皇冠黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026f73fb486aasf', '6c620098cf8047dca026f73fb486a7bg', 'p2/160811/12.jpg', '富贵大花黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026f73fb48asdaf', '6c620098cf8047dca026f73fb48asdaf', 'p2/160811/j42.jpg', '【网店尊享款】心心相印黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026fhkhkhjlhjds', '6c620098cf8047dca026fhkhkhjlhjds', 'p2/160811/j62.jpg', '周大福花月佳期黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('dtuyyiuopokjhgfdseeertgfhgnbvfds', 'dtuyyiuopokjhgfdseeertgfhgnbvfds', 'p2/160811/j52.jpg', '镂空花瓣黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca026asfsgxhygjui', '6c620098cf8047dca026asfsgxhygjui', 'p2/160811/j51.jpg', '花月佳期馨茉足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf804fdxghgjkiupooikj7bg', '6c620098cf804fdxghgjkiupooikj7bg', 'p2/160811/h27.jpg', '车花棱形黄金足金戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('xfggfhggyjhkllkfddgfdgdlkjhgfgdr', 'xfggfhggyjhkllkfddgfdgdlkjhgfgdr', 'p2/160811/hs1.jpg', '周大福花月佳期茉莉黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwewfhhjj', '6c620098cf8047dca02xgfrtwewfhhjj', 'p2/160811/hs88.jpg', '光沙交错黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwewfhhsd', '6c620098cf8047dca02xgfrtwewfhhsd', 'p2/160811/hs99.jpg', '西游记之三打系列平安黄金足金BB手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgasdasdassss', '6c620098cf8047dca02xgasdasdassss', 'p2/160811/hs6.jpg', '【儿童首饰】光沙扭身黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgwwwqeeeeeee', '6c620098cf8047dca02xgwwwqeeeeeee', 'p2/160811/hs5.jpg', '光沙LUCKY黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwewfhrgf', '6c620098cf8047dca02xgfrtwewfhrgf', 'p2/160811/z11.jpg', '光沙心形黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwewiqjjv', '6c620098cf8047dca02xgfrtwewiqjjv', 'p2/160811/z41.jpg', '优雅花蔓黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwesdfkhk', '6c620098cf8047dca02xgfrtwesdfkhk', 'p2/160811/z51.jpg', '周大福花月佳期黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098cf8047dca02xgfrtwewyhwud', '6c620098cf8047dca02xgfrtwewyhwud', 'p2/160811/hs23.jpg', '【儿童首饰】可爱铃铛黄金足金手镯');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fb486a7bg', '6c620098crtgfhfgh026f73fb486a7bg', 'p2/160811/hx2.jpg', '【网店尊享款】蝴蝶叶黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fb486a7sa', '6c620098crtgfhfgh026f73fb486a7sa', 'p2/160811/hx11.jpg', '【网店尊享款】玫瑰花黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fb486a7hb', '6c620098crtgfhfgh026f73fb486a7hb', 'p2/160811/hx12.jpg', '婚嫁皇冠典雅黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fb486ssew', '6c620098crtgfhfgh026f73fb486ssew', 'p2/160811/hxa.jpg', 'Angel天使之翼足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fb48wwwef', '6c620098crtgfhfgh026f73fb48wwwef', 'p2/160811/hx3.jpg', '周大福花月佳期绚烂繁华黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620098crtgfhfgh026f73fsdfgdfgf', '6c620098crtgfhfgh026f73fsdfgdfgf', 'p2/160811/L31.jpg', '"杏"福相拥浪漫优雅银杏黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtgfhfgh026f73fb486a7bg', '6c620dfgdgtgfhfgh026f73fb486a7bg', 'p2/160811/L12.jpg', '精美时尚黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtgfhfgh026f73fb486ahfg', '6c620dfgdgtgfhfgh026f73fb486ahfg', 'p2/160811/hx13.jpg', '婚嫁玫瑰花典雅黄金足金项链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrt6f73fb486ahfg', '6c620dfgdgtwerewrrt6f73fb486ahfg', 'p2/160811/F156792.jpg', '字母Luck足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrt6f73fb486ahsd', '6c620dfgdgtwerewrrt6f73fb486ahsd', 'p2/160811/F147283.jpg', '环环扣黄金足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrt6f73fb486asad', '6c620dfgdgtwerewrrt6f73fb486asad', 'p2/160811/F157031.jpg', '幸运转运珠黄金足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrt6f73asdsffgfd', '6c620dfgdgtwerewrrt6f73asdsffgfd', 'p2/160811/F159053.jpg', '车花心形足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdsaderewrrt6f73asdsffgfd', '6c620dfgdsaderewrrt6f73asdsffgfd', 'p2/160811/f164718.jpg', '福星黄金足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgwarefghfrrt6f73fb486ahfg', '6c620dfgwarefghfrrt6f73fb486ahfg', 'p2/160811/F196211b.jpg', '光沙扭绳蝴蝶结黄金足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgt23454rrt6f73fb486ahfg', '6c620dfgdgt23454rrt6f73fb486ahfg', 'p2/160811/F192597.jpg', '婚嫁玫瑰花黄金足金手链');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrdgh3fb486ahfg', '6c620dfgdgtwerewrrdgh3fb486ahfg', 'p2/160811/F160760.jpg', '猴赛雷黄金足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('6c620dfgdgtwerewrrdgh3fb486ajssd', '6c620dfgdgtwerewrrdgh3fb486ajssd', 'p2/160811/F1538.jpg', '葫芦足金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353000', 'afsadfkjafdsdfasjkdfhsd234353000', 'p2/160811/U149660.jpg', '高贵皇冠铂金钻');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353001', 'afsadfkjafdsdfasjkdfhsd234353001', 'p2/160811/U115871.jpg', '高贵优雅天鹅钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353002', 'afsadfkjafdsdfasjkdfhsd234353002', 'p2/160811/U1267652.jpg', '怦然系列浪漫心动白色18K金镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353003', 'afsadfkjafdsdfasjkdfhsd234353003', 'p2/160811/U147103.jpg', '怦然星动蝴蝶铂金钻');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353004', 'afsadfkjafdsdfasjkdfhsd234353004', 'p2/160811/NU164.JPG', '三打白骨精系列钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353005', 'afsadfkjafdsdfasjkdfhsd234353005', 'p2/160811/0015.jpg', '时尚造型Pt950铂金镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353006', 'afsadfkjafdsdfasjkdfhsd234353006', 'p2/160811/NA7106.jpg', '水中花系列PT950铂金镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353007', 'afsadfkjafdsdfasjkdfhsd234353007', 'p2/160811/U1359097.jpg', '水中花系列Pt950镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353008', 'afsadfkjafdsdfasjkdfhsd234353008', 'p2/160811/U1496658.jpg', '唯美雪花镶钻吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353009', 'afsadfkjafdsdfasjkdfhsd234353009', 'p2/160811/A1335519.jpg', '心翼Pt950铂金镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353010', 'afsadfkjafdsdfasjkdfhsd234353010', 'p2/160811/u141958.jpg', 'Hello Kitty 凯蒂猫18K玫瑰金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353035', 'afsadfkjafdsdfasjkdfhsd234353035', 'p2/160811/V100197.jpg', '闪耀之星');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353012', 'afsadfkjafdsdfasjkdfhsd234353012', 'p2/160811/U149666.jpg', '迪士尼公主系列雪花白色18K金镶钻石耳环');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353013', 'afsadfkjafdsdfasjkdfhsd234353013', 'p2/160811/NA55.jpg', '闪耀之花18K金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353014', 'afsadfkjafdsdfasjkdfhsd234353014', 'p2/160811/U150838.jpg', '小心意-Y时代玫瑰色18K金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353015', 'afsadfkjafdsdfasjkdfhsd234353015', 'p2/160811/U150874.jpg', '小心意蝴蝶结玫瑰色18K金镶钻石耳饰');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353016', 'afsadfkjafdsdfasjkdfhsd234353016', 'p2/160811/fu123319.jpg', '旋恋系列雪花白色18K金镶宝石钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353017', 'afsadfkjafdsdfasjkdfhsd234353017', 'p2/160811/fu123317.jpg', '旋恋系列雪花白色18K金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353018', 'afsadfkjafdsdfasjkdfhsd234353018', 'p2/160811/u133544.jpg', '逸彩精美简雅18K金镶钻石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353019', 'afsadfkjafdsdfasjkdfhsd234353019', 'p2/160811/f1-001.jpg', '高贵系列铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353020', 'afsadfkjafdsdfasjkdfhsd234353020', 'p2/160811/f2-001.jpg', '怦然系列铂金爱心吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353021', 'afsadfkjafdsdfasjkdfhsd234353021', 'p2/160811/U2126765.jpg', '怦然系列浪漫心动铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353022', 'afsadfkjafdsdfasjkdfhsd234353022', 'p2/160811/U126765f2-003.jpg', '怦然心动白色1铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353023', 'afsadfkjafdsdfasjkdfhsd234353023', 'p2/160811/3001.jpg', '时尚优雅铂金镶钻石吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353024', 'afsadfkjafdsdfasjkdfhsd234353024', 'p2/160811/0010.jpg', '时尚造型Pt950铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353025', 'afsadfkjafdsdfasjkdfhsd234353025', 'p2/160811/NA710.jpg', '水中花系列铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353026', 'afsadfkjafdsdfasjkdfhsd234353026', 'p2/160811/A133551.jpg', '心翼Pt950铂金吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353027', 'afsadfkjafdsdfasjkdfhsd234353027', 'p2/160811/AQ32849.jpg', '简约圆润珍珠耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353028', 'afsadfkjafdsdfasjkdfhsd234353028', 'p2/160811/AQ32880.jpg', '流水银镶珍珠吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353029', 'afsadfkjafdsdfasjkdfhsd234353029', 'p2/160811/AQ32899.jpg', '可爱皇冠银吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353030', 'afsadfkjafdsdfasjkdfhsd234353030', 'p2/160811/AQ33162.jpg', '典雅银镶珍珠戒指');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353031', 'afsadfkjafdsdfasjkdfhsd234353031', 'p2/160811/FC65851.jpg', '故宫文化系列锦绣良缘');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353032', 'afsadfkjafdsdfasjkdfhsd234353032', 'p2/160811/Q32479.jpg', '流水银镶珍珠吊坠');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353033', 'afsadfkjafdsdfasjkdfhsd234353033', 'p2/160811/t72040.jpg', '小心意玫瑰色');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353034', 'afsadfkjafdsdfasjkdfhsd234353034', 'p2/160811/V27275.jpg', '典雅白色坦桑石耳钉');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353036', 'afsadfkjafdsdfasjkdfhsd234353036', 'p2/160811/V102763.jpg', '小心意');
INSERT INTO "YJY"."PICTURE" VALUES ('afsadfkjafdsdfasjkdfhsd234353037', 'afsadfkjafdsdfasjkdfhsd234353037', 'p2/160811/v103580.jpg', '简约独特花纹戒指');

-- ----------------------------
-- Table structure for REPLY
-- ----------------------------
DROP TABLE "YJY"."REPLY";
CREATE TABLE "YJY"."REPLY" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"REPLYS" VARCHAR2(2000 BYTE) NULL ,
"CREATE_TIME" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of REPLY
-- ----------------------------
INSERT INTO "YJY"."REPLY" VALUES ('11111111111111111111111111111111', '12345678900000000000000000000000', '呵呵agfsdhdfhdg', '0000000000');
INSERT INTO "YJY"."REPLY" VALUES ('22222222222222222222222222222222', '98765432100000000000000000000000', '哈哈gdhjdgjhjhgj', '9999999999');
INSERT INTO "YJY"."REPLY" VALUES ('33333333333333333333333333333333', '22222222222222222222222222222222', '嗯嗯gjfbmjcghjgj', '3333333333');

-- ----------------------------
-- Table structure for ROLE_RESOURCE
-- ----------------------------
DROP TABLE "YJY"."ROLE_RESOURCE";
CREATE TABLE "YJY"."ROLE_RESOURCE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"ROLE_ID" VARCHAR2(32 BYTE) NULL ,
"RESOURCE_ID" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ROLE_RESOURCE
-- ----------------------------
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901090', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6910dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901000', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6901dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901010', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6902dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901020', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6903dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901030', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6904dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901040', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6905dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901050', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6906dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901060', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6907dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901070', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6908dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad884c481689baf4a3f6901080', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901010', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6911dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909010');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf401f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909020');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf402f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909030');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf403f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909040');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf404f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909050');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf405f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909060');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf406f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909070');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf407f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909080');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf408f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf409f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf410f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf402f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf411f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf403f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf412f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf404f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf413f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf405f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf406f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('701804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '701805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('188804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '101805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('288804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '201805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('388804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '301805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('488804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '401805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('588804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '501805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('688804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '601805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('888804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '801805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '901805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('918804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '911805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('928804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '921805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('938804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '931805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('948804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '941805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('958804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '951805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('968804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '961805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('978804ad014c481689baf414f6901119', '788801ad884c481689baf4a3f6901dd0', '971805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901111', '788801ad884c481689baf4a3f6901dd0', '981805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901112', '788801ad884c481689baf4a3f6901dd0', '991805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901113', '788801ad884c481689baf4a3f6901dd0', '991805ad884c481689baf401f6909091');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901013', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6902dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901023', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6903dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901033', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6904dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901043', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6905dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901053', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6906dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901063', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6907dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901073', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6908dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf414f6901083', '788802ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40016901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd8');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40026901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd9');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40036901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909d10');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40046901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909010');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40056901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909020');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40066901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909030');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40076901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909040');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40086901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909050');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40096901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909060');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40106901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909070');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('988804ad014c481689baf40116901083', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909080');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481019baf410f6901119', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6911dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481039baf410f6901119', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481049baf410f6901119', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf402f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('1095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf403f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('2095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf404f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('3095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf405f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('4095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf406f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('5095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '701805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('6095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '101805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('7095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '201805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('8095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '301805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b72', '788804ad884c481689baf4a3f6901dd0', '401805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b01', '788804ad884c481689baf4a3f6901dd0', '501805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b02', '788804ad884c481689baf4a3f6901dd0', '601805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b03', '788804ad884c481689baf4a3f6901dd0', '801805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901011', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd1');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901012', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd2');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901013', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd3');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901014', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd4');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901015', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd5');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901016', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd6');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901017', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd7');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901018', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd8');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788804ad014c481689baf4a3f6901019', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd9');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b04', '788804ad884c481689baf4a3f6901dd0', '901805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b05', '788804ad884c481689baf4a3f6901dd0', '911805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b06', '788804ad884c481689baf4a3f6901dd0', '921805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b07', '788805ad884c481689baf4a3f6001dd0', '931805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b08', '788805ad884c481689baf4a3f6001dd0', '941805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b09', '788805ad884c481689baf4a3f6001dd0', '951805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b10', '788805ad884c481689baf4a3f6001dd0', '961805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b11', '788805ad884c481689baf4a3f6001dd0', '971805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b12', '788805ad884c481689baf4a3f6001dd0', '981805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b13', '788805ad884c481689baf4a3f6001dd0', '991805ad884c481689baf401f6909090');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b14', '788805ad884c481689baf4a3f6001dd0', '991805ad884c481689baf401f6909091');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b15', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd1');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b16', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd2');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b17', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd3');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b18', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd4');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b19', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd5');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b20', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd6');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b21', '788804ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909dd7');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b22', '788803ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6901dd0');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b23', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35921');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b24', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35922');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b25', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35923');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b26', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35924');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b27', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35925');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b28', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35926');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b29', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35927');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b30', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35928');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('9095c865d8b747f5901f316690745b31', '788802ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35929');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d23', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35921');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d24', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35922');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d25', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35923');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d26', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35924');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d27', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35925');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d28', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35926');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d29', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35927');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d30', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35928');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d31', '788801ad884c481689baf4a3f6901dd0', 'cb54c5f0f2a54d4398c0a2183db35929');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('788801ad884c481689baf4a3f6901d32', '788801ad884c481689baf4a3f6901dd0', '788805ad884c481689baf4a3f6909d10');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056911', '788801ad884c481689baf4a3f6901dd0', 'aaaaaaaaaag94389549040505056900');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056912', '788801ad884c481689baf4a3f6901dd0', 'aaaaaaaaaag94389549040505056901');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('aaaaaaaaaag94389549040505056900', '788801ad884c481689baf4a3f6901dd0', 'aaaaaaaaaag94389549040505056902');
INSERT INTO "YJY"."ROLE_RESOURCE" VALUES ('3c743c6b5db3470c8f2c3c07514f9e79', '788802ad884c481689baf4a3f6901dd0', 'aaaaaaaaaag94389549040505056902');

-- ----------------------------
-- Table structure for SHOPPING_CAR
-- ----------------------------
DROP TABLE "YJY"."SHOPPING_CAR";
CREATE TABLE "YJY"."SHOPPING_CAR" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"GOODS_ID" VARCHAR2(32 BYTE) NULL ,
"USER_ID" VARCHAR2(32 BYTE) NULL ,
"NUMS" VARCHAR2(100 BYTE) NULL ,
"CREATE_DATE" VARCHAR2(100 BYTE) NULL ,
"PRICE" VARCHAR2(231 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SHOPPING_CAR
-- ----------------------------
INSERT INTO "YJY"."SHOPPING_CAR" VALUES ('c8e1de44ec8141818d1f0e4665121bcf', 'afsadfkjafdsdfasjkdfhsd234353037', '698b3f5759f04e46a27c5baab955b55d', '1', '2016-10-13 ', '4000');

-- ----------------------------
-- Table structure for SYSTEM_SZ
-- ----------------------------
DROP TABLE "YJY"."SYSTEM_SZ";
CREATE TABLE "YJY"."SYSTEM_SZ" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"WEBSITE_NAME" VARCHAR2(100 BYTE) NULL ,
"KEY_WORD" VARCHAR2(50 BYTE) NULL ,
"DESCRIBE" VARCHAR2(100 BYTE) NULL ,
"BA_NUM" VARCHAR2(50 BYTE) NULL ,
"MAX_NUM" VARCHAR2(10 BYTE) NULL ,
"POST_ACCOUNT" VARCHAR2(50 BYTE) NULL ,
"POST_KEY" VARCHAR2(50 BYTE) NULL ,
"POSTS_ADDRESS" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SYSTEM_SZ
-- ----------------------------
INSERT INTO "YJY"."SYSTEM_SZ" VALUES ('364643aa05134e8d9f7472026782a58a', '爱恋珠宝', '珠宝 首饰 钻石', '一家专门卖珠宝的网站', '京ICP000000备案号', '6', '123456@163.com', '珠宝 首饰 钻石', '234567@126.com');

-- ----------------------------
-- Indexes structure for table ACCOUNT_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table ACCOUNT_ROLE
-- ----------------------------
ALTER TABLE "YJY"."ACCOUNT_ROLE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ACCOUNT_ROLE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ACCOUNT_ROLE
-- ----------------------------
ALTER TABLE "YJY"."ACCOUNT_ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ADDRESS
-- ----------------------------

-- ----------------------------
-- Checks structure for table ADDRESS
-- ----------------------------
ALTER TABLE "YJY"."ADDRESS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ADDRESS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ADDRESS
-- ----------------------------
ALTER TABLE "YJY"."ADDRESS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ADVICE
-- ----------------------------

-- ----------------------------
-- Checks structure for table ADVICE
-- ----------------------------
ALTER TABLE "YJY"."ADVICE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ADVICE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ADVICE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ADVICE
-- ----------------------------
ALTER TABLE "YJY"."ADVICE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AFTER_SALE
-- ----------------------------

-- ----------------------------
-- Checks structure for table AFTER_SALE
-- ----------------------------
ALTER TABLE "YJY"."AFTER_SALE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."AFTER_SALE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."AFTER_SALE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."AFTER_SALE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table AFTER_SALE
-- ----------------------------
ALTER TABLE "YJY"."AFTER_SALE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table BUYS
-- ----------------------------

-- ----------------------------
-- Checks structure for table BUYS
-- ----------------------------
ALTER TABLE "YJY"."BUYS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."BUYS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."BUYS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."BUYS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table BUYS
-- ----------------------------
ALTER TABLE "YJY"."BUYS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table CODE_JSP
-- ----------------------------

-- ----------------------------
-- Checks structure for table CODE_JSP
-- ----------------------------
ALTER TABLE "YJY"."CODE_JSP" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."CODE_JSP" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table CODE_JSP
-- ----------------------------
ALTER TABLE "YJY"."CODE_JSP" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table COMMENTS
-- ----------------------------

-- ----------------------------
-- Checks structure for table COMMENTS
-- ----------------------------
ALTER TABLE "YJY"."COMMENTS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."COMMENTS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."COMMENTS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."COMMENTS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table COMMENTS
-- ----------------------------
ALTER TABLE "YJY"."COMMENTS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table COMMENTS_REPLY
-- ----------------------------

-- ----------------------------
-- Checks structure for table COMMENTS_REPLY
-- ----------------------------
ALTER TABLE "YJY"."COMMENTS_REPLY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."COMMENTS_REPLY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."COMMENTS_REPLY" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table COMMENTS_REPLY
-- ----------------------------
ALTER TABLE "YJY"."COMMENTS_REPLY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table GOODS
-- ----------------------------

-- ----------------------------
-- Checks structure for table GOODS
-- ----------------------------
ALTER TABLE "YJY"."GOODS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."GOODS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."GOODS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."GOODS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."GOODS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table GOODS
-- ----------------------------
ALTER TABLE "YJY"."GOODS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table GOODS_SALE
-- ----------------------------

-- ----------------------------
-- Checks structure for table GOODS_SALE
-- ----------------------------
ALTER TABLE "YJY"."GOODS_SALE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."GOODS_SALE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table GOODS_SALE
-- ----------------------------
ALTER TABLE "YJY"."GOODS_SALE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_ACCOUNT
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_ACCOUNT
-- ----------------------------
ALTER TABLE "YJY"."MY_ACCOUNT" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."MY_ACCOUNT" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_ACCOUNT
-- ----------------------------
ALTER TABLE "YJY"."MY_ACCOUNT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_RESOURCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_RESOURCE
-- ----------------------------
ALTER TABLE "YJY"."MY_RESOURCE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."MY_RESOURCE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_RESOURCE
-- ----------------------------
ALTER TABLE "YJY"."MY_RESOURCE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_ROLE
-- ----------------------------
ALTER TABLE "YJY"."MY_ROLE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."MY_ROLE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_ROLE
-- ----------------------------
ALTER TABLE "YJY"."MY_ROLE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ORDER
-- ----------------------------

-- ----------------------------
-- Checks structure for table ORDER
-- ----------------------------
ALTER TABLE "YJY"."ORDER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ORDER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ORDER
-- ----------------------------
ALTER TABLE "YJY"."ORDER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table REPLY
-- ----------------------------

-- ----------------------------
-- Checks structure for table REPLY
-- ----------------------------
ALTER TABLE "YJY"."REPLY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."REPLY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."REPLY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."REPLY" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table REPLY
-- ----------------------------
ALTER TABLE "YJY"."REPLY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ROLE_RESOURCE
-- ----------------------------

-- ----------------------------
-- Checks structure for table ROLE_RESOURCE
-- ----------------------------
ALTER TABLE "YJY"."ROLE_RESOURCE" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."ROLE_RESOURCE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table ROLE_RESOURCE
-- ----------------------------
ALTER TABLE "YJY"."ROLE_RESOURCE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table SHOPPING_CAR
-- ----------------------------

-- ----------------------------
-- Checks structure for table SHOPPING_CAR
-- ----------------------------
ALTER TABLE "YJY"."SHOPPING_CAR" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."SHOPPING_CAR" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."SHOPPING_CAR" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."SHOPPING_CAR" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table SHOPPING_CAR
-- ----------------------------
ALTER TABLE "YJY"."SHOPPING_CAR" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table SYSTEM_SZ
-- ----------------------------
ALTER TABLE "YJY"."SYSTEM_SZ" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "YJY"."SYSTEM_SZ" ADD CHECK ("ID" IS NOT NULL);
