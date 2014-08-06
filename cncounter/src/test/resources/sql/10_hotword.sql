CREATE TABLE `hotword` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID',
	`word` VARCHAR(256) NOT NULL COMMENT '词条',
	`keyword` VARCHAR(256) NULL DEFAULT NULL COMMENT '关键字,以逗号分隔',
	`category` VARCHAR(256) NULL DEFAULT NULL COMMENT '分类',
	`title` VARCHAR(512) NULL DEFAULT NULL COMMENT '标题,如果有',
	`content` LONGTEXT NULL COMMENT '内容及说明',
	`starttime` DATETIME NULL DEFAULT NULL COMMENT '开始流行的时间',
	`endtime` DATETIME NULL DEFAULT NULL COMMENT '流行的时间段',
	`hottimedesc` VARCHAR(256) NULL DEFAULT NULL COMMENT '流行的时间段说明',
	`createuserid` VARCHAR(256) NULL DEFAULT NULL COMMENT '创建者ID',
	`createtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gen` INT(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '分代,后期使用',
	PRIMARY KEY (`id`)
)
COMMENT='网络热词'
COLLATE='utf8_general_ci'
ENGINE=InnoDB;
