-- 4890
UPDATE `item_template` SET `BagFamily` = 0x00000400 WHERE `BagFamily` =11;
UPDATE `item_template` SET `BagFamily` = 0x00000200 WHERE `BagFamily` =10;
UPDATE `item_template` SET `BagFamily` = 0x00000100 WHERE `BagFamily` = 9;
UPDATE `item_template` SET `BagFamily` = 0x00000080 WHERE `BagFamily` = 8;
UPDATE `item_template` SET `BagFamily` = 0x00000040 WHERE `BagFamily` = 7;
UPDATE `item_template` SET `BagFamily` = 0x00000020 WHERE `BagFamily` = 6;
UPDATE `item_template` SET `BagFamily` = 0x00000008 WHERE `BagFamily` = 4;
UPDATE `item_template` SET `BagFamily` = 0x00000004 WHERE `BagFamily` = 3;

-- 4895
DELETE FROM command WHERE name IN ('tele');
INSERT INTO `command` VALUES 
('tele',1,'Syntax: .tele #location\r\n\r\nTeleport player to a given location.');

-- 4898
INSERT IGNORE INTO `playercreateinfo_item` VALUES (11, 8, 6948, 1); 

-- 4904
UPDATE `item_template` SET `spellcooldown_1`         = -1 WHERE `spellcooldown_1`         = 0;
UPDATE `item_template` SET `spellcategorycooldown_1` = -1 WHERE `spellcategorycooldown_1` = 0;
UPDATE `item_template` SET `spellcooldown_2`         = -1 WHERE `spellcooldown_2`         = 0;
UPDATE `item_template` SET `spellcategorycooldown_2` = -1 WHERE `spellcategorycooldown_2` = 0;
UPDATE `item_template` SET `spellcooldown_3`         = -1 WHERE `spellcooldown_3`         = 0;
UPDATE `item_template` SET `spellcategorycooldown_3` = -1 WHERE `spellcategorycooldown_3` = 0;
UPDATE `item_template` SET `spellcooldown_4`         = -1 WHERE `spellcooldown_4`         = 0;
UPDATE `item_template` SET `spellcategorycooldown_4` = -1 WHERE `spellcategorycooldown_4` = 0;
UPDATE `item_template` SET `spellcooldown_5`         = -1 WHERE `spellcooldown_5`         = 0;
UPDATE `item_template` SET `spellcategorycooldown_5` = -1 WHERE `spellcategorycooldown_5` = 0;

-- 4908
DELETE FROM `spell_proc_event` WHERE `entry` IN (38394);
INSERT INTO `spell_proc_event` VALUES
(38394,36,0,0,5,6,131072,0);

-- 4916
DELETE FROM `spell_affect` WHERE `entry` IN (43857,43858,43859);
INSERT INTO `spell_affect` VALUES 
(43857,0,0,0,0,0,0,0x0000001000000000,0),
(43858,0,0,0,0,0,0,0x0000001000000000,0),
(43859,0,0,0,0,0,0,0x0000001000000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (43860,43861,43862);
INSERT INTO `spell_affect` VALUES 
(43860,0,0,0,0,0,0,0x0000000090100000,0),
(43861,0,0,0,0,0,0,0x0000000090100000,0),
(43862,0,0,0,0,0,0,0x0000000090100000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (28787);
INSERT INTO `spell_affect` VALUES 
(28787,0,0,0,0,0,0,0x0000000000001000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (41042,43850,43851,43852);
INSERT INTO `spell_affect` VALUES 
(41042,0,0,0,0,0,0,0x0000000000800000,0),
(43850,0,0,0,0,0,0,0x0000000000800000,0),
(43851,0,0,0,0,0,0,0x0000000000800000,0),
(43852,0,0,0,0,0,0,0x0000000000800000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (43854,43855,43856);
INSERT INTO `spell_affect` VALUES 
(43854,0,0,0,0,0,0,0x0000004000000000,0),
(43855,0,0,0,0,0,0,0x0000004000000000,0),
(43856,0,0,0,0,0,0,0x0000004000000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (41037,43840,43842,43843);
INSERT INTO `spell_affect` VALUES 
(41037,0,0,0,0,0,0,0x0000044000000000,0),
(43840,0,0,0,0,0,0,0x0000044000000000,0),
(43842,0,0,0,0,0,0,0x0000044000000000,0),
(43843,0,0,0,0,0,0,0x0000044000000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (43841,43844,43845);
INSERT INTO `spell_affect` VALUES 
(43841,0,0,0,0,0,0,0x0000000000000002,0),
(43844,0,0,0,0,0,0,0x0000000000000002,0),
(43845,0,0,0,0,0,0,0x0000000000000002,0);
DELETE FROM `spell_affect` WHERE `entry` IN (40460);
INSERT INTO `spell_affect` VALUES 
(40460,0,0,0,0,0,0,0x00000009003E0000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (28814);
INSERT INTO `spell_affect` VALUES 
(28814,0,0,0,0,0,0,0x0000000000020000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (17768);
INSERT INTO `spell_affect` VALUES 
(17768,0,0,0,0,0,0,0x0000000040000000,0),
(17768,1,0,0,0,0,0,0x0000000080000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (29836,29859);
INSERT INTO `spell_affect` VALUES 
(29836,0,0,0,0,0,0,0x0000001000000020,0),
(29859,0,0,0,0,0,0,0x0000001000000020,0);

-- 4921
ALTER TABLE `gameobject` CHANGE COLUMN `dynflags` `state` int(11) unsigned NOT NULL default '1';
UPDATE `gameobject` SET `state` = 1;


-- 4926
DELETE FROM `spell_proc_event` WHERE `entry` IN (40458);
INSERT INTO `spell_proc_event` VALUES
(40458,0,971,0,4,0x60102000000,1,0);


-- 4937
DELETE FROM `spell_affect` WHERE `entry` IN (11069,12338,12339,12340,12341);
INSERT INTO `spell_affect` VALUES 
 (11069,0,0,0,0,0,0,0x0000000000000001,0),
 (12338,0,0,0,0,0,0,0x0000000000000001,0),
 (12339,0,0,0,0,0,0,0x0000000000000001,0),
 (12340,0,0,0,0,0,0,0x0000000000000001,0),
 (12341,0,0,0,0,0,0,0x0000000000000001,0);
DELETE FROM `spell_affect` WHERE `entry` IN (11070,12473,16763,16765,16766);
INSERT INTO `spell_affect` VALUES 
 (11070,0,0,0,0,0,0,0x0000000000000020,0),
 (12473,0,0,0,0,0,0,0x0000000000000020,0),
 (16763,0,0,0,0,0,0,0x0000000000000020,0),
 (16765,0,0,0,0,0,0,0x0000000000000020,0),
 (16766,0,0,0,0,0,0,0x0000000000000020,0);
DELETE FROM `spell_affect` WHERE `entry` IN (17941);
INSERT INTO `spell_affect` VALUES 
 (17941,0,0,0,0,0,0,0x0000000000000001,1);
DELETE FROM `spell_affect` WHERE `entry` IN (20335,20336,20337);
INSERT INTO `spell_affect` VALUES 
 (20335,0,0,0,0,0,0,0x0000000020000000,0),
 (20336,0,0,0,0,0,0,0x0000000020000000,0),
 (20337,0,0,0,0,0,0,0x0000000020000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (32043,35396,35397);
INSERT INTO `spell_affect` VALUES 
 (32043,1,0,0,0,0,0,0x0000040008000000,0),
 (35396,1,0,0,0,0,0,0x0000040008000000,0),
 (35397,1,0,0,0,0,0,0x0000040008000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (36591);
DELETE FROM `spell_affect` WHERE `entry` IN (28176);
DELETE FROM `spell_affect` WHERE `entry` IN (28189);
DELETE FROM `spell_affect` WHERE `entry` IN (31842);
DELETE FROM `spell_affect` WHERE `entry` IN (38390);
DELETE FROM `spell_affect` WHERE `entry` IN (37188);
DELETE FROM `spell_affect` WHERE `entry` IN (37189);
DELETE FROM `spell_affect` WHERE `entry` IN (37227);
DELETE FROM `spell_affect` WHERE `entry` IN (43837);
INSERT INTO `spell_affect` VALUES 
 (43837,0,0,0,0,0,0,0x0000000080000000,0);
DELETE FROM `spell_affect` WHERE `entry` IN (39950);
INSERT INTO `spell_affect` VALUES 
 (39950,0,0,0,0,0,0,0x0000000000000040,0);


-- 4937
DELETE FROM `spell_proc_event` WHERE `entry` IN (37188,37189,37227);
INSERT INTO `spell_proc_event` VALUES
 (37188,0,0,0,10,0x0000000000800000,0x00004000,0),
 (37189,0,0,0,10,0x00000000C0000000,0x10000000,0),
 (37227,0,0,0,11,0x00000000000001C0,0x10000000,0);
