
create database if not exists iptv;

USE iptv;

drop table if EXISTS administrator;
create table administrator(
	 id int(11) NOT NULL auto_increment,
	 username varchar(50) default null,
	 password varchar(50) default null,
	 disable varchar(10) default '1',
	 PRIMARY KEY  (id)
) engine=InnoDB default CHARSET=utf8;

insert into administrator(id,username,password,disable) values(1,'hbol','4B178B8772CE2750303D7476C95C8241','1'); 

DROP TABLE IF EXISTS channel;
CREATE TABLE channel (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into channel(id,name) values(1,'孕育早教');
insert into channel(id,name) values(2,'疯狂英语');
insert into channel(id,name) values(3,'成人教育');

DROP TABLE IF EXISTS columninfo;
CREATE TABLE columninfo (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL,
  channelid int(11),
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  name varchar(200) default NULL,
  suffix varchar(20) default NULL,
  content longblob  default NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS asset;
CREATE TABLE asset (
  id int(11) NOT NULL auto_increment,
  name varchar(100) default NULL,
  fileid int(11),
  filmid int(11),
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS film;
CREATE TABLE film (
  id int(11) NOT NULL auto_increment,
  serial_count int(11),
  name varchar(100) default NULL,
  description varchar(2000)  default NULL,
  audient varchar(50) default NULL,
  actor varchar(100) default NULL,
  price varchar(50) default NULL,
  period varchar(50) default NULL,
  istop varchar(10) default '0',
  upload_date datetime,
  modify_date datetime,
  contentid int(11),
  small_image int(11),
  big_image int(11),
  small_image_hd int(11),
  big_image_hd int(11),
  columnid int(11),
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS orderdetail;
create table orderdetail(
	id int(11) NOT NULL auto_increment,
	available_iptvrewardpoints varchar(50),
	available_teleRewardpoints varchar(50),
	contentid varchar(50),
	description varchar(255),
	expired_time varchar(50),
	fee varchar(50),
	ordermode varchar(50),
	productid varchar(50),
	productname varchar(100),
	channelid varchar(50),
	purchasetype varchar(50),
	serendtime varchar(50),
	serstarttime varchar(50),
	serviceid varchar(50),
	spid varchar(50),
	transaction_id varchar(50),
	userid varchar(50),
	status varchar(10),
	createtime datetime,
	PRIMARY KEY  (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



