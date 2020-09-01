#设置客户端连接服务器端的编码
SET NAMES UTF8;
#丢弃数据库如果存在
DROP DATABASE IF EXISTS wacom;
#创建数据库，设置存储的编码
CREATE DATABASE wacom CHARSET=UTF8;
#进入创建的数据库
USE wacom;
#创建用户表user
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16),
  upwd VARCHAR(16),
  uemail VARCHAR(16)
);
#插入数据
INSERT INTO user VALUES(NULL,'obito','123456','22@qq.com');
INSERT INTO user VALUES(NULL,'rin','123456','22@qq.com');

#创建商品表product
CREATE TABLE product(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  price VARCHAR(16),
  images VARCHAR(40),
  num INT
);
INSERT INTO product VALUES(NULL,'官方验证开封品','官方验证，完整配件与产品功能完好 新帝 低至6折','¥3499起','/img/index/202003031136435684.png',1);
INSERT INTO product VALUES(NULL,'MobileStudio Pro','新一代创意移动电脑&工作站 8192压感 4G大显存i7（高配）','¥19800起','/img/index/202003021723123432.png',2);
INSERT INTO product VALUES(NULL,'Wacom One 万与数位屏','2020年入门级数位屏
 增送优动漫Paint 个人版 6个月使用授权','¥3299起','/img/index/202003031136532621.png',3);

#生活科技表
CREATE TABLE proLife(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  price VARCHAR(16),
  images VARCHAR(40),
  num INT
);
INSERT INTO proLife VALUES(NULL,'Bamboo Folio','对开  智能笔记事数位本','¥1280起','/img/index/201708151453108851.png',4);
INSERT INTO proLife VALUES(NULL,'Bamboo Sketch','旗舰智能手绘触控笔','¥699','/img/index/201708151457529124.png',5);
INSERT INTO proLife VALUES(NULL,'Bamboo Fineline3','高端智能触控笔','¥499','/img/index/201708151516277044.png',6);
INSERT INTO proLife VALUES(NULL,'Bamboo Solo','碳纤维笔头电容触控笔','¥168','/img/index/201708151521198177.png',7);
INSERT INTO proLife VALUES(NULL,'Bamboo Duo','电容触控圆珠两用笔','¥230','/img/index/201708151526556185.png',8);
INSERT INTO proLife VALUES(NULL,'Bamboo Alpha','电容触控笔','¥89','/img/index/201708151531023011.png',9);
INSERT INTO proLife VALUES(NULL,'Bamboo 配件笔','适用于智能数位本','¥320','/img/index/201803011426495416.png',10);
INSERT INTO proLife VALUES(NULL,'配件笔圆珠笔芯','适用于Bamboo配件笔','¥78','/img/index/201708151545145589.png',11);

#产品分类表
CREATE TABLE sortProOne(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  images VARCHAR(40),
  bgLeft VARCHAR(8),
  bgRight VARCHAR(8),
  num INT
);
INSERT INTO sortProOne VALUES(NULL,'One by Wacom','⁡⁢⁡⁢⁡⁢⁡⁢数位学习板','/img/index/201908221717344023.png','#67B687','#D8E6DE',12);
INSERT INTO sortProOne VALUES(NULL,'Intuos','影拓数位板','/img/index/201806131741578568.png','#DCD16F','#E9E4CA',13);
INSERT INTO sortProOne VALUES(NULL,'Wacom Intuos Pro','专业数位板','/img/index/201708171031399896.png','#D78E28','#E6D1B9',14);
INSERT INTO sortProOne VALUES(NULL,'Cintiq  ','新帝数位屏','/img/index/201908221734183294.png','#866350','#CCBDB3',15);
INSERT INTO sortProOne VALUES(NULL,'Wacom MobileStudio Pro','创意移动电脑','/img/index/201708171041575960.png','#5A5665','#AEABB3',16);
INSERT INTO sortProOne VALUES(NULL,'Wacom Cintiq Pro','新帝Pro 数位屏','/img/index/201708291023535657.png','#498C94','#BED7DB',17);

#产品分类表
CREATE TABLE sortProTwo(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  images VARCHAR(40),
  bgLeft VARCHAR(8),
  bgRight VARCHAR(8),
  num INT
);
INSERT INTO sortProTwo VALUES(NULL,'Bamboo智能生活科技','原装配件','/img/index/201708291104562640.png','#67B687','#D8E6DE',18);
INSERT INTO sortProTwo VALUES(NULL,'Intuos','','/img/index/201708281729562620.png','#DCD16F','#E9E4CA',19);

#产品详情页面表
CREATE TABLE productPage(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  price VARCHAR(16),
  codename VARCHAR(80),
  stock VARCHAR(8),
  images VARCHAR(40)
);
INSERT INTO productPage VALUES(NULL,'官方验证开封品','官方验证，完整配件与产品功能完好 新帝 低至6折','¥3499','DTC133W0F','26','/img/index/202003031136435684.png');
INSERT INTO productPage VALUES(NULL,'MobileStudio Pro','新一代创意移动电脑&工作站 8192压感 4G大显存i7（高配）','¥19800','DTW133C0F','16','/img/index/202003021723123432.png');
INSERT INTO productPage VALUES(NULL,'Wacom One 万与数位屏','2020年入门级数位屏 增送优动漫Paint 个人版 6个月使用授权','¥3299','QTC13310F','25','/img/index/202003031136532621.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Folio','对开  智能笔记事数位本','¥1280','DWC136W0F','45','/img/index/201708151453108851.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Sketch','旗舰智能手绘触控笔','¥699','TYC192W0F','17','/img/index/201708151457529124.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Fineline3','高端智能触控笔','¥499','TTC182W0F','68','/img/index/201708151516277044.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Solo','碳纤维笔头电容触控笔','¥168','DZC173W0F','10','/img/index/201708151521198177.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Duo','电容触控圆珠两用笔','¥230','SKC164W0F','33','/img/index/201708151526556185.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Alpha','电容触控笔','¥89','OPC135W0F','6','/img/index/201708151531023011.png');
INSERT INTO productPage VALUES(NULL,'Bamboo 配件笔','适用于智能数位本','¥320','SYC156W0F','27','/img/index/201803011426495416.png');
INSERT INTO productPage VALUES(NULL,'配件笔圆珠笔芯','适用于Bamboo配件笔','¥78','GOS173G0F','17','/img/index/201708151545145589.png');
INSERT INTO productPage VALUES(NULL,'One by Wacom','⁡⁢⁡⁢⁡⁢⁡⁢数位学习板','¥778','SWC196W0F','43','/img/index/201908221717344023.png');
INSERT INTO productPage VALUES(NULL,'Intuos','影拓数位板','¥798','WGC106W0F','22','/img/index/201806131741578568.png');
INSERT INTO productPage VALUES(NULL,'Wacom Intuos Pro','专业数位板','¥588','KIC186W0F','30','/img/index/201708171031399896.png');
INSERT INTO productPage VALUES(NULL,'Cintiq','新帝数位屏','¥388','DFC176W0F','53','/img/index/201908221734183294.png');
INSERT INTO productPage VALUES(NULL,'Wacom MobileStudio Pro','创意移动电脑','¥688','FGC126W0F','41','/img/index/201708171041575960.png');
INSERT INTO productPage VALUES(NULL,'Wacom Cintiq Pro','新帝Pro 数位屏','¥298','SGC134W0F','61','/img/index/201708291023535657.png');
INSERT INTO productPage VALUES(NULL,'Bamboo智能生活科技','原装配件','¥278','SGC234W0F','28','/img/index/201708291104562640.png');
INSERT INTO productPage VALUES(NULL,'Intuos','','¥288','SGC153W0F','18','/img/index/201708281729562620.png');
INSERT INTO productPage VALUES(NULL,'Wacom Intuos Pro','新一代影拓Pro 数位板 8192压感','¥888','SGT234W0F','36','/img/index/202003031137017759.png');
INSERT INTO productPage VALUES(NULL,'Wacom 官方配件','官方配件可让您创作更方便','¥888','CXZ234W0F','35','/img/index/202003031137017759.png');
INSERT INTO productPage VALUES(NULL,'Bamboo Slate','单开  智能笔记事数位本','¥999','SZX234W0F','38','/img/index/201708151449304349.png');




#地址表
CREATE TABLE addresses(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  addresses VARCHAR(40)
);
INSERT INTO addresses VALUES(NULL,'北京');
INSERT INTO addresses VALUES(NULL,'天津');
INSERT INTO addresses VALUES(NULL,'河北省');
INSERT INTO addresses VALUES(NULL,'山西省');
INSERT INTO addresses VALUES(NULL,'内蒙古自治区');
INSERT INTO addresses VALUES(NULL,'辽宁省');
INSERT INTO addresses VALUES(NULL,'吉林省');
INSERT INTO addresses VALUES(NULL,'黑龙江省');
INSERT INTO addresses VALUES(NULL,'上海');
INSERT INTO addresses VALUES(NULL,'江苏省');
INSERT INTO addresses VALUES(NULL,'浙江省');
INSERT INTO addresses VALUES(NULL,'安徽省');
INSERT INTO addresses VALUES(NULL,'福建省');
INSERT INTO addresses VALUES(NULL,'江西省');
INSERT INTO addresses VALUES(NULL,'山东省');
INSERT INTO addresses VALUES(NULL,'河南省');
INSERT INTO addresses VALUES(NULL,'湖北省');
INSERT INTO addresses VALUES(NULL,'湖南省');
INSERT INTO addresses VALUES(NULL,'广东省');
INSERT INTO addresses VALUES(NULL,'广西壮族自治区');
INSERT INTO addresses VALUES(NULL,'海南省');
INSERT INTO addresses VALUES(NULL,'重庆');
INSERT INTO addresses VALUES(NULL,'四川省');
INSERT INTO addresses VALUES(NULL,'贵州省');
INSERT INTO addresses VALUES(NULL,'云南省');
INSERT INTO addresses VALUES(NULL,'西藏自治区');
INSERT INTO addresses VALUES(NULL,'陕西省');
INSERT INTO addresses VALUES(NULL,'甘肃省');
INSERT INTO addresses VALUES(NULL,'青海省');
INSERT INTO addresses VALUES(NULL,'宁夏回族自治区');
INSERT INTO addresses VALUES(NULL,'新疆维吾尔自治区');