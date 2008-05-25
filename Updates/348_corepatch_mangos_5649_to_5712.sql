-- 5651
update creature_template set speed=1 where speed=0;
alter table `creature_template` change `speed` `speed` float  DEFAULT '1' NULL;

-- 5655
-- (46090) Brutal Idol of Steadfastness ()
DELETE FROM `spell_affect` WHERE `entry` IN (46090);
INSERT INTO `spell_affect` VALUES (46090, 0, 0, 0x0000000000000002, 0);
-- (46100) Brutal Idol of Tenacity ()
DELETE FROM `spell_affect` WHERE `entry` IN (46100);
INSERT INTO `spell_affect` VALUES (46100, 0, 0, 0x0000001000000000, 0);
-- (46088) Brutall Idol of Resolve ()
DELETE FROM `spell_affect` WHERE `entry` IN (46088);
INSERT INTO `spell_affect` VALUES (46088, 0, 0, 0x0000044000000000, 0);
-- (46091) Brutal Libram of Fortitude ()
DELETE FROM `spell_affect` WHERE `entry` IN (46091);
INSERT INTO `spell_affect` VALUES (46091, 0, 0, 0x0000000000800000, 0);
-- (46095) Brutal Libram of Vengeance ()
DELETE FROM `spell_affect` WHERE `entry` IN (46095);
INSERT INTO `spell_affect` VALUES (46095, 0, 0, 0x0000004000000000, 0);
-- (46851) Holy Shock Bonus ()
DELETE FROM `spell_affect` WHERE `entry` IN (46851);
INSERT INTO `spell_affect` VALUES (46851, 0, 0, 0x0001000000000000, 0);
-- (46096) Brutal Totem of Indomitability ()
DELETE FROM `spell_affect` WHERE `entry` IN (46096);
INSERT INTO `spell_affect` VALUES (46096, 0, 0, 0x0000001000000000, 0);
-- (46097) Brutal Totem of Survival ()
DELETE FROM `spell_affect` WHERE `entry` IN (46097);
INSERT INTO `spell_affect` VALUES (46097, 0, 0, 0x0000000090100000, 0);
-- By triggers
DELETE FROM `spell_affect` WHERE `entry` IN (31569);
DELETE FROM `spell_affect` WHERE `entry` IN (31570);
-- By dummy
DELETE FROM `spell_affect` WHERE `entry` IN (28830);
DELETE FROM `spell_affect` WHERE `entry` IN (33695);
DELETE FROM `spell_affect` WHERE `entry` IN (37182);

-- 5655
DELETE FROM `spell_chain` WHERE `spell_id` IN (6461,6463,19289,19291,19292,19293,25450);

-- 5655
DELETE FROM `spell_proc_event` WHERE `entry` IN (1328,2689,4387,4388,4389,4390,4494,4495,4496,5341,5342,5343,5344,5345,5346,5349,5350,5351,5352,5353,5354,5429,5430,5431,5432,5433,5513,5549,5550,5551,5552,5553,5554,5638,5639,5640,5641,5642,5643,5751,5752,5753,5754,5755,5756,5976,5977,5979,13483);

-- 5659
ALTER TABLE `creature_loot_template` 
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `disenchant_loot_template` 
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `fishing_loot_template`
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `gameobject_loot_template`
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `item_loot_template`
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `pickpocketing_loot_template`
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `prospecting_loot_template`
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';
ALTER TABLE `skinning_loot_template` 
  CHANGE `group` groupid tinyint unsigned NOT NULL default '0';

-- 5660
DELETE FROM `spell_elixir` WHERE `entry` IN (46837,46839);
INSERT INTO `spell_elixir` VALUES
(46837,0xB),
(46839,0xB);

-- 5664
ALTER TABLE npc_vendor
    ADD ExtendedCost mediumint(8) unsigned NOT NULL default '0';
UPDATE npc_vendor,item_template SET npc_vendor.ExtendedCost = item_template.ExtendedCost WHERE npc_vendor.item = item_template.entry;
ALTER TABLE item_template
    DROP ExtendedCost,
    DROP CondExtendedCost;
	
-- 5665
UPDATE `creature_template` SET `scale` ='1';

-- 5679
ALTER TABLE creature_template
  CHANGE resistance1 resistance1 smallint(5) NOT NULL default '0',
  CHANGE resistance2 resistance2 smallint(5) NOT NULL default '0',
  CHANGE resistance3 resistance3 smallint(5) NOT NULL default '0',
  CHANGE resistance4 resistance4 smallint(5) NOT NULL default '0',
  CHANGE resistance5 resistance5 smallint(5) NOT NULL default '0',
  CHANGE resistance6 resistance6 smallint(5) NOT NULL default '0';

-- 5680
DELETE FROM spell_proc_event WHERE entry IN (37306,37311,32767);
INSERT IGNORE INTO spell_proc_event VALUES 
(37306,0,0,0,0,0x0000000000000000,0x00000001,0),
(37311,0,0,0,0,0x0000000000000000,0x00000001,0);

-- 5698
ALTER TABLE item_template
  CHANGE COLUMN stackable stackable smallint(5) unsigned NOT NULL default '1';
  
-- 5708
UPDATE `player_levelstats` SET `basehp` =   23, `basemana` =   90 WHERE `class` = 9 AND `level`=1;
UPDATE `player_levelstats` SET `basehp` =   28, `basemana` =   98 WHERE `class` = 9 AND `level`=2;
UPDATE `player_levelstats` SET `basehp` =   43, `basemana` =  107 WHERE `class` = 9 AND `level`=3;
UPDATE `player_levelstats` SET `basehp` =   48, `basemana` =  102 WHERE `class` = 9 AND `level`=4;
UPDATE `player_levelstats` SET `basehp` =   63, `basemana` =  113 WHERE `class` = 9 AND `level`=5;
UPDATE `player_levelstats` SET `basehp` =   68, `basemana` =  126 WHERE `class` = 9 AND `level`=6;
UPDATE `player_levelstats` SET `basehp` =   83, `basemana` =  144 WHERE `class` = 9 AND `level`=7;
UPDATE `player_levelstats` SET `basehp` =   88, `basemana` =  162 WHERE `class` = 9 AND `level`=8;
UPDATE `player_levelstats` SET `basehp` =   93, `basemana` =  180 WHERE `class` = 9 AND `level`=9;
UPDATE `player_levelstats` SET `basehp` =  108, `basemana` =  198 WHERE `class` = 9 AND `level`=10;
UPDATE `player_levelstats` SET `basehp` =  123, `basemana` =  200 WHERE `class` = 9 AND `level`=11;
UPDATE `player_levelstats` SET `basehp` =  128, `basemana` =  218 WHERE `class` = 9 AND `level`=12;
UPDATE `player_levelstats` SET `basehp` =  143, `basemana` =  237 WHERE `class` = 9 AND `level`=13;
UPDATE `player_levelstats` SET `basehp` =  148, `basemana` =  257 WHERE `class` = 9 AND `level`=14;
UPDATE `player_levelstats` SET `basehp` =  153, `basemana` =  278 WHERE `class` = 9 AND `level`=15;
UPDATE `player_levelstats` SET `basehp` =  168, `basemana` =  300 WHERE `class` = 9 AND `level`=16;
UPDATE `player_levelstats` SET `basehp` =  173, `basemana` =  308 WHERE `class` = 9 AND `level`=17;
UPDATE `player_levelstats` SET `basehp` =  189, `basemana` =  332 WHERE `class` = 9 AND `level`=18;
UPDATE `player_levelstats` SET `basehp` =  196, `basemana` =  357 WHERE `class` = 9 AND `level`=19;
UPDATE `player_levelstats` SET `basehp` =  204, `basemana` =  383 WHERE `class` = 9 AND `level`=20;
UPDATE `player_levelstats` SET `basehp` =  223, `basemana` =  395 WHERE `class` = 9 AND `level`=21;
UPDATE `player_levelstats` SET `basehp` =  233, `basemana` =  423 WHERE `class` = 9 AND `level`=22;
UPDATE `player_levelstats` SET `basehp` =  244, `basemana` =  452 WHERE `class` = 9 AND `level`=23;
UPDATE `player_levelstats` SET `basehp` =  266, `basemana` =  467 WHERE `class` = 9 AND `level`=24;
UPDATE `player_levelstats` SET `basehp` =  279, `basemana` =  498 WHERE `class` = 9 AND `level`=25;
UPDATE `player_levelstats` SET `basehp` =  293, `basemana` =  530 WHERE `class` = 9 AND `level`=26;
UPDATE `player_levelstats` SET `basehp` =  318, `basemana` =  548 WHERE `class` = 9 AND `level`=27;
UPDATE `player_levelstats` SET `basehp` =  334, `basemana` =  582 WHERE `class` = 9 AND `level`=28;
UPDATE `player_levelstats` SET `basehp` =  351, `basemana` =  602 WHERE `class` = 9 AND `level`=29;
UPDATE `player_levelstats` SET `basehp` =  379, `basemana` =  638 WHERE `class` = 9 AND `level`=30;
UPDATE `player_levelstats` SET `basehp` =  398, `basemana` =  674 WHERE `class` = 9 AND `level`=31;
UPDATE `player_levelstats` SET `basehp` =  418, `basemana` =  695 WHERE `class` = 9 AND `level`=32;
UPDATE `player_levelstats` SET `basehp` =  439, `basemana` =  731 WHERE `class` = 9 AND `level`=33;
UPDATE `player_levelstats` SET `basehp` =  471, `basemana` =  752 WHERE `class` = 9 AND `level`=34;
UPDATE `player_levelstats` SET `basehp` =  494, `basemana` =  788 WHERE `class` = 9 AND `level`=35;
UPDATE `player_levelstats` SET `basehp` =  518, `basemana` =  809 WHERE `class` = 9 AND `level`=36;
UPDATE `player_levelstats` SET `basehp` =  543, `basemana` =  830 WHERE `class` = 9 AND `level`=37;
UPDATE `player_levelstats` SET `basehp` =  569, `basemana` =  866 WHERE `class` = 9 AND `level`=38;
UPDATE `player_levelstats` SET `basehp` =  606, `basemana` =  887 WHERE `class` = 9 AND `level`=39;
UPDATE `player_levelstats` SET `basehp` =  634, `basemana` =  923 WHERE `class` = 9 AND `level`=40;
UPDATE `player_levelstats` SET `basehp` =  663, `basemana` =  944 WHERE `class` = 9 AND `level`=41;
UPDATE `player_levelstats` SET `basehp` =  693, `basemana` =  965 WHERE `class` = 9 AND `level`=42;
UPDATE `player_levelstats` SET `basehp` =  724, `basemana` = 1001 WHERE `class` = 9 AND `level`=43;
UPDATE `player_levelstats` SET `basehp` =  756, `basemana` = 1022 WHERE `class` = 9 AND `level`=44;
UPDATE `player_levelstats` SET `basehp` =  799, `basemana` = 1043 WHERE `class` = 9 AND `level`=45;
UPDATE `player_levelstats` SET `basehp` =  832, `basemana` = 1064 WHERE `class` = 9 AND `level`=46;
UPDATE `player_levelstats` SET `basehp` =  868, `basemana` = 1100 WHERE `class` = 9 AND `level`=47;
UPDATE `player_levelstats` SET `basehp` =  904, `basemana` = 1121 WHERE `class` = 9 AND `level`=48;
UPDATE `player_levelstats` SET `basehp` =  941, `basemana` = 1142 WHERE `class` = 9 AND `level`=49;
UPDATE `player_levelstats` SET `basehp` =  979, `basemana` = 1163 WHERE `class` = 9 AND `level`=50;
UPDATE `player_levelstats` SET `basehp` = 1018, `basemana` = 1184 WHERE `class` = 9 AND `level`=51;
UPDATE `player_levelstats` SET `basehp` = 1058, `basemana` = 1205 WHERE `class` = 9 AND `level`=52;
UPDATE `player_levelstats` SET `basehp` = 1099, `basemana` = 1226 WHERE `class` = 9 AND `level`=53;
UPDATE `player_levelstats` SET `basehp` = 1141, `basemana` = 1247 WHERE `class` = 9 AND `level`=54;
UPDATE `player_levelstats` SET `basehp` = 1184, `basemana` = 1268 WHERE `class` = 9 AND `level`=55;
UPDATE `player_levelstats` SET `basehp` = 1228, `basemana` = 1289 WHERE `class` = 9 AND `level`=56;
UPDATE `player_levelstats` SET `basehp` = 1273, `basemana` = 1310 WHERE `class` = 9 AND `level`=57;
UPDATE `player_levelstats` SET `basehp` = 1319, `basemana` = 1331 WHERE `class` = 9 AND `level`=58;
UPDATE `player_levelstats` SET `basehp` = 1366, `basemana` = 1352 WHERE `class` = 9 AND `level`=59;
UPDATE `player_levelstats` SET `basehp` = 1414, `basemana` = 1373 WHERE `class` = 9 AND `level`=60;
UPDATE `player_levelstats` SET `basehp` = 1580, `basemana` = 1497 WHERE `class` = 9 AND `level`=61;
UPDATE `player_levelstats` SET `basehp` = 1755, `basemana` = 1621 WHERE `class` = 9 AND `level`=62;
UPDATE `player_levelstats` SET `basehp` = 1939, `basemana` = 1745 WHERE `class` = 9 AND `level`=63;
UPDATE `player_levelstats` SET `basehp` = 2133, `basemana` = 1870 WHERE `class` = 9 AND `level`=64;
UPDATE `player_levelstats` SET `basehp` = 2323, `basemana` = 1994 WHERE `class` = 9 AND `level`=65;
UPDATE `player_levelstats` SET `basehp` = 2535, `basemana` = 2118 WHERE `class` = 9 AND `level`=66;
UPDATE `player_levelstats` SET `basehp` = 2758, `basemana` = 2242 WHERE `class` = 9 AND `level`=67;
UPDATE `player_levelstats` SET `basehp` = 2991, `basemana` = 2366 WHERE `class` = 9 AND `level`=68;
UPDATE `player_levelstats` SET `basehp` = 3235, `basemana` = 2490 WHERE `class` = 9 AND `level`=69;
UPDATE `player_levelstats` SET `basehp` = 3490, `basemana` = 2615 WHERE `class` = 9 AND `level`=70;

-- 5711
DELETE FROM `command` WHERE `name` = "honor flushkills";
DELETE FROM `command` WHERE `name` = "honor";
INSERT INTO `command` VALUES
("honor", 2, "Syntax: .honor $command [$value] Various honor related commands. Use .help honor $command to get help on specific parameter usage. Supported parameters include add, addkill, update");

