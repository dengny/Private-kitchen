#设置脚本编码格式为utf8
SET NAMES UTF8;
#如果数据库存在删除
DROP DATABASE IF EXISTS kitchen;
#创建数据库,设置编码格式为utf8
CREATE DATABASE kitchen CHARSET=UTF8;
USE kitchen;
#创建新闻表格
CREATE TABLE kitchen_news (
    nId INT PRIMARY KEY AUTO_INCREMENT,
    nTitle VARCHAR(500),
    nSubTitle VARCHAR(500),
    nImg VARCHAR(1000),
    nName VARCHAR(500),
    nLogo VARCHAR(1000)
);
#插入数据
#----------1----------------
INSERT INTO kitchen_news VALUES(
    null,
    "2019“鲁花杯”中餐烹饪世锦赛将在大连开赛",
    "300名中外厨师同台竞技展示中国美食魅力",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190807/t5y2wid4Sp.jpg?x-oss-process=image/crop",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------2----------------
INSERT INTO kitchen_news VALUES(
    null,
    "德国米技线下体验店开业—以食会友让米技厨房带来更多惊喜",
    "专访米技国际控股有限公司董事局主席执行董事及行政总裁季残月女士&静安昆仑连天阁主厨 Joseph Ooi",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190325/EswQpyC2XQ.jpg?x-oss-process=image/crop,x_11,y_7,w_1252,h_834",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------3----------------
INSERT INTO kitchen_news VALUES(
    null,
    "爱他美TM 3 （Aptamil®3）致力科学喂养——模拟母乳低聚糖的革新成分",
    "爱他美TM 3的母公司，达能纽迪希亚致力于母乳研究40余年，以欧洲领先科研技术为基础，进一步解密天生营养组合，突破性探索宝宝成长所需母乳低聚糖，帮助宝宝激发卓越自护力 。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190807/t5y2wid4Sp.jpg?x-oss-process=image/crop",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------4----------------
INSERT INTO kitchen_news VALUES(
    null,
    " 松下冰箱高端新品亮相，健康保鲜科技再升级",
    "在消费升级的大趋势下，用户对于产品的要求日渐挑剔。“让保鲜回归冰箱”的技术升级正成为众多冰箱企业突破行业发展困局的“金钥匙”。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190529/xiYyNZ74yD.jpg?x-oss-process=image/crop,x_233,y_113,w_973,h_648",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------5----------------
INSERT INTO kitchen_news VALUES(
    null,
    "西澳旅游局在沪举办美食节 推广独特美食美酒体验",
    "2019年5月25日，西澳大利亚州旅游局携手新加坡航空和携程，在上海浦东嘉里城举办“西澳大利亚美食节”，为广大美食爱好者呈现来自西澳的美食美酒体验，将来自南半球的特色美味和惬意休闲的生活方式带给中国的消费者。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190527/mCcHDBYssz.jpg?x-oss-process=image/crop,x_400,y_426,w_1897,h_1266",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------6----------------
INSERT INTO kitchen_news VALUES(
    null,
    "2019AWE|福维克美善品开启智慧料理时代",
    "全球百年家电企业福维克Vorwerk于2019年3月14日至17日在2019年中国家电及消费电子博览会（简称“AWE”）隆重亮相。国际知名家电企业齐聚展会中，福维克向公众及媒体展示家电行业的最前沿技术、产品与解决方案。全球百年家电企业福维克Vorwerk携旗下三大家电产品悉数亮相2019AWE：Kobold可宝智能家居清洁系列，Thermomix美善品多功能料理机以及Temial知淳智能茶艺机，演绎来自的德国的智慧生活。",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190318/mCcP2shnSR.jpg?x-oss-process=image/crop,x_1,y_3,w_703,h_468",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------7----------------
INSERT INTO kitchen_news VALUES(
    null,
    "甄会选 520 探索浪漫红酒的秘密",
    "5月20日-5月22日，隶属于顶新国际集团旗下的线上商城甄会选在上海虹桥W Square举办了“甄会选，红五月”活动，将线上平台搬到线下，让消费者感受甄会选的真正魅力。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190521/bN42QPbFF5.jpg?x-oss-process=image/crop,x_135,y_133,w_907,h_605",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------8----------------
INSERT INTO kitchen_news VALUES(
    null,
    "AWE夏普展馆：每个区域都体现了生活中的科技",
    "一年一度的中国家电业盛会又在这个春季召开了，2019年中国家电及消费电子博览会照常在上海新国际博览中心举行。这次盛会是整个行业的盛会，其影响力已经不仅仅是中国家电业的盛会，已经发展到国际标准级的专业展会，吸引了国内外知名的企业和品牌前来参展。",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190318/hwzyNt77Ej.jpg?x-oss-process=image/crop,x_3,y_2,w_1265,h_843",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------9----------------
INSERT INTO kitchen_news VALUES(
    null,
    "Them1888有机奶酪，健康饮食有保证",
    "5月12日母亲节，Them1888(中文名“丹慕1888)丹麦有机奶酪，在city’super超生活环贸IAPM店superlife culture club举行了“Them1888有机奶酪，健康饮食有保证，源自丹麦第三大有机乳企，“近”在city’super超生活”的百年有机溯源活动。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190515/xTCRsnyX3w.jpg?x-oss-process=image/crop,x_0,y_62,w_1004,h_669",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------10----------------
INSERT INTO kitchen_news VALUES(
    null,
    "高端海鲜品牌King Oscar带来“一步料理”海鲜产品",
    "2019年1月，全球领先的海鲜领导者之一泰万盛 (Thai Union Group) 旗下品牌King Oscar (欧斯卡王) 在中国上海绿地全球商品贸易港举办新品品鉴活动。在活动现场，泰万盛水产（中国）有限公司总经理卢厉斌亲自下厨烹饪佳肴，并邀请媒体一同参与体验。",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190125/Y2Y7MRx2P8.jpg?x-oss-process=image/crop,x_3,y_3,w_1210,h_807",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------11----------------
INSERT INTO kitchen_news VALUES(
    null,
    "2019年，波尔多山坡迎来10周年庆 !",
    "对于波尔多山坡葡萄酒而言， 2019年是个有着特殊意义的年份：因为在2018年9月，我们的法定产区采收了属于波尔多山坡的第1 0个年份的葡萄。",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190510/PYxrwGipZW.jpg?x-oss-process=image/crop,x_64,y_30,w_1540,h_1027",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------12----------------
INSERT INTO kitchen_news VALUES(
    null,
    "为鲜活而生，乐享美“食” 松下全阵容冰箱引爆未来生活新风尚",
    "作为高端家电市场的革新者与引领者，松下冰箱在中国走过了20多年，一直致力于为中国消费者提供更优质的家电产品。",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20181211/TB8yTwaY6j.jpg?x-oss-process=image/crop,x_65,y_9,w_1820,h_1213",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------13----------------
INSERT INTO kitchen_news VALUES(
    null,
    "西班牙橄榄油携手欧盟来到上海 展示地中海饮食之瑰宝",
    "为期三年的“橄榄油世界之旅”登陆上海  携手中国知名烹饪专家兼美食作家胡元骏先生  展示橄榄油在中餐中的多种应用与健康益处",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190510/RER7c2xzxH.jpg?x-oss-process=image/crop,x_1,y_1,w_314,h_209",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------14----------------
INSERT INTO kitchen_news VALUES(
    null,
    "世界面包六强精英赛上海落幕，焙乐道带来比利时烘焙新力量",
    "2018年11月15日，“第二届世界面包六强精英赛” (2nd Best of Mondial du Pain)在中国上海落下了帷幕，来自比利时的烘焙师们不负众望，以独具比利时特色的艺术面包取得了亚军的好成绩。",
    "http://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20181120/eGxyTc6bfn.jpg?x-oss-process=image/crop,x_3,y_0,w_963,h_642",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#----------15----------------
INSERT INTO kitchen_news VALUES(
    null,
    "滋意春天在向你招手！你准备好“拔草”了吗？",
    " 春天的到来，总是伴随着一丝额外的欣喜与热情。整个城市已经向寒冷的冬季挥手告别，而身边的每一个角落也开始充盈着绿草鲜花，分外盎然。你准备好了吗？与滋意（Zizzi）一起度过这个别样的春天！",
    "https://app-file.beitaichufang.com/img/92A2B5CB9C6906035C2864FA225E1940/20190424/C5cZGcMpmc.jpg?x-oss-process=image/crop,x_1,y_27,w_659,h_439",
    "私家厨房",
    "http://qn.xqgrwz.cn/sjcf.logo.png");
#创建菜谱表
CREATE TABLE kitchen_recipe(
	rId INT PRIMARY KEY AUTO_INCREMENT,
	rTitle	VARCHAR(1000),
	rSubTitle VARCHAR(1000),
	# uId INT,
	rImg VARCHAR(1000),
    #收藏数量默认值
    favorite INT DEFAULT 0 ,
    #浏览数量默认值
    look INT  DEFAULT 0,
	#设置种类   0为早餐,1为午餐，2为晚餐,3为其他 默认值3
	rClass INT DEFAULT 3

);

#创建食材表
#CREATE TABLE Ingredients(
#	iId INT PRIMARY KEY AUTO_INCREMENT,
#	rId INT,
#)
#创建制作步骤表
#CREATE TABLE Steps(
#	sId INT PRIMARY KEY AUTO_INCREMENT,
#	sName VARCHAR(10),
#	rId INT,
#	sImg VARCHAR(255),
#)
#---------------1---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"糖醋小排  简单好吃",
	"糖醋小排是一道色香味俱全的名肴，属于江浙菜系。这道菜营养丰富，能提供人体必需的蛋白质、脂肪和钙质，但肥胖和血脂高者不宜多食。用常见的食材，简单的烹饪方法，让你和家人在家也能尽享美味。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1503246643879850.jpg?x-oss-process=image/crop,x_145,y_69,w_1302,h_867/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------2---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"歌乐山辣子鸡 | 抗拒不了的麻辣鲜香",
	"正宗的歌乐山辣子鸡，鸡肉并非“主角”，会吃的人喜欢的就是在辣椒、花椒中寻找肉丁的感觉。焦酥辣爽！那怎么做才算最道地呢？",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/iM7C8AzE5w.jpg?x-oss-process=image/crop,x_0,y_722,w_1330,h_886/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------3---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"星空糖霜饼干",
	"这是款好看好吃的糖霜饼干，香气浓郁的饼干底配上美丽炫目的星空，想吃又舍不得吃。三块饼干经过糖霜粘合在一起，中间放入深色彩糖，晃一下，里面的彩糖能动起来哦，给孩子闺蜜做圣诞礼物，简直不要太赞了。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171212/YBfe6jQmTd.jpg?x-oss-process=image/crop,x_172,y_35,w_834,h_556/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------4---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"煎什锦蔬菜佐阿拉斯加狭鳕及浓缩波特酒",
	"近年来大众的健康与爱美意识提升，更重视体态、塑身等议题，健身需求提高。除了锻炼之外，大家都说“三分练，七分吃“，于是市面上也处处可见各种健身餐，但海鲜类的比较少看到，若你吃惯了老生常谈的健身食物，不妨换换口味，尤其是夏季天气闷热，容易造成食欲不振。建议可以少吃肉、多吃高品质海鲜，例如产自优美环境，天然、美味又健康的阿拉斯加海产，无需添加太多调味，用较清淡的方式烹饪，无论是西式还是东方料理，冷盘沙拉或热食，都可以满足饕客味蕾，快参考以下食谱，让清爽健康、拥有丰富蛋白质、Omega 3、少脂肪的阿拉斯加狭鳕助力你夏日健身吧！",
	"https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190802/tmxaRHpTsA.jpeg?x-oss-process=image/crop,x_11,y_2019,w_3828,h_2556",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------5---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"酱烧豆腐",
	"豆腐，我国自古就有的美食，一直到今天，豆腐都是家常饮食中不可或缺的一分子。常食豆腐，有益于人体神经、血管、大脑的生长发育。豆腐不含胆固醇，为高血压、高血脂、高胆固醇症及动脉硬化、冠心病患者的药膳佳肴。豆腐含有丰富的植物雌激素，对防治骨质疏松症有良好的作用。但很多人不喜欢食用豆腐。虽然知道它营养丰富，但就是好多人不爱吃。说起豆腐，就会想起麻婆豆腐，豆腐最经典的做法之一。但不能总是吃麻婆豆腐吧？总得换换口味吧？关于豆腐，我有几种私房做法，绝对的素菜，但却有着比荤菜还棒的味道及口感，今天暂且分享其中一种。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171109/RJcM7ZsE3Z.jpg?x-oss-process=image/crop,x_15,y_14,w_776,h_517/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------6---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"无敌下饭菜 蚂蚁上树",
	"一道忽悠了全世界的中国传统美食，源于川渝地区，没有蚂蚁也没有树，却成了拯救食欲的超级下饭菜。一勺郫县豆瓣酱将粉丝和肉末巧妙的煸炒在一起，微辣、鲜香挑逗着味蕾，足以让人胃口大开。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1194987515959475.jpg?x-oss-process=image/crop,x_11,y_387,w_1321,h_881/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------7---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"酸辣番茄牛肉羹",
	"今天的食谱分享是一个“酸辣汤”，材料搭配以冬日季节需要为主。这样不仅在口感和营养上均都能达到完美喝一碗立刻能感觉全身暖和起来！食谱的主要两种材料是“牛肉”和“番茄”（西红柿），牛肉、番茄都属于营养非常好的食材。特别适合日常食用在冬日里还能起到养生保健作用！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171124/285QxPnxJJ.jpg?x-oss-process=image/crop,x_18,y_28,w_1867,h_1244/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------8---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"减脂鲜蔬汤 一碗管饱",
	"最减脂的汤水，少油少盐，一碗管饱。番茄含有丰富的胡萝卜素、维生素C和B族维生素。番茄含的“番茄素”，有抑制细菌的作用；含的苹果酸、柠檬酸和糖类，有助消化的功能。番茄含有丰富的营养，又有多种功用被称为神奇的菜中之果。鸡毛菜所含的矿物质能够促进骨骼的发育，加速人体的新陈代谢和增强机体的造血功能，胡萝卜素、烟酸等营养成分，也是维持生命活动的重要物质。姬菇含有抗肿瘤细胞的硒、多糖体等物质，对肿瘤细胞有很强的抑制作用，且具有免疫特性。这碗汤水高颜值高营养，大家一起动手做起来。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/4JjAWtj5CD.jpg?x-oss-process=image/crop,x_4,y_18,w_820,h_546/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------9---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"青椒牛肉丝",
	"牛肉和青椒一直就是很好的搭配，无论从口感还是色泽上都非常有食欲。孕妈妈在怀孕期间要保证饮食的均衡，摄入足够的营养成分，青椒炒牛肉具有补中益气、强筋健骨的作用，特别适合缺铁性贫血、体虚气短的孕妇食用，另外这道菜中含有的维生素成分也非常适合胎儿的成长发育。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180415/NMSQwbwWNA.jpg?x-oss-process=image/crop,x_9,y_5,w_840,h_560/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------10---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"鱼香茄子煲",
	"茄子嫩滑而不腻， 咸鲜、醇香、既美味，又神秘。烹制前期对茄子油煎和飞水两道工序使茄子的口感更加细腻丰富，当然也可根据个人情况省去这两步。另外最好使用长条的紫皮茄子来烹制这道菜，成品会更加鲜嫩美味",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171019/QbQ7wNCrHz.JPEG?x-oss-process=image/crop,x_494,y_292,w_697,h_465/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------11---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"蒜香马铃薯 西式小吃",
	"蒜香马铃薯属于一道西式料理，可以搭配牛排当做配菜，也可以当做零食或者小吃。做法虽然简单、味道却是超级赞的！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/JYCSFbHYj8.jpg?x-oss-process=image/crop,x_5,y_7,w_827,h_551/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------12---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"软嫩易脱的蒜蓉蒸排骨",
	"蒸，是最健康的烹饪方式。它能最大限度地保留食物的营养和食材本来的鲜美味道。无论是什么食物，基本没有什么不能蒸的蔬菜，而且做蒸菜时往往都会用多种蔬菜做原料。今天，我来分享给大家的是一道蒜蓉蒸排骨，它营养好，而且美味难挡，软嫩脱骨，人人爱吃，跟上我。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171118/6sG75ekaYN.jpg?x-oss-process=image/crop,x_4,y_0,w_795,h_530/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------13---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"可乐饼",
	"日语叫korokke的油炸土豆饼，是保留了法语发音croquette的舶来品，经过街头商贩们的改良如今已经是与章鱼小丸子媲美的地道日式街头小吃。外壳酥脆可口，内陷香软诱人，平价的街头小食让每个人都能尝到平淡生活中的一点小确幸。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190104/FQRt3ry5Qk.jpg?x-oss-process=image/crop,x_0,y_1311,w_1572,h_1046",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------14---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"葱烧蘑菇",
	"葱烧是鲁菜的一个传统手法，就是将大葱的葱白部分提前用来制作葱油，然后将葱油分几次加入菜肴当中的过程。只听过葱烧海参、葱烧大虾，其实对于传统菜来说，葱烧的技巧同样可以适用于素菜，菌菇就是个不错的选择。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1606363459203288.jpg?x-oss-process=image/crop,x_0,y_589,w_1333,h_889/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------15---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"香菇焖鸡",
	"冬菇是广东人的叫法，其实这就是人们常说的香菇，是具有高蛋白、低脂肪、多糖、多种氨基酸和多种维生素的菌类食物。香菇和鸡肉搭配就很完美，无论焖也好，清蒸也好，或是炖汤，冬菇和鸡都可以互相提升香气，两种食物互相渗入，会使菜的香味发挥到极致，是一道好吃的经典粤菜！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171113/RcyAx2xBn2.jpg?x-oss-process=image/crop,x_1,y_4,w_970,h_647/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------16---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"清蒸鲈鱼",
	"“鲜”这个字中，鱼占了一半的江山，可见鱼何其鲜美。为了最大限度地体现鱼的鲜美，清蒸无疑是上策，俗话说清蒸是对鱼最高的赞礼，也是对食客的尊敬。下班后，不想拖着疲惫的身体在厨房捣鼓半天，就来做一道清蒸鲈鱼吧，清蒸鲈鱼做法简单，味道鲜美，而且营养丰富，不容错过哦。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171122/kfQM3DC3yj.jpg?x-oss-process=image/crop,x_0,y_364,w_600,h_400/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------17---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"橙香排骨",
	"大家平时吃排骨，都是以比较常见的调料去烧制，难免会有些腻烦。今天，我就教你做一道风味独特的带有橙香的排骨菜肴。其实橙汁不仅可以作为果汁来饮用，还能做为菜肴的辅料，可以让菜肴更加的美味可口。橙汁清新的滋味被牢牢的吸收进排骨中，味道清新不油腻！",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180408/p8S86kRZEP.JPG?x-oss-process=image/crop,x_69,y_46,w_866,h_577/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------18---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"传统北京菜—京酱肉丝",
	"京酱肉丝又叫京酱菜，是传统的北京风味菜，以猪里脊肉为主料经过腌制滑炒，加入甜面酱及其它调味品烹饪而成，再搭配时令菜码食用，口感咸甜适中，酱香浓郁，风味独特。因为这道菜属于荤素、冷热搭配，再经过用心的摆盘，颜值也是可圈可点，做为一道春节宴客菜也是拿得出手的。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180130/fJyNZwppri.jpg?x-oss-process=image/crop,x_3,y_6,w_838,h_558/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------19---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"香菇肉馅饺子",
	"中国的面食博远深奥！可以塑造任何食物，饺子就是中国最具代表的食物！饺子代表团圆，热闹！幸福！今天分享的是香菇肉馅味的！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171102/2ZBk84wnHd.jpeg?x-oss-process=image/crop,x_0,y_2,w_3159,h_2105/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------------20---------------------------
INSERT INTO kitchen_recipe VALUES(
    null,
	"蚝油牛肉 米饭最搭CP",
	"这是一道粤菜中的名菜，蚝香四溢油牛肉嫩滑，特别下饭诱人。制作者：罗志雄",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1014913729935354.jpg?x-oss-process=image/crop,x_0,y_501,w_800,h_533/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
#---------
INSERT INTO kitchen_recipe VALUES(
    null,
	"肉末茄子",
	"茄子是为数不多的紫色蔬菜之一，也是餐桌上十分常见的家常蔬菜。在它的紫皮中含有丰富的维生素E和维生素P，维生素E既可抗衰老，又可提高毛细血管抵抗力，防止出血；维生素P能改善微细血管脆性和通透性，常食茄子对高血压、脑溢血、动脉硬化、眼底出血等患者有良好的保健作用。而这次介绍茄子的这个做法操作很简单，里面加了豆瓣酱，炒出的茄子酱香浓郁，色泽红亮，米饭也能多吃两碗",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171112/BDGC5mMpcH.jpg?x-oss-process=image/crop,x_0,y_0,w_973,h_648/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"红烧平鱼☛刺少肉嫩不扎嘴",
	"平鱼又叫鲳鱼，刺少肉嫩，含有丰富的蛋白质、钙、维生素D。妊娠进入第五个月后，胎儿的牙齿开始快速生长，需要补充大量的钙质，而维生素D可以促进钙吸收，两者密不可分，所以孕中期5-6个月的准妈妈要多吃含钙食物，经常晒太阳哦！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171203/TdfTa8P2nK.jpg?x-oss-process=image/crop,x_4,y_4,w_842,h_561/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"北海道牛奶曲奇 外表朴素却入口即化",
	"北海道盛产牛乳，因此与北海道有关的甜品似乎总带着浓浓的乳香。蛋糕中的北海道戚风，浓滑的香草奶油馅总让人有吃冰淇淋的错觉；面包中的北海道土司，如云朵般洁白细腻的组织和甜甜的牛奶味儿着实让人欲罢不能。饼干中的北海道曲奇呢？自然也离不开这份乳香。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170804/hfYpQcmeec.jpg?x-oss-process=image/crop,x_0,y_916,w_1334,h_888/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"宫保鸡丁",
	"宫保鸡丁这道菜在国外几乎成为中国菜的代表，鸡肉的鲜嫩配合黄瓜的爽口和花生的香脆，超级美味，这么经典的国宴菜，也许很多人会觉得宫保鸡丁好吃不好做，其实掌握要点，在家也可以做出好吃美味的宫保鸡丁。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171110/x7ip3AfXCY.jpg?x-oss-process=image/crop,x_0,y_3,w_968,h_645/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	" 酱爆洋葱鱿鱼须",
	"鱿鱼含有丰富的蛋白质及人体所需的氨基酸，脂肪含量很低，是大家比较喜欢的一种海鲜产品。而鱿鱼须的口感脆嫩，用来做酱爆超级美味，再搭配孜然出锅，有种小烧烤的感觉呢！",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180317/B56zdB5fMd.jpg?x-oss-process=image/crop,x_1,y_2,w_844,h_563/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"早餐必备|华夫饼",
	"每个人的爱好都个不相同，有的人爱宝宝，有的人爱宠物，而我却爱吃，作为吃货的我怎么可能错过这个外酥内软的华夫饼，一口咬下去，满满的满足感，让人欲罢不能。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171204/EDprf3iHpN.jpg?x-oss-process=image/crop,x_78,y_161,w_601,h_400/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"凉拌鸡丝",
	"秋冬之际适合食用一些营养比较高的肉类和蔬菜，在秋冬第一选择当属禽类。在今天的食谱介绍所选择的是营养极高的“鸡胸肉”，鸡肉含有非常高的蛋白质和维生素等。经常食用具有温中补气、调节机能、增强免疫力、补肾益精等作用！今天的这一制作搭配可以说相当的完美，不论口感还是色系搭配。都非常的漂亮！在口感方面鸡肉不柴配合蔬菜非常脆嫩有味值得你试试看。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171113/SFyJ4dibkX.jpg?x-oss-process=image/crop,x_15,y_8,w_1791,h_1194/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"高升鸡翅",
	"即使是厨房小白也能轻松制作的美味鸡翅--“高升鸡翅”，其实就是家常的红烧鸡翅。高升是指调味汁的调配比例是1:2:3:4:5，寓意步步高升，过节的餐桌上正是需要这种能讨喜的菜了。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180201/ex8A558tzs.jpg?x-oss-process=image/crop,x_4,y_0,w_1977,h_1318/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"栗子焖鸡翅",
	"现在又到吃栗子的季节，甜甜的栗子很多人都爱吃。中医认为，秋冬季节吃栗子有补肾健脾、强身健体、益胃平肝等功效。被称为“肾之果”。 栗子除了糖炒，做菜也是非常美味的，喷喷香的栗子焖鸡就是一个比较经典的做法，此菜黄亮油润，鸡酥栗糯，汁浓味香，虽然简单，但栗子吸收了鸡肉的鲜香，变得更加好吃。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171109/ACAB8pTJ8s.jpg?x-oss-process=image/crop,x_0,y_0,w_597,h_398/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"韩式土豆饼",
	"土豆的学名叫马铃薯，是我们日常生活中常见的根茎类蔬菜。土豆中含有丰富的淀粉、果胶、蛋白质、钾、维生素和食物纤维，经常食用可以强身健体。孕妇吃土豆不仅能够补充所需的微量元素、维生素和体内缺乏的糖分，还能有效的缓解孕期带来的小腿浮肿等问题。这道韩式土豆饼将土豆和糯米粉完美的结合到一起，软糯的口感透着淡淡的奶香味，既营养又美味，特别适合孕期的准妈妈食用。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180530/RJ7mZAWEB6.jpg?x-oss-process=image/crop,x_4,y_2,w_842,h_561/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"拍黄瓜",
	"拍黄瓜必备芝麻油，因为芝麻油的香气是其他油都不能比拟的，拌凉菜时，少了它，总觉得少了点味道。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180208/zWjeXtydcy.JPEG?x-oss-process=image/crop,x_0,y_329,w_800,h_534/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"椒盐鸡味金针菇",
	"金针菇是一个非常受欢迎的蔬菜，特别是在冬天。各种火锅和肥牛铁板均不能落下它，为什么金针菇那么受欢迎了。那是因为除了味道好外还超级的有营养，据了解含有人体所需的多种氨基酸成分。能有效的增强体质消除疲劳恢复体能，另外锌的含量比较的高对于孩童开发脑力具有很好的作用。经常食用金针菇还能降低胆固醇、防癌抗癌，并能预防男性前列腺疾病的发生。可谓是男性同胞的福音！那么今天的食谱介绍做法将不再炒以免老铁吃到吐，我们改用油炸的方式。来赋予金针菇不一样的味道和口感，希望今天的食谱您会喜欢！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171102/CfrPKzCsEM.jpg?x-oss-process=image/crop,x_77,y_54,w_1751,h_1167/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"虾仁豆腐水蒸蛋",
	"水蒸蛋在我们北方叫蒸鸡蛋羹，其口感嫩滑、营养美味，可以说是老少皆宜的一道家常美食。而在蒸蛋羹的基础上加入了豆腐和虾仁，吃起来嫩滑又鲜美，而且营养更为丰富，其中含有大量的蛋白质以及多种微量元素，特别是孕期的准妈妈食用，对胎儿的神经系统和身体发育有很大的帮助。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180710/X2GTSditSQ.jpg?x-oss-process=image/crop,x_5,y_2,w_839,h_560/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"低卡饱腹瘦身餐——鳕鱼洋芋擦擦",
	"土豆作为餐桌上的“变形金刚”入选第四大主粮，在陕北和甘肃都经常将土豆沾上面粉蒸熟后做成洋芋擦擦食用，而在陕西关中平原这样蒸制的洋芋擦擦也叫作“麦饭”。我生完宝宝后开始恢复健身，既要吃的健康又要美味饱腹还要满足身体哺乳需求。普通的陕西版本的油泼洋芋擦擦营养不够均衡并且食物较为单一，今天这个改良版的低卡饱腹的鳕鱼红玉洋芋擦擦不仅颜值高，还制作简便，适合健身人士或者减脂期食用。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171109/sFKpD6Jkzc.jpg?x-oss-process=image/crop,x_23,y_10,w_936,h_624/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"乡村素炖锅  鲜味十足的暖汤",
	"暖暖的蔬菜汤，鲜的幂次方！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1218534978271547.jpg?x-oss-process=image/crop,x_12,y_112,w_303,h_202/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"美味港式奶茶",
	"在家就能喝到港式奶茶，厨房小白只需几步就能搞定，只要把茶煮好，这道奶茶就做好50%了。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171207/Pzx2wXNePd.jpg?x-oss-process=image/crop,x_715,y_73,w_1203,h_801/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"红烧肉",
	"没有 “太油”的话，也可以用普通酱油替代，但是沈爷推荐使用 “太油”，因为“太油”是经过四次头抽酿造",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171018/c8kENWirZy.JPEG?x-oss-process=image/crop,x_11,y_432,w_700,h_466/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"南瓜沙拉",
	"南瓜含有丰富的膳食纤维，吃了南瓜就会觉得很饱，不想再多吃，即使吃了很多也不会长胖，因为南瓜的热量很低，是很适合用于减脂的蔬果。南瓜营养丰富全面，对肠胃和血管都有很好的保护作用，用南瓜搭配其他的新鲜蔬菜做成的这道沙拉，很适合女生当作日常减脂餐，既饱腹也可口哦。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180112/2FmTQwYDQp.jpg?x-oss-process=image/crop,x_33,y_83,w_1427,h_951/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"红烧牛肉面",
	"软烂的牛肉入口即化的萝卜伴着浓浓的酱香，淋上香浓的汤汁，吃面喽！",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171013/2yxbYz77QK.jpg?x-oss-process=image/crop,x_2,y_292,w_657,h_438/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES(
    null,
	"早餐也有料！风靡北美的俱乐部三明治",
	"俱乐部三明治起源于美国纽约州的一个赌马俱乐部，传统的俱乐部三明治由烘烤的面包片、鸡肉、生菜、培根、番茄、芝士等丰富的材料制作。营养均衡，作为早中晚餐都非常的合适。制作者：陈强Eric",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170809/pafGzB4XcB.jpg?x-oss-process=image/crop,x_16,y_0,w_1955,h_1303/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
	DEFAULT
);
INSERT INTO kitchen_recipe VALUES
(
    null,
	"橄榄油西兰花饭团",
	"很多人都喜欢吃寿司和包菜，那相信大家对于我今天即将要分享的这款饭团也不会讨厌。我家常做的这款饭团，做法更为简单，而营养和口感却非常之好。在这款饭团里，我用到了营养丰富的蔬菜：西兰花。西兰花是所有蔬菜中最闪亮的抗癌明星，我们平时一定要多吃。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171108/ByBzdfDHPK.jpg?x-oss-process=image/crop,x_2,y_2,w_794,h_529/resize,m_lfit,w_1080",
	DEFAULT,
    DEFAULT,
	DEFAULT	
),
(
    null,
	"抱蛋煎饺",
	"抱蛋煎饺是在煎饺子的基础上加入鸡蛋煎制而成的，即使冷冻的饺子也可以操作哦！营养丰富、快捷又美味，非常适合需要增加营养的儿童、孕妇、还有忙碌的上班族食用。",
	"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171130/eHrRCBMmFa.jpg?x-oss-process=image/crop,x_6,y_4,w_834,h_555/resize,m_lfit,w_1080",
	DEFAULT,
    DEFAULT,
	DEFAULT	
),
(
    null,
	"酱牛肉",
	"酱牛肉是一道非常受欢迎的卤菜。尤其是在夏天的时候可以说是很畅销的美食，其口感弹性肉质有嚼劲。入口卤香十足并且越嚼越香很受欢迎，三五好友约一起带着卤味到海边吹吹海风听听浪潮。喝着冰啤酒就着酱牛肉闲聊人生八卦吹吹人生过往好不惬意！酱牛肉是所有卤菜中最贵的，除了其原料比较贵之外卤制也是比较的费工费时。所以要想荷包不瘦，那只能自己动手。酱牛肉比起一般的卤菜来说更为讲究，除了香料之外在原材料的选择上和锅具都要恰到好处。",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180205/B8yynr7fAE.jpg?x-oss-process=image/crop,x_13,y_19,w_1961,h_1308/resize,m_lfit,w_1080",
	DEFAULT,
    DEFAULT,
	DEFAULT	
),
(
    null,
	"菠菜网卷饼",
	"菠菜含有丰富的胡萝卜素及维生素并且矿物元素含量极好其中的铁元素尤其突出。经常食用菠菜具有补血补铁的作用还能促进新陈代谢防止便秘等，孩子经常食用不仅能促进发育成长还能保护眼睛维护视力。所以把菠菜列入辅食菜单是很不错的！把菠菜直接炒成菜，孩子不一定喜欢。所以花点心思换个花样试试.....",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180406/4wMhm5pjjJ.jpg?x-oss-process=image/crop,x_41,y_29,w_1856,h_1237/resize,m_lfit,w_1080",
	DEFAULT,
    DEFAULT,
	DEFAULT
),
(
    null,
	"西红柿炖牛腩",
	"牛肉含有丰富的蛋白质，脂肪含量较低，氨基酸组成比猪肉更接近人体需要，可以提高抗病能力，增加免疫力。牛肉中的锌、钾、磷元素比较突出，有利于胎儿脑细胞的发育，保护胎宝宝的视力。牛肉中的血红素铁还可以有效预防孕期的缺铁性贫血，所以准妈妈要多吃牛肉哦！",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180113/PShMQsmQsD.jpg?x-oss-process=image/crop,x_3,y_1,w_842,h_561/resize,m_lfit,w_1080",
	DEFAULT,
    DEFAULT,
	DEFAULT
),
(
    null,
	"小白也可以做的网红「白川空气芒果蛋糕」",
	"白川空气芒果蛋糕作为烘焙界的网红，以其轻盈、绵密的口感征服了一大票吃货。芒果果肉黄橙橙的明快色彩，清甜香滑的口感，混合着顺滑奶油的醇香，从内到外流淌着抵挡不住的诱惑。轻咬一口，入口即化，香甜的气息在唇齿间萦绕。如此空气感的蛋糕，快快自己动手试试吧。",
	"https://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190719/nSzf2yNKsB.png?x-oss-process=image/crop,x_0,y_0,w_749,h_499",
	DEFAULT,
    DEFAULT,
	DEFAULT
),
	(
			null,
		"番茄鸡蛋卷",
		"番茄（西红柿）与鸡蛋的组合可谓是天生一对，两样食材的营养价值都特别高，番茄富含胡萝卜素和维生素，能够保护心血管，而鸡蛋也是我们日常生活中不可或缺的高营养食物。最经典的做法莫过于番茄炒蛋了，但再好吃的菜，多吃也腻。不如换个做法来当早餐吃。鸡蛋卷起来，口感丰富细腻，有葱香、鸡蛋香和番茄的酸味，味道棒棒哒，好吃又有营养。简单的快手做法，小朋友也喜欢。",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180801/YrZPmHnBKD.JPG?x-oss-process=image/crop,x_11,y_5,w_924,h_616/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"番茄虾仁疙瘩汤",
		"疙瘩汤在北方比较常见，亦汤亦主食，主要食材为面粉、鸡蛋、西红柿等，也可以加入肉类或者海鲜，味道和营养更胜一筹。从饮食角度来说，面食类比较好消化，所以疙瘩汤适合各种人群食用。特别是孕前期的准妈妈，食欲不振、消化功能也很弱，这道番茄虾仁疙瘩汤口感顺滑、咸鲜适口，做法又简单快手，特别适合孕妈食用哦！",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180427/je6MTMxism.jpg?x-oss-process=image/crop,x_5,y_0,w_840,h_560/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT	
	),
	(
			null,
		"香辣干锅虾",
		"鲜活的海白虾，水煮着吃，甘甜鲜美，省时省力，除了水煮，我家最常做的还有香辣干锅虾。经常在外吃饭的朋友知道，这道香辣干锅虾在饭店卖的都很火，香辣可口，可一份干锅虾动辄上百块，还是自己做更实惠，可以用最为新鲜的食材，外面可是吃不到的。很多朋友觉得这道菜只能在饭店吃，其实自己做也非常简单，几步就搞定，我来教给大家它的做法，菜谱呈上，好好学哦！",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180720/eDdHaEym8i.JPG?x-oss-process=image/crop,x_2,y_4,w_2363,h_1574/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT	
	),
	(
			null,
		"瓦伊森",
		"瓦伊森是德国面包的基础款，Weizen在德语里是小麦的意思，这款面包含油量非常低，很符合德国人对面包的理解：富含营养又最健康的天然食品。瓦伊森面包经过烘烤后，麦香诱人，咬一口外皮酥脆，内里口感扎实，嘟嘟的唇形外观让人陷入小麦的香气魅力中不能自拔。",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180328/HkHrSrw2wQ.JPEG?x-oss-process=image/crop,x_0,y_512,w_799,h_532/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT	
	),
	(
			null,
		"香菇鸡肉滑粥",
		"鸡肉粥含有丰富的蛋白质和人体所需要的脂肪、维生素等，营养丰富、益气养血、补肾养阴等功效。同时能为儿童期的生长发育提供所需的多种营养素。今天分享的这个也算是一道备受青睐的家常食谱，早上吃很不错哦……",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180322/CzXkHKdQES.jpg?x-oss-process=image/crop,x_0,y_60,w_850,h_566/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"西红柿炒豆腐",
		"豆腐的含钙量很高，具有宽中和脾、清热解毒的功效，西红柿含有丰富的胡萝卜素和各种维生素。两者搭配在一起炒制，清淡且酸甜可口，具有开胃、生津润燥的功效，非常适合孕前期的准妈妈食用。",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180417/eTzi646t3n.jpg?x-oss-process=image/crop,x_5,y_2,w_844,h_563/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"【吮指诱惑纸包鸡】美味挡不住 ",
		"炸鸡与啤酒，这个夏季注定流行的元素。但，这次的炸鸡多了些花样。用油纸包好的炸鸡，多了些汁水，少了些干脆，齿颊留香，一种不一样的香浓体验，这就是麦兜口中的纸包鸡。酒店大菜，就让我们本期家里轻松做。",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1221395279913692.jpg?x-oss-process=image/crop,x_0,y_584,w_1334,h_890/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"【三黑粥】滋补肝肾好帮手",
		"冬天是补肾的季节，而黑色入肾，此时多吃黑色食物不仅御寒保暖，还能增强我们肾脏的机能。而三黑粥无疑是很好的食疗粥，俗话说“肾气足，百病除”。常喝三黑粥，肾气十足！肾好了，才有好的身体。三黑粥用到三种基本黑色食材：黑豆、黑米、黑芝麻，另外再放点核桃仁，这粥口感浓稠美味，营养丰富，常食能滋补肝肾，补脑益智，白头发也渐渐少了，还对延缓衰老也有一定功效。",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180123/zNNanp3NWY.jpg?x-oss-process=image/crop,x_2,y_2,w_973,h_648/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"蒜香秋葵",
		"今天的家常美食要介绍的是一个神奇的蔬菜，在最初引进的时候可以说是风靡一片。人人被它的味道和口感折服，但是最主要的全是看中它的营养价值。这个神奇的小蔬菜就是“秋葵”秋葵含有丰富的营养价值。高蛋白质、高矿物元素、低脂肪、低热量、无胆固醇这是追求健康者与减肥运动者首选蔬菜之一，经常食用秋葵除了能补充必要的营养价值。还有很好的食疗做用，比如补充体能消除疲劳、降低血糖，还能养颜美容强身补肾。",
		"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/SinR7D4nKK.jpg?x-oss-process=image/crop,x_32,y_59,w_2109,h_1406/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"港式公仔面",
		"公仔面？只听说过公仔，这和面有什么关系。公仔面,是香港的叫法,也就是内地的方便面。为什么在香港餐厅中炒方便面还能单独成菜，还这么好吃？",
		"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1323517715225218.jpg?x-oss-process=image/crop,x_7,y_643,w_1326,h_883/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"给家人吃的 自制安心油条",
		"豆浆配油条，早餐许多人都喜欢这么搭配着吃，现在也有许多大型连锁的早餐店有这么经典的套餐搭配，上班之前喝杯豆浆来根油条，别提早餐吃的有多痛快了，可是卫生食品安全曝光的太多了，即便是连锁店也逃不过食品安全隐患，家人都爱吃油条，尤其是孩子，也喜欢吃一些煎炸的食物，外面的油不用说也知道会重复多次炸制各种食品，吃多了也不健康。所以我家就会经常自己做油条，别以为这个特别难，花一点时间看完，注意一些细节步骤，也能给家人做上一份安心油条，健康早餐也就随手拈来了。",
		"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171115/wbcF87aweK.jpg?x-oss-process=image/crop,x_9,y_0,w_2168,h_1446/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"蒸藕盒",
		"今天推荐大家一道蒸藕盒子。一听到藕盒，许多人会想到炸藕盒这种做法，炸藕盒是吃起来是不错，可是炸的东西吃多了太容易上火了，所以今儿就改蒸着吃，香香的肉馅中夹着脆脆的藕，简单，好吃，不仅可以最大限度的保留了营养，蒸的不上火，适合一家老小，招待客人都有面子，做法很简单！",
		"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190215/pbYJnXFirC.JPG?x-oss-process=image/crop,x_0,y_0,w_999,h_666",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"入味十足的「锅塌豆腐」",
		"这是一道非常传统的鲁菜，是济南锅塌菜的代表，也是厨师平时说的白汁菜。锅塌豆腐看上去好像很普通，白白的，可吃起来却很入味，究竟是怎么做到的呢？",
		"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170720/Ajjcww2ZBZ.jpg?x-oss-process=image/crop,x_0,y_255,w_1334,h_890/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	),
	(
			null,
		"藜麦主食沙拉 | 健康营养少负担",
		"丰富的物料和颜色充满了春天的感觉，虽然只是一道沙拉，但却绝对含有一顿餐的完整营养，其中营养平衡的物料和充盈的口感，即使多吃一些也不会给身体带来负担。",
		"http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1195107123304613.jpg?x-oss-process=image/crop,x_0,y_375,w_1330,h_886/resize,m_lfit,w_1080",
		DEFAULT,
    DEFAULT,
	DEFAULT
	);
INSERT INTO kitchen_recipe VALUES
(
    null,
	"吐司早餐",
	"吐司作为早餐真的特方便，搭配一杯牛奶或是豆浆，元气满满的早餐就那么搞定了；我家隔几天就要做吐司，孩子也很喜欢吃；换个方式吃，不仅有颜值营养也非常的均衡；特好吃；适合2周+的宝宝食用；",
	"http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180303/7MfWFCFE6m.jpg?x-oss-process=image/crop,x_12,y_7,w_832,h_555/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "早餐缤纷水果杯",
    " 一杯层层叠加的酸奶、燕麦和各色水果，既能满足我们对不同营养的需求，还能为我们的早餐增添色彩，分层的味觉体验更是一场味蕾的狂欢！",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1274120187653418.jpg?x-oss-process=image/crop,x_5,y_1007,w_1327,h_883/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "早餐火腿鸡蛋薄饼",
    "孕妇经常没有胃口，可是还要每顿饭都要吃饱吃好，早餐尤为重要，这款早餐火腿鸡蛋薄饼，口感软而又不失弹性，加了鸡蛋和火腿肠使这款饼又香又嫩，是早餐不错的选择哦！",
    "http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180608/s8NpxZNStb.jpg?x-oss-process=image/crop,x_18,y_5,w_833,h_555/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "幸福早餐「pancake·松饼」",
    "有一天被同事问你会做松饼么？第一反应是东北的玉米面贴饼，就说不会，但是在东北的时候很喜欢吃，结果同事一脸懵逼，黑人问号脸。后来才知道说的是pancake，看着好像很好吃，于是一块五就自己动起手来。发现真的很想玉米面贴饼。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171102/dwdw38mNpG.jpeg?x-oss-process=image/crop,x_7,y_11,w_1592,h_1062/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "花式早餐——吐司花杯",
    "一日之计在于晨在于晨，早餐是必不可少的。这款吐司花杯香脆可口，营养丰富，配上一杯牛奶、豆浆都是不错的选择。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171226/JCmBmcfKf4.png?x-oss-process=image/crop,x_166,y_136,w_476,h_317/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "鲜贝馄饨-冬日早餐",
    "又是一年大雪节气到了，天冷不愿早起的人，可以在平时看电视的时候，边包一些馄饨饺子之类的冻起来，这样起码能多睡半小时。只需花十几分钟煮一碗馄饨汤，飞个鸡蛋。放几颗青菜，就很美味很营养了。鲜贝馄饨，很新鲜的贝柱加肉和成馅。少许蔬菜末的加入，营养更均衡。",
    "http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20181207/ar2M37xhAr.jpg?x-oss-process=image/crop,x_705,y_443,w_3980,h_2653",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "营养早餐【海鲜粥】",
    "今天做的海鲜粥为了尽量还原海鲜本身的鲜味，把虾头炒出了虾油再跟大米一起煮，煮好的海鲜粥非常地鲜美！",
    "http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20190409/rmCCFYZ7JE.jpg?x-oss-process=image/crop,x_240,y_6,w_1679,h_1118",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "金牌早餐——炸鱼薯条",
    "炸鱼薯条原子英国，鱼柳蘸面粉，之后浸入面糊后进行油炸，吃的时候还可以配上不同口味的调味酱，算是种很普通的街边小吃。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171205/RrWaMkAS8e.jpg?x-oss-process=image/crop,x_0,y_201,w_849,h_566/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "早餐必备|华夫饼",
    "每个人的爱好都个不相同，有的人爱宝宝，有的人爱宠物，而我却爱吃，作为吃货的我怎么可能错过这个外酥内软的华夫饼，一口咬下去，满满的满足感，让人欲罢不能。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171204/EDprf3iHpN.jpg?x-oss-process=image/crop,x_78,y_161,w_601,h_400/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "法式吐司 快手早餐",
    "清早，在短时间内为自己和家人准备一份既营养又美味的早餐，成为当下忙碌你我的共同需求。吐司早餐很普遍，但你有没有试过用一片饱含营养的法式吐司在凌乱的清晨宠爱家人，一同享受晨间的片刻优雅呢？",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1180679384778346.png?x-oss-process=image/crop,x_0,y_552,w_800,h_533/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    0
),
(
    null,
    "自制午餐肉",
    "外面做的午餐肉添加剂多、油盐多，不健康且不安全，自制午餐肉虽然没有外面制作那么Q弹，但是胜在更健康、油盐少，搅拌的好做出来的午餐肉也是比较有嚼劲的，而且自己做选择偏瘦的肉，这样做出来的午餐肉也是很适合减脂期的高蛋白营养哦～",
    "http://app-file.beitaichufang.com/img/310636AF348FC3F27D7F7C2040807A97/20180423/dnfF6Pz8E2.jpg?x-oss-process=image/crop,x_50,y_37,w_1122,h_747/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    1
),
(
    null,
    "辣味猪肚汤#秀午餐#",
    "猪肚子熬汤，美味得很",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171108/87c0e07e-397e-44bc-be6f-39529091f417.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    1
),
(
    null,
    "豆腐青鱼汤",
    "青鱼肉性平、味甘，归脾、胃经，具有益气、补虚、健脾、养胃、化湿、祛风、利水之功效，还可防妊娠水肿。用豆腐与青鱼的成汤，汤鲜美老少皆宜",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171012/23b1cebd-b215-4e9b-9d86-0862b6a77beb.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    1
),
(
    null,
    "核桃五彩豆腐",
    "豆腐含有丰富的植物蛋白，几乎包含了人体所需要的氨基酸，它有益于人体神经、血管和大脑，所以豆腐有健脑的作用，豆腐还能抑制胆固醇的摄入，从而达到预防心血管疾病的功效。 豆腐香煎或者焖或者酿都很好吃，这次把豆腐做得多姿多彩，吃得更营养，口感更丰富。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171108/677fe3b5-5084-4e61-9afa-966b85ec9130.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    1
),
(
    null,
    "时蔬鸡块",
    "健康健身餐。哺乳期妈妈也可以吃，因为低盐少脂。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171108/edfdf245-f077-4bd3-8e60-fb85e6c7f927.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    1
),
(
    null,
    "鸳鸯豆腐",
    "看河北卫视《家政女皇》时，看到介绍鸳鸯豆腐，做法简单，食材普通，很家常。 双休日，去菜市场买来北豆腐和鸭血，按照电视上介绍的做法，在家做了一次，恩，非常不错，口感滑嫩，味道超好，配米饭很不错哦。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171018/9679d9b7-c206-4c08-a726-d22faa5ad515.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    2
),
(
    null,
    "白萝卜猪蹄汤",
    "长期熬夜，坐的时间又长，经常对着电脑......有木有~~~~这样当然很容易令皮肤变差，甚至出现色斑、皱纹等。除了用护肤品去改善，也要由内而外的调理，才是最有效的。 猪蹄是整只猪中含最多骨胶原的...(展开)",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171019/33828b92-8550-483b-8049-3e9e96f140b9.jpg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    2
),
(
    null,
    "青豆牛肉",
    "如果要健身,绝对少不了牛肉",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171104/58d4ff41-f5fd-412e-b43e-1deafd7ba245.jpeg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    2
),
(
    null,
    "牛肉南瓜盅",
    "餐品复刻，超级好吃~",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171011/TQNfF8C5aA.jpg?x-oss-process=image/crop,x_0,y_151,w_599,h_400/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    2
),
(
    null,
    "萝卜炖小羊排",
    "用这些料做出的羊汤一点膻味也没有。非常好喝。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20171108/730510d3-9117-48fd-8292-f219d873ce28.jpeg?x-oss-process=image/resize,m_lfit,w_1080",
    DEFAULT,
    DEFAULT,
    2
),
(
    null,
    "早餐缤纷水果杯",
    "一杯层层叠加的酸奶、燕麦和各色水果，既能满足我们对不同营养的需求，还能为我们的早餐增添色彩，分层的味觉体验更是一场味蕾的狂欢！",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1274120187653418.jpg?x-oss-process=image/crop,x_7,y_977,w_1316,h_741",
    DEFAULT,
    DEFAULT,
    4

),
(
    null,
    "功夫菜 | 芙蓉鸡片",
    "相传芙蓉鸡片曾是京城八大楼之首东兴楼的拿手菜之一。正宗的做法是取鸡胸肉，细切细斩，使成泥。然后以蛋白搅和之，搅到融合成一体，略无渣滓，入温油锅中摊成一片片状。片大而薄，薄而不碎，熟而不焦。制作简单，但火候上恰到好处则见功夫。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/310636AF348FC3F27D7F7C2040807A97/20170808/1488941382445522.jpg?x-oss-process=image/crop,x_0,y_926,w_1332,h_748",
    DEFAULT,
    DEFAULT,
    4

),
(
    null,
    "清新少女感 ❀ 草莓起司罐",
    "玻璃罐甜品不仅好看，而且方便密封和携带，制作起来也非常简单，是非常流行的快手甜品",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/421B47FFD946CA083B65CD668C6B17E6/20170804/WKYeYNt7XS.jpg?x-oss-process=image/crop,x_13,y_912,w_1320,h_742",
    DEFAULT,
    DEFAULT,
    4

),
(
    null,
    "翻滚吧！泰式凤梨炒饭！",
    "泰国位于亚洲中南半岛中部，它三面环海，盛产水果、蔬菜和海鲜。米饭，是泰国饮食中不可或缺的元素。从早餐开始，她们就烹煮各式各样的米饭，作为一天的活力来源。这道热带风情洋溢的泰式凤梨炒饭，其鲜艳明亮的自然色彩，视觉上即为一大享受，加上用料丰富，口味独特，果香四溢，集酸、甜、咸、香、辣于一身，叫人不喜欢也难。",
    "http://btcf.oss-cn-hangzhou.aliyuncs.com/img/421B47FFD946CA083B65CD668C6B17E6/20170804/iP4iNp8Mc4.jpg?x-oss-process=image/crop,x_2,y_529,w_1700,h_957",
    DEFAULT,
    DEFAULT,
    4

)
;
#创建电子书
CREATE TABLE kitchen_eBook(
    eId INT PRIMARY KEY AUTO_INCREMENT,
    eTitle VARCHAR(1000),
    eSubTitle VARCHAR(1000),
    eImg VARCHAR(1000),
    eName VARCHAR(100),
    eOldPrice FLOAT,
    eNewPrice FLOAT
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《百吃不厌的家常味道2》",
    "你还记得那些从小到大我们一直熟悉的味道吗？那些萦绕在我们舌尖的味道，或许平淡，或许粗糙，但正是这些从小吃到大的味道才让人觉得百吃不厌，温暖而踏实。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/Xw3p3JWSid.jpg",
    "作者：私家厨房",
    26,
    12.5
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《百吃不厌的家常味道1》",
    "童年时留下的记忆总是让人印象深刻，长大后虽然走南闯北，尝遍各地美食，却仿佛浑然不知滋味，于是放下筷子，小时候爱吃的菜悄然涌上心头，美好的味道隔了十几年的时空缓缓飘来，依然鲜活生动，百吃不厌。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/5CYrMr7nMN.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《沉迷花草茶》",
    "“回归自然、享受健康”，是人们喝花草茶的理念。它是一种不含咖啡因、茶碱的天然草本饮品，也带给人们一种纯净自然的生活方式。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/S5QBi5xnQd.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《一碗好汤》",
    "一碗好汤，往往会给你留下至深的印象和满足感，齿颊留香的美妙，远超过一盘精美小炒甚至山珍海味。本书以健康养生为主线，为读者推荐了非常全面的营养汤品。快来学习，煲汤给自己最爱的人。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/sQ5HiawZhH.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《简单快手料理》",
    "虽然生活节奏繁忙，但饮食方面却不可过分随意，毕竟身体才是最重要的。只需简单几步，用时不超过20分钟，也可以做出健康美味的菜肴！",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/rWXsBdjy38.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《好吃不胖的减脂食谱》",
    "现在很多人都在不择手段地瘦身，同时又不遗余力地成为饕餮之徒。于是在挖地三尺寻找美味佳肴、梦想随心所欲大啖一番的同时，还幻想能保持修长曼妙的身材——这毫无疑问是我们每个人的终极梦想。这本书或许可以帮你实现这一终极梦想。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/xWjQerECmG.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《绝色川香》",
    "川菜并不是一味追求“正宗”，真正的核心是色香味俱全，而不是非要用四川的青笋和四川的锅。川菜发展至今，变化不断，近年来流行的新派川菜，早就从别的菜系中取了无数的创意和材料为已所用。本书为大家推荐了最基础的川菜及创新川菜的做法。喜食川菜的你千万要好好学哦！",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/48ENc67Mke.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《高颜值私房饮品》",
    "颜值与口味兼得的饮品，一般情况下没有人会拒绝。制作饮品是令人享受的，既享受了制作过程中的喜悦，又享受到喝进嘴里的刹那，快来一起参加饮品界颜值大咖开party吧！",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/RN4KGRw7iE.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《享瘦要低卡》",
    "低卡美食塑造完美身材，选择低卡的同时也选择了健康，本书为您提供的食谱热量均控制在120卡路里以内，让你吃好喝好身体无负担，低卡美食，等你享用！",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/null/3wkk4mWDMy.jpg",
    "作者：私家厨房",
    26,
    10.4
);
INSERT INTO kitchen_eBook VALUES(
    null,
    "《Eric的家常烘焙》",
    "春风十里不如甜点一道，在这本书里我们精心挑选了各色饼干和蛋糕的制作，总有一款能获得你的芳心，做出的烘焙小点送给身边的人，传达出你的爱意。",
    "http://app-file.beitaichufang.com/img/821F03288846297C2CF43C34766A38F7/book/EB5797/JmdCeE873C.jpg",
    "作者：私家厨房",
    26,
    10.4
);
#周刊杂志表
CREATE TABLE kitchen_magazine(
	mId INT PRIMARY KEY AUTO_INCREMENT,
	mTitle VARCHAR(20),
	mDate VARCHAR(100),
	mNumber VARCHAR(100),
	mPrice FLOAT,
	mIntr  VARCHAR(1000),
	mImg VARCHAR(255)
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"秋日食鸭",
	"2018年10月刊",
	"NO.194",
	12.00,
	"秋日鸭肥，大江南北对于鸭子的热爱更增几分。以鸭入馔适应多种调味方式，用盐水、仔姜等不同食材腌制、搭配，口味或麻辣、或咸鲜，总有一款鸭子的吃法适合你。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180930/XFpXXRteZr.jpg?x-oss-process=image/crop,x_0,y_25,w_734,h_918"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"秋日风华",
	"2018年09月刊",
	"NO.193",
	12.00,
	"九月的风，吹散了夏日的炎热，带来阵阵清爽，伴随着金秋丰收果实的喜悦，迎来了16周年特辑。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180906/FQz36R7ZFB.jpg?x-oss-process=image/crop,x_41,y_46,w_2164,h_2704"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"Sweet & Pink",
	"2018年08月刊",
	"NO.192",
	12.00,
	"如果爱情有颜色，那一定是粉红色的吧？很想拉着你的手，甜甜蜜蜜地做一款心爱的蛋糕。当奶油恋上巧克力，当我爱上了你。七夕快乐！",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180803/Qhek47JrjS.jpg?x-oss-process=image/crop,x_59,y_19,w_2145,h_2685"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"椰来香",
	"2018年07月刊",
	"NO.191",
	12.00,
	"盛夏七月，椰子正式出场。热带海岛、椰林树影、白沙海浪，和数不尽的美味椰子，送你一个椰子味的夏天吧！",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180710/ePeWSN7DQW.jpg?x-oss-process=image/crop,x_48,y_36,w_2529,h_3162"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"夏日荔之味",
	"2018年06月刊",
	"NO.190",
	12.00,
	"在广东一个名为『增城』的小城里有很多岭南典型的水果：荔枝、龙眼、菠萝、香蕉、柑橘等，但当地人引以为傲的，独有荔枝。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180531/SncjnzpREr.jpg?x-oss-process=image/crop,x_19,y_0,w_1272,h_1590"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"江河湖海 一起吃鱼",
	"2018年05月刊",
	"NO.189",
	12.00,
	"在湖泊和大海中，在大江和小河中，游动着许多肥美的鱼类，营养丰富，滋味鲜美。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180504/ykk4dwXXMi.jpg?x-oss-process=image/crop,x_15,y_15,w_844,h_1055"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"酱汁点睛",
	"2018年04月刊",
	"NO.188",
	12.00,
	"酱汁有着让平凡菜式瞬间诱人的魔力，增进了原本食材的层次，几种家庭简易版的酱汁制作，让你的日常吃食幻化成一道道闪亮的美味。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180419/KbST3akS3P.png"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"洋蓟食鲜",
	"2018年03月刊",
	"NO.187",
	12.00,
	"你知道你吃的蔬菜可能是一朵要开的花吗？不仅是洋蓟，还有西兰花、白花菜、刺山柑……他们都是一些会开花的蓓蕾或花头，却穿上了蔬菜的外衣，变成了餐桌上的食物。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180404/DWWCCFhiQR.jpg"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"火锅性格全解析",
	"2018年02月刊",
	"NO.186",
	12.00,
	"人间有真味，半酣意尤长。没有什么事情是吃一顿火锅解决不了的。如果有，就跟着我们来亲手做一个吧！",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180314/PefDEHPpp7.png"
);
INSERT INTO kitchen_magazine VALUES(
	NULL,
	"过年腊",
	"2018年01月刊",
	"NO.185",
	12.00,
	"小雪腌菜，大雪腌肉，腊味总是在这个时候准时现身。穿越赤裸的肉香，闻到的是秋风、山野、阳光、柴火浸润时光的味道......",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20180202/zhtG5zDDS3.jpg"
);
INSERT INTO kitchen_magazine VALUES
(
	NULL,
	"夏日冰冰凉",
	"2019年08月刊",
	"NO.204",
	12.00,
	"现代人想要凉快，消暑方法多得是，消暑 的话题纵使重复，却也是每个暑热难耐的三伏天的刚需。",
	"https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190801/rR53ejmajH.jpg?x-oss-process=image/crop,x_12,y_15,w_987,h_1234"
),
(
	NULL,
	"神奇的发酵",
	"2019年07月刊",
	"NO.203",
	12.00,
	"发酵的美味是属于夏天的：让人提起食欲的泡菜，瓶子里的酱汁与酱，一口觉醒的醋意，还有清凉解渴的啤酒。",
	"https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190626/f86JmjjeGS.jpg?x-oss-process=image/crop,x_64,y_61,w_2174,h_2718"
),
(
	NULL,
	"一粒大豆",
	"2019年06月刊",
	"NO.202",
	12.00,
	"大豆，祖籍中国，地地道道的中国豆子，不管外形还是味道，浑身都透着“朴实”二字。",
	"https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190529/fQ4CMR7hJC.jpg?x-oss-process=image/crop,x_0,y_0,w_2281,h_2852"
),
(
	NULL,
	"立夏风物",
	"2019年05月刊",
	"NO.201",
	12.00,
	"新的一个夏天又要来了，和长夏一起到来的是梅子黄时雨、榴花红欲燃；是空调、啤酒、甜西瓜；也是诗句里一个个应季而短暂的美食。走进竹篁里的烟火江南。与春日饯别，拥抱夏天",
	"https://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190423/pCzMftTXJG.jpg?x-oss-process=image/crop,x_341,y_553,w_1804,h_2256"
),
(
	NULL,
	"春之蜜酿",
	"日期：2019年04月刊",
	"刊数：NO.200",
	12.00,
	"万物生长，大好春光，蜜蜂在盛放的繁花，中飞舞穿梭，在蜂巢中酿制成凝脂甘露般的甜蜜，春天的万般滋味，便在一口蜜酿之间。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190329/FM2RRZawP7.jpg?x-oss-process=image/crop,x_61,y_52,w_2149,h_2686"
),
(
	NULL,
	"春饮下午茶",
	"2019年03月刊",
	"NO.199",
	12.00,
	"春分时节，选一种你爱的茶，用一种你爱的方式，细品慢饮，在盎然诗意与勃勃生机中，享受茶与春天",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190228/cFhSPpJEXJ.jpg?x-oss-process=image/crop,x_38,y_57,w_2540,h_3176"
),
(
	NULL,
	"今天有点甜",
	"2019年02月刊",
	"NO.198",
	12.00,
	"炒糖是烹饪中常见的技法，将白糖或者是敲碎后的冰糖放在锅中，根据菜品需要，加入适量的清水或油进行炒制， 通过控制温度，把白糖炒到不同的状态。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20190124/zYeKz7dpjm.jpg?x-oss-process=image/crop,x_46,y_76,w_2533,h_3168"
),
(
	NULL,
	"揾食顺德",
	"2019年01月刊",
	"NO.197",
	12.00,
	"『食在广州，厨出凤城』，这里全民乐厨、全民皆厨，在美食江湖中独树一帜。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20181227/T57rcGCnQn.jpg?x-oss-process=image/crop,x_1,y_14,w_734,h_918"
),
(
	NULL,
	"White Christmas",
	"2018年12月刊",
	"NO.196",
	12.00,
	"光从指间流走，雪花随铃声飘落。这个圣诞节，给你一片缀满雪绒的白光从指间流走，雪花随铃声飘落。这个圣诞节，给你一片缀满雪绒的白色世界。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20181129/HZcfhrJA6e.jpg?x-oss-process=image/crop,x_0,y_15,w_735,h_919"
),
(
	NULL,
	"暖冬热可可",
	"2018年11月刊",
	"NO.195",
	12.00,
	"寒风凛冽，手捧一杯香气萦绕的热可可，便是冬天里的快乐。寒风和冷意融化在热可可的温度中，甜蜜正浓，温热恰好。",
	"http://app-file.beitaichufang.com/img/FB9141B4EFB6DDEAAD336320B9ADB552/20181029/8h7krFkxiQ.jpg?x-oss-process=image/crop,x_42,y_0,w_2160,h_2701"
);
# 创建轮播图表
CREATE  TABLE kitchen_carousel(
    cId INT PRIMARY KEY AUTO_INCREMENT,
    cName VARCHAR(10),
    cTitle VARCHAR(100),
    cSubTitle VARCHAR(1000),
		cImg VARCHAR(100)
);
INSERT INTO kitchen_carousel VALUES
(
  NULL,
  "私家厨房",
  "食幸福，享生活",
  "了解 “黑椒牛肉卷” 做法",
  "https://app-file.beitaichufang.com/img/H5/web/banner/banner17.jpg"
),
(
  NULL,
  "私家厨房",
  "食幸福，享生活",
  "了解 “泰式粉丝虾沙拉” 的做法",
  "https://app-file.beitaichufang.com/img/H5/web/banner/banner16.jpg"
),
(
  NULL,
  "私家厨房",
  "食幸福，享生活",
  "了解 “糖醋排骨” 的做法",
  "https://app-file.beitaichufang.com/img/H5/web/banner/banner19.jpg"
),
(
  NULL,
  "私家厨房",
  "食幸福，享生活",
  "了解 “蒜汁儿凉面” 的做法",
  "https://app-file.beitaichufang.com/img/H5/web/banner/banner18.jpg"
);
#注册验证码表
CREATE TABLE kitchen_reg(
  rId INT PRIMARY KEY AUTO_INCREMENT,
  isCake INT,#0:false 1:true
  cakeImg VARCHAR(100)
);
INSERT INTO kitchen_reg VALUES
(null,1,"http://qn.xqgrwz.cn/cake1.png"),
(null,1,"http://qn.xqgrwz.cn/cake2.png"),
(null,1,"http://qn.xqgrwz.cn/cake3.png"),
(null,1,"http://qn.xqgrwz.cn/cake4.png"),
(null,1,"http://qn.xqgrwz.cn/cake5.png"),
(null,1,"http://qn.xqgrwz.cn/cake6.png"),
(null,1,"http://qn.xqgrwz.cn/cake7.png"),
(null,1,"http://qn.xqgrwz.cn/cake8.png"),
(null,1,"http://qn.xqgrwz.cn/cake9.png"),
(null,1,"http://qn.xqgrwz.cn/cake10.png"),
(null,0,"http://qn.xqgrwz.cn/other1.png"),
(null,0,"http://qn.xqgrwz.cn/other2.png"),
(null,0,"http://qn.xqgrwz.cn/other3.png"),
(null,0,"http://qn.xqgrwz.cn/other4.png"),
(null,0,"http://qn.xqgrwz.cn/other5.png"),
(null,0,"http://qn.xqgrwz.cn/other6.png"),
(null,0,"http://qn.xqgrwz.cn/other7.png"),
(null,0,"http://qn.xqgrwz.cn/other8.png"),
(null,0,"http://qn.xqgrwz.cn/other9.png"),
(null,0,"http://qn.xqgrwz.cn/other10.png");