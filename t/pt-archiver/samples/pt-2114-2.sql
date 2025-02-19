DROP DATABASE IF EXISTS pt_2114;
CREATE DATABASE pt_2114;
USE pt_2114;
CREATE TABLE `pt_2114`.`t1` (
`id` int NOT NULL AUTO_INCREMENT,
`val` bit(10) NOT NULL DEFAULT b'0',
PRIMARY KEY (`id`,`val`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4;
CREATE TABLE pt_2114.t1_tmp LIKE t1;
INSERT INTO pt_2114.t1 (val) VALUES (b'1111000010'),(b'1101001100');
INSERT INTO pt_2114.t1 (val) SELECT val FROM pt_2114.t1 ;
INSERT INTO pt_2114.t1 (val) SELECT val FROM pt_2114.t1 ;
INSERT INTO pt_2114.t1_tmp SELECT NULL, val FROM pt_2114.t1;

CREATE TABLE `pt_2114`.`t2` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`val` bit(1) NOT NULL DEFAULT b'0',
PRIMARY KEY (`id`,`val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
