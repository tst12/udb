ALTER TABLE realmlist 
    ALTER COLUMN `color` SET DEFAULT '2',
    ENGINE = MyISAM;
	
DROP TABLE IF EXISTS `localization`;
CREATE TABLE `localization` (
  `locale` tinyint(3) unsigned NOT NULL default '0',
  `string` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `localization` VALUES
    (0,'en'),
    (2,'fr'),
    (3,'de');

ALTER TABLE `account` ADD COLUMN `locale` tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER `mutetime`;