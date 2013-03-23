
create database if not exists iptv;

USE iptv;

drop table if EXISTS administrator;
create table administrator(
	 id int(11) NOT NULL auto_increment,
	 username varchar(50) default null comment '用户名',
	 password varchar(50) default null comment '密码',
	 disable varchar(10) default '1' comment '是否有效',
	 PRIMARY KEY  (id)
) engine=InnoDB default CHARSET=utf8 comment '管理员用户表';

insert into administrator(id,username,password,disable) values(1,'hbol','4B178B8772CE2750303D7476C95C8241','1'); 

DROP TABLE IF EXISTS channel;
CREATE TABLE channel (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL comment '频道名称',
  serviceid varchar(30) default NULL comment '服务ID',
  productid varchar(30) default NULL comment '产品ID',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '频道表';

insert into channel(id,name) values(1,'孕育早教','726','3221');
insert into channel(id,name) values(2,'疯狂英语','725','3220');
insert into channel(id,name) values(3,'成人教育');

DROP TABLE IF EXISTS columninfo;
CREATE TABLE columninfo (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL comment '栏目名称',
  channelid int(11) comment '频道ID,对应channel表id字段',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '栏目表';

insert into columninfo(id,name,channelid) values(1,'孕育保健',1);
insert into columninfo(id,name,channelid) values(2,'婴幼早教',1);
insert into columninfo(id,name,channelid) values(3,'少儿成长',1);

insert into columninfo(id,name,channelid) values(4,'李阳疯狂英语',2);
insert into columninfo(id,name,channelid) values(5,'英语辅导',2);

insert into columninfo(id,name,channelid) values(6,'减肥健身',3);
insert into columninfo(id,name,channelid) values(7,'靓妆美食',3);
insert into columninfo(id,name,channelid) values(8,'乒羽棋牌',3);
insert into columninfo(id,name,channelid) values(9,'职场培训',3);

DROP TABLE IF EXISTS image_info;
CREATE TABLE image_info (
  id int(11) NOT NULL auto_increment,
  name varchar(200) default NULL comment '图片名称',
  suffix varchar(20) default NULL  comment '图片后缀名',
  content longblob  default NULL comment '图片blob格式存储,二进制',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '图片表';

DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL comment '该集名称',
  fileid int(11) comment '视频ID，对应电信提供的影片资料录入execl中的视频ID',
  filmid int(11) comment '所属影片，对应film表id',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '影片资产表';

DROP TABLE IF EXISTS film;
CREATE TABLE film (
  id int(11) NOT NULL auto_increment,
  serial_count int(11) comment '集数',
  name varchar(100) default NULL comment '影片名称',
  description varchar(2000)  default NULL comment '影片简介',
  audient varchar(50) default NULL comment '适用年龄段',
  actor varchar(100) default NULL comment '演员',
  price varchar(50) default NULL comment '价格',
  period varchar(50) default NULL comment '有效期',
  istop varchar(10) default '0' comment '是否置顶',
  upload_date datetime comment '上传时间',
  modify_date datetime comment '修改时间',
  contentid int(11) comment  '内容ID',
  small_image int(11) comment '小图ID，供列表页面使用',
  big_image int(11) comment '大图ID，供影片详情页使用',
  small_image_hd int(11) comment '小图ID，供高清列表页面使用',
  big_image_hd int(11) comment '小图ID，供高清列表页面使用',
  columnid int(11) comment '所属栏目ID',
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '影片表';

DROP TABLE IF EXISTS orderdetail;
create table orderdetail(
	id int(11) NOT NULL auto_increment,
	available_iptvrewardpoints varchar(50) comment '可用的IPTV积分点数',
	available_teleRewardpoints varchar(50) comment '可用的电信积分点数',
	contentid varchar(50) comment '内容编号',
	description varchar(255) comment '结果描述',
	expired_time varchar(50) comment '订购关系的失效时间',
	fee varchar(50) comment '金额',
	ordermode varchar(50) comment '订购模式',
	productid varchar(50) comment 'IPTV 产品编号',
	productname varchar(100) comment 'IPTV 产品名称',
	channelid varchar(50) comment '对应channel表中的id',
	purchasetype varchar(50) comment '订购类型',
	serendtime varchar(50) comment '订购有效结束时间',
	serstarttime varchar(50) comment '订购有效开始时间',
	serviceid varchar(50) comment 'IPTV 服务编号',
	spid varchar(50) comment 'SP的唯一标识',
	transaction_id varchar(50) comment '订购的事务编号',
	userid varchar(50) comment 'IPTV 用户业务编号',
	status varchar(10) comment '默认是1，表示订购有效',
	createtime datetime comment '该记录创建时间',
	PRIMARY KEY  (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '订购明细表';



