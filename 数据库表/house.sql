/*
Navicat MySQL Data Transfer

Source Server         : Airbnb_mine
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-10-17 18:24:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_tab
-- ----------------------------
DROP TABLE IF EXISTS `address_tab`;
CREATE TABLE `address_tab` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(255) NOT NULL,
  `address_infor` varchar(255) NOT NULL,
  `travel_infor` varchar(255) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_tab
-- ----------------------------
INSERT INTO `address_tab` VALUES ('1', '下管地村，北京，中国', '民宿呲临雁栖湖､神堂峪､箭扣长城等景区,交通十分便利,实属北京的世外桃源,任由身心自由徜徉于风景宜人的山谷､幽静温柔的溪水､如画般的迷人天空和芳香扑鼻的鲜花之间,尽情休憩,感受时间在指尖悄悄划过,灵魂都会慢慢的安静起来｡宿在民宿就像不依托于电影和吃饭的恋爱,或者不喝自醉的聚会｡那么铭宿呢,就是一个不借禅茶之名,不言儒学之意,斯是陋室,唯吾德心的躲清静的地方｡', '自驾游路线:从北京城区的四环/五环均可驶入京承高速,从京承高速14出口驶出,继续行驶入范崎路,经过APEC国际会议中心继续行驶10~15分钟即抵达铭宿｡全程55~60分钟｡\r\n公交车路线:在东直门公交枢纽站搭乘916快速大巴,抵达怀柔汽车站,在于家园站搭乘H39路公交车直达铭宿门口｡');
INSERT INTO `address_tab` VALUES ('2', '天顺路222号，成都市，四川省，中国', '你可以直接用手机地图搜索以下内容,都可以找到并导航到达:\r\n\r\n【购物中心 】\r\n 银泰中心in99､凯德天府､凯德凯丹广场､宜家家居､九方购物广场､文轩BOOKS\r\n\r\n【咖啡､面包､饮料 】\r\n 星巴克咖啡(南熙里店)(50米)､ 好利来面包(50米)､CoCo奶茶(50米)､1点点奶茶(150米)､瑞幸咖啡(特拉克斯广场店)(100米)､\r\n便利店 / 全家24小时便利店(150米)､7-11便利店(150米)､红旗超市( (Phone number hidden by Airbnb) )', '【地铁站 】*\r\n1号线高新站(步行10分钟)7号线三瓦窑站(步行15分钟)\r\n\r\n【楼下公交车】*\r\n153路 ､188路 \r\n\r\n【5分钟距离公交车】*\r\n (Phone number hidden by Airbnb) 路...\r\n\r\n【高铁&动车】\r\n火车南站 (Phone number hidden by Airbnb) 米)计程车到民宿起步价而已');

-- ----------------------------
-- Table structure for aibnb
-- ----------------------------
DROP TABLE IF EXISTS `aibnb`;
CREATE TABLE `aibnb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_id` int(11) DEFAULT NULL,
  `housemessage` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `houselogo` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `nowprice` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `landlord` varchar(255) DEFAULT NULL,
  `houselogo2` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aibnb
-- ----------------------------
INSERT INTO `aibnb` VALUES ('1', '1', '整套房子/公寓·1卧1床1卫', '（随意宅） 府河边江景房/全落地窗俯瞰府河风光', '超赞房东', '6', '104.00', '119.00', '秋冬特惠8.8折', 'https://z1.muscache.cn/im/pictures/58855361/020a3302_original.jpg?aki_policy=large', '整个房源', '成都武侯区');
INSERT INTO `aibnb` VALUES ('2', '2', '酒店房间/1室1卫2床', 'The Cozy Palace', '闪订', '578', '453.00', '888.00', '精选舒适房', 'https://z1.muscache.cn/im/pictures/2bf14641-771b-45ff-8d48-2fb9bb30f5d6.jpg?aki_policy=large', '自助入住', '北京');
INSERT INTO `aibnb` VALUES ('3', '3', '费恩森林小岛', 'Dreamy Tropical Tree House', '超赞房东', '663', '1200.00', '1068.00', '异国风情', 'https://z1.muscache.cn/im/pictures/bb32a6b1-0e30-4a15-82b2-686338c87cb6.jpg?aki_policy=large', '家庭出游', '国外');

-- ----------------------------
-- Table structure for asked_tab
-- ----------------------------
DROP TABLE IF EXISTS `asked_tab`;
CREATE TABLE `asked_tab` (
  `asked_id` int(11) NOT NULL AUTO_INCREMENT,
  `basic_asked` varchar(255) NOT NULL,
  `cancel` varchar(255) NOT NULL,
  `safe` varchar(255) DEFAULT NULL,
  `tip` varchar(255) NOT NULL,
  PRIMARY KEY (`asked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asked_tab
-- ----------------------------
INSERT INTO `asked_tab` VALUES ('1', '禁止吸烟\r\n房屋守则', '添加入住退房日期后，可查看取消政策详情 添加日期', '该房源未安装烟雾报警器或一氧化碳报警器', '若需要开具房费发票，请您与房东协商。\r\n为了保护您的账号隐私和付款安全，请不要相信其它任何平台的折扣或礼金券代订，并始终在爱彼迎站内转账和交流。');
INSERT INTO `asked_tab` VALUES ('2', '禁止吸烟\r\n不允许携带宠物\r\n不允许举办派对和活动\r\n房屋守则', '添加入住退房日期后，可查看取消政策详情 添加日期', '', '若需要开具房费发票，请您与房东协商。\r\n为了保护您的账号隐私和付款安全，请不要相信其它任何平台的折扣或礼金券代订，并始终在爱彼迎站内转账和交流');

-- ----------------------------
-- Table structure for cityhouse
-- ----------------------------
DROP TABLE IF EXISTS `cityhouse`;
CREATE TABLE `cityhouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `infor` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `preprice` varchar(255) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `cityid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `views_id` int(11) NOT NULL AUTO_INCREMENT,
  `view_name` varchar(255) NOT NULL,
  `view_time` datetime NOT NULL,
  `view_img` varchar(255) NOT NULL,
  `view_comment` varchar(255) NOT NULL,
  PRIMARY KEY (`views_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'Xarrow', '2019-10-16 16:05:51', 'https://z1.muscache.cn/im/pictures/user/5cc0c5e5-af0c-42a8-842d-202b8b0c6e51.jpg?aki_policy=profile_x_medium', '整条街最有格调的民宿莫过于铭宿了｡整个民宿非常有设计感,房间干净整洁与照片一致,高出心理预期一大截｡院子里有可爱的猫猫狗狗花花草草｡最重要的是晚饭也太好吃了吧!尤其是烤鱼和辣子鸡!有时间还会约着朋友一起来的~');
INSERT INTO `comment` VALUES ('2', '\r\n天', '2019-11-01 16:06:47', 'https://z1.muscache.cn/im/pictures/user/40fdd961-ba58-4ef6-bf95-0628343a78e4.jpg?aki_policy=profile_x_medium', '先说些优点: 很喜欢前台姐姐 个人觉得很热情 服务态度很不错 院子装修很好看,在院子里吃饭很舒服,饭菜味道蛮好 猫咪和狗狗既可爱又温顺 再说些不足: 房间有一些小虫子出现 浴巾只提供了一条,我们入住两天,也没有主动更换过 饭菜价格有点贵,两个人一荤一素 (Phone number hidden by Airbnb) 房间里没有吹风机 半夜洗了头之后才发现 店家回 (Hidden by Airbnb) 有点慢 房间隔音一般,窗帘略小不过问题不大 总体来说是一次满意的入住体验 感谢招待');
INSERT INTO `comment` VALUES ('3', 'Yue', '2019-10-22 16:08:08', 'https://z1.muscache.cn/im/pictures/user/b9b5dcff-b3d3-47a4-9565-82f1e21e8846.jpg?aki_policy=profile_x_medium', '第3次来啦!!烤鱼和梅子排骨再再次点赞~傍晚在房间外的小坐来听啤酒,听着蝉鸣,看看星星,实在太惬意啦~ Ps.为了人宠和谐,希望能够及时清理下院子里狗狗的便便,不小心踩到了两次………(自己也是带狗来玩的,都有及时清理噢) 另外希望房间里能够提供吹风机…\r\n第3次来啦!!烤鱼和梅子排骨再再次点赞~傍晚在房间外的小坐来听啤酒,听着蝉鸣,看看星星,实在太惬意啦~ Ps.为了人宠和谐,希望能够及时清理下院子里狗狗的便便,不小心踩到了两次');

-- ----------------------------
-- Table structure for estimate
-- ----------------------------
DROP TABLE IF EXISTS `estimate`;
CREATE TABLE `estimate` (
  `estimate_id` int(11) NOT NULL AUTO_INCREMENT,
  `estimate_num` int(11) NOT NULL,
  `views_id` int(11) NOT NULL,
  PRIMARY KEY (`estimate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of estimate
-- ----------------------------
INSERT INTO `estimate` VALUES ('1', '23', '1');
INSERT INTO `estimate` VALUES ('2', '280', '2');

-- ----------------------------
-- Table structure for firstpageswiper
-- ----------------------------
DROP TABLE IF EXISTS `firstpageswiper`;
CREATE TABLE `firstpageswiper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `smalltitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotplace` varchar(255) NOT NULL,
  `cityid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
-- Table structure for house_infor
-- ----------------------------
DROP TABLE IF EXISTS `house_infor`;
CREATE TABLE `house_infor` (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `house_name` varchar(255) NOT NULL,
  `bed` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `house_infor` varchar(255) NOT NULL,
  `bedroom` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `asked_id` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `estimate_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house_infor
-- ----------------------------
INSERT INTO `house_infor` VALUES ('1', '北京·平房里的独立房间', '铭宿-长城脚下的小院', '1', '354', '铭宿,之所以叫“铭”,本意警戒反省,演变过来就是与自己相处,回归内心的净土,不忘初心,抽身洪流,铭记此时此刻｡铭宿位于北京市怀柔区雁栖镇一个名为官地的村子, 下邻雁栖湖APEC国际会展中心,上邻神堂峪风景区,属于不夜谷沿线,距北京市中心60公里｡开车过来只需50分钟｡沿途路边无尽的美景,雁栖湖风光旖旎,盘踞在山上的野长城唯美而苍劲｡', '一张标准双人床', '1', '1', '1', '420', '1', '1');
INSERT INTO `house_infor` VALUES ('2', '北京·住宿加早餐里的独立房间', '四合雅舍特色大炕', '1', '333', '明代古长城环绕､依山傍水､好吃到跳起来的北方美食｡就离四星级神堂峪景区只有不到4公里｡', '一张特大号床', '2', '2', '2', '555', '2', '2');

-- ----------------------------
-- Table structure for image_table
-- ----------------------------
DROP TABLE IF EXISTS `image_table`;
CREATE TABLE `image_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `image_src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_table
-- ----------------------------
INSERT INTO `image_table` VALUES ('1', '1', 'https://z1.muscache.cn/im/pictures/f2434c9d-7c70-47bc-b2e5-2862c9d83081.jpg?aki_policy=xx_large');
INSERT INTO `image_table` VALUES ('2', '1', 'https://z1.muscache.cn/im/pictures/c47b8e3a-c4a3-4c93-819d-b9d04d15d78b.jpg?aki_policy=large');
INSERT INTO `image_table` VALUES ('3', '1', 'https://z1.muscache.cn/im/pictures/3c96a140-9434-4d56-84fe-2bbab7bc9774.jpg?aki_policy=large');
INSERT INTO `image_table` VALUES ('4', '1', 'https://z1.muscache.cn/im/pictures/8fa16a23-4a15-4488-b222-93215d67422b.jpg?aki_policy=large');
INSERT INTO `image_table` VALUES ('5', '1', 'https://z1.muscache.cn/im/pictures/462f45d1-6b9f-405c-adfb-217d9e20d07e.jpg?aki_policy=x_large');
INSERT INTO `image_table` VALUES ('6', '1', 'https://z1.muscache.cn/im/pictures/8fa16a23-4a15-4488-b222-93215d67422b.jpg?aki_policy=x_large');

-- ----------------------------
-- Table structure for owner
-- ----------------------------
DROP TABLE IF EXISTS `owner`;
CREATE TABLE `owner` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `job_address` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `owner_img` varchar(255) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owner
-- ----------------------------
INSERT INTO `owner` VALUES ('1', '田', '北京万维向艺酒店管理有限公司', 'English、中文', 'https://z1.muscache.cn/im/pictures/1e2569ae-55fc-4be0-b270-fb40928f2555.jpg?aki_policy=profile_x_medium');
INSERT INTO `owner` VALUES ('2', '志', '自由职业者', 'English、中文', 'https://z1.muscache.cn/im/pictures/e69aaf75-84b0-46a5-846e-7048ae164f88.jpg?aki_policy=profile_x_medium');

-- ----------------------------
-- Table structure for pictureurll
-- ----------------------------
DROP TABLE IF EXISTS `pictureurll`;
CREATE TABLE `pictureurll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) NOT NULL,
  `pictureid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
-- Table structure for popcollection
-- ----------------------------
DROP TABLE IF EXISTS `popcollection`;
CREATE TABLE `popcollection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply` (
  `house_id` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `car` varchar(255) DEFAULT NULL,
  `food` varchar(255) DEFAULT NULL,
  `washer` varchar(255) DEFAULT NULL,
  `supply` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supply
-- ----------------------------
INSERT INTO `supply` VALUES ('1', '4.9分·23条评论', '免费停车', '供应早餐', '有洗衣机', '1间卧室·1张床·1个独立卫生间·最多住2人');
INSERT INTO `supply` VALUES ('2', '5.0分·280条评论', '超赞房东', '可以做饭', '有洗衣机', '1间卧室·1张床·1个独立卫生间·最多住2人');
