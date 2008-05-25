DELETE FROM command WHERE name IN ('gozonexy','lookup area');

INSERT INTO `command` VALUES 
('gozonexy',1,'Syntax: .gozonexy #x #y [#zone]\r\n\r\nTeleport player to point with (#x,#y) client coordinates at ground(water) level in zone #zoneid or current zone if #zoneid not provided. You can look up zone using .lookup area $namepart'),
('lookup area',1,'Syntax: .lookup area $namepart\r\n\r\nLooks up an area by $namepart, and returns all matches with their area ID\'s.');
ALTER TABLE `quest_template` ADD COLUMN `SpecialFlags` tinyint(1) unsigned NOT NULL default '0' AFTER `QuestFlags`;
ALTER TABLE `quest_template` CHANGE COLUMN `QuestFlags` `QuestFlags` smallint(5) unsigned NOT NULL default '0';
UPDATE `quest_template` SET `SpecialFlags`=1 WHERE `Repeatable`=1;
ALTER TABLE `quest_template` DROP COLUMN `Repeatable`;
-- custom
-- UNIT_NPC_FLAG_GUARD                 = 0x00010000, old 
-- UNIT_NPC_FLAG_GUARD                 = 0x10000000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x10000000) & ~0x00010000 WHERE `npcflag` & 0x00010000;

-- UNIT_NPC_FLAG_STABLEMASTER          = 0x00002000, old
-- UNIT_NPC_FLAG_STABLEMASTER          = 0x00400000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00400000) & ~0x00002000 WHERE `npcflag` & 0x00002000;

-- UNIT_NPC_FLAG_AUCTIONEER            = 0x00001000, old
-- UNIT_NPC_FLAG_AUCTIONEER            = 0x00200000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00200000) & ~0x00001000 WHERE `npcflag` & 0x00001000;

-- UNIT_NPC_FLAG_BATTLEFIELDPERSON     = 0x00000800, old
-- UNIT_NPC_FLAG_BATTLEMASTER          = 0x00100000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00100000) & ~0x00000800 WHERE `npcflag` & 0x00000800;

-- UNIT_NPC_FLAG_ARMORER               = 0x00004000, old
-- UNIT_NPC_FLAG_REPAIR                = 0x00001000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00001000) & ~0x00004000 WHERE `npcflag` & 0x00004000;

-- UNIT_NPC_FLAG_TABARDDESIGNER        = 0x00000400, old
-- UNIT_NPC_FLAG_TABARDDESIGNER        = 0x00080000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00080000) & ~0x00000400 WHERE `npcflag` & 0x00000400;

-- UNIT_NPC_FLAG_PETITIONER            = 0x00000200, old
-- UNIT_NPC_FLAG_PETITIONER            = 0x00040000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00040000) & ~0x00000200 WHERE `npcflag` & 0x00000200;

-- UNIT_NPC_FLAG_BANKER                = 0x00000100, old
-- UNIT_NPC_FLAG_BANKER                = 0x00020000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00020000) & ~0x00000100 WHERE `npcflag` & 0x00000100;

-- UNIT_NPC_FLAG_INNKEEPER             = 0x00000080, old
-- UNIT_NPC_FLAG_INNKEEPER             = 0x00010000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00010000) & ~0x00000080 WHERE `npcflag` & 0x00000080;

-- UNIT_NPC_FLAG_SPIRITGUIDE           = 0x00000040, old
-- UNIT_NPC_FLAG_SPIRITGUIDE           = 0x00008000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00008000) & ~0x00000040 WHERE `npcflag` & 0x00000040;

-- UNIT_NPC_FLAG_SPIRITHEALER          = 0x00000020, old
-- UNIT_NPC_FLAG_SPIRITHEALER          = 0x00004000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00004000) & ~0x00000020 WHERE `npcflag` & 0x00000020;

-- UNIT_NPC_FLAG_TAXIVENDOR            = 0x00000008, old
-- UNIT_NPC_FLAG_FLIGHTMASTER          = 0x00002000, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00002000) & ~0x00000008 WHERE `npcflag` & 0x00000008;

-- UNIT_NPC_FLAG_VENDOR                = 0x00000004, old
-- UNIT_NPC_FLAG_VENDOR                = 0x00000080, new
UPDATE `creature_template` SET `npcflag` = (`npcflag` | 0x00000080) & ~0x00000004 WHERE `npcflag` & 0x00000004;
ALTER TABLE `item_template`
 ADD COLUMN `RequiredArenaRank` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExtendedCost`;update `npc_option` set  `npcflag`=0x00000010 where `id` in('5','49','50');
update `npc_option` set  `npcflag`=0x00000080 where `id` = '3';
update `npc_option` set  `npcflag`=0x00002000 where `id` = '4';
update `npc_option` set  `npcflag`=0x00004000 where `id` = '6';
update `npc_option` set  `npcflag`=0x00008000 where `id` = '7';
update `npc_option` set  `npcflag`=0x00010000 where `id` = '8';
update `npc_option` set  `npcflag`=0x00020000 where `id` = '9';
update `npc_option` set  `npcflag`=0x00040000 where `id` = '10';
update `npc_option` set  `npcflag`=0x00080000 where `id` = '11';
update `npc_option` set  `npcflag`=0x00100000 where `id` = '12';
update `npc_option` set  `npcflag`=0x00200000 where `id` = '13';
update `npc_option` set  `npcflag`=0x00400000 where `id` = '14';
update `npc_option` set  `npcflag`=0x00001000 where `id` = '15';
