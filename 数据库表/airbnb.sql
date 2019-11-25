/*
Navicat MySQL Data Transfer

Source Server         : Airbnb_mine
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : airbnb

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-10-17 18:24:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aibnb
-- ----------------------------
DROP TABLE IF EXISTS `aibnb`;
CREATE TABLE `aibnb` (
  `id` varchar(255) DEFAULT NULL,
  `picture_id` varchar(255) DEFAULT NULL,
  `housemessage` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `houselogo` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `nowprice` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `landlord` varchar(255) DEFAULT NULL,
  `houselogo2` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aibnb
-- ----------------------------
INSERT INTO `aibnb` VALUES ('1', '1', '整套房子/公寓·1卧1床1卫', '（随意宅） 府河边江景房/全落地窗俯瞰府河风光', '超赞房东', '6', '104.00', '119.00', '秋冬特惠8.8折', 'https://z1.muscache.cn/im/pictures/58855361/020a3302_original.jpg?aki_policy=large', '整个房源', '成都武侯区');
INSERT INTO `aibnb` VALUES ('2', '2', '酒店房间/1室1卫2床', 'The Cozy Palace', '闪订', '578', '453.00', '888.00', '精选舒适房', 'https://z1.muscache.cn/im/pictures/2bf14641-771b-45ff-8d48-2fb9bb30f5d6.jpg?aki_policy=large', '自助入住', '北京');
INSERT INTO `aibnb` VALUES ('3', '3', '费恩森林小岛', 'Dreamy Tropical Tree House', '超赞房东', '663', '1200.00', '1068.00', '异国风情', 'https://z1.muscache.cn/im/pictures/bb32a6b1-0e30-4a15-82b2-686338c87cb6.jpg?aki_policy=large', '家庭出游', '国外');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '上海', '1');
INSERT INTO `city` VALUES ('2', '成都', '2');
INSERT INTO `city` VALUES ('3', '北京', '3');
INSERT INTO `city` VALUES ('4', '重庆', '4');
INSERT INTO `city` VALUES ('5', '广州', '5');
INSERT INTO `city` VALUES ('6', '杭州', '6');
INSERT INTO `city` VALUES ('7', '西安', '7');
INSERT INTO `city` VALUES ('8', '南京', '8');
INSERT INTO `city` VALUES ('9', '厦门', '9');
INSERT INTO `city` VALUES ('10', '苏州', '10');
INSERT INTO `city` VALUES ('11', '武汉', '11');
INSERT INTO `city` VALUES ('12', '深圳', '12');
INSERT INTO `city` VALUES ('13', '长沙', '13');
INSERT INTO `city` VALUES ('14', '大阪', '14');
INSERT INTO `city` VALUES ('15', '青岛', '15');
INSERT INTO `city` VALUES ('16', '天津', '16');
INSERT INTO `city` VALUES ('17', '曼谷', '17');
INSERT INTO `city` VALUES ('18', '大理', '18');

-- ----------------------------
-- Table structure for cityhouse
-- ----------------------------
DROP TABLE IF EXISTS `cityhouse`;
CREATE TABLE `cityhouse` (
  `id` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `infor` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `preprice` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cityhouse
-- ----------------------------
INSERT INTO `cityhouse` VALUES ('1', 'https://z1.muscache.cn/im/pictures/9637b0d7-7b83-4ef0-a564-0b0931fed244.jpg?aki_policy=large', '（随意宅）府河边江景房/全落地窗俯瞰府河风光/地铁口/太古里/春熙路/文殊坊/宽窄巷子', '整套公寓 1室1卫1床', '104.00', '118.00', '1');
INSERT INTO `cityhouse` VALUES ('2', 'https://z1.muscache.cn/im/pictures/bb735805-3001-4ebd-a832-440c1876b9d4.jpg?aki_policy=large', '【在这里· Euterpe】出门春熙路/ifs/太古里/地铁2、3号线/巨幕ins大床标间/可加床', '整套公寓 1室1卫1床', '134.00', '168.00', '1');
INSERT INTO `cityhouse` VALUES ('3', 'https://z1.muscache.cn/im/pictures/174f42bf-a47f-4f44-bffe-f0ad034e5dbe.jpg?aki_policy=large', '市中心地铁百米/近太古里春熙路IFS/宽窄巷子/东站直达/到哪都方便/落地窗黑白简约风格/智能门锁/', '整套公寓 1室1卫1床', '140.00', '159.00', '1');
INSERT INTO `cityhouse` VALUES ('4', 'https://z1.muscache.cn/im/pictures/7fbfd9e6-530d-4a4c-a519-e912653512e2.jpg?aki_policy=large', '【蜀居】宽窄巷子/春熙路／清新巨幕投影一居室（1）', '整套公寓 1室1卫1床', '190.00', '238.00', '1');
INSERT INTO `cityhouse` VALUES ('5', 'https://z1.muscache.cn/im/pictures/3d382fd8-57eb-4abf-999d-1dc4ba403bba.jpg?aki_policy=large', '「新房特惠」云栖.解放碑&洪崖洞·ins北欧「滨江壹号」屋顶无边泳池', '整套公寓 1卫1床', '142.00', '158.00', '2');
INSERT INTO `cityhouse` VALUES ('6', 'https://z1.muscache.cn/im/pictures/160e945a-5ba8-4aa4-ab63-f54baa8286a0.jpg?aki_policy=large', '高层在房间俯瞰江景 步行10分钟内到解放碑 洪崖洞！可供免费攻略长江6号', '整套公寓 1室1卫1床', '97.00', '138.00', '2');
INSERT INTO `cityhouse` VALUES ('7', 'https://z1.muscache.cn/im/pictures/ead9349b-2f21-4d31-ba97-a3644fe24c98.jpg?aki_policy=large', '【心之城】解放碑地铁口北欧双床房6', '整套公寓 1室1卫1床', '111.00', '118.00', '2');
INSERT INTO `cityhouse` VALUES ('8', 'https://z1.muscache.cn/im/pictures/ced6b11b-28a1-4441-9b7d-9cdf027e200c.jpg?aki_policy=large', '北欧风格《空想家》观音桥 、九街近解放碑洪崖洞 ', '整套公寓 1室1卫1床', '131.00', '138.00', '2');
INSERT INTO `cityhouse` VALUES ('9', 'https://z1.muscache.cn/im/pictures/3c8be8b7-6ad4-4ff5-b720-3eaa280f8ebf.jpg?aki_policy=large', '【廖姐姐家的小白楼-岁余】回民街/钟楼/鼓楼/城墙/莲湖公园/地铁口/ 1居1厅2人独立客房无独卫', '独立房间 1卫1床 ', '84.00', '99.00', '3');
INSERT INTO `cityhouse` VALUES ('10', 'https://z1.muscache.cn/im/pictures/aa0268ce-5a55-4645-9ec0-94e0b9af6c4c.jpg?aki_policy=large', '【天空之城】独立公寓 中贸广场 南门 钟楼 回民街 小寨 家庭影院', '整套公寓 1室1卫1床', '124.00', '138.00', '3');
INSERT INTO `cityhouse` VALUES ('11', 'https://z1.muscache.cn/im/pictures/4640c025-68b8-4bbb-8c3f-d9a39bc784f5.jpg?aki_policy=large', '【设计师的家K】大差市地铁口500/永兴坊步行10分钟/西安站/近钟楼温馨小窝 ', '整套公寓 1室1卫1床', '131.00', '138.00', '3');
INSERT INTO `cityhouse` VALUES ('12', 'https://z1.muscache.cn/im/pictures/f960e0a0-d8e3-4443-a6bd-3bcd4c45586a.jpg?aki_policy=large', '屿宙心房|网红月球镜【安远门、龙首原地铁口，近钟楼、鼓楼、回民街】南向大床|可做饭', '整套公寓 1室1卫1床', '163.00', '193.00', '3');
INSERT INTO `cityhouse` VALUES ('13', 'https://z1.muscache.cn/im/pictures/272b26a0-9c8b-4e1b-97aa-c68c65fe4d88.jpg?aki_policy=large', '网红设计师别墅Daydream designer homeの愈宿~澄天~星空浴缸房 治愈系muji风', '独立房间 1卫1床', '555.00', '628.00', '4');
INSERT INTO `cityhouse` VALUES ('14', 'https://z1.muscache.cn/im/pictures/4e0bbe48-f18b-489f-8e5a-6f2c10616c8e.jpg?aki_policy=large', '点点和铲屎官的美好生活ớ ₃ờ 小鹿 徐家汇11号线步行8分钟直达迪士尼 交大步行10分钟', '电梯高层 1室1.5卫2床', '175.00', '199.00', '4');
INSERT INTO `cityhouse` VALUES ('15', 'https://z1.muscache.cn/im/pictures/c2463e95-5663-4256-9c87-630634a20141.jpg?aki_policy=large', '14.浦东 金桥 碧云 近9号线台儿庄路 复式公寓', '整套公寓 1室1卫1床', '180.00', '200.00', '4');
INSERT INTO `cityhouse` VALUES ('16', 'https://z1.muscache.cn/im/pictures/a682e287-310e-429d-993c-39ecc8619609.jpg?aki_policy=large', '魔都《墅》', '整套公寓 1室1卫1床 ', '259.00', '288.00', '4');
INSERT INTO `cityhouse` VALUES ('17', 'https://z1.muscache.cn/im/pictures/1e130d86-adbd-4c9f-971f-ea3a68d94e73.jpg?aki_policy=large', '六道口五道口近清华北大学院路农大校内独立小单间', '独立房间 1室1卫1床', '130.00', '148.00', '5');
INSERT INTO `cityhouse` VALUES ('18', 'https://z1.muscache.cn/im/pictures/ea505bc3-4f82-42f6-8d20-68a73baa494c.jpg?aki_policy=large', '国贸CBD三里屯商圈「菊与刀」整套房源，大望路地铁', '整套公寓 1卫1床', '159.00', '199.00', '5');
INSERT INTO `cityhouse` VALUES ('19', 'https://z1.muscache.cn/im/pictures/3129e7b7-b895-4c5c-8ac8-b13b089caf96.jpg?aki_policy=large', '【漫步TIME】首都机场 新国展 南法信 石门附近公寓单间', '独立房间 1室1.5卫1床', '143.00', '179.00', '5');
INSERT INTO `cityhouse` VALUES ('20', 'https://z1.muscache.cn/im/pictures/74345022-8dcd-4a24-98bb-beacb899105c.jpg?aki_policy=large', '鸟巢水立方观景卧室 | 南锣鼓巷后海天安门三里屯 8/10号线北土城双地铁 鸟巢奥森安贞医院步行可达', '整套公寓1卫1床', '158.00', '180.00', '5');
INSERT INTO `cityhouse` VALUES ('21', 'https://z1.muscache.cn/im/pictures/c30f796e-fd68-4cb2-a5bd-a1cd56567603.jpg?aki_policy=large', 'pudding天河万科米酷|ins双人投影房|机场直达|广交会|岭南学院私立华联|天河客运站|龙洞', '整套公寓1室0.5卫1床', '107.00', '119.00', '6');
INSERT INTO `cityhouse` VALUES ('22', 'https://z1.muscache.cn/im/pictures/202cbd0e-8628-4ab0-8b1e-7ca10a15b8f6.jpg?aki_policy=large', '【乐湾】天河万科米酷26方错层3号·自然风·广交会/宝能/岭南学院/驾照考场', '整间LOFT1室1卫1床', '144.00', '160.00', '6');
INSERT INTO `cityhouse` VALUES ('23', 'https://z1.muscache.cn/im/pictures/80368063-461d-4e9c-bcc5-057386c1ba80.jpg?aki_policy=large', 'ins风石牌桥上盖，太古汇商圈直通珠江新城小蛮腰长隆。传统风格简约实用房316', '整套公寓1室1卫1床', '150.00', '188.00', '6');
INSERT INTO `cityhouse` VALUES ('24', 'https://z1.muscache.cn/im/pictures/0d227403-8e3c-4e04-99fa-22e04682a546.jpg?aki_policy=large', '珠江新城/美领馆/广州塔/琶洲会展/长隆/双地铁/广州东站/广州火车站/广州南站向日葵房', '整套公寓1室1.5卫1床', '198.00', '233.00', '6');
INSERT INTO `cityhouse` VALUES ('25', 'https://z1.muscache.cn/im/pictures/8adae504-594f-4b6b-97af-1b9c43f86301.jpg?aki_policy=large', '【猫先生的窝】无敌海景+投影仪+小爱同学+海边泳池+大东海+鹿回头', '整套公寓1室1卫1床', '174.00', '218.00', '7');
INSERT INTO `cityhouse` VALUES ('26', 'https://z1.muscache.cn/im/pictures/e184f12f-c1ac-49ea-a5e6-b79d56ea96c2.jpg?aki_policy=large', '【原味·假日】100米到海边/私人影院一居室/漫步椰林/深夜海鲜排挡', '整套公寓1室1卫1床', '131.00', '146.00', '7');
INSERT INTO `cityhouse` VALUES ('27', 'https://z1.muscache.cn/im/pictures/a7928a61-f6f9-48a9-9292-8ead6388f26d.jpg?aki_policy=large', '三亚鸿洲时代海岸星空鹿港无敌海景一居室（订五晚接送机）', '整套公寓 1室1卫1床', '111.00', '135.00', '7');
INSERT INTO `cityhouse` VALUES ('28', 'https://z1.muscache.cn/im/pictures/6b11f484-3c28-4058-9aeb-26a9336a8c50.jpg?aki_policy=large', '【稻荷】近海日式一居室/5分钟到海边/可做饭', '整套公寓 1卫1床', '142.00', '158.00', '7');

-- ----------------------------
-- Table structure for citys
-- ----------------------------
DROP TABLE IF EXISTS `citys`;
CREATE TABLE `citys` (
  `id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of citys
-- ----------------------------
INSERT INTO `citys` VALUES ('1', '成都', '1');
INSERT INTO `citys` VALUES ('2', '重庆', '2');
INSERT INTO `citys` VALUES ('3', '西安', '3');
INSERT INTO `citys` VALUES ('4', '上海', '4');
INSERT INTO `citys` VALUES ('5', '北京', '5');
INSERT INTO `citys` VALUES ('6', '广州', '6');
INSERT INTO `citys` VALUES ('7', '三亚', '7');

-- ----------------------------
-- Table structure for firstpageswiper
-- ----------------------------
DROP TABLE IF EXISTS `firstpageswiper`;
CREATE TABLE `firstpageswiper` (
  `id` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `smalltitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of firstpageswiper
-- ----------------------------
INSERT INTO `firstpageswiper` VALUES ('1', 'https://z1.muscache.cn/pictures/hongbao/marquee/original/09f9d1ae-2ecc-44e1-bfa3-f0ad3251a475.jpg', '国内美食目的地', '来这里食补贴秋膘');
INSERT INTO `firstpageswiper` VALUES ('2', 'https://z1.muscache.cn/pictures/hongbao/marquee/original/74aed19b-c6f8-4de8-9832-85e75e7aeb17.jpg', '尝鲜小众旅游地', '住进山湖飘渺间');
INSERT INTO `firstpageswiper` VALUES ('3', 'https://z1.muscache.cn/pictures/hongbao/marquee/original/194b4ed2-a1b0-4faf-b2c0-d9028b5e049f.jpg', '入住赏枫佳地', '红叶狩 · 艳遇日本');

-- ----------------------------
-- Table structure for hotplace
-- ----------------------------
DROP TABLE IF EXISTS `hotplace`;
CREATE TABLE `hotplace` (
  `id` varchar(255) DEFAULT NULL,
  `hotplace` varchar(255) DEFAULT NULL,
  `cityid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotplace
-- ----------------------------
INSERT INTO `hotplace` VALUES ('1', '成都', '1');
INSERT INTO `hotplace` VALUES ('2', '上海', '2');
INSERT INTO `hotplace` VALUES ('3', '重庆', '3');
INSERT INTO `hotplace` VALUES ('4', '北京', '4');
INSERT INTO `hotplace` VALUES ('5', '杭州', '5');
INSERT INTO `hotplace` VALUES ('6', '大理', '6');

-- ----------------------------
-- Table structure for pictureurll
-- ----------------------------
DROP TABLE IF EXISTS `pictureurll`;
CREATE TABLE `pictureurll` (
  `id` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `pictureid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictureurll
-- ----------------------------
INSERT INTO `pictureurll` VALUES ('1', 'https://z1.muscache.cn/im/pictures/d9408889-273a-45fb-a6ff-7012930be9af.jpg?aki_policy=large', '1');
INSERT INTO `pictureurll` VALUES ('2', 'https://z1.muscache.cn/im/pictures/cca6d8c7-587a-47dd-84a6-7616bc2d1cc2.jpg?aki_policy=large', '1');
INSERT INTO `pictureurll` VALUES ('3', 'https://z1.muscache.cn/im/pictures/931c8ced-a8d0-4aa2-8b8c-138938006feb.jpg?aki_policy=large', '1');
INSERT INTO `pictureurll` VALUES ('4', 'https://z1.muscache.cn/im/pictures/ac9e3d82-e064-4111-bd88-e9abb697ef1f.jpg?aki_policy=large', '2');
INSERT INTO `pictureurll` VALUES ('5', 'https://z1.muscache.cn/im/pictures/5117085/570fde46_original.jpg?aki_policy=large', '2');
INSERT INTO `pictureurll` VALUES ('6', 'https://z1.muscache.cn/im/pictures/5115487/e30868c9_original.jpg?aki_policy=large', '2');
INSERT INTO `pictureurll` VALUES ('7', 'https://z1.muscache.cn/im/pictures/35836380/a9a49e5f_original.jpg?aki_policy=xx_large', '3');
INSERT INTO `pictureurll` VALUES ('8', 'https://z1.muscache.cn/im/pictures/58855361/020a3302_original.jpg?aki_policy=large', '3');
INSERT INTO `pictureurll` VALUES ('9', 'https://z1.muscache.cn/im/pictures/83177158/9e5c500b_original.jpg?aki_policy=large', '3');

-- ----------------------------
-- Table structure for popcitymore
-- ----------------------------
DROP TABLE IF EXISTS `popcitymore`;
CREATE TABLE `popcitymore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `top` varchar(255) DEFAULT NULL,
  `roomTitle` varchar(255) NOT NULL,
  `roomIntroduce` varchar(255) NOT NULL,
  `roomPrice` decimal(10,2) NOT NULL,
  `roomLandlord` varchar(255) DEFAULT NULL,
  `roomComment` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popcitymore
-- ----------------------------
INSERT INTO `popcitymore` VALUES ('1', '上海', '1', '整套房子/公寓·1卧1床1卫', '【乐意公社】淮海路圣保罗公寓 上海百年…', '420.00', 'https://z1.muscache.cn/im/pictures/c8938b55-0428-4e67-b9e0-ea8078ee3f5a.jpg?aki_policy=profile_x_medium', '125', '1');
INSERT INTO `popcitymore` VALUES ('2', '上海', '2', '独立房间·1卧1床1卫', 'Co-Living With Local 5min walk…', '450.00', 'https://z1.muscache.cn/im/pictures/549ee949-2724-46a8-96f7-746443d64fc6.jpg?aki_policy=profile_x_medium', '139', '1');
INSERT INTO `popcitymore` VALUES ('3', '上海', '3', '整套房子/公寓·1卧2床1卫', '品质优选【象限】80平庭院复式洋房·巨幕…', '790.00', 'https://z1.muscache.cn/im/pictures/91c92a38-14be-4ec1-a33a-61fe6b5057af.jpg?aki_policy=profile_x_medium', '172', '1');
INSERT INTO `popcitymore` VALUES ('4', '上海', null, '整套房子/公寓·2卧3床1卫', '特价！【外滩美宿·Mar】亲子 榻榻米2居…', '199.00', 'https://z1.muscache.cn/im/users/13392090/profile_pic/1403809266/original.jpg?aki_policy=profile_x_medium', '126', '1');
INSERT INTO `popcitymore` VALUES ('5', '上海', null, '独立房间·1卧1床1卫', '迪士尼附近的轻奢别墅Lion特惠房 迪士尼…', '249.00', 'https://z1.muscache.cn/im/pictures/9dbc78c6-101c-44da-a71c-fc77a121c0ad.jpg?aki_policy=profile_x_medium', '78', '1');
INSERT INTO `popcitymore` VALUES ('6', '成都', '1', '整套房子/公寓·1卧2床1卫', '近太古里/春熙路 高层loft 成都夜景尽收…', '268.00', 'https://z1.muscache.cn/im/pictures/user/319db558-7290-4986-b70d-fb63db0a3298.jpg?aki_policy=profile_x_medium', '156', '2');
INSERT INTO `popcitymore` VALUES ('7', '成都', '2', '独立房间·1卧2床1卫', '【纯粹】简约复式，王府井商圈，温馨舒适…', '134.00', 'https://z1.muscache.cn/im/pictures/user/402bc4eb-193c-4ea7-99bb-43b60f250633.jpg?aki_policy=profile_x_medium', '89', '2');
INSERT INTO `popcitymore` VALUES ('8', '成都', '3', '整套房子/公寓·1卧1床1卫', '【蜀居】宽窄巷子/春熙路/清新巨幕投影一…', '121.00', 'https://z1.muscache.cn/im/pictures/user/d5bcc23e-eb74-4e02-a439-2bc0cd3aafa8.jpg?aki_policy=profile_x_medium', '123', '2');
INSERT INTO `popcitymore` VALUES ('9', '成都', null, '整套公寓·1室1卫1床', '【慢步里】‖投影仪‖家庭影院‖近太古里||I…', '190.00', 'src=\"https://z1.muscache.cn/im/pictures/user/d399b09c-679b-47a1-8dba-f1931b4ba962.jpg?aki_policy=profile_x_medium\"', '187', '2');
INSERT INTO `popcitymore` VALUES ('10', '成都', null, '独立房间·1卧1室1床', '限免清洁费!｢橙沙之味-KindaCool/宽窄巷…', '178.00', 'https://z1.muscache.cn/im/pictures/user/465f2b41-6ff7-43d2-b719-d878c935e503.jpg?aki_policy=profile_x_medium', '222', '2');

-- ----------------------------
-- Table structure for popcity_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `popcity_lunbo`;
CREATE TABLE `popcity_lunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `popCityMore_id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popcity_lunbo
-- ----------------------------
INSERT INTO `popcity_lunbo` VALUES ('1', '1', 'https://z1.muscache.cn/im/pictures/4ff5df17-1b69-4b3d-90fa-e7b76f09949f.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('2', '1', 'https://z1.muscache.cn/im/pictures/d9408889-273a-45fb-a6ff-7012930be9af.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('3', '1', 'https://z1.muscache.cn/im/pictures/3d382fd8-57eb-4abf-999d-1dc4ba403bba.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('4', '2', 'https://z1.muscache.cn/im/pictures/e282fd19-256c-4d49-ad2f-632fc6d5cc16.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('5', '2', 'https://z1.muscache.cn/im/pictures/cca6d8c7-587a-47dd-84a6-7616bc2d1cc2.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('6', '2', 'https://z1.muscache.cn/im/pictures/717fef15-755d-4d52-b9c4-ed12e2300db5.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('7', '3', 'https://z1.muscache.cn/im/pictures/64015832/e10b10f8_original.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('8', '3', 'https://z1.muscache.cn/im/pictures/10833886/1edf8559_original.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('9', '3', 'https://z1.muscache.cn/im/pictures/79931548/ff75f30f_original.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('10', '4', 'https://z1.muscache.cn/im/pictures/35836380/a9a49e5f_original.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('11', '4', 'https://z1.muscache.cn/im/pictures/ac9e3d82-e064-4111-bd88-e9abb697ef1f.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('12', '4', 'https://z1.muscache.cn/4ea/air/v2/pictures/301772a5-0a4b-4737-a23d-95a1f116e583.jpg?t=r:w1200-h720-sfit,e:fjpg-c90');
INSERT INTO `popcity_lunbo` VALUES ('13', '5', 'https://z1.muscache.cn/im/pictures/9b0ae17d-7cfe-41bb-9a89-f38287f92c3a.jpg?aki_policy=large');
INSERT INTO `popcity_lunbo` VALUES ('14', '5', 'https://z1.muscache.cn/4ea/air/v2/pictures/ef03bd2d-10d6-43f1-bb52-ea7a24dec4db.jpg?t=r:w1200-h720-sfit,e:fjpg-c90');
INSERT INTO `popcity_lunbo` VALUES ('15', '5', 'https://z1.muscache.cn/im/pictures/a2e67090-8405-41a7-babc-817d877d6562.jpg?aki_policy=large');

-- ----------------------------
-- Table structure for popcollection
-- ----------------------------
DROP TABLE IF EXISTS `popcollection`;
CREATE TABLE `popcollection` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popcollection
-- ----------------------------
INSERT INTO `popcollection` VALUES ('1', '上海', '../../image/popCity/shanghai.png');
INSERT INTO `popcollection` VALUES ('2', '成都', '../../image/popCity/chengdu.png');
INSERT INTO `popcollection` VALUES ('3', '北京', '../../image/popCity/beijing.png');
INSERT INTO `popcollection` VALUES ('4', '重庆', '../../image/popCity/chongqing.png');
INSERT INTO `popcollection` VALUES ('5', '广州', '../../image/popCity/guangzhou.png');
INSERT INTO `popcollection` VALUES ('6', '杭州', '../../image/popCity/hangzhou.png');
INSERT INTO `popcollection` VALUES ('7', '西安', '../../image/popCity/xian.png');
INSERT INTO `popcollection` VALUES ('8', '南京', '../../image/popCity/nanjing.png');
INSERT INTO `popcollection` VALUES ('9', '厦门', '../../image/popCity/xiamen.png');
INSERT INTO `popcollection` VALUES ('10', '苏州', '../../image/popCity/suzhou.png');
INSERT INTO `popcollection` VALUES ('11', '武汉', '../../image/popCity/wuhan.png');
INSERT INTO `popcollection` VALUES ('12', '深圳', '../../image/popCity/shenzhen.png');
INSERT INTO `popcollection` VALUES ('13', '长沙', '../../image/popCity/changsha.png');
INSERT INTO `popcollection` VALUES ('14', '大阪', '../../image/popCity/daban.png');
INSERT INTO `popcollection` VALUES ('15', '青岛', '../../image/popCity/qingdao.png');
INSERT INTO `popcollection` VALUES ('16', '天津', '../../image/popCity/tianjin.png');
INSERT INTO `popcollection` VALUES ('17', '曼谷', '../../image/popCity/mangu.png');
INSERT INTO `popcollection` VALUES ('18', '大理', '../../image/popCity/dali.png');
