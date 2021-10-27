/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : shoppingbook

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 20/10/2021 08:02:59
*/
create database  shoppingbook;
user shoppingbook;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_table
-- ----------------------------
DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_table
-- ----------------------------
INSERT INTO `admin_table` VALUES ('1234', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for book_table
-- ----------------------------
DROP TABLE IF EXISTS `book_table`;
CREATE TABLE `book_table`  (
  `book_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `book_isbn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_type_id` int(0) NULL DEFAULT NULL,
  `publishing_id` int(0) NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `discount` float NULL DEFAULT NULL,
  `book_publish_time` datetime(0) NULL DEFAULT NULL,
  `book_num` int(0) NULL DEFAULT NULL,
  `book_sale_num` int(0) NULL DEFAULT NULL,
  `book_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_information` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE,
  UNIQUE INDEX `book_ISBN`(`book_isbn`) USING BTREE,
  INDEX `bookType_ID`(`book_type_id`) USING BTREE,
  INDEX `publishing_ID`(`publishing_id`) USING BTREE,
  CONSTRAINT `book_table_ibfk_1` FOREIGN KEY (`book_type_id`) REFERENCES `booktype_table` (`book_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_table_ibfk_2` FOREIGN KEY (`publishing_id`) REFERENCES `publishing_table` (`publishing_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_table
-- ----------------------------
INSERT INTO `book_table` VALUES (1, '9787568297530', '中国植物，很高兴认识你！', '米莱童书 著/绘', 111120, 410243, 200, 100, '2019-09-23 00:00:00', 100, 627, '/bookImages/29296436-1_l_4.jpg', '《中国植物，很高兴认识你！》是一部兼具人文、科学与审美的儿童植物科普启蒙绘本，分为春、夏、秋、冬四册，引领小朋友跟随四季变迁，漫步和沉浸在温暖的故事、朴素的情感、亲切的语言和雅致的绘图艺术中，启发灵性，经历一场自然教育的洗礼。认识中国植物，传承中国精神。\r\n\r\n本书通过40封小朋友与植物学家的温情通信、40篇精美手绘自然笔记、40幅纯美细腻的植物科学画，以及4大经典植物科学专题，向孩子们介绍40种特色鲜明的中国本土植物，解读中国植物的魅力和品格。\r\n\r\n打开这本书，就是打开了自然的礼物。欢迎来到郁郁葱葱、平易近人的植物世界， 做大自然的孩子！\r\n\r\n植物承载了物种进化的智慧，也见证、参与了人类文明的进程。植物不仅在大自然生态系统中占有重要地位，是物种进化的一个重要族群，更是我们人类的好朋友。无处不在的植物身影让我们习以为常，甚至注意不到它们存在的意义。这本书将唤起小朋友对植物的关注和对自然的感知，经历一场自然教育的洗礼。\r\n\r\n ', '《中国植物，很高兴认识你！》是一部兼具人文、科学与审美的儿童植物科普启蒙绘本，分为春、夏、秋、冬四册，引领小朋友跟随四季变迁，漫步和沉浸在温暖的故事、朴素的情感、亲切的语言和雅致的绘图艺术中，启发灵性，经历一场自然教育的洗礼。认识中国植物，传承中国精神。\r\n\r\n本书通过40封小朋友与植物学家的温情通信、40篇精美手绘自然笔记、40幅纯美细腻的植物科学画，以及4大经典植物科学专题，向孩子们介绍40种特色鲜明的中国本土植物，解读中国植物的魅力和品格。\r\n\r\n打开这本书，就是打开了自然的礼物。欢迎来到郁郁葱葱、平易近人的植物世界， 做大自然的孩子！\r\n\r\n植物承载了物种进化的智慧，也见证、参与了人类文明的进程。植物不仅在大自然生态系统中占有重要地位，是物种进化的一个重要族群，更是我们人类的好朋友。无处不在的植物身影让我们习以为常，甚至注意不到它们存在的意义。这本书将唤起小朋友对植物的关注和对自然的感知，经历一场自然教育的洗礼。\r\n\r\n ');
INSERT INTO `book_table` VALUES (2, '9787533253479', '铁丝网上的小花', '(意大利)克里斯托夫·格莱兹//罗伯特·英诺森提', 111120, 410236, 99, 79.2, '2018-09-23 00:00:00', 100, 632, '/bookImages/1476143660-1_b_1.jpg', '世界插画大师英诺森提作品 获1985年美国图书馆协会图书奖 童书绘本儿童幼儿小学生文学读物书籍', '世界插画大师英诺森提作品 获1985年美国图书馆协会图书奖 童书绘本儿童幼儿小学生文学读物书籍');
INSERT INTO `book_table` VALUES (3, '9787543470774', '天空在脚下', '(美)麦卡利著，(美)麦卡利绘', 111120, 410242, 108, 86.4, '2019-11-23 00:00:00', 100, 565, '/bookImages/644625855-1_b_1.jpg', '人人都有梦想，与年龄、性别、身世背景没有关系。人人都有难言的隐痛在心里，或大或小，有些可能会改变人的看法甚至一生。敞开怀抱关心身边的人，亦或是勇敢面对自己的内心，超越自我。平静的生活中的小波澜，是我们自己送给自己的礼物。 ', '在中国的文学艺术中，修辞占据了很大的比重。比喻，就是在各种文学形式中都十分常见的修辞方法。而比喻中又尤以借喻最为含蓄委婉，回味悠长。我国著名的文学大家朱自清先生那篇优美的《荷塘月色》中，就有一段脍炙人口的借喻描述：“……微风过处，送来缕缕清香，仿佛远处高楼上渺茫的歌声似的。……塘中的月色并不均匀，但光与影有着和谐的旋律，如梵婀玲上奏着的名曲……”以声音比拟味道，以曲调比喻光影，何其巧妙、形象，达到了不可言传的神妙境界。\r\n　　通过体会这段精妙的借喻描述，我们来体会一下《天空在脚下》的图画欣赏。平心而论，这本书的绘画风格比较传统：娴熟的技巧，细致的描绘，电影蒙太奇般的场景运转在优秀图画书的创作中屡见不鲜；故事内容所传达的幸福、梦想、成功等励志内容，在童书故事的创作中也不算是另辟蹊径。那么这本获得了美国图画书最高奖项——凯迪克金奖的图画书，我们该怎样去欣赏它的独到之处呢？\r\n　　让我们从书的封面看起：画面的近景主体是橘红色头发的米瑞，身穿天蓝色连衣裙走在钢索之上。她双臂张开，一只脚抬起成为行进中的姿势，头发、发带、衣领和裙摆高高地随风扬起，动感十足。她的脚下是以优雅清新的水彩绘制的背景，背景中屋顶层层叠叠由近及远，与无尽的天空在画面的远处融和，画面的右上角是在背景的映衬下显得分外醒目的标题，恢宏的气势让我们的脑海中仿佛奏响了高亢、悠远的主题曲。\r\n在中国的文学艺术中，修辞占据了很大的比重。比喻，就是在各种文学形式中都十分常见的修辞方法。而比喻中又尤以借喻最为含蓄委婉，回味悠长。我国著名的文学大家朱自清先生那篇优美的《荷塘月色》中，就有一段脍炙人口的借喻描述：“……微风过处，送来缕缕清香，仿佛远处高楼上渺茫的歌声似的。……塘中的月色并不均匀，但光与影有着和谐的旋律，如梵婀玲上奏着的名曲……”以声音比拟味道，以曲调比喻光影，何其巧妙、形象，达到了不可言传的神妙境界。\r\n　　通过体会这段精妙的借喻描述，我们来体会一下《天空在脚下》的图画欣赏。平心而论，这本书的绘画风格比较传统：娴熟的技巧，细致的描绘，电影蒙太奇般的场景运转在优秀图画书的创作中屡见不鲜；故事内容所传达的幸福、梦想、成功等励志内容，在童书故事的创作中也不算是另辟蹊径。那么这本获得了美国图画书最高奖项——凯迪克金奖的图画书，我们该怎样去欣赏它的独到之处呢？\r\n　　让我们从书的封面看起：画面的近景主体是橘红色头发的米瑞，身穿天蓝色连衣裙走在钢索之上。她双臂张开，一只脚抬起成为行进中的姿势，头发、发带、衣领和裙摆高高地随风扬起，动感十足。她的脚下是以优雅清新的水彩绘制的背景，背景中屋顶层层叠叠由近及远，与无尽的天空在画面的远处融和，画面的右上角是在背景的映衬下显得分外醒目的标题，恢宏的气势让我们的脑海中仿佛奏响了高亢、悠远的主题曲。');
INSERT INTO `book_table` VALUES (4, '9787302287568', '总有一天会长大', '[挪]托摩脱·蒿根 裴胜利 译', 111120, 410238, 54, 43.2, '2018-09-23 00:00:00', 100, 533, '/bookImages/25216473-2_u_11.jpg', '国内著名儿童文学作家、专家任溶溶、梅子涵、彭懿等联袂推荐 ', '本书是安徒生奖得主的经典作品。本书的主人公约根是个瘦小的男孩，他很敏感，十分胆小。夏天来了，他却不肯换下冬衣，生怕别人嘲笑他的胳膊、腿太细；他不喜欢手枪、汽车，却喜欢洋娃娃；他像女孩一样，却和一个假小子玛利亚*要好；他长得很慢，*怕别人品头论足，自己心里也很着急……后来在好朋友玛利亚的鼓励下，他们一起登上象征心里恐惧的大岩石，使他终于克服了内心的胆怯，也深信自己总有一天会长大。');
INSERT INTO `book_table` VALUES (5, '9787553667331', '秘密花园（英文版）', '〔美〕弗朗西丝·霍奇森·伯内特', 111120, 410243, 54, 43.2, '2011-02-11 00:00:00', 100, 579, '/bookImages/25215611-1_b_9.jpg', 'BBC评选的“100部英国人喜欢的文学作品”之一，世界经典儿童小说', ' “咱俩差不多，”园丁老头本•韦瑟斯达夫对玛丽说，“长得丑，脾气也不好。”\r\n\r\n可怜的小女孩玛丽，谁都不要她，都不喜欢她。父母去世后，她就被人从印度送回了英国的约克郡，住在她姨夫的家里。那是一幢旧房子，很大，差不多有上百个房间，可大部分都关得严严实实，还上了锁。玛丽住在那儿，情绪很坏， 她感到厌烦、孤独，只有园丁老头偶尔跟她说说话。\r\n\r\n来了一只知更鸟，玛丽望着它飞过了围墙，飞进了一个园子，她听说这个花园已经荒废了十年，门的钥匙也不知哪儿去了。玛丽认识了两个小伙伴：农家小子迪康，他的脸红扑扑的，说话又快又溜；夜里总有奇怪的哭声，那是小少爷科林，他从生下来就病病殃殃，三天两头看医生……玛丽和伙伴们都充满了好奇，他们想知道园子里有什么，竟偶然找到了钥匙，打开了花园的门。此后他们一直辛勤劳动着，沉睡了十年的秘密花园苏醒了，这几个孩子瞒着所有大人，在花园里悄悄酝酿了一个秘密，等待着科林的父亲回家……');
INSERT INTO `book_table` VALUES (6, '9787538768169', '海底两万里', '（法）儒勒凡尔纳', 111120, 410244, 54, 43.2, '2021-01-01 00:00:00', 100, 570, '/bookImages/22854396-1_b_28.jpg', '时常听家长说起孩子不愿意读名著。想过为什么吗？编者认为一是没有选到好书，翻译、编译差，字体小，错字多，无插图、枯燥乏味...... 二是孩子读不懂，没有人帮他们扫除阅读上的字词障碍、理解障碍，并和孩子互动讨论，帮孩子解答疑难。\r\n本套丛书是专为中小学生编著，着重关注“素质成长”的励志版名著。所有的编排都是从阅读兴趣入手，就是为了让孩子愿意看，并能够很快地读进去。', '《海底两万里》是法国科幻小说家儒勒?凡尔纳的作品。他出生在一个律师家庭，很小的时候就产生了强烈的探索欲望和丰富的想象力，又加上博览群书有了一定的知识积淀，后来一发不可收拾，写了一系列的科幻冒险小说，本书就是他著名三部曲的第二部。\r\n全书故事是由一只“海怪”引起的，阿龙纳斯教授和他的同伴们*终落入了这个“海怪”—— “*”号潜水艇的手里，并开始了海底十个月的旅程。在海底所见到的景象可以说无奇不有，穿越海底森林、脚踏海底煤矿、欣赏价值千万的大珍珠、和大鲨鱼搏斗、追捕海牛、与章鱼群进行血战、遭遇冰山封路等许多罕见的场景,令人惊心动魄。阿龙纳斯教授是自然科学家，博古通今，因此这次海底旅行不仅使他历经险境，还让他饱览了各种新奇的海洋动植物，这为他的科学研究提供了机会和丰富的资源：海洋到底有多深呢，海底森林是怎样的，珊瑚王国是怎样形成的，消失的王国有哪些……\r\n整个故事的构思很巧妙，充满了奇特的幻想，情节惊险离奇，画面多姿多彩，读来既使人赏心悦目，也令人动魄惊心，是值得每一位读者一看的科幻小说。');
INSERT INTO `book_table` VALUES (7, '9787544288590', '窗边的小豆豆(2018版)', '（日）黑柳彻子， 爱心树童书 出品', 111120, 410245, 54, 43.2, '2018-06-01 00:00:00', 100, 530, '/bookImages/25272786-1_l_19.jpg', '影响20世纪的儿童文学杰作，入选九年制义务教育小学语文课本\r\n\r\n中文简体版已突破1100万册，连续10年名列开卷全国畅销书排行榜，2017年位居少儿类榜单首位', '《窗边的小豆豆》是一部影响20世纪的儿童文学杰作，讲述了作者黑柳彻子上小学时一段真实的故事。\r\n\r\n小豆豆因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，一般人眼里“怪怪”的小豆豆逐渐成了一个大家都能接受的孩子，并奠定了她一生的基础。\r\n\r\n世界上可怕的事情，莫过于有眼睛却发现不了美，有耳朵却不会欣赏音乐，有心灵却无法理解什么是真。不会感动，也不会充满激情。《窗边的小豆豆》不仅带给千万读者无数的笑声和感动，而且为现代教育的发展注入了新的活力，成为全世界极有影响的作品之一。');
INSERT INTO `book_table` VALUES (8, '9787532767373', '夏洛的网(2020版）', '（美）怀特　著，任溶溶　译', 111120, 410242, 39, 31.2, '2020-09-23 00:00:00', 100, 521, '/bookImages/28533668-1_l_7.jpg', '三年级阅读经典书目，“美国伟大的十部儿童文学名著”之首，全球行销，关于爱、友谊、生死，一本读到流泪的“真正的书”儿童文学', '在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了*真挚的友谊。然而，一个*丑陋的消息打破了谷仓的平静：威尔伯未来的命运竟然是成为熏肉火腿。作为一只猪，悲痛绝望的威尔伯似乎只能接受任人宰割的命运，然而，看似渺小的夏洛却说：“我救你。”于是，夏洛用自己的丝在猪栏上织出了被人类视为奇迹的网络文字，并彻底逆转了威尔伯的命运，终于让它在集市的大赛中赢得了特别奖项和一个安享天年的未来。可这时，蜘蛛夏洛的命运却走到了尽头……《夏洛的网》的作者E·B·怀特用他幽默的文笔，深入浅出地讲了这个很有哲理意义的故事，关于爱，关于友情，关于生死……');
INSERT INTO `book_table` VALUES (9, '9787100196307', '小飞侠彼得·潘', '詹姆斯·巴里', 111120, 410236, 99, 79.2, '2021-09-23 00:00:00', 100, 521, '/bookImages/29223975-1_l_6.jpg', '《小飞侠彼得·潘》讲述了一个永远都不愿长大、也不会长大的小男孩儿——彼得·潘的故事。他带着一个小女孩儿飞到他和一群男孩子居住的小岛上，他们一起生活，一起冒险。除了观赏人鱼、做各种游戏之外，还与海盗斗智斗勇。故事充满想象，经久不衰。', '一本讲述一个永远长不大的小男孩在一个小岛上的冒险故事的儿童文学作品。《小飞侠彼得·潘》讲述了一个永远都不愿长大、也不会长大的小男孩儿——彼得·潘的故事。他带着一个小女孩儿飞到他和一群男孩子居住的小岛上，他们一起生活，一起冒险。除了观赏人鱼、做各种游戏之外，还与海盗斗智斗勇。故事充满想象，经久不衰。');
INSERT INTO `book_table` VALUES (10, '9787538754865', '昆虫记', '法布尔', 111120, 410242, 108, 86.4, '2019-09-23 00:00:00', 100, 521, '/bookImages/25126137-1_b_9.jpg', ' 何为“蝶”，何为“蛾”？同是鳞翅目，如何区分它们？→我们不仅注释文中主要叙述的内容，还注释这类拓展和深化的内容，让你学一知三，全面深入拓展知识面。', '《昆虫记》是一部概括昆虫的种类、特征、习性和婚习等的昆虫学巨著，同时也是富含知识、趣味、美感和哲理的文学宝藏。\r\n\r\n在这里，你将见识到一个奇妙而神秘的昆虫世界。你将看到圣甲虫那极具科学性的育婴室，争相照料幼虫的蜣螂父母，小身材却有大智慧的红蚂蚁令人惊叹的探路巡回技能，你还会目睹大块头蝗虫惊心动魄的蜕皮过程……\r\n\r\n昆虫的世界总是给人类带来意想不到的惊喜。你知道有些昆虫一旦发育为成虫，就不吃不喝，只待交配完成便欣然结束自己的生命吗？你知道不是所有蜘蛛都结网，结网的蜘蛛在网破后也不会反复织补破网吗？你知道只有雄性蟋蟀才会唱歌吗？你知道萤火虫是怎样发出漂亮光芒的吗？\r\n\r\n除此之外，你还会了解到小小的昆虫也会“装死”和“自杀”，也会被漂亮的异性迷得神魂颠倒。');
INSERT INTO `book_table` VALUES (11, '9787533041755', '昆虫记', '法布尔', 111120, 410248, 54, 52.5, '2019-09-23 00:00:00', 100, 521, '/bookImages/23460606-1_b_21.jpg', '一线教师全程阅读指导,名师点评,精美手绘,妙笔生花,精选*适合孩子们阅读的故事书,在这个成长的季节里,让我们阅读这些永恒的经典,让书籍成为孩子的领跑者..阅读这些经典作品,使童年的阅读成为一生永远的快乐', '《昆虫记》是法国杰出的昆虫学家、文学家法布尔耗费毕生心血写成的一部昆虫学的传世佳作。全书详细、深刻地展示了蜘蛛、蜜蜂、螳螂、蝎子、蝉、甲虫、蟋蟀等多昆虫的生活情景。在对昆虫的本能、习性、劳动、婚恋、繁衍、死亡的描述中，无不渗透着人文关怀，并以生物性反观人性。全书充满了对生命的关爱之情和对自然万物的赞美。\r\n该作品是一部概括昆虫的种类、特征、习性和婚习的昆虫学巨著，同时也是一部富含知识、趣味美感和哲理的文学宝藏。这部著作的法文书名直译为《昆虫学的回忆》，副标题为“对昆虫的本能及其习俗的研究”。它的文字清新、自然有趣，语调轻松幽默诙谐，基于事实的故事情节曲折奇异。作者将昆虫的多彩生活与自己的人生感悟融为一体，用人性去看待昆虫。字里行间都透露出作者对生命尊敬与热爱。');
INSERT INTO `book_table` VALUES (12, '9717544716371', '数据之美', '[美]邱南森（Nathan Yau）　著', 111117, 410247, 54, 43.2, '2014-02-11 00:00:00', 100, 503, '/bookImages/23423357-1_b_2.jpg', '《经济学人》年度推荐三大可视化图书之一 《大数据时代》作者、《经济学人》大数据主编肯尼思库克耶倾情推荐，称赞其为“关于数据呈现的思考和方式的颠覆之作” 亚马逊数据和信息可视化TOP3图书', '这是一本教我们如何制作完美可视化图表，挖掘大数据背后意义的书。作者认为，可视化是一种媒介，向我们揭示了数据背后的故事。他循序渐进、深入浅出地道出了数据可视化的步骤和思想。本书让我们知道了如何理解数据可视化，如何探索数据的模式和寻找数据间的关联，如何选择适合自己的数据和目的的可视化方式，有哪些我们可以利用的可视化工具以及这些工具各有怎样的利弊。 　　作者给我们提供了丰富的可视化信息以及查看、探索数据的多元视角，丰富了我们对于数据、对于可视化的认知。对那些对设计和分析过程感兴趣的人，本书无疑就是一本书。');
INSERT INTO `book_table` VALUES (13, '9787115282828', '数学之美', '吴军', 111118, 410246, 54, 43.2, '2013-01-01 00:00:00', 100, 1519, '/bookImages/23594870-1_u_1.jpg', '《数学之美》荣获第八届文津图书奖，目前累计已卖出12万册。\r\n　　《数学之美》入选广电总局“2014年向青少年推荐百种优秀图书书目”\r\n　　《浪潮之巅》作者、谷歌公司PrincipalEngineer吴军博士力作《数学之美》由创新工场董事长兼首席执行官李开复倾力作序推荐。《数学之美》的创作源自点击超百万的谷歌黑板报专题博客，吴军应出版要求几乎改写和重构了所有的文章，既照顾了普通读者的兴趣，又兼顾了专业读者对深度的要求。', '在《数学之美》里，吴军集中阐述了他对数学和信息处理这些专业学科的理解，尤其是他在语音识别、自然语言处理和信息搜索领域多年来的积累。从数字和信息的由来，到搜索引擎对信息进行处理背后的数学原理，到与搜索相关的众多领域后面的奇妙的数学应用，吴军都娓娓道来。他把数学后面的本质思维写得透彻、生动。不得不说，他的文字，引人入胜，也确实让我们体会到数学的美。在他的笔下，数学不是我们一般联想到的枯燥深奥的符号，而是实实在在源于生活的有趣的现象和延伸。数学，其实无处不在，而且有一种让人惊叹的韵律和美！');
INSERT INTO `book_table` VALUES (14, '9787111668985', ' MySQL技术大全：开发 优化与运维实战', '冰河', 111118, 410236, 54, 43.2, '2012-06-01 00:00:00', 100, 508, '/bookImages/29162795-1_b_11.jpg', '大型互联网公司资深架构师全面、系统、深入地分享MySQL技术\r\n涵盖MySQL基础、开发、优化、运维与架构的方方面面知识\r\n阿里巴巴、蚂蚁金服及Dromara等知名公司与机构的5位技术专家力荐\r\n视频教学：提供近15小时（共84段）配套教学视频，帮助读者提高学习效率。\r\n内容全面：涵盖MySQL从基础、开发、优化，到运维和架构等方方面面的知识点。\r\n讲解深入：从MySQL数据库的基础操作，到优化、运维与架构，层层深入。\r\n实用性强：结合大量经典示例和实战案例展开讲解，带领读者动手实践。', '《MySQL技术大全：开发、优化与运维实战（视频教学版）》结合大量示例和实战案例，全面、系统、深入地介绍了MySQL数据库技术，重点阐述了MySQL开发、优化和运维过程中的各个技术点。《MySQL技术大全：开发、优化与运维实战（视频教学版）》对学习MySQL技术有较高的参考价值，尤其是环境搭建、优化、维护和架构等内容可直接用于实际工作中。\r\n《MySQL技术大全：开发、优化与运维实战（视频教学版）》共33章，分为6篇。第1篇“MySQL基础”，介绍数据库的定义、发展，以及数据库技术和MySQL数据库的三大范式与存储引擎。第2篇“环境搭建”，介绍VMware虚拟机以及Windows、Mac OS X和CentOS操作系统的安装，并介绍如何在三大操作系统上安装和配置MySQL。第3篇“MySQL开发”，介绍MySQL中的数据库操作、数据表操作、数据类型、运算符、函数、数据变更、数据查询、索引、视图、存储过程、触发器、分区、公用表表达式和生成列等。第4篇“MySQL优化”，介绍MySQL中的查询优化、索引优化、SQL语句优化、数据库优化、服务器优化、应用程序优化及其他优化技术。第5篇“MySQL运维”，介绍MySQL中各种命令行工具的使用，以及各种日志的开启、查看、删除与关闭，并介绍数据的备份与恢复及MySQL中的账户管理。第6篇“MySQL架构”，介绍MySQL中的复制、读写分离环境搭建，以及如何实现MySQL的高可用架构等。');
INSERT INTO `book_table` VALUES (15, '9787121364693', '零基础轻松学Python', '小码哥', 111111, 410236, 199, 119.2, '2020-11-23 00:00:00', 100, 520, '/bookImages/27876895-1_b_4.jpg', '一本有趣、有用、好学的Python 编程书！', '一本有趣、有用、好学的Python 编程书！本书以通俗易懂的语言、好玩有趣的案例让读者轻轻松松、循序渐进地从零开始掌握Python 3 编程。本书内容也是笔者带领的“Python 实战圈”里数千名“圈友”的学习结晶。圈子里的小伙伴都是零基础开始学习Python 编程，甚至之前没有接触过编程的，比如初中生、跨行业学习者等。本书提供了一套完整的、系统的Python 基础课，比如列表、if、函数等内容，每一部分内容除了有生动有趣的项目实战，还有实际工作中需要注意的问题。既能让零基础的读者更好地学习，也能让有一定基础的读者继续提升自身水平。本书适合零基础学习Python 编程的读者，想要入门人工智能领域的读者，立志进入数据分析编程领域的读者，计划加入Python 网页工程师或游戏工程师的读者，Python 爱好者等。');
INSERT INTO `book_table` VALUES (16, '9787115428028', 'Python编程 从入门到实践', '埃里克·马瑟斯', 111111, 410236, 99, 79.2, '2001-09-23 00:00:00', 100, 420, '/bookImages/29280602-1_b_6.jpg', '零基础学Python编程教程书籍，数据分析、网络爬虫、深度学习技能，畅销经典蟒蛇书升级版，附赠源代码、练习答案、学习视频、学习速查地图读者交流群等资源。', '本书是针对所有层次Python读者而作的Python入门书。全书分两部分：部分介绍用Python编程所必须了解的基本概念，包括强大的Python库和工具，以及列表、字典、if语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的2D游戏、利用数据生成交互式的信息图以及创建和定制简单的Web应用，并帮助读者解决常见编程问题和困惑。第2版进行了全面修订，简化了Python安装流程，新增了f字符串、get()方法等内容，并且在项目中使用了Plotly库以及新版本的Django和Bootstrap，等等。');
INSERT INTO `book_table` VALUES (17, '9787115478818', '笨办法学Python 3', '泽德 A. 肖（Zed A. Shaw）', 111111, 410242, 108, 86.4, '2001-09-23 00:00:00', 100, 430, '/bookImages/25286312-1_b_6.jpg', '\r\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，\r\n对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。\r\n本书共22章，包括操作符、控制执行流程、访问权限控', '\r\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，\r\n对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。\r\n本书共22章，包括操作符、控制执行流程、访问权限控');
INSERT INTO `book_table` VALUES (18, '9716040195837', 'MySQL从入门到精通（微视频精编版）', '王珊，萨师煊', 111111, 410236, 39, 31.2, '2013-09-23 00:00:00', 100, 441, '/bookImages/28996072-1_b_7.jpg', '“软件开发微视频讲堂”丛书是清华社重点计算机系列品牌之一，是明日科技着力打造的技术入门 实战精通类软件开发图书。\r\n《MySQL从入门到精通（微视频精编版）》分为上下两册：核心技术分册和项目实战分册。内容浅显易懂，实例丰富，详细介绍了从基础入门到MySQL数据库高手需要掌握的知识。', '《MySQL从入门到精通（微视频精编版）》内容浅显易懂，实例丰富，详细介绍了从基础入门到MySQL数据库高手需要掌握的知识。全书分为上下两册：核心技术分册和项目实战分册。核心技术分册共2篇17章，包括数据库基础、初识MySQL、phpMyAdmin 图形化管理工具、MySQL数据库管理、MySQL表结构管理、存储引擎及数据类型、表记录的更新操作、表记录的检索、视图、索引、触发器、存储过程与存储函数、备份与恢复、MySQL性能优化、事务与锁机制、权限管理及安全控制，以及PHP管理MySQL数据库等内容。项目实战分册共5章，运用软件工程的设计思想，介绍了明日科技企业网站、在线学习笔记、51商城、物流配货系统和图书馆管理系统共5个完整企业项目的真实开发流程。');
INSERT INTO `book_table` VALUES (19, '9787111422068', 'MySQL技术内幕：InnoDB存储引擎（第2版）', '姜承尧', 111111, 410236, 79, 49.2, '2013-09-23 00:00:00', 100, 419, '/bookImages/23255589-1_b_1.jpg', '本书由国内资深MySQL专家亲自执笔，国内外多位数据库专家联袂推荐。作为国内一本关于InnoDB的专著，本书的第1版广受好评，第2版不仅针对*的MySQL 5.6对相关内容进行了全面的补充，还根据广大读者的反馈意见对第1版中存在的不足进行了完善，全书大约重写了50％的内容。', '本书由国内资深MySQL专家亲自执笔，国内外多位数据库专家联袂推荐。作为国内一本关于InnoDB的专著，本书的第1版广受好评，第2版不仅针对*的MySQL 5.6对相关内容进行了全面的补充，还根据广大读者的反馈意见对第1版中存在的不足进行了完善，全书大约重写了50％的内容。本书从源代码的角度深度解析了InnoDB的体系结构、实现原理、工作机制，并给出了大量*实践，能帮助你系统而深入地掌握InnoDB，更重要的是，它能为你设计管理高性能、高可用的数据库系统提供绝佳的指导。\r\n全书一共10章，首先宏观地介绍了MySQL的体系结构和各种常见的存储引擎以及它们之间的比较；接着以InnoDB的内部实现为切入点，逐一详细讲解了InnoDB存储引擎内部的各个功能模块的实现原理，包括InnoDB存储引擎的体系结构、内存中的数据结构、基于InnoDB存储引擎的表和页的物理存储、索引与算法、文件、锁、事务、备份与恢复，以及InnoDB的性能调优等重要的知识；后对InnoDB存储引擎源代码的编译和调试做了介绍，对大家阅读和理解InnoDB的源代码有重要的指导意义。\r\n本书适合所有希望构建和管理高性能、高可用性的MySQL数据库系统的开发者和DBA阅读。');
INSERT INTO `book_table` VALUES (20, '9787544727860', '宇宙简史', '(英)斯蒂芬·霍金 著， 赵君亮 译', 111111, 410242, 28, 21, '2011-09-23 00:00:00', 100, 210, '/bookImages/22787911-1_b_3.jpg', '《宇宙简史：起源与归宿》作为霍金揭秘宇宙奇史的剑桥演讲合集，明晰而机智地解释了宇宙物理的复杂现象，具有很强的科普性和可读性。由中科院著名天文学家、上海天文台前任台长赵君亮翻译并导读。', '\r\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，\r\n对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。\r\n本书共22章，包括操作符、控制执行流程、访问权限控');
INSERT INTO `book_table` VALUES (21, '9787302509332', 'Python从小白到大牛', '关东升', 111111, 410238, 54, 43.2, '2001-09-23 00:00:00', 100, 300, '/bookImages/610379848-1_b_1.jpg', '本书是一部系统论述Python 编程语言、OOP 编程思想以及函数式编程思想的立体化教程（含图书、教学课件、源代码与视频教程）。全书共分为四篇：篇Python 语言基础（ ~ 8 章），第二篇Python 编程进阶（第9 ~17 章），第三篇Python 常用库与框架（8 ~ 22 章），第四篇Python 项目实战（第23 ~ 28 章）。主要内容包括：开篇综述、开发环境搭建、个Python 程序、Python 语法基础、Python 编码规范、数据类型、运算符、控制语句、数据结构（序列、集合和字典）、函数与函数式编程、面向对象编程、异常处理、常用模块、正则表达式、文件操作与管理、数据交换格式、数据库编程、网络编程、wxPython 图形用户界面编程、Python 多线程编程、项目实战1 ：网络爬虫技术——爬取搜狐证券股票数据、项目实战2 ：数据分析技术——贵州茅台股票数据分析、项目实战3 ：数据可视化技术——贵州茅台股票数据可视化、项目实战4 ：计算机视觉技术——网站验证码识别、项目实战5 ：Python Web Flask 框架——PetStore 宠物商店项目、项目实战6：Python 综合技术——QQ 聊天工具开发。\r\n为便于读者高效学习，快速掌握Python 编程方法，本书提供完整的教学课件、完整的源代码与丰富的配套视频教程以及在线答疑服务等内容。\r\n本书适合作为Python 程序设计者的参考用书。', '本书第1版是Python入门经典，累计10多万读者由此步入Python殿堂！为便于读者高效学习，快速掌握Python 编程方法，本书第2版提供完整的教学课件、完整的源代码与丰富的配套视频教程等内容');
INSERT INTO `book_table` VALUES (22, '9787115480347', 'Python 3网络爬虫开发实战', '崔庆才', 111117, 410243, 54, 43.2, '2011-02-11 00:00:00', 100, 340, '/bookImages/25249602-1_b_6.jpg', '案例丰富，注重实战 博客文章过百万的静觅大神力作 全面介绍了数据采集、数据存储、动态网站爬取、App爬取、验证码破解、模拟登录、代理使用、爬虫框架、分布式爬取等知识 涉及的库或工具：urllib、requests、Beautiful Soup、XPath、pyquery、redis-py、PyMongo、PyMySQL、Selenium、Splash、Charles、mitmproxy、mitmdump、Appium、pyspider、Scrapy、Scrapy-Redis、Scrapy-Splash、Docker、Bloom Filter、Gerapy等', '本书介绍了如何利用Python 3开发网络爬虫，书中首先介绍了环境配置和基础知识，然后讨论了urllib、requests、正则表达式、Beautiful Soup、XPath、pyquery、数据存储、Ajax数据爬取等内容，接着通过多个案例介绍了不同场景下如何实现数据爬取，*后介绍了pyspider框架、Scrapy框架和分布式爬虫。 本书适合Python程序员阅读。');
INSERT INTO `book_table` VALUES (23, '9787302507161', 'Python从菜鸟到高手', '李宁', 111118, 410244, 54, 43.2, '2005-01-01 00:00:00', 100, 310, '/bookImages/639450225-1_b_1.jpg', '适读人群 ：适合作为Python程序设计者的参考用书', '从实战角度系统讲解了Python核心知识点以及Python在Web开发、数据分析、网络爬虫、桌面应用等领域的各种开发实践。本书用超过5万行的代码及大量的实战案例完美演绎了Python在各个领域的出色表现，每一个案例都有详细的实现步骤，带领读者由浅入深系统掌握Python语言的核心及Python全栈开发技能。本书共分六篇。');
INSERT INTO `book_table` VALUES (24, '9787115479679', '用Python写网络爬虫 第2版', '凯瑟琳 雅姆尔（Katharine Jarmul）', 111118, 410245, 54, 43.2, '2012-06-01 00:00:00', 100, 280, '/bookImages/25303745-1_b_4.jpg', '\r\n奥巴马被公认为堪与约翰?肯尼迪和马丁?路德金媲美的演讲奇才，他的演讲也被全球众多学习者作为练习口才、学习英语的范本。本书精选了奥巴马30篇最出色的演讲，这些在各种场合发表的演讲涉及医保、教育、政治、经济、外交等诸多方面，但无一不展现了奥巴马精湛的演讲艺术，热情洋溢的语言，雄辩有力的组织结构，在严肃宏大的议题中时时穿插自己的亲身经历，这些都让奥巴马的演讲具有了一种打动人心的力量，气势恢弘、掷地有声，也正是这些演讲为他铺就了通往白宫之路。', '\r\n奥巴马被公认为堪与约翰?肯尼迪和马丁?路德金媲美的演讲奇才，他的演讲也被全球众多学习者作为练习口才、学习英语的范本。本书精选了奥巴马30篇最出色的演讲，这些在各种场合发表的演讲涉及医保、教育、政治、经济、外交等诸多方面，但无一不展现了奥巴马精湛的演讲艺术，热情洋溢的语言，雄辩有力的组织结构，在严肃宏大的议题中时时穿插自己的亲身经历，这些都让奥巴马的演讲具有了一种打动人心的力量，气势恢弘、掷地有声，也正是这些演讲为他铺就了通往白宫之路。');
INSERT INTO `book_table` VALUES (25, '9787040195837', '数据库系统概论', '王珊，萨师煊', 111111, 410242, 39, 31.2, '2001-09-23 00:00:00', 100, 141, '/bookImages/20999652-1_u_2.jpg', '\r\n本书系统全面地阐述数据库系统的基础理论、基本技术和基本方法。\r\n全书分为4篇17章。基础篇包括绪论、关系数据库、关系数据库标准语言SQL、\r\n数据库安全性和数据库完整性，共5章；设计与应用开发篇包括关系数据理论、\r\n数据库设计和数据库编程，共3章；系统篇包括关系查询处理和查询优化、数据库恢复技术、\r\n并发控制和数据库管理系统，共4章；新技术篇包括数据库技术新发展、分布式数据库系统、\r\n对象关系数据库系统、XML数据库和数据仓库与联机分析处理技术，共5章。', '\r\n本书系统全面地阐述数据库系统的基础理论、基本技术和基本方法。\r\n全书分为4篇17章。基础篇包括绪论、关系数据库、关系数据库标准语言SQL、\r\n数据库安全性和数据库完整性，共5章；设计与应用开发篇包括关系数据理论、\r\n数据库设计和数据库编程，共3章；系统篇包括关系查询处理和查询优化、数据库恢复技术、\r\n并发控制和数据库管理系统，共4章；新技术篇包括数据库技术新发展、分布式数据库系统、\r\n对象关系数据库系统、XML数据库和数据仓库与联机分析处理技术，共5章。');
INSERT INTO `book_table` VALUES (26, '9787111375295', '数据库基础教程', '王月海', 111111, 410236, 99, 79.2, '2001-09-23 00:00:00', 100, 199, '/bookImages/22632572-1_u_1.jpg', '\r\n本书是经典的数据库系统教科书《Database SystemConcepts》的最新修订版，全面介绍数据库系统的各种知识，\r\n透彻阐释数据库管理的基本概念。本书内容丰富，不仅讨论了关系数据模型和关系语言、数据库设计过程、关系数据库理论、\r\n数据库应用设计和开发、数据存储结构、数据存取技术、查询优化方法、事务处理系统和并发控制、故障恢复技术、\r\n数据仓库和数据挖掘，而且对性能调整、性能评测标准、数据库应用测试和标准化、空间和地理数据、时间数据、多媒体数据、\r\n移动和个人数据库管理以及事务处理监控器、事务工作流、电子商务、高性', '\r\n本书是经典的数据库系统教科书《Database SystemConcepts》的最新修订版，全面介绍数据库系统的各种知识，\r\n透彻阐释数据库管理的基本概念。本书内容丰富，不仅讨论了关系数据模型和关系语言、数据库设计过程、关系数据库理论、\r\n数据库应用设计和开发、数据存储结构、数据存取技术、查询优化方法、事务处理系统和并发控制、故障恢复技术、\r\n数据仓库和数据挖掘，而且对性能调整、性能评测标准、数据库应用测试和标准化、空间和地理数据、时间数据、多媒体数据、\r\n移动和个人数据库管理以及事务处理监控器、事务工作流、电子商务、高性');
INSERT INTO `book_table` VALUES (27, '9787111213824', 'Java编程思想（第4版）', '[美]埃克尔', 111111, 410242, 108, 86.4, '2001-09-23 00:00:00', 950, 90, '/bookImages/9317290-1_b_5.jpg', '\r\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，\r\n对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。\r\n本书共22章，包括操作符、控制执行流程、访问权限控', '\r\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，\r\n对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。\r\n本书共22章，包括操作符、控制执行流程、访问权限控');
INSERT INTO `book_table` VALUES (28, '9787302287569', 'Java从入门到精通（第3版）', '明日科技', 111112, 410238, 54, 43.2, '2001-09-23 00:00:00', 100, 125, '/bookImages/22862060-1_u_1.jpg', '\r\nu4个品种荣获“全行业优秀畅销品种”\r\nu1个品种荣获2012年清华大学出版社“专业畅销书”一等奖\r\nu绝大多数品种在“全国计算机零售图书排行榜”同品种排行中名列前茅\r\nu截至目前该大系累计销售超过55万册\r\nu该大系已成为近年来清华社计算机专业基础类零售图书最畅销的品牌之一 \r\n“软件开发视频大讲堂”系列作为清华社“视频大讲堂”大系的子系列之一', '\r\nu4个品种荣获“全行业优秀畅销品种”\r\nu1个品种荣获2012年清华大学出版社“专业畅销书”一等奖\r\nu绝大多数品种在“全国计算机零售图书排行榜”同品种排行中名列前茅\r\nu截至目前该大系累计销售超过55万册\r\nu该大系已成为近年来清华社计算机专业基础类零售图书最畅销的品牌之一 \r\n“软件开发视频大讲堂”系列作为清华社“视频大讲堂”大系的子系列之一');
INSERT INTO `book_table` VALUES (29, '9787544716371', '傲慢与偏见', '（英）奥斯丁　著，孙致礼　译', 111117, 410243, 54, 43.2, '2011-02-11 00:00:00', 100, 100, '/bookImages/20303174-1_u_1.jpg', '\r\n简·奥斯汀的《傲慢与偏见》围绕着班纳特太太如何把女儿嫁出去的主题展开故事。其中又以二女儿的婚事为主线。男主人公达西富有、高贵但却十分高高傲；二女儿伊丽莎白年轻、任性且聪明活泼，对达西心存偏见。爱情在两人之间忽隐忽现、步履维艰，但终于打破了这种傲慢与偏见。小说*终在两人幸福美满的婚姻中落下帷幕。\r\n    小说不仅在文字和语言风格上令读者沉迷与陶醉，更以其严谨的结构、饱满的人物形象，深刻的心理描写，以及引人入胜的爱情故事，吸引读者步步深入，逐渐进入小说的美妙世界。', '\r\n简·奥斯汀的《傲慢与偏见》围绕着班纳特太太如何把女儿嫁出去的主题展开故事。其中又以二女儿的婚事为主线。男主人公达西富有、高贵但却十分高高傲；二女儿伊丽莎白年轻、任性且聪明活泼，对达西心存偏见。爱情在两人之间忽隐忽现、步履维艰，但终于打破了这种傲慢与偏见。小说*终在两人幸福美满的婚姻中落下帷幕。\r\n    小说不仅在文字和语言风格上令读者沉迷与陶醉，更以其严谨的结构、饱满的人物形象，深刻的心理描写，以及引人入胜的爱情故事，吸引读者步步深入，逐渐进入小说的美妙世界。');
INSERT INTO `book_table` VALUES (30, '9787104020192', '李嘉诚全传', '陈美华，辛磊著', 111118, 410244, 54, 43.2, '2005-01-01 00:00:00', 900, 79, '/bookImages/8963561-1_a.jpg', '\r\n商业巨子的成功秘诀 华人首富的不息传奇\r\n这是一本全新的，资料*全面、*详实的李嘉城奋斗史。书中详尽地为你讲述了一个传奇人物的精彩故事，系统而深入地分析了李嘉诚被誉为“超人”的原因。并且首次批露李嘉诚鲜为人知的家庭生活中的苦与乐，他的婚姻，他的孩子，他的个人喜好甚至缺点等等。如果说一堂精彩的创业课会使人终生受益，那么一本好书亦将改变无数人的命运。 \r\n一个赤手空拳的青年，构筑了一座财富的王国。这里除了有亿万富豪富甲一方的成功秘诀，还有读者*为关注的一个曾经穷困潦倒，不名一文的青年是如何抓住机会掘得**桶金的。书中传授了成为少年李嘉诚的方法：由22岁开始，每年不断投资，在退休之年，你可以拥有近800万元的资产，如果你有运气选择了一项年回报率达36%的计划，你就可以成为全球第二富有的人。书中甚至详细描述了李嘉诚在几笔重大生意中的具体操作方法，堪称一部创业实战指南', '\r\n商业巨子的成功秘诀 华人首富的不息传奇\r\n这是一本全新的，资料*全面、*详实的李嘉城奋斗史。书中详尽地为你讲述了一个传奇人物的精彩故事，系统而深入地分析了李嘉诚被誉为“超人”的原因。并且首次批露李嘉诚鲜为人知的家庭生活中的苦与乐，他的婚姻，他的孩子，他的个人喜好甚至缺点等等。如果说一堂精彩的创业课会使人终生受益，那么一本好书亦将改变无数人的命运。 \r\n一个赤手空拳的青年，构筑了一座财富的王国。这里除了有亿万富豪富甲一方的成功秘诀，还有读者*为关注的一个曾经穷困潦倒，不名一文的青年是如何抓住机会掘得**桶金的。书中传授了成为少年李嘉诚的方法：由22岁开始，每年不断投资，在退休之年，你可以拥有近800万元的资产，如果你有运气选择了一项年回报率达36%的计划，你就可以成为全球第二富有的人。书中甚至详细描述了李嘉诚在几笔重大生意中的具体操作方法，堪称一部创业实战指南');
INSERT INTO `book_table` VALUES (31, '9787212047590', '一句话改变世界', '(美）巴拉克·奥巴马 著', 111118, 410245, 54, 43.2, '2012-06-01 00:00:00', 1000, 69, '/bookImages/b4.jpg', '\r\n奥巴马被公认为堪与约翰?肯尼迪和马丁?路德金媲美的演讲奇才，他的演讲也被全球众多学习者作为练习口才、学习英语的范本。本书精选了奥巴马30篇最出色的演讲，这些在各种场合发表的演讲涉及医保、教育、政治、经济、外交等诸多方面，但无一不展现了奥巴马精湛的演讲艺术，热情洋溢的语言，雄辩有力的组织结构，在严肃宏大的议题中时时穿插自己的亲身经历，这些都让奥巴马的演讲具有了一种打动人心的力量，气势恢弘、掷地有声，也正是这些演讲为他铺就了通往白宫之路。', '\r\n奥巴马被公认为堪与约翰?肯尼迪和马丁?路德金媲美的演讲奇才，他的演讲也被全球众多学习者作为练习口才、学习英语的范本。本书精选了奥巴马30篇最出色的演讲，这些在各种场合发表的演讲涉及医保、教育、政治、经济、外交等诸多方面，但无一不展现了奥巴马精湛的演讲艺术，热情洋溢的语言，雄辩有力的组织结构，在严肃宏大的议题中时时穿插自己的亲身经历，这些都让奥巴马的演讲具有了一种打动人心的力量，气势恢弘、掷地有声，也正是这些演讲为他铺就了通往白宫之路。');

-- ----------------------------
-- Table structure for bookimg_table
-- ----------------------------
DROP TABLE IF EXISTS `bookimg_table`;
CREATE TABLE `bookimg_table`  (
  `book_img_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `img_addr` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(0) NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `book_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`book_img_id`) USING BTREE,
  INDEX `fk_proimg_book`(`book_id`) USING BTREE,
  CONSTRAINT `fk_proimg_product` FOREIGN KEY (`book_id`) REFERENCES `book_table` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookimg_table
-- ----------------------------
INSERT INTO `bookimg_table` VALUES (1, 'bookImages/1.jpg', NULL, NULL, '2017-09-26 01:20:40', 1);
INSERT INTO `bookimg_table` VALUES (2, 'bookImages/2.jpg', NULL, NULL, '2017-09-26 01:20:40', 1);
INSERT INTO `bookimg_table` VALUES (3, 'bookImages/3.jpg', NULL, NULL, '2017-09-26 01:21:22', 2);
INSERT INTO `bookimg_table` VALUES (4, 'bookImages/4.jpg', NULL, NULL, '2017-09-26 01:21:22', 2);
INSERT INTO `bookimg_table` VALUES (5, 'bookImages/5.jpg', NULL, NULL, '2017-09-26 01:22:00', 3);
INSERT INTO `bookimg_table` VALUES (6, 'bookImages/6.jpg', NULL, NULL, '2017-09-26 01:22:00', 3);
INSERT INTO `bookimg_table` VALUES (7, 'bookImages/7.jpg', NULL, NULL, '2017-09-26 01:22:43', 4);
INSERT INTO `bookimg_table` VALUES (8, 'bookImages/8.jpg', NULL, NULL, '2017-09-26 01:22:43', 4);
INSERT INTO `bookimg_table` VALUES (9, 'bookImages/9.jpg', NULL, NULL, '2017-09-26 01:23:15', 5);

-- ----------------------------
-- Table structure for booksubtype_table
-- ----------------------------
DROP TABLE IF EXISTS `booksubtype_table`;
CREATE TABLE `booksubtype_table`  (
  `book_sub_type_id` int(0) NOT NULL,
  `book_type_id` int(0) NOT NULL,
  `book_sub_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_sub_type_id`) USING BTREE,
  INDEX `bookType_id`(`book_type_id`) USING BTREE,
  CONSTRAINT `booksubtype_table_ibfk_1` FOREIGN KEY (`book_type_id`) REFERENCES `booktype_table` (`book_type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booksubtype_table
-- ----------------------------
INSERT INTO `booksubtype_table` VALUES (1111, 111111, '计算机网络');
INSERT INTO `booksubtype_table` VALUES (1112, 111111, '计算机理论');
INSERT INTO `booksubtype_table` VALUES (1113, 111111, '数字图像处理');
INSERT INTO `booksubtype_table` VALUES (1114, 111112, '数学');
INSERT INTO `booksubtype_table` VALUES (1115, 111112, '物理学');
INSERT INTO `booksubtype_table` VALUES (1116, 111112, '化学');
INSERT INTO `booksubtype_table` VALUES (1117, 111115, '内科学');
INSERT INTO `booksubtype_table` VALUES (1118, 111115, '外科学');

-- ----------------------------
-- Table structure for booktype_table
-- ----------------------------
DROP TABLE IF EXISTS `booktype_table`;
CREATE TABLE `booktype_table`  (
  `book_type_id` int(0) NOT NULL AUTO_INCREMENT,
  `book_type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_type_sale_num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`book_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111120 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booktype_table
-- ----------------------------
INSERT INTO `booktype_table` VALUES (111111, '工业技术', 101);
INSERT INTO `booktype_table` VALUES (111112, '自然科学', 15);
INSERT INTO `booktype_table` VALUES (111113, '外语', 18);
INSERT INTO `booktype_table` VALUES (111114, '建筑', 17);
INSERT INTO `booktype_table` VALUES (111115, '医学', 4);
INSERT INTO `booktype_table` VALUES (111116, '绘本', 5);
INSERT INTO `booktype_table` VALUES (111117, '世界名著', 70);
INSERT INTO `booktype_table` VALUES (111118, '管理', 93);
INSERT INTO `booktype_table` VALUES (111119, '天文', 45);
INSERT INTO `booktype_table` VALUES (111120, '童书', 65);

-- ----------------------------
-- Table structure for cart_table
-- ----------------------------
DROP TABLE IF EXISTS `cart_table`;
CREATE TABLE `cart_table`  (
  `cart_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(0) NULL DEFAULT NULL,
  `cust_id` bigint(0) NULL DEFAULT NULL,
  `qty` int(0) NOT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  UNIQUE INDEX `book_ID`(`book_id`, `cust_id`) USING BTREE,
  INDEX `cust_id`(`cust_id`) USING BTREE,
  CONSTRAINT `cart_table_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_table` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cart_table_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_table` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_table
-- ----------------------------
INSERT INTO `cart_table` VALUES (4, 1, 100001, 2);
INSERT INTO `cart_table` VALUES (5, 6, 100001, 3);
INSERT INTO `cart_table` VALUES (6, 2, 100003, 2);
INSERT INTO `cart_table` VALUES (7, 4, 100001, 1);
INSERT INTO `cart_table` VALUES (8, 5, 100001, 1);
INSERT INTO `cart_table` VALUES (9, 6, 100003, 2);
INSERT INTO `cart_table` VALUES (26, 23, 100000, 1);

-- ----------------------------
-- Table structure for collect_table
-- ----------------------------
DROP TABLE IF EXISTS `collect_table`;
CREATE TABLE `collect_table`  (
  `collect_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(0) NULL DEFAULT NULL,
  `cust_id` bigint(0) NULL DEFAULT NULL,
  `collect_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`collect_id`) USING BTREE,
  INDEX `cust_id`(`cust_id`) USING BTREE,
  INDEX `book_ID`(`book_id`) USING BTREE,
  CONSTRAINT `collect_table_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_table` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `collect_table_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_table` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for customer_table
-- ----------------------------
DROP TABLE IF EXISTS `customer_table`;
CREATE TABLE `customer_table`  (
  `cust_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `cust_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cust_pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cust_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cust_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `random_num` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`cust_id`) USING BTREE,
  UNIQUE INDEX `cust_no`(`cust_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100032 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_table
-- ----------------------------
INSERT INTO `customer_table` VALUES (100000, 'zhouping', '1212', '2020-09-24 00:00:00', 'zhouping@163.com', '/custImages/befd8501-88c3-4b50-9a1a-f46a29b9536a.jpg', '男', NULL, 1);
INSERT INTO `customer_table` VALUES (100001, 'dingmin', '111111', '2020-09-24 00:00:00', 'zhouping456@163.com', '/custImages/0ff130db-0a1b-4b8d-a918-ed90163170l.jpg', '男', NULL, 1);
INSERT INTO `customer_table` VALUES (100002, 'zhangpuping', '111111', '2020-09-24 00:00:00', 'zhouping345@163.com', 'custImages/0ff130db-0a1b-4b8d-a918-ed90163170l.jpg', '女', NULL, 1);
INSERT INTO `customer_table` VALUES (100003, '丁亮', '123', '2020-09-24 00:00:00', 'zhouping234@163.com', 'custImages/4a92d075-18a3-4a56-83bb-ee20ddc41daa.jpg', '女', NULL, 1);
INSERT INTO `customer_table` VALUES (100004, '123', '123', '2020-09-24 00:00:00', NULL, 'custImages/39be0bbe05523f362248a4dbb7658792.jpg', NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100005, '1234', '122234', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100006, '1233', '2222', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100022, 'w123456', '123456', '2020-09-24 00:00:00', '64972570@qq.com', NULL, NULL, '2691a35f-a1d3-4d13-a6ab-b2668cf04561', 1);
INSERT INTO `customer_table` VALUES (100023, 'wfy12345', '123456', '2020-09-24 00:00:00', '64972570@qq.com', NULL, NULL, 'e0c74cf6-1a89-4c88-a23b-0bdc44c4be95', 1);
INSERT INTO `customer_table` VALUES (100024, 'abderer', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100025, 'ae32eqwew', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100026, 'ae3234', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100027, 'ae3235', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100028, '1sewe23', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100029, '1sewe25', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100030, 'a123456', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100031, 'a12335454', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customer_table` VALUES (100032, 'a123354', '123456', '2020-09-24 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for header_table
-- ----------------------------
DROP TABLE IF EXISTS `header_table`;
CREATE TABLE `header_table`  (
  `header_id` int(0) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`header_id`) USING BTREE,
  INDEX `book_ID`(`img`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of header_table
-- ----------------------------
INSERT INTO `header_table` VALUES (2, '/frontimages/carousel/nav2.jpg');
INSERT INTO `header_table` VALUES (3, '/frontimages/carousel/nav3.jpg');
INSERT INTO `header_table` VALUES (4, '/frontimages/carousel/nav4.jpg');
INSERT INTO `header_table` VALUES (5, '/frontimages/carousel/nav5.jpg');
INSERT INTO `header_table` VALUES (1, '/frontimages/carousel/nav6.jpg');

-- ----------------------------
-- Table structure for logs_table
-- ----------------------------
DROP TABLE IF EXISTS `logs_table`;
CREATE TABLE `logs_table`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs_table
-- ----------------------------
INSERT INTO `logs_table` VALUES (1, 'hhsdfsf is created');
INSERT INTO `logs_table` VALUES (2, '张珊 is created');
INSERT INTO `logs_table` VALUES (3, '张珊123 is created');
INSERT INTO `logs_table` VALUES (4, '张珊1213 is deleted');
INSERT INTO `logs_table` VALUES (5, 'zhangshan1pwd is updated');
INSERT INTO `logs_table` VALUES (6, 'aaaaa is created');
INSERT INTO `logs_table` VALUES (7, 'abcdefsf is created');
INSERT INTO `logs_table` VALUES (8, 'a12123213 is created');
INSERT INTO `logs_table` VALUES (9, 'sdf232 is created');
INSERT INTO `logs_table` VALUES (10, 'wer is created');
INSERT INTO `logs_table` VALUES (11, 'sfsdf is created');
INSERT INTO `logs_table` VALUES (12, 'sfsdfrer is created');
INSERT INTO `logs_table` VALUES (13, 'sfsdfrer3435 is created');
INSERT INTO `logs_table` VALUES (14, 'sfsdf345 is created');
INSERT INTO `logs_table` VALUES (15, 'sdfsdfsdf is created');

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `order_table`;
CREATE TABLE `order_table`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cust_id` bigint(0) NOT NULL,
  `order_time` datetime(0) NOT NULL,
  `total_price` float NULL DEFAULT NULL,
  `total_num` int(0) NULL DEFAULT NULL,
  `receiver_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystate` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `cust_id`(`cust_id`) USING BTREE,
  CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer_table` (`cust_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `order_table` VALUES ('102853', 100000, '2014-09-01 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102854', 100000, '2014-09-11 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102855', 100001, '2014-03-11 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102856', 100001, '2014-06-02 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102857', 100001, '2015-02-24 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102858', 100002, '2015-06-24 00:00:00', 100, 0, NULL, NULL);
INSERT INTO `order_table` VALUES ('102859', 100002, '2015-06-24 00:00:00', 100, 0, 'sdfsdfsdf', 0);
INSERT INTO `order_table` VALUES ('218603a4-4be4-4b4e-8d8e-1056df177f39', 100000, '2019-12-03 09:12:13', 108, 3, ' ', 0);
INSERT INTO `order_table` VALUES ('232eb7e4-a894-4fe5-8625-e1a883b62f3d', 100000, '2019-12-03 15:53:27', 0, 3, ' zhanfdsfsd', 0);
INSERT INTO `order_table` VALUES ('4312aafd-874c-40d4-bf7d-3bac3a012a5f', 100000, '2019-11-26 14:02:56', 603, 6, ' zhangsngd', 0);
INSERT INTO `order_table` VALUES ('4a8b9464-5124-4c2c-99cf-8f89100f5cfb', 100000, '2019-11-27 09:01:17', 0, 1, ' 3432', 0);
INSERT INTO `order_table` VALUES ('69ade5a5-e3fa-415b-880e-f2acf34e4e42', 100000, '2019-11-27 08:28:38', 273, 9, ' ', 0);
INSERT INTO `order_table` VALUES ('7281ddbb-d52f-406e-9dd9-b216acdaddff', 100000, '2019-11-29 14:14:56', 0, 1, ' 3345345', 0);
INSERT INTO `order_table` VALUES ('89811e57-d198-4a85-9a28-f7532140e1af', 100000, '2018-10-08 00:00:00', 246, 0, '455345465', 0);
INSERT INTO `order_table` VALUES ('df343243r2r', 100000, '2019-12-03 08:36:28', 0, 0, '张珊', 2);
INSERT INTO `order_table` VALUES ('df343243r2r23', 100000, '2019-11-26 10:07:50', 198, 2, '张珊', 2);

-- ----------------------------
-- Table structure for orderitem_table
-- ----------------------------
DROP TABLE IF EXISTS `orderitem_table`;
CREATE TABLE `orderitem_table`  (
  `order_item_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(0) NOT NULL,
  `unit_price` float NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE,
  INDEX `book_ID`(`book_id`) USING BTREE,
  INDEX `order_code`(`order_id`) USING BTREE,
  CONSTRAINT `orderitem_table_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_table` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderitem_table_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12376 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem_table
-- ----------------------------
INSERT INTO `orderitem_table` VALUES (12345, 1, 39, 1, '102853');
INSERT INTO `orderitem_table` VALUES (12346, 4, 99, 28, '102853');
INSERT INTO `orderitem_table` VALUES (12347, 6, 54, 1, '102854');
INSERT INTO `orderitem_table` VALUES (12348, 1, 39, 1, '102854');
INSERT INTO `orderitem_table` VALUES (12349, 1, 39, 15, '102854');
INSERT INTO `orderitem_table` VALUES (12350, 3, 108, 1, '102856');
INSERT INTO `orderitem_table` VALUES (12351, 7, 54, 1, '102856');
INSERT INTO `orderitem_table` VALUES (12352, 1, 39, 10, '102857');
INSERT INTO `orderitem_table` VALUES (12353, 7, 54, 10, '102857');
INSERT INTO `orderitem_table` VALUES (12354, 5, 108, 20, '102858');
INSERT INTO `orderitem_table` VALUES (12355, 2, 99, 2, '102858');
INSERT INTO `orderitem_table` VALUES (12356, 3, 108, 3, '102858');
INSERT INTO `orderitem_table` VALUES (12357, 2, 99, 3, '102857');
INSERT INTO `orderitem_table` VALUES (12358, 2, 99, 3, '102854');
INSERT INTO `orderitem_table` VALUES (12359, 1, 48, 2, 'df343243r2r');
INSERT INTO `orderitem_table` VALUES (12360, 2, 48, 2, 'df343243r2r');
INSERT INTO `orderitem_table` VALUES (12365, 1, 48, 20, 'df343243r2r23');
INSERT INTO `orderitem_table` VALUES (12366, 2, 48, 2, 'df343243r2r23');
INSERT INTO `orderitem_table` VALUES (12367, 2, 99, 5, '4312aafd-874c-40d4-bf7d-3bac3a012a5f');
INSERT INTO `orderitem_table` VALUES (12368, 6, 108, 6, '4312aafd-874c-40d4-bf7d-3bac3a012a5f');
INSERT INTO `orderitem_table` VALUES (12369, 1, 39, 8, '69ade5a5-e3fa-415b-880e-f2acf34e4e42');
INSERT INTO `orderitem_table` VALUES (12370, 2, 0, 1, '69ade5a5-e3fa-415b-880e-f2acf34e4e42');
INSERT INTO `orderitem_table` VALUES (12371, 4, 0, 1, '4a8b9464-5124-4c2c-99cf-8f89100f5cfb');
INSERT INTO `orderitem_table` VALUES (12372, 2, 0, 2, '232eb7e4-a894-4fe5-8625-e1a883b62f3d');
INSERT INTO `orderitem_table` VALUES (12373, 6, 0, 1, '232eb7e4-a894-4fe5-8625-e1a883b62f3d');
INSERT INTO `orderitem_table` VALUES (12374, 4, 0, 1, '7281ddbb-d52f-406e-9dd9-b216acdaddff');
INSERT INTO `orderitem_table` VALUES (12375, 3, 108, 2, '218603a4-4be4-4b4e-8d8e-1056df177f39');
INSERT INTO `orderitem_table` VALUES (12376, 7, 0, 1, '218603a4-4be4-4b4e-8d8e-1056df177f39');

-- ----------------------------
-- Table structure for publishing_table
-- ----------------------------
DROP TABLE IF EXISTS `publishing_table`;
CREATE TABLE `publishing_table`  (
  `publishing_id` int(0) NOT NULL AUTO_INCREMENT,
  `publishing_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`publishing_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 410248 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publishing_table
-- ----------------------------
INSERT INTO `publishing_table` VALUES (410236, '机械工业出版社');
INSERT INTO `publishing_table` VALUES (410237, '北京大学出版社');
INSERT INTO `publishing_table` VALUES (410238, '清华大学出版社');
INSERT INTO `publishing_table` VALUES (410239, '人民卫生出版社');
INSERT INTO `publishing_table` VALUES (410240, '上海交通大学出版社');
INSERT INTO `publishing_table` VALUES (410241, '电子工业出版社');
INSERT INTO `publishing_table` VALUES (410242, '高等教育出版社');
INSERT INTO `publishing_table` VALUES (410243, '译林出版社');
INSERT INTO `publishing_table` VALUES (410244, '中国戏剧出版社');
INSERT INTO `publishing_table` VALUES (410245, '安徽人民出版社');
INSERT INTO `publishing_table` VALUES (410246, '人民邮电出版社');
INSERT INTO `publishing_table` VALUES (410247, '中国人民大学出版社');
INSERT INTO `publishing_table` VALUES (410248, '山东美术出版社');

-- ----------------------------
-- View structure for bookinfoview
-- ----------------------------
DROP VIEW IF EXISTS `bookinfoview`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `bookinfoview` AS select `a`.`book_id` AS `book_id`,`a`.`book_isbn` AS `book_isbn`,`a`.`book_name` AS `book_name`,`a`.`book_author` AS `book_author`,`a`.`book_type_id` AS `book_type_id`,`a`.`publishing_id` AS `publishing_id`,`a`.`price` AS `price`,`a`.`discount` AS `discount`,`a`.`book_publish_time` AS `book_publish_time`,`a`.`book_num` AS `book_num`,`a`.`book_sale_num` AS `book_sale_num`,`a`.`book_image` AS `book_image`,`a`.`book_introduction` AS `book_introduction`,`a`.`book_information` AS `book_information`,`b`.`publishing_name` AS `publishing_name`,`c`.`book_type_name` AS `book_type_name` from ((`book_table` `a` join `publishing_table` `b`) join `booktype_table` `c`) where ((`a`.`book_type_id` = `c`.`book_type_id`) and (`a`.`publishing_id` = `b`.`publishing_id`));

-- ----------------------------
-- Procedure structure for pro1
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro1`;
delimiter ;;
CREATE PROCEDURE `pro1`(IN para1 INTEGER)
begin
DECLARE  var1 char(10);
if para1=1 then
		set var1='男';
else
		set var1='女';
end if;
select var1;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro3
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro3`;
delimiter ;;
CREATE PROCEDURE `pro3`(IN booktypeName char(20),OUT bookNum  INTEGER)
begin
    select count(*) into bookNum 
	  from  bookt,booktypet
	  where bookt.bookType_ID=booktypet.bookType_ID
	  and  booktype_Name=booktypeName;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro4
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro4`;
delimiter ;;
CREATE PROCEDURE `pro4`(IN booktypeName char(20),OUT bookNum  INTEGER)
begin
    select count(*) into bookNum 
	  from  bookt,booktypet
	  where bookt.bookType_ID=booktypet.bookType_ID
	  and  booktype_Name=booktypeName;
		
		
		select book_isbn,book_name,booktype_name
	  from  bookt,booktypet
	  where bookt.bookType_ID=booktypet.bookType_ID
	  and  booktype_Name=booktypeName;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_saleitem
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_saleitem`;
delimiter ;;
CREATE PROCEDURE `PROC_saleitem`(IN bookID  bigint)
BEGIN
select * 
from orderitemview
where book_ID=bookID;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
