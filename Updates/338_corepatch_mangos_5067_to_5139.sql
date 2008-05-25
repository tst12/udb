-- 5070_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (5301,13358,16092);
INSERT INTO `spell_proc_event` VALUES
 ( 5301,0,0,0,0,0x0000000000000000,0x00000000,0),
 (13358,0,0,0,0,0x0000000000000000,0x00000000,0),
 (16092,0,0,0,0,0x0000000000000000,0x00000000,0);

-- 5072_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (12328,18765);
INSERT INTO `spell_proc_event` VALUES
 (12328,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (18765,0,0,0,0,0x0000000000000000,0xC4000001,0);

-- 5075_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (13877,33735);
INSERT INTO `spell_proc_event` VALUES
 (13877,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (33735,0,0,0,0,0x0000000000000000,0xC4000001,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (12966,12967,12968,12969,12970,16257,16277,16278,16279,16280,17687);
INSERT INTO `spell_proc_event` VALUES
 (12966,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (12967,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (12968,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (12969,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (12970,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (16257,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (16277,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (16278,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (16279,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (16280,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (17687,0,0,0,0,0x0000000000000000,0xC4000001,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (40353);
INSERT INTO `spell_proc_event` VALUES
 (40353,0,0,0,0,0x0000000000000000,0xC4000001,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (29448,35205);
INSERT INTO `spell_proc_event` VALUES
 (29448,0,0,0,0,0x0000000000000000,0xC4000001,0),
 (35205,0,0,0,0,0x0000000000000000,0xC4000001,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (1328);
INSERT INTO `spell_proc_event` VALUES
 (1328,0,0,0,0,0x0000000000000000,0xC4000001,0);

-- 5084_mangos_command.sql
DELETE FROM command WHERE name IN ('createguild','guild create','guild delete','guild invite','guild rank','guild uninvite');

INSERT INTO `command` VALUES 
('guild create',2,'Syntax: .guild create $GuildLeaderName $GuildName\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName as leader.'),
('guild delete',2,'Syntax: .guild delete $GuildName\r\n\r\nDelete guild $GuildName.'),
('guild invite',2,'Syntax: .guild invite $CharacterName $GuildName\r\n\r\nAdd $CharacterName into a guild $GuildName.'),
('guild rank',2,'Syntax: .guild rank $CharacterName #Rank\r\n\r\nSet for $CharacterName rank #Rank in a guild.'),
('guild uninvite',2,'Syntax: .guild uninvite $CharacterName\r\n\r\nRemove $CharacterName from a guild.');

-- 5085_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (16179,16214,16215,16216,16217);
INSERT INTO `spell_affect` VALUES
(16179,0,0,0,0,0,0,0x00000000000000C0,0),
(16214,0,0,0,0,0,0,0x00000000000000C0,0),
(16215,0,0,0,0,0,0,0x00000000000000C0,0),
(16216,0,0,0,0,0,0,0x00000000000000C0,0),
(16217,0,0,0,0,0,0,0x00000000000000C0,0);

-- 5087_mangos_spell_affect.sql
DELETE FROM `spell_affect` WHERE `entry` IN (20175);
INSERT INTO `spell_affect` VALUES
 (20175,0,0,0,0,0,0,0x0000000000000080,0),
 (20175,1,0,0,0,0,0,0x0000000000000010,0);

-- 5088_mangos_spell_proc_event.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (17106,17107,17108);
INSERT INTO `spell_proc_event` VALUES
 (17106,0,0,0,7,0x0000000000080000,0x00004000,0),
 (17107,0,0,0,7,0x0000000000080000,0x00004000,0),
 (17108,0,0,0,7,0x0000000000080000,0x00004000,0);

-- 5092_mangos_item_template.sql
ALTER TABLE `item_template` 
  ADD `Duration` int(11) NOT NULL DEFAULT '0' COMMENT 'Duration in seconds. Negative value means realtime, postive value ingame time';

-- 5097_mangos_skill_extra_item_template.sql
DROP TABLE IF EXISTS `skill_extra_item_template`;
CREATE TABLE `skill_extra_item_template` (
  `spellId` int(11) unsigned NOT NULL default '0' COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` int(11) unsigned NOT NULL default '0' COMMENT 'Specialization spell id',
  `additionalCreateChance` float NOT NULL default '0' COMMENT 'chance to create add',
  `additionalMaxNum` int(11) unsigned NOT NULL default '0' COMMENT 'max num of adds',

  PRIMARY KEY  (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Specialization System';

-- 5106_mangos_spell_chain.sql
DELETE FROM `spell_chain` WHERE `spell_id` IN (26790,27028,28029,28596,28695,28897,29354,29844,30350,32549,32678,33095,33359);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES
(26790,12180,3908,5),
(27028,10846,3273,5),
(28029,13920,7411,5),
(28596,11611,2259,5),
(28695,11993,2366,5),
(28897,28895,25229,5),
(29354,10248,2575,5),
(29844,9785,2018,5),
(30350,12656,4036,5),
(32549,10662,2108,5),
(32678,10768,8613,5),
(33095,18248,7620,5),
(33359,18260,2550,5);

-- 5119
ALTER TABLE `quest_template` 
  ADD `RepObjectiveFaction` int(10) unsigned NOT NULL default '0' AFTER `RequiredSkillValue`,
  ADD `RepObjectiveValue`   int(10)          NOT NULL default '0' AFTER `RepObjectiveFaction`;
  
-- 5120
DELETE FROM `spell_chain` WHERE `spell_id` IN (9787,9788,17039,17040,17041,10656,10658,10660,20219,20222,26797,26798,26801);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`) VALUES
(9787,29844,2018,6),
(9788,29844,2018,6),
(17039,9787,2018,7),
(17040,9787,2018,7),
(17041,9787,2018,7),
(10656,32549,2108,6),
(10658,32549,2108,6),
(10660,32549,2108,6),
(20219,30350,4036,6),
(20222,30350,4036,6),
(26797,26790,3908,6),
(26798,26790,3908,6),
(26801,26790,3908,6);

-- 5121
DELETE FROM `spell_affect` WHERE `entry` IN (11071,12496);
INSERT INTO `spell_affect` VALUES 
 (11071,0,0,0,0,0,0,0x0000000000100000,0),
 (12496,0,0,0,0,0,0,0x0000000000100000,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16578,16579,16580,16581,16582);
INSERT INTO `spell_affect` VALUES
 (16578,0,0,0,0,0,0,0x0000000000000003,0),
 (16579,0,0,0,0,0,0,0x0000000000000003,0),
 (16580,0,0,0,0,0,0,0x0000000000000003,0),
 (16581,0,0,0,0,0,0,0x0000000000000003,0),
 (16582,0,0,0,0,0,0,0x0000000000000003,0);

DELETE FROM `spell_affect` WHERE `entry` IN (16194,16218,16219,16220,16221);
INSERT INTO `spell_affect` VALUES
 (16194,0,0,0,0,0,0,0x00000000000001C3,0),
 (16218,0,0,0,0,0,0,0x00000000000001C3,0),
 (16219,0,0,0,0,0,0,0x00000000000001C3,0),
 (16220,0,0,0,0,0,0,0x00000000000001C3,0),
 (16221,0,0,0,0,0,0,0x00000000000001C3,0);

DELETE FROM spell_affect WHERE entry IN (16934,16935,16936,16937,16938);
INSERT INTO `spell_affect` VALUES
 (16934,0,0,0,0,0,0,0x0010004000000800,0),
 (16934,1,0,0,0,0,0,0x0000040000001000,0),
 (16935,0,0,0,0,0,0,0x0010004000000800,0),
 (16935,1,0,0,0,0,0,0x0000040000001000,0),
 (16936,0,0,0,0,0,0,0x0010004000000800,0),
 (16936,1,0,0,0,0,0,0x0000040000001000,0),
 (16937,0,0,0,0,0,0,0x0010004000000800,0),
 (16937,1,0,0,0,0,0,0x0000040000001000,0),
 (16938,0,0,0,0,0,0,0x0010004000000800,0),
 (16938,1,0,0,0,0,0,0x0000040000001000,0);
 
-- 5123
DELETE FROM `spell_proc_event` WHERE `entry` IN (34860,34859,34753);
INSERT INTO `spell_proc_event` VALUES
 (34860,0,0,0,6,0x0000000000001800,0x08000000,0),
 (34859,0,0,0,6,0x0000000000001800,0x08000000,0),
 (34753,0,0,0,6,0x0000000000001800,0x08000000,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (45244,45243,45234);
INSERT INTO `spell_proc_event` VALUES
 (45244,0,0,0,0,0x0000000000000000,0x00842000,0),
 (45243,0,0,0,0,0x0000000000000000,0x00842000,0),
 (45234,0,0,0,0,0x0000000000000000,0x00842000,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (35083);
INSERT INTO `spell_proc_event` VALUES
 (35083,0,0,0,0,0x0000000000000000,0x00020000,0);
 
DELETE FROM `spell_proc_event` WHERE `entry` IN (35086);
INSERT INTO `spell_proc_event` VALUES
 (35086,0,0,0,0,0x0000000000000000,0x08020000,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (35080);
INSERT INTO `spell_proc_event` VALUES
 (35080,0,0,0,0,0x0000000000000000,0x00000001,0);

DELETE FROM `spell_proc_event` WHERE `entry` IN (35077);
INSERT INTO `spell_proc_event` VALUES
 (35077,0,0,0,0,0x0000000000000000,0x00008000,0);  
 
-- 5128
DELETE FROM `spell_proc_event` WHERE `entry` IN (24949,34082);
INSERT INTO `spell_proc_event` VALUES
 (24949,0,0,0,0,0x0000000000000000,0x00000000,0),
 (34082,0,0,0,0,0x0000000000000000,0x00000000,0);

-- 5130
DELETE FROM `spell_proc_event` WHERE `entry` IN (21063,27539,28764,33493,38196);
INSERT INTO `spell_proc_event` VALUES
 (21063,0,0,0,0,0x0000000000000000,0x00008000,0),
 (27539,0,0,0,0,0x0000000000000000,0x00100000,0),
 (28764,0,0,0,0,0x0000000000000000,0x00100000,0),
 (33493,0,0,0,0,0x0000000000000000,0x00000002,0),
 (38196,0,0,0,0,0x0000000000000000,0x00000001,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (29441,29444,29445,29446,29447);
INSERT INTO `spell_proc_event` VALUES
 (29441,0,0,0,0,0x0000000000000000,0x01000000,0),
 (29444,0,0,0,0,0x0000000000000000,0x01000000,0),
 (29445,0,0,0,0,0x0000000000000000,0x01000000,0),
 (29446,0,0,0,0,0x0000000000000000,0x01000000,0),
 (29447,0,0,0,0,0x0000000000000000,0x01000000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (27243);
INSERT INTO `spell_proc_event` VALUES
 (27243,0,0,0,0,0x0000000000000000,0x00008000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (40438);
INSERT INTO `spell_proc_event` VALUES
 (40438,0,0,0,6,0x0000000000008010,0x08020000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (26169);
INSERT INTO `spell_proc_event` VALUES
 (26169,0,0,0,0,0x0000000000000000,0x08000000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (40442);
INSERT INTO `spell_proc_event` VALUES
 (40442,0,0,0,7,0x0000044000000014,0x00004000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (28719);
INSERT INTO `spell_proc_event` VALUES
 (28719,0,0,0,7,0x0000000000000020,0x10000000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (28847);
INSERT INTO `spell_proc_event` VALUES
 (28847,0,0,0,7,0x0000000000000020,0x00004000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (37288,37295);
INSERT INTO `spell_proc_event` VALUES
 (37288,0,0,0,0,0x0000000000000000,0x08000000,0),
 (37295,0,0,0,0,0x0000000000000000,0x00020000,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (31892);
INSERT INTO `spell_proc_event` VALUES
 (31892,0,0,0,0,0x0000000000000000,0x00000001,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (40470);
INSERT INTO `spell_proc_event` VALUES
 (40470,0,0,0,10,0x0000000000806000,0x00004000,0);
