-- 5265
DELETE FROM `spell_proc_event` WHERE `entry` IN (39446);
INSERT INTO `spell_proc_event` VALUES
(39446,0,0,0,0,0x0000000000000000,0x00000004,0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (32863,36123,38252,39367);
INSERT INTO `spell_proc_event` VALUES
(32863,0,0,0,0,0x0000000000000000,0x00008000,0),
(36123,0,0,0,0,0x0000000000000000,0x00008000,0),
(38252,0,0,0,0,0x0000000000000000,0x00008000,0),
(39367,0,0,0,0,0x0000000000000000,0x00008000,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (37381);
INSERT INTO `spell_proc_event` VALUES
(37381,0,0,0,0,0x0000000000000000,0x000a0001,0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (39372);
INSERT INTO `spell_proc_event` VALUES
(39372,0,0,0,0,0x0000000000000000,0x00020000,0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (28789);
INSERT INTO `spell_proc_event` VALUES
(28789,0,0,0,10,0x0000000000006000,0x20000000,0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (28849);
INSERT INTO `spell_proc_event` VALUES
(28849,0,0,0,11,0x0000000000000080,0x00004000,0); 

DELETE FROM `spell_proc_event` WHERE `entry` IN (37655,38334);
INSERT INTO `spell_proc_event` VALUES 
(37655,0,0,0,0,0x0000000000000000,0x00004000,0),
(38334,0,0,0,0,0x0000000000000000,0x00004000,0);

-- 5269
/*ALTER TABLE `uptime` 
ADD COLUMN `maxplayers` int(11) unsigned NOT NULL default '0';
*/
-- 5270
DROP TABLE IF EXISTS `gameobject_scripts`; 
ALTER TABLE `button_scripts` RENAME TO `gameobject_scripts`; 

-- 5272
DELETE FROM `mangos_string` WHERE `entry` in (707,708,709,710);
INSERT INTO `mangos_string` VALUES
(707,'%s wishes to not be disturbed and cannot receive whisper messages: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(708,'%s is Away from Keyboard: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(709,'Do not Disturb',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(710,'Away from Keyboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL); 

-- 5292
DELETE FROM `spell_proc_event` WHERE `entry` IN (13743,13875);
INSERT INTO `spell_proc_event` VALUES
(13743,0,0,0,8,0x0000000000000040,0x00004000,0),
(13875,0,0,0,8,0x0000000000000040,0x00004000,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (16864);
INSERT INTO `spell_proc_event` VALUES
(16864,0,0,0,0,0x0000000000000000,0x00000001,2);
