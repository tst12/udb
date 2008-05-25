-- 5585
DELETE FROM spell_affect WHERE entry = 16089;
INSERT INTO spell_affect (entry,effectId,SpellFamily,SpellFamilyMask,Charges) VALUES
(16089,0,0,0x00000004D3300407,0);
DELETE FROM spell_affect WHERE entry = 16166;
INSERT INTO spell_affect (entry,effectId,SpellFamily,SpellFamilyMask,Charges) VALUES
(16166,0,0,0x0000000090100003,0),
(16166,1,0,0x0000000090100003,0);
UPDATE spell_proc_event SET ppmRate = '10.5' WHERE entry = 30823;
ALTER TABLE `gameobject_template` ADD COLUMN `castBarCaption` varchar(100) NOT NULL default '' AFTER name;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc1` varchar(100) NOT NULL default '' AFTER name_loc7;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc2` varchar(100) NOT NULL default '' AFTER castbarcaption_loc1;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc3` varchar(100) NOT NULL default '' AFTER castbarcaption_loc2;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc4` varchar(100) NOT NULL default '' AFTER castbarcaption_loc3;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc5` varchar(100) NOT NULL default '' AFTER castbarcaption_loc4;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc6` varchar(100) NOT NULL default '' AFTER castbarcaption_loc5;
ALTER TABLE `locales_gameobject` ADD COLUMN `castbarcaption_loc7` varchar(100) NOT NULL default '' AFTER castbarcaption_loc6;

-- 5586
DELETE FROM `spell_proc_event` WHERE `entry`=28305;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Category`, `SkillID`, `SpellFamilyName`, `SpellFamilyMask`, `procFlags`, `ppmRate`) VALUE 
(28305,0,0,0,0,0x0000000000000000,0x00000001,0);

-- 5589
DELETE FROM `spell_proc_event` WHERE `entry` IN (16952,16954);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `Category`, `SkillID`, `SpellFamilyName`, `SpellFamilyMask`, `procFlags`, `ppmRate`) VALUE 
(16952,0,0,0,0,0x0000040000039000,0x00010000,0),
(16954,0,0,0,0,0x0000040000039000,0x00010000,0);

-- 5593
UPDATE spell_proc_event SET ppmRate = 20 WHERE entry IN (20166,20356,20357,27166);
UPDATE spell_proc_event SET ppmRate = 20 WHERE entry IN (20165,20347,20348,20349,27160);

-- 5628
ALTER  TABLE  creature_movement
    DROP aiscript;

-- 5634
DELETE FROM mangos_string WHERE entry in (666);
INSERT INTO mangos_string VALUES
(666,'After your recent battle in %s our best attempts to award you a Mark of Honor failed. Enclosed you will find the Mark of Honor we were not able to deliver to you at the time. Thanks for fighting in %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5636
ALTER TABLE `creature_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `creature_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `creature_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `disenchant_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `disenchant_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `disenchant_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `fishing_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `fishing_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `fishing_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `gameobject_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `gameobject_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `gameobject_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `item_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `item_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `item_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `pickpocketing_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `pickpocketing_loot_template` SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `pickpocketing_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `prospecting_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `prospecting_loot_template`SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `prospecting_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;


ALTER TABLE `skinning_loot_template`
  ADD `ChanceOrQuestChance` FLOAT NOT NULL default '100' AFTER `ChanceOrRef`,
  ADD `group` tinyint unsigned NOT NULL default '0' AFTER `QuestChanceOrGroup`,
  ADD `mincountOrRef` mediumint NOT NULL default '1' AFTER `mincount`;

UPDATE `skinning_loot_template`  SET
  `ChanceOrQuestChance` = if(`QuestChanceOrGroup` > 0, -`QuestChanceOrGroup`, if(`ChanceOrRef` < 0, 100, `ChanceOrRef`)),
  `group` = if(`QuestChanceOrGroup` > 0, 0, -`QuestChanceOrGroup`),
  `mincountOrRef` = if(`ChanceOrRef` < 0, `ChanceOrRef`, `mincount`),
  `maxcount` = if(`ChanceOrRef` < 0, 1, `maxcount`);

ALTER TABLE `skinning_loot_template`
  DROP `ChanceOrRef`,
  DROP `QuestChanceOrGroup`,
  DROP `mincount`;

-- 5640
DELETE FROM `spell_proc_event` WHERE `entry`=24905;
INSERT INTO `spell_proc_event` ( `entry` , `SchoolMask` , `Category` , `SkillID` , `SpellFamilyName` , `SpellFamilyMask` , `procFlags` , `ppmRate` ) VALUES
('24905', '0', '0', '0', '0', '0', '1', '15');

-- 5642
DELETE FROM mangos_string WHERE entry in (548);
INSERT INTO mangos_string VALUES
(548,'Player%s %s (guid: %u) Account: %s (id: %u) GMLevel: %u Last IP: %s Last login: %s Latency: %ums',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

