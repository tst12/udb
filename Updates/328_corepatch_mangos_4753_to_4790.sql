-- 4772_mangos_item_template.sql
UPDATE `item_template` SET `subclass` = '0' where `class` = '0';

-- 4781_mangos_gameobject_loot_template.sql
-- Addgo command change
DELETE FROM `command` WHERE `name`='addgo';
INSERT INTO `command` (`name`,`security`,`help`) VALUES 
 ('addgo',2,'Syntax: .addgo #id <spawntimeSecs>\r\n\r\nAdd a game object from game object templates to the world at your current location using the #id.\r\nspawntimesecs sets the spawntime, it is optional.\r\n\r\nNote: this is a copy of .gameobject.');

-- Creation of first temp table
DROP TABLE IF EXISTS `goloot`;
CREATE TABLE `goloot` (
  `entry` int(11) unsigned NOT NULL default '0',
  `loot` int(11) unsigned NOT NULL default '0',
  `sound1` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`),
  INDEX `idx_loot` (`loot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Go Loot Errors';

-- Filling table
INSERT IGNORE INTO `goloot` (`entry`,`loot`,`sound1`) SELECT `entry`,`entry`,`sound1` FROM `gameobject_template` WHERE `type` IN (3,25); -- AND `sound1`!=0;
UPDATE `goloot` a,`gameobject` b SET a.`loot`=b.`loot` WHERE a.`entry`=b.`id` AND b.`loot`!=0;

-- Second temp table
DROP TABLE IF EXISTS `goloot2`;
CREATE TABLE `goloot2` (
  `sound1` int(11) unsigned NOT NULL default '0',
  `loot` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`sound1`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Temp Table';

-- Put data into
INSERT INTO `goloot2` (`sound1`,`loot`) SELECT DISTINCT `sound1`,MIN(`loot`) FROM `goloot` WHERE `loot`!=0 AND `sound1`!=0 AND `loot` IN (SELECT DISTINCT `entry` FROM `gameobject_loot_template`) GROUP BY `sound1`;

-- Now update gameobject_loot_template with new ids
UPDATE IGNORE `gameobject_loot_template` a,`goloot2` b SET a.`entry`=b.`sound1`+1000000 WHERE a.`entry`=b.`loot`;

-- Now remove remaining loots not binded (conflits in several update or just garbage)
DELETE FROM `gameobject_loot_template` WHERE `entry` NOT IN (SELECT DISTINCT `sound1`+1000000 FROM `goloot2` UNION SELECT DISTINCT `loot` FROM `goloot` WHERE `sound1`=0);
UPDATE `gameobject_loot_template` SET `entry`=`entry`-1000000 WHERE `entry`>1000000;

-- Cleanup but let bad sound1 entries for later correction
DELETE FROM `goloot` WHERE `sound1`!=0;
DELETE FROM `goloot` WHERE `loot` NOT IN (SELECT DISTINCT `entry` FROM `gameobject_loot_template`);

--      Inverse comments in following 3 lines to see generated errors on conversion for gameobjects type 3 with sound1=0
-- DROP TABLE IF EXISTS `gameobject_loot_errors`;
-- RENAME TABLE `goloot` TO `gameobject_loot_errors`;
DROP TABLE IF EXISTS `goloot`;

-- Remove second temp table
DROP TABLE IF EXISTS `goloot2`;
-- Remove now not usefull loot column
ALTER TABLE `gameobject` DROP COLUMN `loot`;

-- 4788_mangos_gameobject_template.sql
ALTER TABLE `gameobject_template`
    CHANGE COLUMN `sound0` `data0` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound1` `data1` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound2` `data2` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound3` `data3` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound4` `data4` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound5` `data5` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound6` `data6` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound7` `data7` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound8` `data8` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound9` `data9` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound10` `data10` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound11` `data11` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound12` `data12` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound13` `data13` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound14` `data14` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound15` `data15` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound16` `data16` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound17` `data17` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound18` `data18` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound19` `data19` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound20` `data20` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound21` `data21` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound22` `data22` int(11) unsigned NOT NULL default '0',
    CHANGE COLUMN `sound23` `data23` int(11) unsigned NOT NULL default '0';
