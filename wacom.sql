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
  images VARCHAR(40)
);
INSERT INTO product VALUES(NULL,'官方验证开封品','官方验证，完整配件与产品功能完好 新帝 低至6折','¥3499起','/img/index/202003031136435684.png');
INSERT INTO product VALUES(NULL,'MobileStudio Pro','新一代创意移动电脑&工作站 8192压感 4G大显存i7（高配）','¥19800起','/img/index/202003021723123432.png');
INSERT INTO product VALUES(NULL,'Wacom One 万与数位屏','2020年入门级数位屏
 增送优动漫Paint 个人版 6个月使用授权','¥3299起','/img/index/202003031136532621.png');

#生活科技表
CREATE TABLE proLife(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  price VARCHAR(16),
  images VARCHAR(40)
);
INSERT INTO proLife VALUES(NULL,'Bamboo Folio','对开  智能笔记事数位本','¥1280起','/img/index/201708151453108851.png');
INSERT INTO proLife VALUES(NULL,'Bamboo Sketch','旗舰智能手绘触控笔','¥699','/img/index/201708151457529124.png');
INSERT INTO proLife VALUES(NULL,'Bamboo Fineline3','高端智能触控笔','¥499','/img/index/201708151516277044.png');
INSERT INTO proLife VALUES(NULL,'Bamboo Solo','碳纤维笔头电容触控笔','¥168','/img/index/201708151521198177.png');
INSERT INTO proLife VALUES(NULL,'Bamboo Duo','电容触控圆珠两用笔','¥230','/img/index/201708151526556185.png');
INSERT INTO proLife VALUES(NULL,'Bamboo Alpha','电容触控笔','¥89','/img/index/201708151531023011.png');
INSERT INTO proLife VALUES(NULL,'Bamboo 配件笔','适用于智能数位本','¥320','/img/index/201803011426495416.png');
INSERT INTO proLife VALUES(NULL,'配件笔圆珠笔芯','适用于Bamboo配件笔','¥78','/img/index/201708151545145589.png');

#产品分类表
CREATE TABLE sortProOne(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  images VARCHAR(40),
  bgLeft VARCHAR(8),
  bgRight VARCHAR(8)
);
INSERT INTO sortProOne VALUES(NULL,'One by Wacom','⁡⁢⁡⁢⁡⁢⁡⁢数位学习板','/img/index/201908221717344023.png','#67B687','#D8E6DE');
INSERT INTO sortProOne VALUES(NULL,'Intuos','影拓数位板','/img/index/201806131741578568.png','#DCD16F','#E9E4CA');
INSERT INTO sortProOne VALUES(NULL,'Wacom Intuos Pro','专业数位板','/img/index/201708171031399896.png','#D78E28','#E6D1B9');
INSERT INTO sortProOne VALUES(NULL,'Cintiq  ','新帝数位屏','/img/index/201908221734183294.png','#866350','#CCBDB3');
INSERT INTO sortProOne VALUES(NULL,'Wacom MobileStudio Pro','创意移动电脑','/img/index/201708171041575960.png','#5A5665','#AEABB3');
INSERT INTO sortProOne VALUES(NULL,'Wacom Cintiq Pro','新帝Pro 数位屏','/img/index/201708291023535657.png','#498C94','#BED7DB');

#产品分类表
CREATE TABLE sortProTwo(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(40),
  details VARCHAR(80),
  images VARCHAR(40),
  bgLeft VARCHAR(8),
  bgRight VARCHAR(8)
);
INSERT INTO sortProTwo VALUES(NULL,'Bamboo智能生活科技','原装配件','/img/index/201708291104562640.png','#67B687','#D8E6DE');
INSERT INTO sortProTwo VALUES(NULL,'Intuos','','/img/index/201708281729562620.png','#DCD16F','#E9E4CA');