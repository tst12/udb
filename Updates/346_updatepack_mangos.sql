-- 345 update pack start -- 2008-03-22

-- gvcoman start
UPDATE `areatrigger_teleport` SET `target_position_y` = 4660.41 WHERE `id` = 4399;
UPDATE `areatrigger_teleport` SET `target_position_y` = 5225.77 WHERE `id` = 4403;
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` IN (598, 4110, 7999, 16351, 22039);
UPDATE `creature_template` SET `spell2` = 0 WHERE `entry` IN (2719, 4417, 17377);
UPDATE `creature_template` SET `spell3` = 0 WHERE `entry` IN (6215, 9078, 17395);
UPDATE `creature_template` SET `spell4` = 0 WHERE `entry` IN (3057);
-- gvcoman end

-- Brian start
-- Some cleanup of NPCs in Exodar, had random movement and looked AWEFUL
INSERT IGNORE INTO `game_event_creature` VALUES (84942, 7);
UPDATE creature SET MovementType = '0' WHERE guid = '63010';
UPDATE creature SET MovementType = '0' WHERE guid = '63009';
UPDATE creature SET spawn_position_x = '-4053.891602', spawn_position_y = '-11560.588867', spawn_position_z = '-138.530594', spawn_orientation = '1.557704',position_x = '-4053.891602', position_y = '-11560.588867', position_z = '-138.530594', orientation = '1.557704' WHERE guid = '63009';
UPDATE creature SET MovementType = '0' WHERE guid = '57742';
-- Brian end

-- Seph begins
-- Symbol of Kings should not be limited
UPDATE `npc_vendor` SET `maxcount` = '0', incrtime = '0' WHERE `item` = '21177';
-- Torloth the Magnificent is spawned by Battle of the Crimson Watch event
DELETE FROM `creature` WHERE `id` = '22076';
-- [DND]Ogre Pike Planted Credit civilian
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35', `civilian` = '1' WHERE `entry` = '22434';
-- Grisly Totem should be guaranteed quest loot
UPDATE `creature_loot_template` SET `QuestChanceOrGroup` = '100' WHERE `item` = '31754';
-- Grisly Totem indirect quest item
-- UPDATE `quest_template` SET `ReqSourceId1` = '31754', `ReqSourceCount1` = '3', `ReqSourceRef1` = '1' WHERE `entry` IN ('10723', '10802'); -- any possible reqspells?
-- Misha should not be summoned by SendEvent(14536), this is the alliance version, not horde
DELETE FROM `event_scripts` WHERE `id` = '14536' AND `datalong` = '10204';
-- again Earthbing Totem alliance model
UPDATE `creature_template` SET `modelid_A` = '19073' WHERE `entry` = '2630';
-- Cho'war's Key
-- UPDATE `quest_template` SET `ReqSourceId1` = '25648', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1' WHERE `entry` = '9923'; -- generates error, use go in creatureorgoid?
-- Anvilrage Taskmaster stats (no bestiary data available)
UPDATE `creature_template` SET `minlevel` = '48', `maxlevel` = '49', `minhealth` = '2510', `maxhealth` = '2608', `armor` = '2204', `lootid` = '24818', `pickpocketloot` = '24818', `mingold` = '300', `maxgold` = '400', `resistance2` = '100', `resistance5` = '20', `MovementType` = '1', `mindmg` = '120', `maxdmg` = '210', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24818';
-- Anvilrage Taskmaster loot
UPDATE `creature_loot_template` SET `entry` = '24818' WHERE `entry` = '8889';
UPDATE `pickpocketing_loot_template` SET `entry` = '24818' WHERE `entry` = '8889';
-- Nessy misc (had 8.9 speed)
UPDATE `creature_template` SET `minlevel` = '63', `maxlevel` = '63', `speed` = '2', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `skinloot` = '0' WHERE `entry` = '10942';
-- Astral Spark shouldn't be friendly and should not have physical damage
UPDATE `creature_template` SET `faction_A` = '14', `faction_H` = '14', `mindmg` = '1', `maxdmg` = '2', `dmgschool` = '6', `attackpower` = '3', `rangeattacktime` = '0', `rangedattackpower` = '0', `resistance6` = '100' WHERE `entry` = '17283';
-- Fel Reavers, No Thanks! fixes
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'2'
-- ,`ReqSourceId1` = '31653', `ReqSourceCount1` = '5', `ReqSourceRef1` = '2'  -- reqspellcast from somewhere?
WHERE `entry` = '10855';
-- Nether Gas In a Fel Fire Engine (10850) should complete Fel Reavers, No Thanks! (10855) at completion
UPDATE `quest_template` SET `CompleteScript` = '10850' WHERE `entry` = '10850';
DELETE FROM `quest_end_scripts` WHERE `id` = '10850';
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
('10850', '2', '7', '10855', '0', '', '0', '0', '0', '0');
-- Clara's Fresh Apple should give 2x apples to complete quest (2746)
UPDATE `gameobject_loot_template` SET `mincount` = '2', `maxcount` = '2' WHERE `item` = '8683';
-- Clara's Fresh Apple should not drop off Markus
DELETE FROM `creature_loot_template` WHERE `entry` = '395';
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '395';
-- Gan'arg Analyzer had level 0, adding bestiary data
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6986', `maxhealth` = '6986', `armor` = '6792', `faction_A` = '14', `faction_H` = '14', `speed` = '1.19', `mindmg` = '252', `maxdmg` = '357', `baseattacktime` = '2000', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23386';
-- Mana Wraith shouldn't have 44k hp and high damage
UPDATE `creature_template` SET `minlevel` = '67', `maxlevel` = '68', `minhealth` = '6300', `maxhealth` = '6500', `mindmg` = '250', `maxdmg` = '380', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18864';
-- Ayamiss Teleport Spell
DELETE FROM `spell_teleport` WHERE `id` = '25725';
INSERT IGNORE INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('25725', '509', '-9717.2', '1517.81', '27.6', '5.4');
-- Formula: Enchant Cloak - Subtlety in Honor Hold quartermaster
DELETE FROM `npc_vendor` WHERE (`entry` = '17657') AND (`item` = '33150');
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('17657', '33150', '0', '0');
-- Felbane Slugs in Honor Hold quartermaster
DELETE FROM `npc_vendor` WHERE (`entry` = '17657') AND (`item` = '32883');
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('17657', '32883', '0', '0');
-- Formula: Enchant Cloak - Subtlety in Thrallmar quartermaster
DELETE FROM `npc_vendor` WHERE (`entry` = '17585') AND (`item` = '33151');
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES ('17585', '33151', '0', '0');
-- Grounding Totem spells (tested)
UPDATE `creature_template` SET `faction_A` = '7', `faction_H` = '7', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `baseattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `spell1` = '8178',`spell2` = '8179' WHERE `entry` = '5925';
-- Earthbind Totem misc
UPDATE `creature_template` SET `minhealth` = '5', `maxhealth` = '5', `armor` = '0', `faction_A` = '7', `faction_H` = '7', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `baseattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '2630';
-- Moroes had 0 speed and 20 armor, bestiary data
UPDATE `creature_template` SET `minhealth` = '386988', `maxhealth` = '386988', `armor` = '7684', `speed` = '1.10', `mindmg` = '4780', `maxdmg` = '6758', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '15687';
-- Attument the Huntsman had 0 speed
UPDATE `creature_template` SET `speed` = '1.10' WHERE `entry` = '15550';
-- Midnight bestiary data
UPDATE `creature_template` SET `minhealth` = '379400', `maxhealth` = '379400', `armor` = '7684', `mindmg` = '4248', `maxdmg` = '6007', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '16151';
-- The Curator size was too small using scale 2.7, better use DBC data, and was a bit slower than video, bestiary data
UPDATE `creature_template` SET `speed` = '1.16', `scale` = '0', `minhealth` = '698050', `maxhealth` = '698050', `armor` = '6193', `mindmg` = '5467', `maxdmg` = '7722', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '15691';
-- Maiden of Virtue had 0 speed and bestiary data
UPDATE `creature_template` SET `speed` = '1.10', `minhealth` = '424900', `maxhealth` = '424900', `armor` = '6193', `mindmg` = '6157', `maxdmg` = '8696', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '16457';
-- Twilight Serpent is dropping 1 green item almost everytime
UPDATE `creature_loot_template` SET `ChanceOrRef` = '0.1' WHERE (`ChanceOrRef` BETWEEN '0.2' AND '0.5') AND (`entry` = '23026');
-- Twilight Serpent has good loot, shouldn't respawn in 25 secs
UPDATE `creature` SET `spawntimesecs` = '350' WHERE `id` = 23026;
-- Infinite Saboteur shouldn't be friendly and bestiary stats
UPDATE `creature_template` SET `minlevel` = '68', `minhealth` = '15176', `maxhealth` = '15176', `minmana` = '8973', `armor` = '4995', `faction_A` = '14', `faction_H` = '14', `mindmg` = '855', `maxdmg` = '1204', `rangeattacktime` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18172';
-- Anchorite Relic Bunny
UPDATE `creature_template` SET `speed` = '0.001', `flags` = `flags`|'2', `MovementType` = '0' WHERE `entry` = '22444';
-- Fel Spirit Visual
DELETE FROM `creature_template_addon` WHERE (`entry` = '22454');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('22454', '39205 0');
-- Fel Spirit should be summoned
DELETE FROM `creature` WHERE `id` = '22454';
-- quest should provide just one Anchorite Relic
UPDATE `quest_template` SET `SrcItemCount` = '1' WHERE `entry` = '10909';
-- Infernal pet Immolation aura
DELETE FROM `creature_template_addon` WHERE (`entry` = '89');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('89', '19483 0');
-- Infernal damage from video, stats, misc, faction (should be enemy to all when not enslaved), should not have loot
UPDATE `creature_template` SET `armor` = '4200', `faction_A` = '14', `faction_H` = '14', `mindmg` = '490', `maxdmg` = '560', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `lootid` = '0', `mingold` = '0', `maxgold` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '89';
DELETE FROM `creature_loot_template` WHERE `entry` = '89';
UPDATE `game_tele` SET `name` = 'WildhammerStronghold' WHERE `id` = '329';
-- Marticar bestiary
UPDATE `creature_template` SET `minhealth` = '82905', `maxhealth` = '82905', `armor` = '4691', `mindmg` = '724', `maxdmg` = '1010', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18680';
-- Marcus Auralion should be in the crystal but at mid-air
UPDATE `creature` SET `position_z` = '146.249557', `spawn_position_z` = '146.249557' WHERE `id` = '22073';
-- Marcus Auralion is not a questgiver for sure, the Crystal Prison is
UPDATE `creature_template` SET `npcflag` = '1', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '22073';
-- Anvilrage Enforcer stats (no bestiary data available)
UPDATE `creature_template` SET `minlevel` = '49', `maxlevel` = '50', `minhealth` = '2510', `maxhealth` = '2608', `armor` = '2204', `lootid` = '24819', `pickpocketloot` = '24819', `mingold` = '300', `maxgold` = '400', `resistance2` = '100', `resistance5` = '20', `MovementType` = '1', `mindmg` = '120', `maxdmg` = '210', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24819';
-- Anvilrage Enforcer loot
UPDATE `creature_loot_template` SET `entry` = '24819' WHERE `entry` = '8890';
UPDATE `pickpocketing_loot_template` SET `entry` = '24819' WHERE `entry` = '8890';
-- Honor quests
-- For Great Honor normal version
UPDATE `quest_template` SET `QuestLevel` = '70', `Details` = 'Serving the Horde in one of the great battles against the Alliance is a source of great honor! The few however, that have served the Horde in ALL of our active battlefronts are our truly great fighters. We shall vanquish our opponents, not by fighting isolated skirmishes, but by waging a well-coordinated war.$B$BGo forth and crush the Alliance in Arathi Basin, Alterac Valley, Eye of the Storm and Warsong Gulch! For Honor! For the Horde!', `Objectives` = 'Bring 1 Alterac Valley Mark of Honor, 1 Arathi Basin Mark of Honor, 1 Warsong Gulch Mark of Honor and 1 Eye of the Storm Mark of Honor to a Horde Warbringer in any Horde capital city or Shattrath.', `ReqItemId4` = '29024', `ReqItemCount1` = '1', `ReqItemCount2` = '1', `ReqItemCount3` = '1', `ReqItemCount4` = '1', `RewSpell` = '0' WHERE `entry` = '8367';
-- For Great Honor repeatable version
UPDATE `quest_template` SET `QuestLevel` = '70', `Objectives` = '', `ReqItemId4` = '29024', `ReqItemCount1` = '1', `ReqItemCount2` = '1', `ReqItemCount3` = '1', `ReqItemCount4` = '1', `RewSpell` = '0' WHERE `entry` = '8388';
-- Concerted Efforts normal version
UPDATE `quest_template` SET `QuestLevel` = '70', `Objectives` = 'Bring 1 Alterac Valley Mark of Honor, 1 Arathi Basin Mark of Honor, 1 Warsong Gulch Mark of Honor and 1 Eye of the Storm Mark of Honor to an Alliance Brigadier General in any Alliance Capital City or Shattrath.', `ReqItemId4` = '29024', `ReqItemCount1` = '1', `ReqItemCount2` = '1', `ReqItemCount3` = '1', `ReqItemCount4` = '1', `RewSpell` = '0' WHERE `entry` = '8371';
-- Concerted Efforts repeatable version
UPDATE `quest_template` SET `QuestLevel` = '70', `Objectives` = '', `ReqItemId4` = '29024', `ReqItemCount1` = '1', `ReqItemCount2` = '1', `ReqItemCount3` = '1', `ReqItemCount4` = '1', `RewSpell` = '0' WHERE `entry` = '8385';
-- and ends

-- nf
-- below damage _only_ temporary, while waiting for 100% good stats.
-- 60/61 outland crazy guys
UPDATE `creature_template` SET 
    `mindmg` = 158,
    `maxdmg` = 233,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4370
WHERE `entry` IN (16873, 16954, 16960, 17053, 17259, 17264, 17269, 17270, 17271, 17478, 18077, 18079, 18132, 18138, 18213, 18295, 19259, 19460, 20115, 20387, 20455);
-- 61/62 outland crazy guys
UPDATE `creature_template` SET 
    `mindmg` = 166,
    `maxdmg` = 245,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4390
WHERE `entry` IN (16878, 16946, 16992, 17014, 18113, 18114, 18124, 18128, 18912, 19189, 19414, 19527, 20079, 20324);
-- 62/63 outland crazy guys
UPDATE `creature_template` SET 
    `mindmg` = 172,
    `maxdmg` = 253,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4520
WHERE `entry` IN (16912, 16911, 16934, 18086, 18087, 18115, 18116, 18131, 18133, 18212, 18214, 18340, 18437, 18449, 18450, 18456, 18457, 18461, 18468, 18476, 18595, 19192, 19349, 19350, 19419, 19461, 20198);
-- 63/64 outland crazy guys
UPDATE `creature_template` SET 
    `mindmg` = 188,
    `maxdmg` = 273,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor` = 4590
WHERE `entry` IN (1410, 5355, 16519, 16769, 16772, 16810, 17088, 18125, 18452, 18453, 18454, 18463, 18464, 18466, 18469, 18477, 18541, 19729, 21200, 21816, 22388);

-- 
-- quest
-- 

-- Pamela's Doll
UPDATE `quest_template` SET `ReqSourceId1`=12886, `ReqSourceId2`=12887, `ReqSourceId3`=12888, `ReqSourceCount1`=1, `ReqSourceCount2`=1, `ReqSourceCount3`=1, `ReqSourceRef1`=4, `ReqSourceRef2`=4, `ReqSourceRef3`=4 WHERE `entry`=5149;
-- Unleash the Raptors
UPDATE `quest_template` SET `ReqSpellCast1`=42338 WHERE `entry`=11147;
-- Raze Direhorn Post!
UPDATE `quest_template` SET `ReqSpellCast1`=42356, `ReqSpellCast2`=42356, `ReqSpellCast3`=42356 WHERE `entry` IN (11150, 11205);

-- misc
UPDATE `quest_template` SET `MinLevel`=52 WHERE `entry`=5846;
UPDATE `quest_template` SET `MinLevel`=48 WHERE `entry`=6389;
UPDATE `quest_template` SET `MinLevel`=57 WHERE `entry` IN (5465, 5466);
UPDATE `quest_template` SET `NextQuestId`=0 WHERE `entry`=9501;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=10482;
UPDATE `quest_template` SET `MinLevel`=58 WHERE `entry`=10903;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=4642;
UPDATE `quest_template` SET `RequiredMaxRepValue`=3000 WHERE `entry` IN (9739,9742,9743,9744,9808,9809);
UPDATE `quest_template` SET `SpecialFlags`=0 WHERE `entry`=9739;
UPDATE `quest_template` SET `NextQuestId`=0 WHERE `entry` IN (9743, 9806, 9808);
UPDATE `quest_template` SET `PrevQuestId`=3448 WHERE `entry`=3450;
UPDATE `quest_template` SET `PrevQuestId`=-10916 WHERE `entry`=10919;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `entry` IN (5218,5221,5224,5227,10850,10919);
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags` &~1 WHERE `entry`=975;
UPDATE `quest_template` SET `PrevQuestId`=975 WHERE `entry` IN (4801,4802,4803,4804,4805,4806,4807);
UPDATE `quest_template` SET `PrevQuestId`=9602 WHERE `entry`=9671;
UPDATE `quest_template` SET `SrcSpell`=31609 WHERE `entry`=9756;
UPDATE `quest_template` SET `SrcSpell`=6716, `SpecialFlags`=`SpecialFlags`|2 WHERE `entry`=1149;
UPDATE `quest_template` SET `MinLevel`=5 WHERE `entry`=1578;
UPDATE `quest_template` SET `SrcSpell`=30430 WHERE `entry`=9541;
UPDATE `quest_template` SET `SrcSpell`=30448 WHERE `entry`=9542;

-- UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `entry` IN (9884, 9885, 9886, 9887);
UPDATE `quest_template` SET `RequiredMinRepFaction`=933, `RequiredMinRepValue`=3000, `RequiredMaxRepFaction`=933, `RequiredMaxRepValue`=12000 WHERE `entry`=9886;
UPDATE `quest_template` SET `RequiredMinRepFaction`=933, `RequiredMinRepValue`=12000, `RequiredMaxRepFaction`=933, `RequiredMaxRepValue`=21000 WHERE `entry`=9884;
UPDATE `quest_template` SET `RequiredMinRepFaction`=933, `RequiredMinRepValue`=21000, `RequiredMaxRepFaction`=933, `RequiredMaxRepValue`=42000 WHERE `entry`=9885;
UPDATE `quest_template` SET `RequiredMinRepFaction`=933, `RequiredMinRepValue`=42000 WHERE `entry`=9887;

UPDATE `quest_template` SET `RewRepFaction1`=589, `RewRepValue1`=250 WHERE `entry`=5201;
UPDATE `quest_template` SET `RewRepFaction1`=589, `RewRepValue1`=250 WHERE `entry`=4970;
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepFaction2`=0, `RewRepValue2`=0 WHERE `entry`=3782;

-- megadriver rep
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=3823;
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepValue1`=250 WHERE `entry`=3906;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4081;
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepValue1`=250 WHERE `entry`=4120;
UPDATE `quest_template` SET `RewRepFaction1`=54, `RewRepValue1`=250 WHERE `entry`=4262;
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepValue1`=250 WHERE `entry`=5092;
UPDATE `quest_template` SET `RewRepFaction1`=529, `RewRepValue1`=75 WHERE `entry`=8416;
UPDATE `quest_template` SET `RewRepFaction1`=59, `RewRepValue1`=25 WHERE `entry`=11454;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=150 WHERE `entry`=3505;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=3825;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=3701;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=10 WHERE `entry`=3702;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=3982;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=350 WHERE `entry`=4001;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4082;
UPDATE `quest_template` SET `RewRepFaction1`=69, `RewRepValue1`=250 WHERE `entry`=4182;
UPDATE `quest_template` SET `RewRepFaction1`=68, `RewRepValue1`=250 WHERE `entry`=4506;
UPDATE `quest_template` SET `RewRepFaction1`=169, `RewRepValue1`=75 WHERE `entry`=4810;
UPDATE `quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=150 WHERE `entry`=4984;
UPDATE `quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=250 WHERE `entry`=1125;
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepValue1`=350 WHERE `entry`=3907;
UPDATE `quest_template` SET `RewRepFaction1`=54, `RewRepValue1`=250 WHERE `entry`=4263;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4521;
UPDATE `quest_template` SET `RewRepFaction1`=577, `RewRepValue1`=250 WHERE `entry`=4842;
UPDATE `quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=150 WHERE `entry`=4985;
UPDATE `quest_template` SET `RewRepFaction1`=81, `RewRepValue1`=250 WHERE `entry`=5054;
UPDATE `quest_template` SET `RewRepFaction1`=577, `RewRepValue1`=250 WHERE `entry`=5082;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=250 WHERE `entry`=5097;
UPDATE `quest_template` SET `RewRepFaction1`=67, `RewRepValue1`=250 WHERE `entry`=5098;
UPDATE `quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=500 WHERE `entry`=8281;
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepValue1`=350 WHERE `entry`=4322;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4741;
UPDATE `quest_template` SET `RewRepFaction1`=577, `RewRepValue1`=350 WHERE `entry`=5163;
UPDATE `quest_template` SET `RewRepFaction1`=529, `RewRepValue1`=1000 WHERE `entry`=5529;
UPDATE `quest_template` SET `RewRepFaction1`=68, `RewRepValue1`=250 WHERE `entry`=6042;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=350 WHERE `entry`=4362;
UPDATE `quest_template` SET `RewRepFaction1`=69, `RewRepValue1`=250 WHERE `entry`=4701;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4721;
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepValue1`=250 WHERE `entry`=4724;
UPDATE `quest_template` SET `RewRepFaction1`=69, `RewRepValue1`=150 WHERE `entry`=4901;
UPDATE `quest_template` SET `RewRepFaction1`=577, `RewRepValue1`=250 WHERE `entry`=5121;

-- 
-- relations
-- 

DELETE FROM `gameobject_questrelation` WHERE `quest` IN (256);
INSERT IGNORE INTO `gameobject_questrelation` (`id`,`quest`) VALUES (256,256);
DELETE FROM `areatrigger_involvedrelation` WHERE `quest`=1149;
INSERT IGNORE INTO `areatrigger_involvedrelation` (`id`,`quest`) VALUES (246,1149);
DELETE FROM `creature_questrelation` WHERE `quest`=3861;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (620,3861);
DELETE FROM `creature_involvedrelation` WHERE `quest`=3861;
INSERT IGNORE INTO `creature_involvedrelation` (`id`,`quest`) VALUES (620,3861);
DELETE FROM `creature_questrelation` WHERE `id`=376 AND `quest`=5641;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (11406,5641);
DELETE FROM `creature_questrelation` WHERE `id`=4607 AND `quest`=5658;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (4606,5658);
DELETE FROM `creature_questrelation` WHERE `id`=5489 AND `quest`=5676;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (376,5676);
DELETE FROM `creature_questrelation` WHERE `id`=4607 AND `quest`=5679;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (4606,5679);
DELETE FROM `creature_questrelation` WHERE `id`=3600 AND `quest`=5672;
INSERT IGNORE INTO `creature_questrelation` (`id`,`quest`) VALUES (11401,5672);

-- 
-- creature
-- 

-- missing gossip flag
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (9528,9529,10307,10618,10296,17435,17824,21725,21727,23768);
-- making sure they have gossip
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (17909, 19052, 22427, 5164, 11145, 11146, 11176, 11177, 11178, 11191, 11192, 11193, 7866, 7867, 7868, 7869, 7870, 7871, 22208, 22212, 22213);

-- SSC
UPDATE `creature` SET `spawntimesecs`=7200 WHERE `map`=548 AND `spawntimesecs`<7200;

-- Sharth Voldoun
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|8208 WHERE `entry`=18554;
-- Caer Darrow Ghosts
INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(11277, '', '', '', '', '', '17622 0'),
(11278, '', '', '', '', '', '17622 0'),
(11279, '', '', '', '', '', '17622 0'),
(11280, '', '', '', '', '', '17622 0'),
(11281, '', '', '', '', '', '17622 0'),
(11286, '', '', '', '', '', '17622 0');
-- Bleeding Hollow Necrolyte
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`=5, `RewOnKillRepValue2`=5 WHERE `creature_id`=19422;
-- Bog Lord
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`=15 WHERE `creature_id`=18127;
-- Marsh Dredger/Lurker
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1`=15 WHERE `creature_id` IN (18136,18137);
-- Lord Klaq
INSERT IGNORE INTO `creature_onkill_reputation` VALUES (18282,970,0,6,0,15,0,0,0,0);
-- Rivern Frostwind
INSERT IGNORE INTO `creature_onkill_reputation` VALUES (10618,589,0,7,0,-250,0,0,0,0);
-- Smolderwing (need damage stats!)
UPDATE `creature_template` SET `minlevel`=41, `maxlevel`=41, `minhealth`=1500, `maxhealth`=1500, `faction_A`=103, `faction_H`=103 WHERE `entry`=23789;
-- Fei Fei
UPDATE `creature_template` SET `MovementType`=0, `speed`=1.8 WHERE `entry`=20206;
UPDATE `creature` SET `MovementType`=0, `spawndist`=0 WHERE `id`=20206;
-- Justin's Bunny Channeler (just to not forget spellId)
UPDATE `creature_template` SET `spell1`=32573 WHERE `entry`=18563;
-- Goliathon
UPDATE `creature_template` SET `faction_A`=778, `faction_H`=778 WHERE `entry`=19305;
-- Susurrus
UPDATE `creature` SET `position_x`=-3677.45, `position_y`=-11408.39, `position_z`=311.21, `orientation`=4.06, `spawn_position_x`=-3677.45, `spawn_position_y`=-11408.39, `spawn_position_z`=311.21, `spawn_orientation`=4.06 WHERE `id`=17435;

-- Normalize their speed. For the vaste majority, still not correct, but it's alot closer using 1.125 instead of 1.48.
-- Speed 1.125 is also not used by any other creatures, so it's easy to "revert"
UPDATE `creature_template` SET `speed`=1.125 WHERE `rank`=0 AND `speed` LIKE 1.48;

INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (84972, 10280);
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (86861, 10427);

-- 
-- gameobject
-- 
-- only for test http://www.mangosproject.org/forum/index.php?showtopic=23101
-- UPDATE `gameobject_template` SET `castBarCaption`='Extinguishing' WHERE `entry` IN (185216,185217,185218,185219);
-- UPDATE `gameobject_template` SET `castBarCaption`='Collecting' WHERE `entry` IN (175894,176344,176361,176392,176393,177289,181372,181644,181981,182031,182050,182053,182127,182128,182256,182542,182584,182599,182600,182601,182606,182940,183385,183767,183814,183935,184031,184689,184726,184727,184728,184729,184744,184948,185152,185182,185497,185499,185500,185502,185562,185567,185569,185574,185577,185900,185911,185915,185939,186423,186463,186729,186733,187039);
-- UPDATE `gameobject_template` SET `castBarCaption`='Drinking' WHERE `entry` IN (185598,185914);
-- UPDATE `gameobject_template` SET `castBarCaption`='Searching' WHERE `entry` IN (183934,185302);
-- UPDATE `gameobject_template` SET `castBarCaption`='Examining' WHERE `entry` IN (179888);
-- UPDATE `gameobject_template` SET `castBarCaption`='Using' WHERE `entry` IN (185165,185554,185919,185920,185921,185927,185959,185962,185963);
-- UPDATE `gameobject_template` SET `castBarCaption`='Gathering' WHERE `entry` IN (187333);
-- UPDATE `gameobject_template` SET `castBarCaption`='Opening' WHERE `entry` IN (185936,185954,187264);
-- UPDATE `gameobject_template` SET `castBarCaption`='Summoning' WHERE `entry` IN (185553);
-- WANTED
INSERT IGNORE INTO `game_event_gameobject` VALUES (29800,3); -- cannon target
UPDATE `gameobject_template` SET `faction`=84 WHERE `entry`=256;
-- Pamela's Doll's Trap (why didn't we have this in wdb?) + spellFocus
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(176117, 6, 1287, 'Pamela\'s Doll\'s Trap', 14, 4, 1, 0, 0, 0, 17132, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300149, 8, 0, 'TEMP Blackhoof Village Windmill', 0, 0, 1, 1459, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300150, 8, 0, 'TEMP Grimtotem Tent', 0, 0, 1, 1460, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300151, 8, 0, 'TEMP Hyjal Family Monument', 0, 0, 1, 1461, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300152, 8, 0, 'TEMP Burning Troll Hut', 0, 0, 1, 1462, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(300153, 8, 0, 'TEMP Entrance to Onyxia\'s Lair', 0, 0, 1, 1463, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Irontree Woods
UPDATE `gameobject` SET `position_x`=5968.89, `position_y`=-1212.05, `position_z`=379.832, `orientation`=0.129598, `rotation2`=0.0647536, `rotation3`=0.997901 WHERE `id`=300022;
-- Fei Fei's Cache
UPDATE `gameobject` SET `position_x`=-698.794, `position_y`=2749.85, `position_z`=94.122, `orientation`=3.26455, `rotation2`=0.998111, `rotation3`=-0.0614391 WHERE `id`=185302;
-- 
-- loot
-- 
UPDATE `gameobject_loot_template` SET `ChanceOrRef`=0, `QuestChanceOrGroup`=100 WHERE `item` IN (12886, 12887, 12888, 13157, 29912);
-- Tainted Helboar Meat
UPDATE `creature_loot_template` SET `QuestChanceOrGroup`=100 WHERE `item`=23270;
-- Fertile Spores
UPDATE `creature_loot_template` SET `QuestChanceOrGroup`=35 WHERE `item`=24449;
-- Q Arcane Runes
DELETE FROM `gameobject_loot_template` WHERE `entry`=9240 AND `item`!=10564;
DELETE FROM `gameobject_loot_template` WHERE `entry`=9241 AND `item`!=10565;
-- Case of Orcish Grog
INSERT IGNORE INTO `gameobject_loot_template` VALUES (22326, 33083, 100, 0, 1, 1, 0, 0, 0, 0);
-- Osseous Agitator
UPDATE `creature_loot_template` SET `ChanceOrRef`=50, `QuestChanceOrGroup`=0, `lootcondition`=2, `condition_value1`=13370, `condition_value2`=1 WHERE `item`=13357;
-- Somatic Intensifier
UPDATE `creature_loot_template` SET `ChanceOrRef`=50, `QuestChanceOrGroup`=0, `lootcondition`=2, `condition_value1`=13370, `condition_value2`=1 WHERE `item`=13356;
-- Ectoplasmic Resonator
UPDATE `creature_loot_template` SET `ChanceOrRef`=50, `QuestChanceOrGroup`=0, `lootcondition`=2, `condition_value1`=13370, `condition_value2`=1 WHERE `item`=13354;
-- Darkmoon Faire Fortune
INSERT IGNORE INTO `item_loot_template` VALUES 
(19422, 19229, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19237, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19238, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19239, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19240, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19241, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19242, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19243, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19244, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19245, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19246, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19247, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19248, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19249, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19250, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19251, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19252, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19253, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19254, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19255, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19256, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19266, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19423, 1.875, -1, 1, 1, 0, 0, 0, 0),
(19422, 19424, 1.875, -1, 1, 1, 0, 0, 0, 0),
(19422, 19443, 1.875, -1, 1, 1, 0, 0, 0, 0),
(19422, 19451, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19452, 1.875, -1, 1, 1, 0, 0, 0, 0),
(19422, 19453, 3.7, -1, 1, 1, 0, 0, 0, 0),
(19422, 19454, 3.7, -1, 1, 1, 0, 0, 0, 0);
-- Package of Identified Plants
DELETE FROM `item_loot_template` WHERE `entry`=24402;
INSERT IGNORE INTO `item_loot_template` VALUES 
(24402, 24403, 50, -2, 2, 6, 0, 0, 0, 0),
(24402, 24405, 50, -3, 2, 8, 0, 0, 0, 0),
(24402, 24408, 50, -1, 4, 6, 0, 0, 0, 0),
(24402, 24404, 35, -3, 1, 2, 0, 0, 0, 0),
(24402, 24406, 35, -2, 1, 2, 0, 0, 0, 0),
(24402, 24540, 35, -1, 4, 6, 0, 0, 0, 0),
(24402, 24407, 5, 0, 1, 1, 0, 0, 0, 0),
(24402, 765, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 785, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 2447, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 2449, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 2450, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 2452, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 2453, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 3357, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 3818, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 3819, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 3820, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 3821, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 4625, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 8831, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 8838, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 8839, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 8845, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 8846, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 13463, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 13464, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 13465, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 13466, 0.4, -4, 1, 1, 0, 0, 0, 0),
(24402, 13467, 0.4, -4, 1, 1, 0, 0, 0, 0);
-- 
-- item
-- 
-- Undamaged Venom Sac
UPDATE `item_template` SET `Duration`=1800 WHERE `entry`=9322;
-- Arcane Quickener
UPDATE `item_template` SET `Duration`=1800 WHERE `entry`=13320;
-- Q Tanaris Field Sampling
UPDATE `item_template` SET `Duration`=-7200 WHERE `entry` IN (9437,9438,9439,9440,9441,9442);
-- 
-- spell
-- 
INSERT IGNORE INTO `spell_script_target` VALUES (37843, 1, 21899);
INSERT IGNORE INTO `spell_script_target` VALUES (35413, 1, 20781);

INSERT IGNORE INTO `spell_teleport` VALUES (37387, 530, '-2832.71','1950.02','201.25','4.06');
INSERT IGNORE INTO `spell_teleport` VALUES (37389, 530, '-2742.77','2727.00','124.81','5.29');
INSERT IGNORE INTO `spell_teleport` VALUES (37532, 530, '-3278.63','2831.31','123.01','1.56');
INSERT IGNORE INTO `spell_teleport` VALUES (6714, 1, '-4884.49','-1596.20','101.20','3.17');
-- 
-- script
-- 
-- The Final Code (H)
UPDATE `quest_template` SET `CompleteScript`=10447 WHERE `entry`=10447;
DELETE FROM `quest_end_scripts` WHERE `id`=10447;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(10447, 2, 0, 2, 0, 'The threat be over! $N be savin\' us all!', 0, 0, 0, 0);
-- Collection of Goods
UPDATE `quest_template` SET `CompleteScript` = 7642 WHERE `entry` = 7642;
DELETE FROM `quest_end_scripts` WHERE `id` = 7642;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(7642, 2, 0, 0, 0, 'Follow me, good $C. I\'ll have your barding done faster than I could down a Dwarven stout. Mmmm... stout.', 0, 0, 0, 0),
(7642, 5, 3, 0, 0, '', -8393.09, 687.41, 95.27, 3.72),
(7642, 8, 3, 0, 0, '', -8400.51, 681.85, 95.96, 5.00),
(7642, 11, 3, 0, 0, '', -8388.72, 646.85, 94.82, 3.92),
(7642, 20, 3, 0, 0, '', -8422.25, 618.12, 95.46, 3.20),
(7642, 33, 1, 69, 0, '', '', '', '', ''),
(7642, 39, 1, 0, 0, '', '', '', '', ''),
(7642, 40, 3, 0, 0, '', -8421.99, 617.93, 95.45, 5.34),
(7642, 42, 1, 233, 0, '', '', '', '', ''),
(7642, 48, 1, 0, 0, '', '', '', '', ''),
(7642, 48, 0, 0, 0, 'Well, that should do it. Come now, back to the shop to finish our business!', 0, 0, 0, 0),
(7642, 52, 3, 0, 0, '', -8388.72, 646.85, 94.82, 3.92),
(7642, 63, 3, 0, 0, '', -8400.51, 681.85, 95.96, 5.00),
(7642, 73, 3, 0, 0, '', -8393.09, 687.41, 95.27, 3.72),
(7642, 76, 3, 0, 0, '', -8387.00, 685.20, 95.35, 2.28);
-- Fei Fei's Treat
UPDATE `quest_template` SET `CompleteScript` = 10919 WHERE `entry` = 10919;
DELETE FROM `quest_end_scripts` WHERE `id` = 10919;
INSERT IGNORE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(10919, 3, 3, 0, 0, '', -697.934, 2612.59, 89.4752, 3.90),
(10919, 10, 3, 0, 0, '', -688.665, 2580.78, 86.9841, 5.16),
(10919, 24, 3, 0, 0, '', -689.199, 2588.81, 87.446, 0.80),
(10919, 27, 3, 0, 0, '', -667.044, 2611.74, 85.7029, 0.80),
(10919, 35, 3, 0, 0, '', -649.407, 2636.82, 86.1539, 0.88),
(10919, 42, 3, 0, 0, '', -659.047, 2651.34, 87.048, 2.14),
(10919, 52, 3, 0, 0, '', -656.048, 2652.06, 86.5892, 0.16),
(10919, 54, 3, 0, 0, '', -656.055, 2674.2, 88.1354, 1.52),
(10919, 68, 3, 0, 0, '', -691.042, 2652.45, 92.1508, 3.49),
(10919, 80, 3, 0, 0, '', -688.807, 2701.25, 94.8354, 1.51),
(10919, 93, 3, 0, 0, '', -667.514, 2716.08, 94.4471, 0.60),
(10919, 103, 3, 0, 0, '', -688.593, 2723.67, 94.4145, 2.75),
(10919, 108, 3, 0, 0, '', -687.635, 2743.1, 93.9095, 1.65),
(10919, 115, 3, 0, 0, '', -697.062, 2748.04, 93.938, 2.61),
(10919, 125, 3, 0, 0, '', -687.635, 2743.1, 93.9095, 1.65),
(10919, 130, 3, 0, 0, '', -685.121, 2689.01, 93.8042, 4.73),
(10919, 145, 3, 0, 0, '', -688.862, 2627.19, 89.8591, 4.66),
(10919, 165, 3, 0, 0, '', -685.494, 2626.74, 89.2711, 6.15);
-- Q Challenge to the Black Flight
DELETE FROM `event_scripts` WHERE `id`=15406;
INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(15406, 5, 10, 23789, 300000, '', -4713.87, -3730.99, 54.14, 0.60);
-- Test of Faith
UPDATE `quest_template` SET `StartScript`=1149 WHERE `entry`=1149;
DELETE FROM `quest_start_scripts` WHERE `id`=1149;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(1149, 0, 0, 0, 0, 'Until we meet again, brave one.', 0, 0, 0, 0);

INSERT IGNORE INTO `game_graveyard_zone` VALUES (101, 721, 0);
INSERT IGNORE INTO `areatrigger_teleport` VALUES (943,'Leap of Faith - End of fall',0,0,1,-5187.469,-2804.3237,-8.375,5.76);
INSERT IGNORE INTO `areatrigger_teleport` VALUES (4561,'Invasion Point, Cataclysm (return)',0,0,530,-3278.63,2831.31,123.01,1.56);
INSERT IGNORE INTO `areatrigger_teleport` VALUES (4562,'Invasion Point, Cataclysm (return)',0,0,530,-3278.63,2831.31,123.01,1.56);
UPDATE `game_tele` SET `name`='WildhammerStronghold' WHERE `id`=329;

-- 
-- texts
-- 

UPDATE `quest_template` SET `Details`='' WHERE `entry` IN (16,247,308,593,1193,1267,1462,1463,1941,1958,2750,2881,4083,4144,4148,4463,4481,4482,4483,4484,5122,5150,5627,5641);
UPDATE `quest_template` SET `Details`='' WHERE `entry` IN (5652,5658,5676,5679,6545,6546,6547,6801,6825,6826,6827,6846,6881,6901,6941,6942,6943,5218,5221,5224,5227,9714,9766);
UPDATE `quest_template` SET `Details`='' WHERE `entry` IN (9642,9742,9744,9784,9807,9883,9915,10025,10308,10326,10327,10414,10415,10419,10477,10478,10850,10918,11006,11060,11027);
UPDATE `quest_template` SET `Details`='' WHERE `entry` IN (9288,9267,9266,9259,9219,9217,9137,9132,9129,9127,9125,8882,8881,8469,8467,8466,8221,8224,8225,8249,8194,8193,7946,5672);
UPDATE `quest_template` SET `Objectives`='' WHERE `entry` IN (247,1193,1941,2750,2881,4148,5122,5627,5641,5652,5658,5676,5679,6801,6825,6826,6827,6846,6881,6901,6941,6942,6943);
UPDATE `quest_template` SET `Objectives`='' WHERE `entry` IN (5218,5221,5224,5227,9671,9742,9807,10025,10918,9288,9266,9219,9217,9137,9132,9129,9127,9125,8469,8467,8221);
UPDATE `quest_template` SET `Objectives`='' WHERE `entry` IN (8224,8225,8249,8193,5672);

UPDATE `quest_template` SET `Details`='War rages both home and abroad.  While mighty Dwarven soldiers give their lives in far off territories in the name of the Alliance, our own lands fall prey to the evil deeds of the Dark Iron Dwarves.  They laid waste to the Thandol Span.  Dun Modr fell soon after.$b$bWe need you to gather force and push the front back.  If you can kill 10 Dark Iron Dwarves, 5 Tunnelers, 5 Saboteurs and 5 Demolitionists, the reserve might arrive in time to finish the drive.$b$bNow make haste!' WHERE `entry`=303;
UPDATE `quest_template` SET `Details`='My duties include tending to our wounded warriors, tailoring armor and clothes, and assisting Shadow Priest Sarvis with whatever else he might need.$b$bFrom the look of it, you\'ll be enlisted in his service also... hunting the Mindless Ones, if I know his mind. Well, if you\'d like to stay in one piece--and I\'ve no doubt you do--perhaps I can help. I\'m running out of paws and wings, and if you bring me some, I\'ll find some armor for you. You\'ll find a good number of wolves and bats to the south.' WHERE `entry`=376;
UPDATE `quest_template` SET `Details`='This fine sash has the letters "HS" embroidered along its hem.' WHERE `entry`=620;
UPDATE `quest_template` SET `Details`='Thoras Trollbane\'s tomb is protected by three sigils--the first of which you retrieved from the Syndicate. The other two will be harder to get, as they\'re held by the firmly entrenched Stromgarde militia.$b$bThe sigil of Thoradin was divided into five pieces by Thoras\' son, Galen, and dispersed among the Stromgarde defenders. Retrieve the pieces and bring them to Tor\'gan, the troll shaman, he will be able to bind them into the complete sigil.' WHERE `entry`=640;
UPDATE `quest_template` SET `Details`='Ah, I can tell just by lookin\' at ya -- you be wantin\' to make a lucky charm. Mau\'ari always knows!$B$BTo da south. you\'ll find a canyon, an\' giants made a\' solid ice. The giants sometimes be carryin\' dem, but ya can always gather da shards yerself from da canyon. These shards have a powerful reflective quality.$B$BBring back 4 frostmaul shards, and my lucky charm will be yours.' WHERE `entry`=969;
UPDATE `quest_template` SET `Details`='Oh, to be at sea once again!  To feel the kiss of the wind, and to have the waves rock me like my blessed mother, long ago!$B$BOh, I wish I had your fortune, good $c, for I see the sea in your future!$B$BIt\'s my job to tell eager souls of the land of Kalimdor, the land of opportunity!  If you\'re willing to try your luck across the sea, then take a ship from here to the lovely port of Auberdine.  Speak there with my partner, the elf, Fiora Longears.$B$BShe\'ll start you on your Kalimdor adventure!' WHERE `entry`=1132;
UPDATE `quest_template` SET `Details`='You have served the Deathstalkers well, $N, but perhaps it is time for you to venture outward. While you have shown aptitude in the ways of stealth and deception, you still require much training.$B$BThe Deathstalkers have allies within the Shattered Hand. Seek out those that would assist us - find Shenthul in Orgrimmar.' WHERE `entry`=2378;
UPDATE `quest_template` SET `Details`='Felwood is a forest far north of the Barrens, even farther than Ashenvale. There, slimes are found all around pools of water blessed by the touch of Fel. The Scourge decimated the area with attacks of Infernals and other demonic magics--the slimes supposedly crept up through the earth during these attacks.$B$BGather samples of Felwood slimes and we will use the testing equipment next to me to create a control group for our tests against other samples you gather.' WHERE `entry`=4293;
UPDATE `quest_template` SET `Details`='Master want weeds. Us gots big hands and not good at picking. You help us and we not hurt you. Us need gloom weed. Many weeds around here and near road.$b$bWhen you have gloom weed you take to Master Holland in Brill graveyard.' WHERE `entry`=5481;
UPDATE `quest_template` SET `Details`='Just recently, a large band of nomadic ogres arrived in Tanaris. South of here, they have taken over a large area of the desert and formed a compound. Several smaller bands are currently wandering the desert, some of which have invaded the old troll ruins.$B$BThe Dunemaul Compound must be destroyed! We cannot allow these ogres to build up a force.$B$BThe leader of this band is named Gor\'marok the Ravager; I believe that putting an end to his leadership will be the beginning of the end for the ogres.' WHERE `entry`=5863;
UPDATE `quest_template` SET `Details`='Past the Argent Dawn encampment of Light\'s Hope and west of Northdale, you will find the corpulent maggot beast, Borelgore.$b$bI\'ve lost entire regiments to that monster. His size knows no bounds! The more he eats the greater his girth becomes...$B$BWhile I would not suffer any emotional harm should the beast devour you, I would prefer that you were the victor. Borelgore has been known to devour others who tried to hunt him.' WHERE `entry`=6136;

UPDATE `quest_template` SET `RequestItemsText`='A large, broken trap lies before you. From the looks of it, the ogres have tried to repair the trap but to no avail. A hastily written note lies next to the trap, and strangely enough it details exactly what is needed to repair it: a thorium widget and some frost oil. Were the trap repaired, an ogre passing near it might get trapped, and could be avoided.$b$bClearly, it would seem fortuitous that very few ogres know how to read.$b$bClearly.' WHERE `entry`=1193;
UPDATE `quest_template` SET `RequestItemsText`='These are the eggs that cannot be saved -- they will never hatch.' WHERE `entry`=2750;
UPDATE `quest_template` SET `RequestItemsText`='For the zapper to work, it needs a sample of the target creature. Head out into the crater and collect a Bloodpetal sprout. Then I can calibrate it to work on Muigin\'s little friends...$b$bIf he weren\'t so stubborn, we could be on our way home, already... But until then, I\'ll just have to show him that his little prank doesn\'t bother me at all!' WHERE `entry`=4148;
UPDATE `quest_template` SET `RequestItemsText`='The power of this chapel gives me the strength to resist the corruption in my heart. If I leave it, I will become a death knight. But there is a medallion, the medallion of faith, that will give me the strength I need to leave.$b$bPlease, <name>, retrieve the medallion. It is guarded by Malor the Zealous, a crazed member of the Scarlet Brotherhood who resides deep in the Scarlet Bastion in western Stratholme.' WHERE `entry`=5122;
UPDATE `quest_template` SET `OfferRewardText`='Ah, young $c, I am glad you have returned here. I would teach you a lesson you would do well to not forget. Are you prepared?' WHERE `entry`=5658;
UPDATE `quest_template` SET `RequestItemsText`='I come from Thunder Bluff, $r. Cairne himself has seen to it that I assist the Frostwolf Clan in these dire times.$b$bBut let us not waste any more time. You must strike down our enemies and bring to me their blood. Once enough blood has been gathered, the ritual of summoning may begin.$b$bVictory will be assured when the elemental lord is loosed upon the Stormpike army.' WHERE `entry`=6801;
UPDATE `quest_template` SET `RequestItemsText`='We must prepare the new fleet of War Riders, $r! My riders are set to make a strike on the central battlefield; but first, I must wet their appetites - preparing them for the assault.$b$bI need enough Stormpike Soldier Flesh to feed a fleet! Hundreds of pounds! Surely you can handle that, yes? Get going!' WHERE `entry`=6825;
UPDATE `quest_template` SET `RequestItemsText`='You\'ve worked hard, $n, but we have only just begun!$b$bMy War Riders must taste in the flesh of their targets. This will ensure a surgical strike against our enemies!$b$bMy fleet is the second most powerful in our air command. Thusly, they will strike at the more powerful of our adversaries. For this, then, they need the flesh of the Stormpike Lieutenants.$b$bMake haste, soldier!' WHERE `entry`=6826;
UPDATE `quest_template` SET `RequestItemsText`='I was locked up in a dwarven hellhole for days. You better believe I want revenge!$b$bWe must plan carefully.$b$bFirst, my war riders need targets to gun for - high priority targets. I\'m going to need to feed them the flesh of Stormpike Commanders. Unfortunately, those little buggers are entrenched deep behind enemy lines! You\'ve definitely got your work cut out for you.' WHERE `entry`=6827;
UPDATE `quest_template` SET `RequestItemsText`='My troops are supplied and ready to assault.  We just need orders from Noreg Stormpike and I\'ll send them into the fray!' WHERE `entry`=6846;
UPDATE `quest_template` SET `RequestItemsText`='The Frostwolf Clan is protected by a taint of elemental energy. Their shaman meddle in powers that will surely destroy us all if left unchecked.$b$bThe damage has grown too great for the Circle to control! Ivus must be called to our aid.$b$bThe Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals, $n!' WHERE `entry`=6881;
UPDATE `quest_template` SET `RequestItemsText`='The elite Frostwolf units that guard the lines must be dealt with, soldier! I\'m tasking you with thinning out that herd of savages. Return to me with medals from their lieutenants and legionnaires. When I feel that enough of the riff-raff has been dealt with, I\'ll deploy the air strike.' WHERE `entry`=6941;
UPDATE `quest_template` SET `RequestItemsText`='My gryphons are poised to strike at the front lines but cannot make the attack until the lines are thinned out.$b$bThe Frostwolf warriors charged with holding the front lines wear medals of service proudly upon their chests. Rip those medals off their rotten corpses and bring them back here.$b$bOnce the front line is sufficiently thinned out, I will make the call to air! Death from above!' WHERE `entry`=6942;
UPDATE `quest_template` SET `RequestItemsText`='Their spirits are low, soldier. After our last failed air strike against the Horde, they refuse to fly! It is up to you to bolster their morale.$b$bReturn to the battlefield and strike at the heart of the Frostwolf\'s command. Take down their commanders and guardians. Return to me with as many of their medals as you can stuff in your pack! I promise you, when my gryphons see the bounty and smell the blood of our enemies, they will fly again! Go now!' WHERE `entry`=6943;
UPDATE `quest_template` SET `RequestItemsText`='It takes many basilisk eyes to make even a small dose of Voren\'thal\'s elixir. Bringing me more would certainly incur the Scryers\' favor.' WHERE `entry`=10025;
UPDATE `quest_template` SET `RequestItemsText`='Do you bear any additional obsidian warbeads, $n?' WHERE `entry`=10477;
UPDATE `quest_template` SET `RequestItemsText`='Have you obtained more warbeads, $n?' WHERE `entry`=10478;
UPDATE `quest_template` SET `RequestItemsText`='You uncover an opening through which fuel is loaded into the fel reaver.' WHERE `entry`=10850;
UPDATE `quest_template` SET `RequestItemsText`='Skettis\'s lapdogs still keeps a close watch over us, outcasts. The moment any of us sets foot outside Shattrath we\'ll be as good as dead.$b$bBring me more feathers as proof of your victory over them.' WHERE `entry`=10918;
UPDATE `quest_template` SET `RequestItemsText`='It looks like the commander was not delirious after all. Bring me more dust and I\'ll prepare another elixir for you.' WHERE `entry`=11006;
UPDATE `quest_template` SET `OfferRewardText`='Keep bringing the dust to me. I\'ll prepare as many elixirs as you need.$b$bCommander\'s orders.' WHERE `entry`=11006;
UPDATE `quest_template` SET `RequestItemsText`='Da demons are making da Forge Camp: Wrath bigger. Soon, dey be too big and crush us. You crush dem first!$b$bShartuul\'s transporter is da key, but it protected by a magic shield and a demon called a degrader. Us powerful $c, and make special darkrune dat give you control of da degrader. $r give Gahk darkrune, us give $r crystalforged darkrune back.$b$bTake control of da degrader and possess as many of da demons dat come through da gate as you can ta stop dem!' WHERE `entry`=11060;
UPDATE `quest_template` SET `RequestItemsText`='Da demons of dat camp fixes da transporter all da times. Gahk say $n smash dems better dis time!$b$bBut, Gahk need another darkrune ta make da crystalforged darkrune.$b$bIf little $r not have a darkrune, you talk with Kronk. Him try ta make one darkrune every day! Maybe yous get one in his grab bag?!' WHERE `entry`=11027;
UPDATE `quest_template` SET `RequestItemsText`='You\'d better think twice before setting foot in Ratchet, $n! Word\'s been getting around of your dirty deeds.$b$bYou\'re in luck though, a ship just arrived with many wounded from an encounter with the Bloodsail Buccaneers. This is your chance to prove you\'re not a complete scoundrel. Lend us a hand by bringing linen cloth for bandages and empty vials for potions.' WHERE `entry`=9267;
UPDATE `quest_template` SET `RequestItemsText`='You must\'ve done something really bad to us or our friends, $n.  At any rate, I\'m here to offer you a way to get our good graces back.$b$bAs you know, Winterspring is quite cold.  With so many of us goblins coming from other cities, we could use a hand keeping warm.  Bring me some runecloth and coal and I\'ll put in the good word for ya.  Be warned though, our enemies are not going to take kindly to your helping us.' WHERE `entry`=9266;
UPDATE `quest_template` SET `RequestItemsText`='That mangy dog, Revilgaz, has offered to pardon any former Bloodsails willing to turn on their cap\'n!  That bilge sucker asked me to go an\' off me ole\' mates and to bring back their bandannas as proof.$b$bI don\'t have it in me heart to do that, nor will I ask ye to.  Bring me some silk cloth and red dye and I\'ll make suitable replicas.  I\'ll tell the Baron you went turncoat, but be warned... the Bloodsails are not gonna like it!' WHERE `entry`=9259;
UPDATE `quest_template` SET `RequestItemsText`='You\'ve procured more spinal dust? I can use as much of it as you bring me.' WHERE `entry`=9219;
UPDATE `quest_template` SET `OfferRewardText`='This dust is as potent as ever, $n. Keep bringing it to me if you\'re in need to boost your magical powers against the Scourge.' WHERE `entry`=9219;
UPDATE `quest_template` SET `RequestItemsText`='You\'ve brought more ghoul hearts? I can use as many as you can collect, $n.' WHERE `entry`=9217;
UPDATE `quest_template` SET `OfferRewardText`='This will provide you with greater power against the Scourge. Bring more hearts if you find them, $n.' WHERE `entry`=9217;
UPDATE `quest_template` SET `RequestItemsText`='For every bundle of fronds that you deliver to me, I will pay you with your choice of an insignia of the Dawn or the Crusade.$b$bInsignias may be turned in to the Quartermaster for various rewards.' WHERE `entry`=9137;
UPDATE `quest_template` SET `OfferRewardText`='Thank you, $n. Your work is vital to the success of our campaign against the Scourge.' WHERE `entry`=9137;
UPDATE `quest_template` SET `RequestItemsText`='For every armful of the scraps, I\'ll give you an insignia - the more the better. Now get out of my sight before I split you in two!' WHERE `entry`=9132;
UPDATE `quest_template` SET `OfferRewardText`='That\'s all you brought me? Maybe you didn\'t hear me the first time. I need MORE!' WHERE `entry`=9132;
UPDATE `quest_template` SET `RequestItemsText`='Truth be told, I use the cores to create Frostfire armor. It is the armor used by the mages battling in Naxxramas. Without you and others like you, we would most definitely be losing this war.$b$bWith that said, bring me more cores and I shall grant you more insignias.' WHERE `entry`=9129;
UPDATE `quest_template` SET `OfferRewardText`='You perform a great service for us, $n. Well done!' WHERE `entry`=9129;
UPDATE `quest_template` SET `RequestItemsText`='A man in my line of work can never have too many bone fragments, $n. Whenever you have a surplus of fragments, bring them to me and I\'ll reward you with another insignia.' WHERE `entry`=9127;
UPDATE `quest_template` SET `OfferRewardText`='My dream of becoming a full-time dancer at the Gadgetzan disco is soon to become a reality! Keep up the good work, $n.' WHERE `entry`=9127;
UPDATE `quest_template` SET `RequestItemsText`='You did an exemplary job on the first bundle, $n. If you have more, I will take them now. For every bundle that you turn in, I will reward you with another insignia.' WHERE `entry`=9125;
UPDATE `quest_template` SET `OfferRewardText`='Most excellent, $n! These will definitely come to good use.' WHERE `entry`=9125;
UPDATE `quest_template` SET `RequestItemsText`='The most splendid fireworks shows must include cluster rockets, and those cluster rockets must be fired from cluster launchers! Is it not then logical for you to learn the secrets of making cluster launchers? Bring me coins of ancestry and I will give this knowledge to you.' WHERE `entry`=8882;
UPDATE `quest_template` SET `RequestItemsText`='Large cluster rockets require vast resources and skill to create, but their brilliance and beauty is worth that effort! Bring me coins of ancestry and I will grant you the knowledge of their crafting.' WHERE `entry`=8881;
UPDATE `quest_template` SET `RequestItemsText`='*Whir* *Click*$b$bI seek rare fish for Fishmaster Bluegill to catalogue. If you bring me a Keefer\'s Angelfish, I will provide you with this fine reward.$b$b*Zzzap* *Whir*' WHERE `entry`=8221;
UPDATE `quest_template` SET `RequestItemsText`='*Whir* *Click*$b$bI seek rare fish for Fishmaster Bluegill to catalogue. If you bring me a Dezian Queenfish, I will provide you with this fine reward.$b$b*Zzzap* *Whir*' WHERE `entry`=8224;
UPDATE `quest_template` SET `RequestItemsText`='*Whir* *Click*$b$bI seek rare fish for Fishmaster Bluegill to catalogue. If you bring me a Brownell\'s Blue Striped Racer, I will provide you with this fine reward.$b$b*Zzzap* *Whir*' WHERE `entry`=8225;
UPDATE `quest_template` SET `OfferRewardText`='May these knives find a place in someone\'s heart.$b$bLiterally.' WHERE `entry`=8249;
UPDATE `quest_template` SET `RequestItemsText`='Even though we already have a contest winner, I will still buy your Tastyfish from you at a reasonable price. Whadda ya say!' WHERE `entry`=8194;
UPDATE `quest_template` SET `RequestItemsText`='Today between 2pm and 4pm we have a contest to determine who the greatest angler of them all is! Just be the FIRST PERSON to bring me 40 Tastyfish fished from the Tastyfish schools found along the coast of Stranglethorn before anyone else does and you will be declared the Master Angler!$b$bIf you are not the first person to bring me 40 fish, my apprentice here will still reward you with money for each 5 Tastyfish you bring her.$b$bOh, and don\'t delay, Tastyfish go bad quickly!' WHERE `entry`=8193;

UPDATE `quest_template` SET `RequestItemsText`='' WHERE `entry` IN (10903);
UPDATE `quest_template` SET `OfferRewardText`='The Consortium is well known for taking good care of its friends. At the beginning of each month I\'ll have some gems ready for you as payment for your services.$B$BThe quality of the gems you get will depend on how loyal you\'ve been to us. Here\'s to hoping you do the smart thing and stay with us.' WHERE `entry` IN (9884, 9885, 9886, 9887);
UPDATE `quest_template` SET `RequestItemsText`='Have you rescued any more spore sacs, $R?' WHERE `entry`=9742;
UPDATE `quest_template` SET `OfferRewardText`='Yes! You\'ve saved more spore sacs.$B$BYou\'re different than the other outsiders. I\'ll let my people know about your deeds!$B$B<This quest is repeatable up to friendly reputation.>' WHERE `entry`=9742;
UPDATE `quest_template` SET `RequestItemsText`='We can always use more fertile spores, $R. Tallstalks are incredibly useful mushrooms. Being able to grow them lets us do many things with them.' WHERE `entry`=9807;
UPDATE `quest_template` SET `OfferRewardText`='Yes?$B$BMmm. I have a feeling I know what you\'re going to ask me: what would possess someone to live out here in the deepest part of the Barrens, the threat of quilboar all around, and no protection? Well, we all have our reasons to justify why we act the way we do. The real question is, what brings a lowly $R to the deepest reaches of the Barrens to speak to a woman who obviously has no concern for her own well-being?$B$BI\'m willing to bet we both know the answer to that.' WHERE `entry`=1530;
UPDATE `quest_template` SET `OfferRewardText`='The wind approaches you quickly from the horizon; the earth is steady beneath your feet; and your spirit is already warmed by fire--I would say it is time for you to learn about the purity of water.$B$BYour path has led you this far, and your spirit will give you the strength to carry on even further. But the first step is yours to take.' WHERE `entry`=1528;
UPDATE `quest_template` SET `RequestItemsText`='Ya have the sapta, $G brotha:sista;?$B$BI know another that had trouble after defeating da corrupt water spirit--seems he waited too long and he came out of the spirit world too quick fer his taste. Hate to see dat happen to another, so I\'ll just wait here fer a bit to make sure no one else be needin\' me help.' WHERE `entry`=1103;
UPDATE `quest_template` SET `RequestItemsText`='Leave! The Magram do not speak with the weak. We kill them!$B$BIf you want to speak with me, then show me you are strong. Return after you slay many Gelkis.' WHERE `entry`=1367;
UPDATE `quest_template` SET `RequestItemsText`='The Scourge\'s plague cauldron stands before you, spewing vast amounts of toxins into the air.  A small, non-descript access panel lies in the base of the cauldron\'s vast platform.$B$BHaving already defeated the cauldron lord and acquired its key, you are free to add the appropriate reagents to the cauldron to make a counter agent to the plague.' WHERE `entry` IN (5218, 5221, 5224, 5227);
UPDATE `quest_template` SET `RequestItemsText`='Allow me to finish telling you my tale.' WHERE `entry`=10814;
UPDATE `quest_template` SET `RequestItemsText`='Faith. It is far more important than some realize.$B$BIt does not matter what you believe sometimes. It is just important that you believe in something.' WHERE `entry`=1149;
UPDATE `quest_template` SET `RequestItemsText`='More information <snort> for the Horde when you\'ve killed the Bristleback\'s wise ones, $R. <snort> Not a moment earlier! Mangletooth is no fool.' WHERE `entry`=878;
UPDATE `quest_template` SET `OfferRewardText`='I think I can breathe easy now, knowing that the harpies won\'t be bothering our supply caravans anymore. And not one moment too soon, either. I hear I\'m being sent some fun little toys with the next shipment!$B$BYou\'re pretty good at what you do, $N, you ought to track down my boss in Ratchet. I\'ll bet he could find some work for you.$B$BOh, and don\'t worry, I wouldn\'t forget to pay you for the service you provided me.' WHERE `entry`=835;
UPDATE `quest_template` SET `RequestItemsText`='Have you spoken to the ancients yet, $N?' WHERE `entry`=9785;

UPDATE `npc_text` SET `text0_0`='' WHERE `ID` IN (10106, 10218);
UPDATE `npc_text` SET `text0_0`='What do you think when you think Wildhammer, eh? Gryphon riders, if you\'ve any sense! Shadowmoon is no Aerie Peak, but we\'ve still got fine stock for you, aye, fine stock. Take a look at my beauties and see if one of \'em catches your eye!' WHERE `ID`=10809;
INSERT IGNORE INTO `npc_text` VALUES ('9219','Keep a sharp eye, $c.  You never know when some beastie is stalking you instead of the other way around.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9847','Be careful among the ruins, $c. The Kirin Tor spirits you find there will not recognize you as a friend.$B$BThe custodian and I are the only ones whose spirits retained a strong enough tie to this place to preserve our full identities in death.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9848','Kirin\'Var survived 20 long years and countless orc assaults, but it could not withstand the forces of Kael\'thas. A man who once called himself a member of the Kirin Tor murdered all of us, save one.$B$BArchmage Vargoth survived the attack, so Kael\'thas imprisoned him within the Violet Tower, warding it with a magic that forbids the passage of any of the Kirin Tor.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10280','Greetings, traveler. I am Oronok. Please, sit by my fire and warm yourself.$B$BBeware the ravenous beasts of the shattered shelf below us!','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10312','Are you ready to hear the story of the Cipher of Damnation, $N?','','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10313','Very well. The words you seek have a name, $N. They are known as the Cipher of Damnation: The words uttered by Gul\'dan himself to shatter this land. The very spell that severed the last remaining tie the orcs had with the elements of Draenor.$B$B<Oronok nods.>$B$BAye, it is the cipher that you must reconstruct and ultimately the words of the cipher that you must call.','','0','1','0','1','0','1','0','273','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10314','The Cipher of Damnation was kept in Gul\'dan\'s private quarters inside Karabor for twenty years. Ah, that\'s right, you have no idea what Karabor is, do you?$B$BThe Black Temple...$B$BAye, now home to Illidan Stormrage.$B$BWhen Illidan took control of the Black Temple, he discovered the cipher. He recognized that the damage to this world had already been done but thought it wise to keep the cipher secure for later use.','','0','1','0','1','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10315','When you stand at the Altar of Damnation and see the spirits of the damned, kneeling in prayer, what you do not see is me, standing next to Gul\'dan.$B$B<Oronok nods.>$B$BI told you that I was a lot of things, did I not? One of those \'things\' was a lieutenant of Gul\'dan.$B$BI have done many terrible things in my life. I have slaughtered man, woman, and child alike. Danced in the blood of innocent draenei... yet...$B$B<Oronok chokes on his words.>','','0','1','0','1','0','1','0','274','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10316','I will never forget that day, $r. Never. Even though I had long since abandoned shamanism in favor of shadow magic, I felt the cut. A sense of loss so profound... I could not explain it to you with mere words.$B$BWhen the tie to the elements was severed, all orcs on Draenor changed. If there was ever any doubt in the power of the shadows, it was washed away with the cresting of the molten lava over the shattered earth.$B','','0','1','0','274','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10317','A wave of sickness rushed through me. After the ritual was over, I ran home to my children. I gathered what belongings I could carry in my arms and left with my boys. We ran to the hills and hid. There really was no other option...$B$BNot a day goes by that I don\'t think of the cut. It has taken 20 years to reconnect with the elements. It has taken 20 years for the elements to even begin to heal.','','0','1','0','1','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10318','As I said, the cipher was found by Illidan when he took over the Black Temple. He divided the tome into three parts and charged their care to his minions.$B$BMy boys... My boys are grown now. When I got word of what Illidan had done with the cipher, I sent my boys to recover the pieces.$B$BYou must find my boys, $N. You must find them and recover the Cipher of Damnation.','','0','1','0','1','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10323','Ar\'tor\'s lifeless body remains suspended in mid-air by demonic magic. They take from him, even in death...','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10327','I... died.$B$BWhy am I still here? Is there no great hunting ground that I ascend to?$B$BNo... I must first complete my task. Before I can leave this world, the second part of the Cipher of Damnation must be recovered.','I... died.$B$BWhy am I still here? Is there no great hunting ground that I ascend to?$B$BNo... I must first complete my task. Before I can leave this world, the second part of the Cipher of Damnation must be recovered.','0','1','0','1','0','274','0','273','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10427','The dwarf appears to have been discovered and slain in the midst of a spy mission. The Deathforge\'s attendants have left the corpse in the open, perhaps as a warning to other would-be interlopers.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10447','To many of my people I am known as a traitor... as Illidan\'s lapdog.  It is best that they continue to think that for now.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10625','','The fight against Kael\'thas and Illidan continues on all fronts.  Defeat is not an option.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10651','I can instruct you in enchanting.  Interested?','I can instruct you in enchanting.  Interested?','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10666','Below is the aptly named Deathforge. If left to their own devices, the Shadow Council would supply the Legion with an endless stream of infernals.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10680','I came to this land to cleanse troubled spirits, but after the attack I fear that my mission has failed.  So many have been taken by the wastes.  Please, you must help them.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10808','','Ya may know a thing or two about handlin\' animals, but have ya ever taken ta the skies? We Wildhammers know how ta ride the wind with the best of \'em. Fer a small fee, if ya\'ve got the mettle, I\'ll train ya good and proper.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10847','Wut you want? Smell funny for fel orc...','','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10864','I got nothing new for you, kid. You\'ve outgrown manual labor...','','0','1','0','274','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10896','<Mudlump is polishing his boots.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10910','The fel crystalforge can be used to transform your apexis shards into unstable flasks of the beast.  These flasks make the imbiber more agile, stronger and heartier.$B$BMake your choice, below.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10937','You\'ll find plenty to do here, $N.','','0','1','0','273','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10939','','We must re-establish our stranglehold on these mines!','0','1','0','5','0','396','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10948','The Apexis Relic shimmers, betraying a hidden intelligence within.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10978','','Hello, $N.  Need to quickly get to Blackwind Landing, our base in the Skethyl Mountains?  I\'ve got a pretty little nether ray ready.$B$BYou want to go now?  You just say the word, $g big guy : bunny;!','0','1','0','1','0','6','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10979','Hello, $g sir : ma\'am;!  If you want, I have a nether ray waiting to take you to the Skyguard Outpost atop the Blade\'s Edge Mountains.$B$BJust let me know.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10995','','Alright, I admit it, you\'ve proven yourself and then some, $N.$B$BIf I was hard on you before it was because I saw the spark of a true Skyguard within you.  I dare say that you\'re the finest ace that we have!$B$BAnytime that you want to help out, I\'ll be more than proud to hand you another set of bombs.','0','1','0','1','0','66','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11008','Steel isn\'t strong, exalted one, flesh is stronger. Steel gains its strength from the one who wields it. But enough of that... How can we help you exalted one?','','0','1','1','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11011','First you became $g king : queen; of the ogres below, and now you have exalted yourself amongst us of Ogri\'la.$B$BThis is unheard of for a $r, and yet, there you stand as living proof.  I thank you, $N, and we all owe you a debt that we will never truly be able to repay!','','0','1','0','1','0','2','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11021','Us sure see yous here all da time!$B$BChu\'a\'lor say little $r our $g hero : heroine;!$B$B$N like one of us ogres now.  Only, Gahk confused because $N need to be bigger for dat!','','0','1','0','1','0','5','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11028','We are humbled by your selflessness, $N.  If in the past we\'ve seemed a bit conceited, realize that it is by your example that we were able to change our attitudes.$B$BWe thank you, and hope that you\'ll continue to assist us in our struggle against the forge camps.','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11091','What do you need, $c?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');

INSERT IGNORE INTO `npc_text` VALUES ('6180','I heard their mocking laughter as my gryphon crashed and burned, $c.$B$B"Slidore, you stink!" They shouted.$B$BNobody talks to Slidore that way! Help me get out of here so that I can show them who the real stinker is!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8213','','I, like my brother, honor those who honor their ancestors.  It brings me great joy to share my crafting secrets to disciples of the Lunar Festival!','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8222','I love the Lunar Festival!  It\'s a great place to let your hooves kick up dust!','I love the Lunar Festival!  It\'s a great place to let your hooves kick up dust!','0','1','0','5','0','0','0','0','I don\'t know how these fireworks work, but they sure are pretty!','I don\'t know how these fireworks work, but they sure are pretty!','0','1','0','5','0','0','0','0','This moonlight will take you to Thunder Bluff.  Use it when you want to leave the festival.','This moonlight will take you to Thunder Bluff.  Use it when you want to leave the festival.','0','1','0','1','0','0','0','0','Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...','Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8245','','We\'ve been so wrapped up in this war, some of us forgot to make time for love.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8665','','Thank you for taking care of the lake, the lashers and the owlkin, $c.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8786','We must strive to understand the balance maintained by this world\'s elemental spirits.','We must strive to understand the balance maintained by this world\'s elemental spirits.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8797','So good of you to speak with me.  Please, help the Alliance in any way that you can.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8822','','I haven\'t got anymore work for you, $N. I do want you to know that the red snapper we shared was something special that I\'ll never forget...','0','1','0','1','0','24','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8827','Do you have the understanding to continue, shaman?  Do you know why you are here?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8829','It is a good day to be alive and one with the elements.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8832','Look around you, shaman.  Can you see the balance of the elements in the earth, the air, the water and the fire that has touched them all?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8850','','Need something?','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8869','<Cowlen sobs.>','','0','1','0','18','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8870','What could I have done to give the gods cause to lash out at me with such ferocity? All that I cherished is gone - dead or destroyed. My family taken from me by the brutes of the forest. My home razed. My ship sunk.$B$BI am a broken man, stranded on a broken island.$B$BPerhaps you are you here to finish the job? Make it quick, I will not resist. Take my life, stranger; I am too cowardly to do it myself. My hand shivers... the blade will not strike true.$B','','0','1','0','6','0','1','0','20','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8871','If not the gods, who? How? What could cause such strife?','','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8872','Legion? Demons? They hunt you? My people have also been hunted by Legion: Targeted by their dark masters for damnation.$B$B<Cowlen wipes the tears away.>$B$BIt is the reason that I moved my family here oh-so-many years ago.','','0','1','0','6','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8990','How can I help you, stranger?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8993','Welcome to my shop!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('8994','Ah, the Promised One has arrived. Welcome to Stillpine Hold.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9004','You know about the Violet Eye then?  Maybe I\'ll have time for you later.$B$BI have to get back to my work.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9045','Did they send you to find me? Well I\'m not going back without my men.','','0','1','0','1','0','274','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9050','Yes, I am one of the \'Broken\'.  I trust that this does not bother you?  Broken or draenei, we must endure the ridicule that some in our society may throw at us.  A better understanding and communication with the elements of this world is all that matters.','','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9145','[In broken Common] It is time celebrate we do.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9149','You\'ve come a long way, $N. A long way indeed... But I knew you were destined for great things.  We all knew. All hail $N!$B$BAnd thanks again for taking care of our gnome problem...','','0','1','0','1','0','1','0','71','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9160','I wanted to thank you once more for what you did for me. You gave me the courage to take back my home from the beasts of the forest. In doing so, I found Magwin!','','0','1','0','1','0','5','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9162','The draenei champion walks among us. This is a celebration for the savior of Azuremyst and Bloodmyst!','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9163','This is all for you, $N. You did this. You saved all of these people and thousands more.$B$BYou have risen above the strife and tragedy of this world and in doing so, elevated all of us with you.$B$BYou have done so much - more than many could do in ten lifetimes - yet your life has just begun. If only we had a thousand heroes like you.$B$BBut listen well, $N. Your destiny lies in the Outland. I have seen it in visions, a prophecy yet untold.$B$BFind our people, $N. Find them and bring them home...','','0','1','0','1','0','1','0','1','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9244','Bounties for notorious criminals and vicious animals are posted here. It would be much too dangerous for you to pursue the bounty posted here right now, but check the board again as you gain strength.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9492','','When I first arrived, I\'d hoped to meet the town\'s namesake.$B$B<Ros\'eleth glances around.>$B$BMost young high elves outgrow the \'I wanna be a Farstrider\' phase by the time they\'re taken as apprentices. Then, it\'s onto the \'I\'m going to be a magister\' stage.$B$BI don\'t think I ever quite outgrew the Farstrider phase, to be honest. No one dreams of growing up to be a seamstress, but we can\'t have the Farstriders running around naked, as my mother used to say.','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9521','We\'ve a duty out here, $g boy : girl;, to see to it that we don\'t let anyone surprise us.$B$BThat means proactive action!','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9529','You will find our bank in the Exodar\'s central hub.  Go with the Light.','You will find our bank in the Exodar\'s central hub.  Go with the Light.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9530','Stephanos is our Hippogryph master.  He resides just outside of the Exodar, near the main entrance.  May the Light bless you on your travels.','Stephanos is our Hippogryph master.  He resides just outside of the Exodar, near the main entrance.  May the Light bless you on your travels.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9532','Miall is our chief blacksmith on the Exodar. She can be found on the lower level of the Trader\'s Tier.  Go with the Light.','Miall is our chief blacksmith on the Exodar. She can be found on the lower level of the Trader\'s Tier.  Go with the Light.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9543','You will find our herbalist, Cemmorhan, against the back wall of the Vault of Lights.','You will find our herbalist, Cemmorhan, against the back wall of the Vault of Lights.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9556','You will find a number of shaman trainers in the Crystal Hall. Perhaps you should visit Farseer Nobundo there, and show the Broken some pity. Light be with you.','You will find a number of shaman trainers in the Crystal Hall. Perhaps you should visit Farseer Nobundo there, and show the Broken some pity. Light be with you.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9566','Yes, $t citizen : citizen;, what matter of import do you have to bring to my attention?','','0','1','0','6','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9631','Haven\'t got much time to talk, $r. That is, unless you\'re willin\' to help with this mine trouble.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9845','','Welcome to the Allerian Stronghold, $N.','0','1','0','2','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9939','$N, the Sons of Lothar have fought here, on the Hellfire Peninsula, for two decades.  We are beset on all sides by indigenous orcs and hellish demons of the Burning Crusade, and though our hearts still beat fiercely, years of war have reduced our numbers.$B$BYou, and the influx of Azeroth\'s new generation of heroes, are a welcome sight indeed!','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('9960','I have every confidence that we will recover that which Nexus-Prince Haramad desires.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10097','Dulvi is the woman you want. She trains new prospects in the middle of the Watch.','Dulvi is the woman you want. She trains new prospects in the middle of the Watch.','7','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10239','What are you after? Speak up. I\'m not about to trust you with one of my Elekks until you prove your dedication and friendship to our people.','What are you after? Speak up. I\'m not about to trust you with one of my Elekks until you prove your dedication and friendship to our people.','7','1','1','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10245','','Our work in the Living Grove must not be endangered.  Our very lives hinge upon its continued health and growth.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10255','Expedition Point is a tough place to be stationed, but it\'s critical to the defense of Honor Hold.  The information gathered here, and the engagements our soldiers make against the Legion and the orcs of Zeth\'Gor, are invaluable to the Alliance\'s Hellfire campaign.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10275','The Sons of Lothar have been fighting a war without end.  I\'m amazed we\'ve kept our equipment in as good a shape as it is!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10288','<One gets the sense that Oric is here only in a sorry attempt at comic relief and shouldn\'t be paid attention to, as it will only encourage him.>','','0','1','1','14','3','11','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10300','','Hey, don\'t open the cage!  Okay?$B$BThese ogres have got me right where I want them.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10416','<The cleric stares at you through the corner of its eye.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10426','<The summoned daemon twitches, fighting against Medivh\'s rules of play.  He wants your soul!>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10439','<The orc wolf\'s frozen, snarling mouth shivers your bones.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10509','The details of the posting call for the execution of an enormous wolf.  She apparently keeps her den to the south of the Jagged Ridge, near the Horde stronghold.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10605','','You must... free... my children...','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10613','Greetings, mortal.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10614','In the eastern reaches of the Netherwing Fields lies Dragonmaw Fortress. It is there that the cruel Dragonmaw orc clan tortures the drakes that they capture in an attempt to bend them to their will. Many have given up hope, choosing instead to do the bidding of Dragonmaw. The others... They refuse to land for fear of Dragonmaw war parties capturing them and taking them back to the fortress.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10615','I... We are powerless. Illidan found and delivered unto the Dragonmaw their leader - Zuluhed. This orc was the one responsible for the capture and incarceration of Alexstrasza. How could we fight against such power? He captured an Aspect!$B$BAnd just as easily, he took my mate.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10616','<Neltharaku nods.>$B$BKarynaku... She is held prisoner atop Dragonmaw Fortress. I have made many attempts to free her. All have failed... You have battled these beasts before, have you not?$B','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10655','It is good to see you again, friend.','','0','1','0','396','0','2','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10745','<The druid appears to be deep in sleep, oblivious to his surroundings.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10746','I beg you, $r, be swift. They will not stop pursuing me! I cannot escape from them, even here!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10767','If you seek training in weapons, I can provide.','','7','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10793','','Welcome to the Evergrove, $c. Timeon and I have been studying the arakkoa of Blade\'s Edge for some time now, and we\'ve found some alarming differences between them and their cousins in Terokkar.','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10794','<The arakkoa ghost reaches out toward you as though to try to identify you. You get the impression that it cannot see you clearly.>$B$BRokkaram, is that you?','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10795','Forgive me for questioning you, my son. My sight isn\'t what it once was, but the raven has blessed me with a long life.$B$BSoon, it will be time for you to take my place. I have taught you all I know. My only regret is that I didn\'t prove worthy enough to recover our sacred Book of the Raven.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10796','The true believers have lived in shame since the day our treacherous cousins in Skettis stole the book from us, shattered its tablet, and buried the fragments in their wretched city!$B$BPray that the raven will choose you to restore it, my son. Be faithful and remember always the prophecy, "From the dreams of his enemies shall the raven spring forth into the world."','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10807','Do my eyes deceive me? Is that really you, Brother Rokkaram, after all this time?$B$BIf you are looking for Sai\'kkal, he walks among the crystals in the western part of the Vortex Pinnacle. He seems preoccupied with what he calls a brutish, primitive presence there, although nothing seems amiss.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10848','You no make dis your home. Maybe you want eat someting?','','0','1','0','274','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10849','Sometimes those damnable blood elves stop by and require some inane reagent or poison. I must keep my stock of such items full at all times lest Lord Illidan get word of the Dragonmaw not cooperating...$B$B<Rumpus swallows hard.>$B$BWe don\'t want that...','Sometimes those damnable blood elves stop by and require some inane reagent or poison. I must keep my stock of such items full at all times lest Lord Illidan get word of the Dragonmaw not cooperating...$B$B<Rumpus swallows hard.>$B$BWe don\'t want that...','0','1','0','1','0','1','0','274','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10854','$G Brother:Sister;, you are now considered bound by blood to the Netherwing. All of Netherwing will be behind you now! The time to strike at the heart of our enemies is now, friend! We must reclaim our lost heritage.','','0','1','0','396','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10860','You must have wondered how it is that I can speak so clearly for an ogre.  It\'s a side effect of the crystals that grow on the terrace surrounding Ogri\'la.  The ogres there gifted me with this staff, and its crystal has in turn gifted me mentally.$B$BIt is through your continued actions, at Ogri\'la above, that I hope to one day be able to bring this boon to all of my ogre brethren.  You have my thanks, my $g king : queen;, for all that you have done and will do.','','0','1','0','396','0','396','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10862','Another one, eh? You\'ll never make it...','','0','1','0','397','0','5','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10863','Just remember that you can only pick one gathering job to do per day. Aside from that, we\'re always looking for more crystals. Any worthless peon can bring those back to the base camp.','','0','1','0','396','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10877','Be quiet \'bout what you hear and see around here, $r.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10879','Grok hear dat yous da new $g king : queen; of all da ogres.  Congrat... congratu... gratz, little $r.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10892','You look familiar...','','0','1','0','396','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10901','Stand at attention, grunt!','','0','1','0','397','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10904','Get lost before I beat you with my booterang.','','0','1','0','5','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10911','<As you place your apexis shards into the fel crystalforge and pull the lever, the device makes an unworldly sound as it grinds them into dust.  A few moments later your flask pops out of its \'mouth\'.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10912','<As you place your apexis shards into the fel crystalforge and pull the lever, the device makes an unworldly sound as it grinds them into dust.  A few moments later your flasks pop out of its \'mouth\'.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10916','We hope you\'ll be able to ease our headaches.  You try having ten sons, all of them wanting to do something they weren\'t meant for!$B$BStill, as a father, we do what we must.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10917','Do you have any sons, $c?$B$BLet us tell you something, we think we were much happier before we came to Ogri\'la and the crystals made us more aware.  Before, we would have just bashed them over the head to get them to shut up.  Now all they do is bother us about the Sha\'tari Skyguard.$B$BIgnorance is bliss!','','0','1','0','6','0','15','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10923','Gahk new at Ogri\'la like little $r.  It like heaven da other ogres below always talk about.  But, Gahk\'s heads hurt from crystal making Gahk smarter.$B$B<Both of Gahk\'s heads nod to each other.>$B$BUs learning ta make da crystalforged darkrune.  When us learn dat, we smash da demon\'s warp-gate!','','0','1','0','1','0','15','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10927','On behalf of all of Ogri\'la, we give you thanks for your efforts, $N.$B$B<Chu\'a\'lor\'s left head nods while his right head smiles at you.>$B$BAnd do not forget that by helping us here you are also helping to protect our brethren down below whom you have become like a $g king : queen; to.','','0','1','0','1','0','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10940','<The Murkblood overseer grunts.>','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10947','I must leave this place at once!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10950','Stand at attention, captain!','','0','1','0','113','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10989','That\'s the spirit, $g laddy : lassie;!  Yer making all of us proud with all o\' the work ye be doing!$B$BAnd ya know, if ya want a quick trip ta our other base in the Skethyl Mountains, go down an talk ta Skyguard Handler Irena.  She\'ll set ya up nicely.','','0','1','0','71','0','396','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('10992','','I see that you\'ve been putting in your time around here, $c.$B$BPut in more; the demons aren\'t gone yet, rookie.','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11001','','You know, $N, it\'s such an honor to work with you!$B$BWhen you\'re not busy wrangling, maybe we could $g go out some place for dinner? : get together for a girl\'s night?;$B$BOh, did I mention that we can now get you to our base in the Skethyl Mountains real quick?  If you want, speak with Skyguard Handler Irena about that.','0','1','0','1','0','24','0','6','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11004','','I hope you don\'t think I\'m a stalker, or anything like that, $N.$B$BI mean, I know that you\'re real famous within the Skyguard now, and well... I\'m sure that you wouldn\'t want to hang out with a lowly peon like me.$B$BBut, if you ever want to get together to just hang out, or even wrangle some more rays, drop by anytime!  I\'ll be here.$B$BI miss you...','0','1','0','1','0','1','0','18','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11007','The relics are truly a great mystery.  Perhaps by studying them regularly, you will gain a finer appreciation of their capabilities.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11032','<Overlord Mor\'ghor salutes.>','','0','1','0','66','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11056','We are launching an assault on Bash\'ir Landing, to study their Crystalforge.  Help us if you can!  Our Skyguard Aether-tech will leave in about $4581d.','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11065','Our Aether-tech and his escort are heading to Bash\'ir Landing.  Meet them there and help with their mission!','','0','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('11090','Drakes is my business, $N. I\'m authorized to sell them to our highest ranking officers.','','0','1','0','1','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('12162','','Greetings, Light of Elune be with you.','0','1','0','2','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('12245','Many have been lost to the seas.  I, and the wisps, are charged with looking for those souls.  ','Many have been lost to the seas.  I, and the wisps, are charged with looking for those souls.','7','1','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
INSERT IGNORE INTO `npc_text` VALUES ('12275','Welcome aboard the Feathermoon Ferry.  We travel between Feathermoon Stronghold and the Forgotten Coast looking for those lost at sea.  The sea can be a dangerous place if you are not prepared.$b$bIf you need to get prepared, please speak to our provisioners.  They are more than happy to help you.','','7','1','0','2','2','1','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0');
UPDATE `npc_text` SET `text0_0`='Come closer, friend.  Do not let my eyes startle you.$B$BI might have lost my sight many years ago but I never needed it to see the things that really matter.',`text0_1`='' WHERE `ID`=8792;
UPDATE `npc_text` SET `text0_0`='',`text0_1`='It looks like help has finally arrived!  The Omenai welcome you to our remnant camp, $N.' WHERE `ID`=8852;
UPDATE `npc_text` SET `text0_0`='It will take a while, but these Broken Ones will learn the ways of the Light!',`text0_1`='' WHERE `ID`=8854;
UPDATE `npc_text` SET `text0_0`='',`text0_1`='Take your time, look the weapons over.  I also repair weapons and armor if you need such services.' WHERE `ID`=9646;
UPDATE `npc_text` SET `text0_0`='Thanks for getting me out of there. I owe you one!',`text1_0`='I should be able to get out here now. Thanks!' WHERE `ID`=10373;
UPDATE `npc_text` SET `text0_0`='$N! Come here! Surely you know of the battle that rages within Alterac Valley back on Azeroth. We need every able-bodied fighter we can muster. Fight with the Stormpike Guard and defeat the Frostwolves!',`text0_1`='$N! Come here! Surely you know of the battle that rages within Alterac Valley back on Azeroth. We need every able-bodied fighter we can muster. Fight with the Stormpike Guard and defeat the Frostwolves!' WHERE `ID`=10560;
UPDATE `npc_text` SET `text0_0`='They can\'t keep this up! Their wings will eventually give...',`text0_1`='' WHERE `ID`=10606;
ALTER TABLE `npc_text` ORDER BY ID;

-- spellfocus (custom GUID range, just verify)
INSERT IGNORE INTO `gameobject` VALUES (49861, 300149, 1, -2453.24, -3153.89, 35.8593, 1.97643, 0, 0, 0.835045, 0.550182, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49860, 300150, 1, -3640.92, -3421.74, 37.1979, 3.21097, 0, 0, 0.999398, -0.0346795, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49859, 300150, 1, -3662.10, -3455.62, 37.2112, 2.38107, 0, 0, 0.928567, 0.371165, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49858, 300150, 1, -3700.91, -3470.21, 37.2827, 0.957751, 0, 0, 0.460781, 0.887514, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49857, 300151, 1, -3532.88, -4317.78, 7.06083, 5.98722, 0, 0, 0.147446, -0.98907, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49856, 300152, 530, 6719.37, -7593.13, 126.092, 0.258894, 0, 0, 0.129086, 0.991633, 180, 0, 1);
INSERT IGNORE INTO `gameobject` VALUES (49855, 300153, 1, -4698.88, -3721.16, 50.8914, 3.76424, 0, 0, 0.951929, -0.30632, 180, 0, 1);
-- Edge of Madness event, Zul'Gurub
-- Four different bosses spawn at different times.
-- Each event starts on Monday and lasts for 2 weeks
-- Same GO entry starts the events, just with different GUID's to control the `gameobject_scripts`
INSERT IGNORE INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`description`) VALUES 
(29,'2008-03-24 00:00:00','2020-12-30 23:00:00',86400,21600,'Edge of Madness, Gri\'lek'),
(30,'2008-04-07 00:00:00','2020-12-30 23:00:00',86400,21600,'Edge of Madness, Hazza\'rah'),
(31,'2008-04-21 00:00:00','2020-12-30 23:00:00',86400,21600,'Edge of Madness, Renataki'),
(32,'2008-05-05 00:00:00','2020-12-30 23:00:00',86400,21600,'Edge of Madness, Wushoolay');

-- bg things from GriffonHeart
DELETE FROM `creature` WHERE `map` IN (489,529,566);
DELETE FROM `gameobject` WHERE `map` IN (489,529,566);
REPLACE INTO `gameobject_template` VALUES ('184493', '5', '7153', 'Netherstorm Flag', '1375', '32', '2.5', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184382', '29', '6211', 'Visual Banner (Neutral)', '1375', '32', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184381', '29', '5771', 'Visual Banner (Alliance)', '1375', '32', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184380', '29', '5773', 'Visual Banner (Horde)', '1375', '32', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184142', '26', '7153', 'Netherstorm Flag', '0', '0', '2.5', '0', '13000', '34976', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184141', '24', '7153', 'Netherstorm Flag', '35', '0', '2.5', '1479', '34976', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184083', '29', '1287', 'Draenei Tower Cap Pt', '1375', '0', '1', '80', '0', '2718', '2719', '12967', '12966', '0', '0', '12907', '12906', '12958', '12959', '40', '2720', '1', '5', '90', '180', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184082', '29', '1287', 'Human Tower Cap Pt', '1375', '0', '1', '80', '0', '2718', '2719', '12971', '12970', '0', '0', '12909', '12908', '12962', '12963', '40', '2720', '1', '5', '90', '180', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184081', '29', '1287', 'Fel Reaver Cap Pt', '0', '0', '1', '80', '0', '2718', '2719', '12969', '12968', '0', '0', '12911', '12910', '12960', '12961', '40', '2720', '1', '5', '90', '180', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184080', '29', '1287', 'BE Tower Cap Pt', '1375', '0', '1', '80', '0', '2718', '2719', '12965', '12964', '0', '0', '12905', '12904', '12957', '12956', '40', '2720', '1', '5', '90', '180', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184898', '7', '91', 'Doodad_GeneralMedChair28', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184904', '7', '91', 'Doodad_GeneralMedChair34', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184903', '7', '91', 'Doodad_GeneralMedChair33', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184902', '7', '91', 'Doodad_GeneralMedChair32', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184901', '7', '91', 'Doodad_GeneralMedChair31', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184900', '7', '91', 'Doodad_GeneralMedChair30', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184899', '7', '91', 'Doodad_GeneralMedChair29', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184897', '7', '91', 'Doodad_GeneralMedChair27', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184896', '7', '91', 'Doodad_GeneralMedChair24', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184895', '7', '91', 'Doodad_GeneralMedChair23', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184894', '7', '91', 'Doodad_GeneralMedChair22', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184893', '7', '91', 'Doodad_GeneralMedChair21', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184892', '7', '91', 'Doodad_GeneralMedChair20', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184891', '7', '91', 'Doodad_GeneralMedChair19', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184890', '7', '91', 'Doodad_GeneralMedChair18', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184889', '7', '91', 'Doodad_GeneralMedChair17', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184888', '7', '91', 'Doodad_GeneralMedChair16', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184887', '7', '91', 'Doodad_GeneralMedChair15', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184886', '7', '91', 'Doodad_GeneralMedChair14', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184885', '7', '91', 'Doodad_GeneralMedChair13', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184884', '7', '91', 'Doodad_GeneralMedChair12', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184883', '7', '91', 'Doodad_GeneralMedChair11', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184882', '7', '91', 'Doodad_GeneralMedChair10', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184881', '7', '91', 'Doodad_GeneralMedChair09', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184880', '7', '91', 'Doodad_GeneralMedChair08', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184879', '7', '91', 'Doodad_GeneralMedChair07', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184878', '7', '91', 'Doodad_GeneralMedChair06', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184877', '7', '91', 'Doodad_GeneralMedChair05', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184876', '7', '91', 'Doodad_GeneralMedChair04', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184875', '7', '91', 'Doodad_GeneralMedChair03', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184874', '7', '91', 'Doodad_GeneralMedChair02', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184873', '7', '91', 'Doodad_GeneralMedChair01', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184720', '0', '7203', 'Forcefield 001', '1375', '32', '0.1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184719', '0', '7203', 'Forcefield 000', '1375', '32', '0.1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180102', '6', '266', 'Neutral Banner Aura', '114', '32', '5', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179830', '24', '5912', 'Silverwing Flag', '1314', '0', '2.5', '0', '23383', '11', '23333', '23390', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180102', '6', '266', 'Neutral Banner Aura', '114', '32', '5', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179830', '24', '5912', 'Silverwing Flag', '1314', '0', '2.5', '0', '23383', '11', '23333', '23390', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179831', '24', '5913', 'Warsong Flag', '210', '0', '2.5', '0', '23384', '11', '23335', '23389', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179871', '6', '5931', 'Speed Buff', '114', '0', '1', '0', '0', '0', '23451', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180322', '5', '6391', 'Ghost Gate', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179904', '6', '5991', 'Food Buff', '114', '0', '1', '0', '0', '0', '23493', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179905', '6', '5995', 'Berserk Buff', '114', '0', '1', '0', '0', '0', '23505', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179916', '0', '6011', 'RazorfenDoor01', '114', '32', '0.9009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179917', '0', '850', 'RazorfenDoor02', '114', '32', '0.8547', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179918', '0', '411', 'Doodad_PortcullisActive01', '114', '32', '2.26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179919', '0', '411', 'Doodad_PortcullisActive02', '114', '32', '2.68149', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179920', '0', '411', 'Doodad_PortcullisActive03', '114', '32', '3.12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179921', '0', '411', 'Doodad_PortcullisActive04', '114', '32', '2.33271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180100', '6', '2232', 'Alliance Banner Aura', '114', '32', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180101', '6', '1311', 'Horde Banner Aura', '114', '32', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('185918', '0', '7390', 'Doodad_PVP_Lordaeron_Door01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183973', '0', '7033', 'Doodad_PVP_Ogre_Door_Front04', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183972', '0', '7033', 'Doodad_PVP_Ogre_Door_Front03', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183971', '0', '7033', 'Doodad_PVP_Ogre_Door_Front02', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183970', '0', '7033', 'Doodad_PVP_Ogre_Door_Front01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184664', '6', '5932', 'Shadow Sight', '0', '0', '1', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184663', '6', '5932', 'Shadow Sight', '0', '0', '1', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183980', '0', '7032', 'Doodad_PVP_Orc_Door_Interior01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183979', '0', '7031', 'Doodad_PVP_Orc_Door_Front01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183977', '0', '7031', 'Doodad_PVP_Orc_Door_Front01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('183978', '0', '7032', 'Doodad_PVP_Orc_Door_Interior01', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180098', '1', '6252', 'Contested Banner', '83', '32', '1', '0', '1479', '0', '180102', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180099', '1', '6254', 'Contested Banner', '84', '32', '1', '0', '1479', '0', '180102', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180088', '10', '6271', 'Blacksmith Banner', '0', '0', '1', '1479', '0', '0', '196608', '0', '0', '0', '0', '0', '0', '23936', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180255', '0', '6353', 'ALLIANCE DOOR', '114', '32', '1.58', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180087', '10', '6271', 'Stable Banner', '0', '0', '1', '1479', '0', '0', '196608', '0', '0', '0', '0', '0', '0', '23932', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180076', '1', '6251', 'Alliance Banner', '83', '32', '1', '0', '1479', '196608', '180100', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180070', '1', '6253', 'Horde Banner', '84', '32', '1', '0', '1479', '196608', '180101', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180089', '10', '6271', 'Farm Banner', '0', '0', '1', '1479', '0', '0', '196608', '0', '0', '0', '0', '0', '0', '23935', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180090', '10', '6271', 'Lumber Mill Banner', '0', '0', '1', '1479', '0', '0', '196608', '0', '0', '0', '0', '0', '0', '23938', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('185917', '0', '7390', 'Doodad_PVP_Lordaeron_Door02', '114', '32', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180091', '10', '6271', 'Mine Banner', '0', '0', '1', '1479', '0', '0', '196608', '0', '0', '0', '0', '0', '0', '23937', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '');
-- end bg things


-- NobleGarden event begin
INSERT IGNORE INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`description`) VALUES
    (28,'23/3/2008','30/12/2020 23:00:00',525600,2880,'Noblegarden');
-- Unsorted Eggs everywhere
INSERT IGNORE INTO `gameobject` VALUES (12648,113770,0,-9664.85,143.489,46.7538,-0.296706,0.0,0.0,0.147809,-0.989016,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12650,113769,0,-9319.62,209.467,65.5738,0.331613,0.0,0.0,0.165048,0.986286,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12651,113771,0,-9319.65,291.271,69.4984,-2.46091,0.0,0.0,0.942641,-0.333807,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12654,113771,0,-9145.78,83.0131,76.9801,2.56563,0.0,0.0,0.95882,0.284015,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12655,113768,0,-9123.97,-195.586,71.9322,-2.87979,0.0,0.0,0.991445,-0.130526,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12656,113769,0,-9335.81,-265.165,68.8727,-2.44346,0.0,0.0,0.939693,-0.34202,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12657,113771,0,-9271.41,-802.856,66.7407,-1.36136,0.0,0.0,0.629321,-0.777146,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12658,113770,0,-9736.45,-1216.51,47.6809,-2.35619,0.0,0.0,0.92388,-0.382683,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12659,113769,0,-9699.95,-1519.66,52.6118,-1.39626,0.0,0.0,0.642788,-0.766044,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12661,113769,0,-9555.4,-898.701,45.9019,2.07694,0.0,0.0,0.861629,0.507538,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12664,113771,0,-9577.47,-641.921,59.025,-1.67552,0.0,0.0,0.743145,-0.669131,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12893,113769,0,-9709.53,-609.493,47.5047,0.436332,0.0,0.0,0.21644,0.976296,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12927,113769,0,-9746.61,-492.018,53.4023,-1.53589,0.0,0.0,0.694658,-0.71934,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (12994,113770,0,-9789.59,-236.133,41.2919,-1.41372,0.0,0.0,0.649448,-0.760406,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13006,113769,0,-10022.6,44.9154,34.1407,-0.10472,0.0,0.0,0.052336,-0.99863,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13108,113771,0,-9939.21,339.925,34.883,-0.855212,0.0,0.0,0.414693,-0.909961,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13203,113768,0,-9689.26,721.515,32.6258,-3.10669,0.0,0.0,0.999848,-0.017452,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13250,113771,0,-9621.31,568.75,41.0305,2.53073,0.0,0.0,0.953717,0.300706,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13278,113768,0,-9521.38,601.669,52.3745,-2.37365,0.0,0.0,0.927184,-0.374607,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13279,113770,0,-9439.35,455.514,52.6591,-0.017453,0.0,0.0,0.008727,-0.999962,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13280,113768,0,-9357.27,392.51,52.0322,1.98968,0.0,0.0,0.838671,0.544639,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13281,113770,0,-8874.96,-165.867,80.3097,-1.23918,0.0,0.0,0.580703,-0.814116,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13282,113770,0,-8673.14,-174.297,91.1456,2.35619,0.0,0.0,0.92388,0.382683,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13283,113771,0,-9057.88,-467.375,72.8483,-2.94961,0.0,0.0,0.995396,-0.095846,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13284,113771,0,-9204.41,-5.84315,78.6341,1.0472,0.0,0.0,0.5,0.866025,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13285,113771,0,-9408.28,-65.5012,64.1261,-1.51844,0.0,0.0,0.688354,-0.725374,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (13428,113768,0,-9309.58,-119.192,65.5609,-2.82743,0.0,0.0,0.987688,-0.156434,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14725,113771,0,-9364.32,85.1136,62.3907,0.244346,0.0,0.0,0.121869,0.992546,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14726,113769,0,-9784.89,223.51,44.9491,-2.94961,0.0,0.0,0.995396,-0.095846,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14727,113770,0,-9889.59,124.707,32.9409,2.09439,0.0,0.0,0.866025,0.5,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14728,113770,0,-9364.32,85.1136,62.3907,0.244346,0.0,0.0,0.121869,0.992546,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14729,113770,0,-9236.17,306.519,74.3424,-0.977384,0.0,0.0,0.469472,-0.882948,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14730,113770,0,-9295.39,486.419,77.6387,-1.81514,0.0,0.0,0.788011,-0.615661,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14733,113770,0,-9718.98,-372.809,52.6814,2.93215,0.0,0.0,0.994522,0.104528,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14737,113770,0,-9541.89,-467.84,61.4873,-0.034907,0.0,0.0,0.017452,-0.999848,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14813,113771,0,-9674.5,-651.841,50.1578,-1.85005,0.0,0.0,0.798635,-0.601815,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14814,113770,0,-9496.65,-1526.38,62.4991,-1.71042,0.0,0.0,0.75471,-0.656059,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14815,113769,0,-9718.49,-1008.97,42.2673,-2.11185,0.0,0.0,0.870356,-0.492423,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14816,113771,0,-9686.49,-74.2189,39.9053,2.53073,0.0,0.0,0.953717,0.300706,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12648,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12650,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12651,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12654,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12655,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12656,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12657,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12658,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12659,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12661,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12664,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12893,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12927,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (12994,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13006,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13108,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13203,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13250,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13278,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13279,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13280,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13281,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13282,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13283,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13284,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13285,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (13428,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14725,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14726,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14727,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14728,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14729,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14730,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14733,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14737,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14813,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14814,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14815,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14816,28);
INSERT IGNORE INTO `gameobject` VALUES (14819,113770,0,-9319.62,209.467,65.5738,0.331613,0.0,0.0,0.165048,0.986286,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14820,113769,0,-9303.79,246.129,68.6665,3.03687,0.0,0.0,0.99863,0.052336,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14821,113769,0,-5098.15,-828.558,499.252,0.279253,0.0,0.0,0.139173,0.990268,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14822,113770,0,-5511.47,-618.601,407.654,2.94961,0.0,0.0,0.995396,0.095846,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14823,113769,0,-5574.79,-745.868,418.212,2.77507,0.0,0.0,0.983255,0.182236,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14824,113770,0,-5488.1,-938.225,408.651,-0.715585,0.0,0.0,0.350207,-0.936672,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14825,113771,0,-5746.69,-1079.81,385.065,2.61799,0.0,0.0,0.965926,0.258819,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14826,113769,0,-5718.82,-1593.52,383.205,0.296706,0.0,0.0,0.147809,0.989016,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14827,113769,0,-5474.86,-1943.32,405.547,-0.628319,0.0,0.0,0.309017,-0.951056,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14828,113771,0,-5727.78,-1816.49,401.052,-0.925024,0.0,0.0,0.446198,-0.894934,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14830,113771,0,-5612.11,-958.284,397.341,-0.575959,0.0,0.0,0.284015,-0.95882,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14831,113769,0,-4845.11,-192.291,403.003,-1.15192,0.0,0.0,0.544639,-0.838671,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14832,113771,0,-4925.88,138.832,389.5,3.01942,0.0,0.0,0.998135,0.061049,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14833,113768,0,-5068.85,337.406,398.439,-2.68781,0.0,0.0,0.97437,-0.224951,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14834,113768,0,-5132.36,512.738,402.373,0.383972,0.0,0.0,0.190809,0.981627,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14835,113768,0,-5676.06,365.65,389.326,2.54818,0.0,0.0,0.956305,0.292372,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14836,113768,0,-5798.77,252.563,383.332,2.56563,0.0,0.0,0.95882,0.284015,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14837,113769,0,-5079.4,-106.48,399.776,-0.610865,0.0,0.0,0.300706,-0.953717,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14864,113770,0,-5907.33,121.958,405.727,-2.28638,0.0,0.0,0.909961,-0.414693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14865,113771,0,-6245.16,343.435,382.944,-0.244346,0.0,0.0,0.121869,-0.992546,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14892,113770,0,-6253.72,428.424,385.799,-0.610865,0.0,0.0,0.300706,-0.953717,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14959,113768,0,-6219.0,693.252,385.12,1.32645,0.0,0.0,0.615662,0.788011,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14972,113768,0,-6337.93,692.396,384.689,-1.79769,0.0,0.0,0.782608,-0.622515,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14973,113770,0,-6367.41,580.143,385.954,-1.74533,0.0,0.0,0.766044,-0.642788,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14974,113768,0,-6229.98,317.083,383.117,1.55334,0.0,0.0,0.700909,0.71325,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14975,113770,0,-6047.42,385.302,398.875,-2.58309,0.0,0.0,0.961262,-0.275637,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14976,113768,0,-6393.19,771.444,386.213,0.017453,0.0,0.0,0.008727,0.999962,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14977,113769,0,-5633.34,-242.513,385.396,-1.29154,0.0,0.0,0.601815,-0.798635,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14819,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14820,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14821,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14822,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14823,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14824,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14825,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14826,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14827,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14828,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14830,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14831,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14832,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14833,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14834,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14835,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14836,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14837,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14864,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14865,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14892,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14959,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14972,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14973,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14974,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14975,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14976,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14977,28);
INSERT IGNORE INTO `gameobject` VALUES (14978,113768,1,1117.09,-4696.3,18.0933,2.84489,0.0,0.0,0.989016,0.147809,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14979,113770,1,1192.89,-4981.8,10.2661,-1.309,0.0,0.0,0.608761,-0.793353,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14983,113771,1,771.419,-4729.46,38.2648,0.383972,0.0,0.0,0.190809,0.981627,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (14999,113768,1,593.033,-4901.58,24.5681,-2.56563,0.0,0.0,0.95882,-0.284015,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15000,113771,1,-192.49,-4977.71,21.1488,-2.18166,0.0,0.0,0.887011,-0.461749,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15001,113769,1,-329.551,-4854.02,40.8798,-2.09439,0.0,0.0,0.866025,-0.5,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15034,113769,1,-455.739,-4717.59,37.1782,-1.43117,0.0,0.0,0.656059,-0.75471,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15052,113770,1,-1191.63,-5612.28,6.21089,1.98968,0.0,0.0,0.838671,0.544639,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15055,113770,1,-1025.07,-5141.98,1.15067,-0.907571,0.0,0.0,0.438371,-0.898794,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15056,113771,1,-861.033,-4734.46,28.4895,2.93215,0.0,0.0,0.994522,0.104528,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15064,113768,1,-807.601,-4569.24,49.4348,-0.436333,0.0,0.0,0.21644,-0.976296,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15065,113771,1,-730.965,-4549.86,46.8117,-3.05433,0.0,0.0,0.999048,-0.043619,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15066,113770,1,-640.103,-4479.33,47.2095,0.401426,0.0,0.0,0.199368,0.979925,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15067,113770,1,-513.368,-4446.59,50.2656,1.44862,0.0,0.0,0.66262,0.748956,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15073,113771,1,-511.374,-4182.72,77.0375,-2.63545,0.0,0.0,0.968148,-0.25038,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15138,113768,1,-404.156,-4267.54,49.1372,-2.44346,0.0,0.0,0.939693,-0.34202,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15144,113769,1,-173.661,-4228.99,60.3094,-2.96706,0.0,0.0,0.996195,-0.087156,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15154,113768,1,-174.173,-4384.0,65.5505,0.331613,0.0,0.0,0.165048,0.986286,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15159,113769,1,-640.103,-4479.33,47.2095,0.401426,0.0,0.0,0.199368,0.979925,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (15395,113769,1,-5.05469,-4617.69,44.7108,0.907571,0.0,0.0,0.438371,0.898794,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16606,113770,1,197.794,-4450.69,31.361,0.383972,0.0,0.0,0.190809,0.981627,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16634,113770,1,17.6044,-4000.29,51.4927,-3.08923,0.0,0.0,0.999657,-0.026177,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16639,113768,1,-191.514,-4004.58,56.239,1.16937,0.0,0.0,0.551937,0.833886,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16930,113770,1,542.842,-4609.62,41.9984,0.488692,0.0,0.0,0.241922,0.970296,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16997,113770,1,803.109,-4156.65,22.0618,-0.750491,0.0,0.0,0.366501,-0.930418,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (16998,113769,1,1268.98,-4174.15,27.0746,0.872665,0.0,0.0,0.422618,0.906308,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17765,113768,1,1119.21,-4671.42,19.3149,2.16421,0.0,0.0,0.882948,0.469472,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14978,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14979,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14983,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (14999,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15000,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15001,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15034,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15052,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15055,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15056,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15064,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15065,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15066,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15067,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15073,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15138,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15144,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15154,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15159,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (15395,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16606,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16634,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16639,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16930,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16997,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (16998,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17765,28);
INSERT IGNORE INTO `gameobject` VALUES (17766,113769,1,1252.54,-4662.87,16.5044,-1.11701,0.0,0.0,0.529919,-0.848048,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17767,113770,1,838.471,-4389.95,14.3634,-2.14675,0.0,0.0,0.878817,-0.477159,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17768,113770,1,-119.91,-4874.63,21.4705,-0.331612,0.0,0.0,0.165048,-0.986286,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17769,113769,1,653.607,-4806.81,26.6391,-0.698132,0.0,0.0,0.34202,-0.939693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17770,113772,0,2023.71,504.678,46.7766,-2.77507,0.0,0.0,0.983255,-0.182235,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17771,113772,0,1923.15,300.055,43.1678,-0.698132,0.0,0.0,0.34202,-0.939693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17772,113772,0,1790.19,-351.041,36.7413,-0.087267,0.0,0.0,0.04362,-0.999048,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17774,113772,0,2196.72,-363.584,74.8747,0.872665,0.0,0.0,0.422618,0.906308,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17775,113772,0,2125.8,-240.119,52.237,-1.67552,0.0,0.0,0.743145,-0.669131,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17776,113772,0,2396.77,215.105,34.804,0.558505,0.0,0.0,0.275637,0.961262,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17777,113772,0,2411.48,630.322,30.6255,-2.23402,0.0,0.0,0.898794,-0.438371,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17778,113772,0,2175.48,756.483,35.7088,0.802851,0.0,0.0,0.390731,0.920505,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17780,113772,0,1795.16,1070.63,45.5817,1.09956,0.0,0.0,0.522499,0.85264,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17781,113772,0,2013.0,1165.5,46.9155,-0.715585,0.0,0.0,0.350207,-0.936672,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17782,113772,0,2072.69,1100.73,40.327,2.3911,0.0,0.0,0.930418,0.366501,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17783,113772,0,2102.53,1154.28,35.344,-1.74533,0.0,0.0,0.766044,-0.642788,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17784,113772,0,2208.03,1247.16,47.2925,0.279253,0.0,0.0,0.139173,0.990268,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17785,113772,0,2348.65,1196.31,33.5192,-0.087267,0.0,0.0,0.04362,-0.999048,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17786,113772,0,2434.93,1151.71,54.8724,-2.46091,0.0,0.0,0.942641,-0.333807,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17787,113772,0,2281.9,1650.5,47.4307,1.79769,0.0,0.0,0.782608,0.622515,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17788,113772,0,2014.43,1321.98,78.8225,1.23918,0.0,0.0,0.580703,0.814116,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17789,113772,0,1961.96,1407.69,67.4434,-1.62316,0.0,0.0,0.725374,-0.688354,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17790,113772,0,1950.59,1710.95,84.9133,2.74017,0.0,0.0,0.979925,0.199368,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17791,113772,0,2043.94,1613.57,71.8614,-0.837758,0.0,0.0,0.406737,-0.913545,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17792,113772,0,2505.88,1085.62,77.5157,-1.65806,0.0,0.0,0.737277,-0.67559,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17793,113772,0,2525.93,1260.78,49.0836,0.523599,0.0,0.0,0.258819,0.965926,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17794,113772,0,2985.01,877.176,104.258,1.91986,0.0,0.0,0.819152,0.573576,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17795,113772,0,2489.8,630.471,30.5468,-2.98451,0.0,0.0,0.996917,-0.078459,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17796,113772,0,2828.91,302.982,26.9338,0.802851,0.0,0.0,0.390731,0.920505,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17797,113772,0,2921.91,110.773,4.85942,2.46091,0.0,0.0,0.942641,0.333807,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17798,113769,530,9344.04,-7247.04,13.3321,2.86234,0.0,0.0,0.990268,0.139173,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17799,113769,530,9344.26,-7304.98,14.8447,2.58309,0.0,0.0,0.961262,0.275637,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17800,113768,530,9381.42,-7215.52,13.6114,3.14159,0.0,0.0,1.0,0.0,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17801,113771,530,9227.59,-7420.63,39.0451,-0.05236,0.0,0.0,0.026177,-0.999657,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17802,113771,530,9232.65,-7548.83,35.1194,0.523599,0.0,0.0,0.258819,0.965926,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17803,113771,530,9309.59,-7473.57,30.8366,4.71239,0.0,0.0,0.707107,-0.707107,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17804,113768,530,8580.9,-6161.48,52.5719,0.698132,0.0,0.0,0.34202,0.939693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17805,113768,530,8651.76,-6131.46,30.2909,-2.26893,0.0,0.0,0.906308,-0.422618,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17806,113770,530,8799.6,-5805.13,8.43606,-0.279253,0.0,0.0,0.139173,-0.990268,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17807,113770,530,9054.25,-6664.01,17.9699,-1.309,0.0,0.0,0.608761,-0.793353,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17808,113770,530,9091.37,-6560.67,15.6226,0.174533,0.0,0.0,0.087156,0.996195,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17809,113771,530,9007.08,-6781.38,12.75,2.37365,0.0,0.0,0.927184,0.374607,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17810,113770,530,9100.98,-6883.88,19.6317,-2.6529,0.0,0.0,0.970296,-0.241922,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17811,113768,530,9258.39,-6865.0,14.8333,0.15708,0.0,0.0,0.078459,0.996917,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17812,113769,530,9334.11,-6859.13,17.4509,2.37365,0.0,0.0,0.927184,0.374607,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17813,113770,530,9331.77,-6768.6,18.3399,0.349066,0.0,0.0,0.173648,0.984808,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17816,113769,530,9413.97,-6689.76,35.4806,-1.3439,0.0,0.0,0.622515,-0.782608,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17820,113769,530,9338.71,-6559.94,40.0468,2.61799,0.0,0.0,0.965926,0.258819,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17821,113768,530,9363.26,-6527.17,41.9805,-1.16937,0.0,0.0,0.551937,-0.833886,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17822,113771,530,9306.0,-6419.25,36.0294,-0.925024,0.0,0.0,0.446198,-0.894934,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17823,113769,530,9216.89,-6418.46,5.14361,1.71042,0.0,0.0,0.75471,0.656059,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17824,113770,530,9199.36,-6334.14,5.22722,-1.95477,0.0,0.0,0.829038,-0.559193,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17825,113771,530,9120.51,-6389.03,1.97162,1.36136,0.0,0.0,0.62932,0.777146,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17826,113770,530,9178.55,-6265.73,23.0955,1.46608,0.0,0.0,0.669131,0.743145,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17827,113769,530,9201.31,-6542.41,31.6682,-2.28638,0.0,0.0,0.909961,-0.414693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17828,113768,530,9413.95,-6862.48,14.7264,2.16421,0.0,0.0,0.882948,0.469472,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17829,113769,530,9182.64,-7064.31,15.8606,0.750492,0.0,0.0,0.366501,0.930418,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17830,113771,530,9362.07,-7144.18,8.74426,-0.820305,0.0,0.0,0.398749,-0.91706,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17831,113768,1,-1095.25,306.31,41.8938,1.22173,0.0,0.0,0.573576,0.819152,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17832,113769,1,-1048.43,464.917,23.8847,-1.27409,0.0,0.0,0.594823,-0.803857,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17833,113768,1,-697.581,191.454,53.5454,-0.279253,0.0,0.0,0.139173,-0.990268,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17834,113769,1,-583.8,35.5878,10.7478,-0.959931,0.0,0.0,0.461749,-0.887011,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17835,113770,1,-757.195,-143.473,-29.439,-2.79253,0.0,0.0,0.984808,-0.173648,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17836,113770,1,-804.201,-809.491,8.70936,2.42601,0.0,0.0,0.936672,0.350207,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17837,113771,1,-899.713,-823.334,5.31035,-2.84489,0.0,0.0,0.989016,-0.147809,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17838,113768,1,-933.23,-852.98,3.80032,2.32129,0.0,0.0,0.91706,0.398749,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17839,113769,1,-1284.42,-982.699,14.2007,-1.20428,0.0,0.0,0.566406,-0.824126,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17840,113768,1,-1255.06,-876.92,-4.58094,4.71239,0.0,0.0,0.707107,-0.707107,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17841,113770,1,-1669.51,-487.377,-15.8733,2.49582,0.0,0.0,0.948324,0.317305,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17842,113768,1,-1925.37,-1052.76,44.2584,-0.925024,0.0,0.0,0.446198,-0.894934,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17843,113769,1,-2801.84,-747.887,12.562,0.069813,0.0,0.0,0.034899,0.999391,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17845,113768,1,-2625.09,-402.472,-8.59509,-0.872665,0.0,0.0,0.422618,-0.906308,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17846,113771,1,-3500.59,-815.692,99.3224,-0.628319,0.0,0.0,0.309017,-0.951056,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17847,113768,1,-3346.46,-763.172,54.7473,2.6529,0.0,0.0,0.970296,0.241922,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17848,113771,1,-2754.81,-193.423,15.9246,1.48353,0.0,0.0,0.67559,0.737277,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17849,113771,1,-1886.07,374.869,114.915,2.63545,0.0,0.0,0.968148,0.25038,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17850,113769,1,-1030.2,348.84,38.6148,2.00713,0.0,0.0,0.843391,0.5373,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17851,113768,1,-1444.31,18.028,31.7725,0.034907,0.0,0.0,0.017452,0.999848,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17852,113770,1,-1595.77,-320.444,-28.29,1.32645,0.0,0.0,0.615662,0.788011,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17853,113771,1,-1134.76,-10.2004,143.376,0.314159,0.0,0.0,0.156434,0.987688,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17854,113771,1,-989.709,-1103.34,44.4156,-1.65806,0.0,0.0,0.737277,-0.67559,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17855,113770,1,-5.05469,-4617.69,44.7108,0.907571,0.0,0.0,0.438371,0.898794,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17856,113769,1,542.842,-4609.62,41.9984,0.488692,0.0,0.0,0.241922,0.970296,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17857,113771,1,387.949,-4579.38,54.7161,-2.33874,0.0,0.0,0.920505,-0.390731,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17858,113770,1,653.607,-4806.81,26.6391,-0.698132,0.0,0.0,0.34202,-0.939693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17859,113769,1,738.724,-4253.48,17.9897,-1.53589,0.0,0.0,0.694658,-0.71934,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17766,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17767,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17768,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17769,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17770,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17771,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17772,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17774,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17775,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17776,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17777,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17778,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17780,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17781,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17782,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17783,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17784,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17785,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17786,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17787,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17788,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17789,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17790,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17791,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17792,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17793,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17794,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17795,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17796,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17797,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17798,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17799,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17800,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17801,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17802,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17803,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17804,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17805,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17806,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17807,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17808,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17809,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17810,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17811,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17812,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17813,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17816,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17820,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17821,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17822,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17823,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17824,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17825,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17826,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17827,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17828,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17829,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17830,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17831,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17832,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17833,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17834,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17835,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17836,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17837,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17838,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17839,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17840,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17841,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17842,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17843,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17845,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17846,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17847,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17848,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17849,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17850,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17851,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17852,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17853,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17854,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17855,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17856,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17857,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17858,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17859,28);
INSERT IGNORE INTO `gameobject` VALUES (17860,113770,530,-4279.85,-12204.1,5.73399,-2.19912,0.0,0.0,0.891007,-0.45399,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17861,113769,530,-4334.72,-12407.6,18.8716,-1.50098,0.0,0.0,0.681998,-0.731354,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17862,113769,530,-4378.44,-12429.3,16.77,-2.75762,0.0,0.0,0.981627,-0.190809,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17863,113770,530,-4103.22,-12625.2,29.0931,0.122173,0.0,0.0,0.061049,0.998135,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17864,113771,530,-3920.32,-12909.3,5.80417,3.03687,0.0,0.0,0.99863,0.052336,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17865,113771,530,-3611.87,-11807.3,21.5679,-1.48353,0.0,0.0,0.67559,-0.737277,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17866,113768,530,-3575.32,-12445.7,6.86317,-2.09439,0.0,0.0,0.866025,-0.5,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17868,113770,530,-3721.97,-12451.1,0.919363,0.05236,0.0,0.0,0.026177,0.999657,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17869,113771,530,-4015.66,-12770.3,6.50304,-3.10669,0.0,0.0,0.999848,-0.017452,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17870,113770,530,-4047.15,-12695.5,12.8367,2.26893,0.0,0.0,0.906308,0.422618,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17871,113768,530,-4102.48,-12927.6,4.87141,-0.820305,0.0,0.0,0.398749,-0.91706,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17872,113768,530,-4572.16,-12827.3,8.21783,2.60054,0.0,0.0,0.96363,0.267238,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17873,113769,530,-4634.89,-12313.5,17.5679,0.680678,0.0,0.0,0.333807,0.942641,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17874,113768,530,-4739.39,-12320.7,4.23695,-2.68781,0.0,0.0,0.97437,-0.224951,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17875,113770,530,-4751.71,-12099.2,43.7505,2.35619,0.0,0.0,0.92388,0.382683,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17876,113771,530,-4782.42,-12085.2,43.8714,1.15192,0.0,0.0,0.544639,0.838671,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17877,113769,530,-4561.59,-12096.8,36.5298,-0.645772,0.0,0.0,0.317305,-0.948324,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17878,113771,530,-4551.79,-12191.8,31.7785,0.593412,0.0,0.0,0.292372,0.956305,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17879,113771,530,-4912.02,-11999.3,14.9519,0.575959,0.0,0.0,0.284015,0.95882,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17880,113769,530,-4730.27,-11496.5,26.8066,1.78024,0.0,0.0,0.777146,0.62932,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17881,113768,530,-4680.61,-11652.8,23.1884,1.36136,0.0,0.0,0.62932,0.777146,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17882,113769,530,-4812.31,-11718.1,18.33,2.54818,0.0,0.0,0.956305,0.292372,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17883,113770,530,-4564.25,-11943.5,31.1283,1.01229,0.0,0.0,0.48481,0.87462,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17884,113770,530,-4347.36,-12010.6,5.18874,0.331613,0.0,0.0,0.165048,0.986286,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17885,113770,530,-4468.37,-12155.8,9.98153,0.767945,0.0,0.0,0.374607,0.927184,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17887,113769,530,-4374.43,-12267.6,10.7665,1.16937,0.0,0.0,0.551937,0.833886,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (17888,113769,530,-4288.96,-11584.9,17.0481,0.890118,0.0,0.0,0.430511,0.902585,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17860,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17861,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17862,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17863,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17864,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17865,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17866,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17868,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17869,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17870,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17871,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17872,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17873,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17874,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17875,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17876,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17877,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17878,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17879,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17880,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17881,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17882,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17883,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17884,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17885,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17887,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17888,28);
INSERT IGNORE INTO `gameobject` VALUES (17889,113768,1,10373.3,1925.66,1320.02,2.86234,0.0,0.0,0.990268,0.139173,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (20734,113770,1,10878.7,2076.37,1327.77,1.78024,0.0,0.0,0.777146,0.62932,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (20830,113771,1,10896.1,1971.04,1322.05,-0.767945,0.0,0.0,0.374607,-0.927184,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (20832,113770,1,10838.1,1757.56,1326.15,-2.53073,0.0,0.0,0.953717,-0.300706,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (20845,113768,1,10687.7,1851.84,1324.58,-1.41372,0.0,0.0,0.649448,-0.760406,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21478,113768,1,10531.9,1577.18,1301.12,-0.069813,0.0,0.0,0.034899,-0.999391,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21479,113769,1,10607.6,1451.54,1321.18,2.32129,0.0,0.0,0.91706,0.398749,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21480,113771,1,10790.0,1451.94,1322.47,1.98968,0.0,0.0,0.838671,0.544639,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21481,113770,1,10059.7,1471.15,1276.27,-2.60054,0.0,0.0,0.96363,-0.267238,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21482,113771,1,9714.31,1797.37,1297.46,0.855211,0.0,0.0,0.414693,0.909961,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21483,113770,1,9556.8,1806.42,1299.08,1.46608,0.0,0.0,0.669131,0.743145,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21484,113770,1,9410.79,1608.1,1287.03,-2.30383,0.0,0.0,0.913545,-0.406737,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21485,113768,1,9351.25,1275.33,1252.91,-2.49582,0.0,0.0,0.948324,-0.317305,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21486,113768,1,9354.48,1154.06,1251.63,0.593412,0.0,0.0,0.292372,0.956305,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21487,113771,1,9468.51,992.182,1253.85,2.58309,0.0,0.0,0.961262,0.275637,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21488,113768,1,9918.29,438.784,1306.11,0.279253,0.0,0.0,0.139173,0.990268,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21489,113771,1,9850.46,450.817,1305.26,-2.54818,0.0,0.0,0.956305,-0.292372,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21490,113769,1,10057.9,1415.35,1276.56,2.05949,0.0,0.0,0.857167,0.515038,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21491,113769,1,9954.83,1410.53,1297.26,1.02974,0.0,0.0,0.492424,0.870356,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21492,113771,1,9622.98,1253.24,1280.4,1.11701,0.0,0.0,0.529919,0.848048,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21493,113771,1,9441.8,1101.41,1251.47,3.07178,0.0,0.0,0.999391,0.034899,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21494,113768,1,9409.42,791.559,1256.57,-0.698132,0.0,0.0,0.34202,-0.939693,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21495,113768,1,9448.11,832.072,1250.64,1.41372,0.0,0.0,0.649448,0.760406,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21496,113769,1,9520.07,649.903,1276.32,0.663225,0.0,0.0,0.325568,0.945519,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21497,113770,1,9644.83,1011.31,1284.45,2.77507,0.0,0.0,0.983255,0.182236,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21498,113771,1,9876.0,1561.8,1328.67,0.663225,0.0,0.0,0.325568,0.945519,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21499,113770,1,9798.88,1108.93,1291.5,0.837758,0.0,0.0,0.406737,0.913545,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21500,113769,1,10019.5,498.496,1313.47,1.5708,0.0,0.0,0.707107,0.707107,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21501,113770,1,10061.7,514.975,1321.99,2.75762,0.0,0.0,0.981627,0.190809,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21502,113768,1,10451.7,630.303,1325.24,-3.03687,0.0,0.0,0.99863,-0.052336,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21503,113770,1,10700.2,665.44,1335.8,0.471239,0.0,0.0,0.233445,0.97237,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21504,113768,1,10322.9,889.868,1330.66,1.39626,0.0,0.0,0.642788,0.766044,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21505,113768,1,10268.1,894.024,1339.49,2.16421,0.0,0.0,0.882948,0.469472,180,100,1);
INSERT IGNORE INTO `gameobject` VALUES (21506,113770,1,10462.1,774.574,1315.84,-0.366519,0.0,0.0,0.182236,-0.983255,180,100,1);
INSERT IGNORE INTO `game_event_gameobject` VALUES (17889,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (20734,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (20830,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (20832,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (20845,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21478,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21479,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21480,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21481,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21482,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21483,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21484,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21485,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21486,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21487,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21488,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21489,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21490,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21491,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21492,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21493,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21494,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21495,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21496,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21497,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21498,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21499,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21500,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21501,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21502,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21503,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21504,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21505,28);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21506,28);
-- Loots
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,7806,33.33,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,7807,33.33,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,7808,33.33,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,6833,0.6,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,6835,0.6,0,1,1,0,0,0,0);
INSERT IGNORE INTO `gameobject_loot_template` VALUES (4984,19028,0.6,0,1,1,0,0,0,0);
-- NobleGarden event end

-- forum stuff start
UPDATE `quest_template` SET `ReqSpellCast1` = 42323 WHERE `entry` = 11145;
DELETE FROM `creature_loot_template` WHERE `entry` = '22138';
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 22138;
-- moving Vampiric Mistbat 81738 out of the landing zobe of Tristessa
UPDATE `creature` SET `position_x` = 7679.11, `position_y` = -6782.89, `position_z` = 69.6863, `orientation` = 3.12846, `spawn_position_x` = 7679.11, `spawn_position_y` = -6782.89, `spawn_position_z` = 69.6863, `spawn_orientation` = 3.12846 WHERE `guid` = 81738;
DELETE FROM `creature_loot_template` WHERE `entry` IN (54, 66, 74, 78, 151, 152, 167, 190, 222, 225, 226, 227, 228, 233, 258, 274, 277, 340, 372, 465, 483, 491, 734, 777, 789, 790, 791, 793, 829, 836, 843, 844, 894, 896, 945, 954, 955, 956, 958, 959, 960, 980, 981, 982, 983, 984, 989, 1104, 1146, 1147, 1148, 1149, 1198, 1213, 1214, 1237, 1238, 1240, 1243, 1249, 1250, 1257, 1263, 1273, 1275, 1285, 1286, 1287, 1289, 1291, 1294, 1295, 1296, 1297, 1298, 1299, 1301, 1302, 1303, 1304, 1305, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1328, 1333, 1339, 1341, 1347, 1348, 1349, 1350, 1351, 1362, 1381, 1407, 1441, 1448, 1450, 1452, 1453, 1454, 1456, 1457, 1459, 1461, 1462, 1463, 1465, 1469, 1471, 1474, 1645, 1650, 1668, 1669, 1670, 1671, 1672, 1673, 1678, 1682, 1684, 1685, 1686, 1687, 1690, 1691, 1692, 1694, 1695, 1697, 1698, 2046, 2084, 2113, 2115, 2116, 2117, 2118, 2134, 2135, 2136, 2137, 2140, 2225, 2303, 2364, 2365, 2366, 2380, 2381, 2383, 2393, 2394, 2397, 2401, 2480, 2481, 2482, 2483, 2622, 2626, 2663, 2664, 2668, 2669, 2670, 2672, 2679, 2682, 2683, 2684, 2685, 2687, 2688, 2697, 2698, 2699, 2803, 2805, 2806, 2808, 2810, 2812, 2814, 2816, 2818, 2819, 2820, 2821, 2832, 2838, 2839, 2840, 2842, 2843, 2844, 2845, 2846, 2847, 2849, 2908, 2910, 2997, 2999, 3000, 3002, 3003, 3005, 3010, 3012, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3025, 3027, 3029, 3053, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3085, 3086, 3088, 3089, 3090, 3091, 3092, 3093, 3095, 3096, 3097, 3133, 3134, 3135, 3138, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3177, 3178, 3180, 3186, 3187, 3291, 3298, 3312, 3313, 3314, 3315, 3316, 3317, 3319, 3321, 3322, 3323, 3329, 3330, 3331, 3333, 3334,
3335, 3342, 3343, 3346, 3348, 3349, 3350, 3351, 3356, 3358, 3359, 3360, 3361, 3364, 3366, 3367, 3368, 3369, 3400, 3405, 3409, 3410, 3411, 3413, 3477, 3479, 3480, 3481, 3482, 3483, 3485, 3486, 3487, 3488, 3489, 3490, 3491, 3492, 3493, 3495, 3497, 3498, 3499, 3500, 3518, 3522, 3534, 3536, 3537, 3539, 3540, 3541, 3542, 3543, 3544, 3546, 3547, 3548, 3550, 3551, 3552, 3553, 3554, 3556, 3561, 3562, 3572, 3587, 3588, 3589, 3590, 3591, 3592, 3608, 3609, 3610, 3611, 3612, 3613, 3614, 3621, 3625, 3658, 3682, 3683, 3684, 3689, 3700, 3705, 3779, 3881, 3882, 3883, 3884, 3933, 3935, 3937, 3948, 3951, 3952,
3953, 3954, 3955, 3956, 3958, 3959, 3960, 3961, 3962, 3969, 3970, 4043, 4082, 4083, 4084, 4085, 4086, 4164, 4167, 4168, 4169, 4170, 4171, 4172, 4173, 4175, 4177, 4180, 4181, 4182, 4183, 4184, 4185, 4186, 4187, 4188, 4189, 4190, 4191, 4192, 4194, 4195, 4200, 4203, 4207, 4216, 4220, 4221, 4222, 4223, 4225, 4226, 4228, 4229, 4230, 4231, 4232, 4233, 4234, 4235, 4236, 4240, 4241, 4255, 4256, 4257, 4259, 4265, 4305, 4307, 4553, 4554, 4555, 4556, 4557, 4558, 4559, 4560, 4561, 4562, 4569, 4570, 4571, 4574, 4575, 4577, 4580, 4581, 4585, 4587, 4589, 4590, 4597, 4599, 4600, 4601, 4602, 4603, 4604, 4610,
4615, 4617, 4775, 4782, 4875, 4876, 4877, 4878, 4879, 4883, 4884, 4886, 4888, 4889, 4890, 4891, 4892, 4893, 4894, 4896, 4897, 4899, 4954, 4963, 4981, 5049, 5100, 5101, 5102, 5103, 5106, 5107, 5108, 5109, 5110, 5112, 5119, 5120, 5121, 5122, 5123, 5124, 5125, 5126, 5128, 5129, 5132, 5133, 5134, 5135, 5138, 5139, 5140, 5151, 5152, 5154, 5155, 5156, 5158, 5160, 5162, 5163, 5169, 5170, 5175, 5178, 5188, 5189, 5190, 5191, 5193, 5483, 5494, 5503, 5508, 5509, 5510, 5512, 5514, 5519, 5520, 5565, 5569, 5570, 5594, 5611, 5620, 5748, 5749, 5750, 5753, 5754, 5757, 5758, 5783, 5812, 5815, 5816, 5817, 5819,
5820, 5821, 5870, 5871, 5886, 5940, 5942, 5944, 6027, 6028, 6091, 6298, 6300, 6301, 6328, 6367, 6373, 6374, 6376, 6382, 6495, 6496, 6548, 6567, 6568, 6574, 6576, 6730, 6731, 6776, 6777, 6779, 7485, 7564, 7772, 7852, 7854, 7940, 7941, 7942, 7943, 7945, 7947, 7976, 7978, 8117, 8118, 8125, 8129, 8131, 8137, 8139, 8143, 8145, 8150, 8152, 8157, 8158, 8159, 8160, 8161, 8176, 8177, 8178, 8307, 8358, 8359, 8360, 8361, 8362, 8363, 8364, 8398, 8401, 8403, 8404, 8508, 8666, 8678, 8679, 8681, 8878, 8934, 9099, 9179, 9548, 9549, 9551, 9552, 9553, 9555, 9636, 10118, 10216, 10293, 10361, 10364, 10369, 10379,
10380, 10856, 10857, 11038, 11111, 11137, 11182, 11183, 11184, 11185, 11186, 11187, 11188, 11189, 11218, 11278, 11287, 11536, 11555, 11703, 11874, 12019, 12021, 12022, 12023, 12024, 12026, 12027, 12028, 12029, 12031, 12033, 12043, 12045, 12096, 12097, 12245, 12246, 12384, 12776, 12784, 12785, 12794, 12795, 12807, 12941, 12942, 12943, 12944, 12956, 12957, 12958, 12959, 12960, 12962, 13018, 13216, 13418, 13420, 13429, 13430, 13431, 13432, 13433, 13434, 13435, 13436, 13476, 14301, 14337, 14371, 14480, 14481, 14624, 14637, 14737, 14738, 14739, 14844, 14845, 14846, 14847, 14860, 14921, 14963, 15011, 15012, 15124, 15125, 16376);
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (54, 66, 74, 78, 151, 152, 167, 190, 222, 225, 226, 227, 228, 233, 258, 274, 277, 340, 372, 465, 483, 491, 734, 777, 789, 790, 791, 793, 829, 836, 843, 844, 894, 896, 945, 954, 955, 956, 958, 959, 960, 980, 981, 982, 983, 984, 989, 1104, 1146, 1147, 1148, 1149, 1198, 1213, 1214, 1237, 1238, 1240, 1243, 1249, 1250, 1257, 1263, 1273, 1275, 1285, 1286, 1287, 1289, 1291, 1294, 1295, 1296, 1297, 1298, 1299, 1301, 1302, 1303, 1304, 1305, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 1314, 1315, 1316, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1328, 1333, 1339, 1341, 1347, 1348, 1349, 1350, 1351, 1362, 1381, 1407, 1441, 1448, 1450, 1452, 1453, 1454, 1456, 1457, 1459, 1461, 1462, 1463, 1465, 1469, 1471, 1474, 1645, 1650, 1668, 1669, 1670, 1671, 1672, 1673, 1678, 1682, 1684, 1685, 1686, 1687, 1690, 1691, 1692, 1694, 1695, 1697, 1698, 2046, 2084, 2113, 2115, 2116, 2117, 2118, 2134, 2135, 2136, 2137, 2140, 2225, 2303, 2364, 2365, 2366, 2380, 2381, 2383, 2393, 2394, 2397, 2401, 2480, 2481, 2482, 2483, 2622, 2626, 2663, 2664, 2668, 2669, 2670, 2672, 2679, 2682, 2683, 2684, 2685, 2687, 2688, 2697, 2698, 2699, 2803, 2805, 2806, 2808, 2810, 2812, 2814, 2816, 2818, 2819, 2820, 2821, 2832, 2838, 2839, 2840, 2842, 2843, 2844, 2845, 2846, 2847, 2849, 2908, 2910, 2997, 2999, 3000, 3002, 3003, 3005, 3010, 3012, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3025, 3027, 3029, 3053, 3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3085, 3086, 3088, 3089, 3090, 3091, 3092, 3093, 3095, 3096, 3097, 3133, 3134, 3135, 3138, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167, 3168, 3177, 3178, 3180, 3186, 3187, 3291, 3298, 3312, 3313, 3314, 3315, 3316, 3317, 3319, 3321, 3322, 3323, 3329, 3330, 3331, 3333, 3334, 3335, 3342, 3343, 3346, 3348, 3349, 3350, 3351, 3356, 3358, 3359, 3360, 3361, 3364, 3366, 3367, 3368, 3369, 3400, 3405, 3409, 3410, 3411, 3413, 3477, 3479, 3480, 3481, 3482, 3483, 3485, 3486, 3487, 3488, 3489, 3490, 3491, 3492, 3493, 3495, 3497, 3498, 3499, 3500, 3518, 3522, 3534, 3536, 3537, 3539, 3540, 3541, 3542, 3543, 3544, 3546, 3547, 3548, 3550, 3551, 3552, 3553, 3554, 3556, 3561, 3562, 3572, 3587, 3588, 3589, 3590, 3591, 3592, 3608, 3609, 3610, 3611, 3612, 3613, 3614, 3621, 3625, 3658, 3682, 3683, 3684, 3689, 3700, 3705, 3779, 3881, 3882, 3883, 3884, 3933, 3935, 3937, 3948, 3951, 3952,
3953, 3954, 3955, 3956, 3958, 3959, 3960, 3961, 3962, 3969, 3970, 4043, 4082, 4083, 4084, 4085, 4086, 4164, 4167, 4168, 4169, 4170, 4171, 4172, 4173, 4175, 4177, 4180, 4181, 4182, 4183, 4184, 4185, 4186, 4187, 4188, 4189, 4190, 4191, 4192, 4194, 4195, 4200, 4203, 4207, 4216, 4220, 4221, 4222, 4223, 4225, 4226, 4228, 4229, 4230, 4231, 4232, 4233, 4234, 4235, 4236, 4240, 4241, 4255, 4256, 4257, 4259, 4265, 4305, 4307, 4553, 4554, 4555, 4556, 4557, 4558, 4559, 4560, 4561, 4562, 4569, 4570, 4571, 4574, 4575, 4577, 4580, 4581, 4585, 4587, 4589, 4590, 4597, 4599, 4600, 4601, 4602, 4603, 4604, 4610,
4615, 4617, 4775, 4782, 4875, 4876, 4877, 4878, 4879, 4883, 4884, 4886, 4888, 4889, 4890, 4891, 4892, 4893, 4894, 4896, 4897, 4899, 4954, 4963, 4981, 5049, 5100, 5101, 5102, 5103, 5106, 5107, 5108, 5109, 5110, 5112, 5119, 5120, 5121, 5122, 5123, 5124, 5125, 5126, 5128, 5129, 5132, 5133, 5134, 5135, 5138, 5139, 5140, 5151, 5152, 5154, 5155, 5156, 5158, 5160, 5162, 5163, 5169, 5170, 5175, 5178, 5188, 5189, 5190, 5191, 5193, 5483, 5494, 5503, 5508, 5509, 5510, 5512, 5514, 5519, 5520, 5565, 5569, 5570, 5594, 5611, 5620, 5748, 5749, 5750, 5753, 5754, 5757, 5758, 5783, 5812, 5815, 5816, 5817, 5819,
5820, 5821, 5870, 5871, 5886, 5940, 5942, 5944, 6027, 6028, 6091, 6298, 6300, 6301, 6328, 6367, 6373, 6374, 6376, 6382, 6495, 6496, 6548, 6567, 6568, 6574, 6576, 6730, 6731, 6776, 6777, 6779, 7485, 7564, 7772, 7852, 7854, 7940, 7941, 7942, 7943, 7945, 7947, 7976, 7978, 8117, 8118, 8125, 8129, 8131, 8137, 8139, 8143, 8145, 8150, 8152, 8157, 8158, 8159, 8160, 8161, 8176, 8177, 8178, 8307, 8358, 8359, 8360, 8361, 8362, 8363, 8364, 8398, 8401, 8403, 8404, 8508, 8666, 8678, 8679, 8681, 8878, 8934, 9099, 9179, 9548, 9549, 9551, 9552, 9553, 9555, 9636, 10118, 10216, 10293, 10361, 10364, 10369, 10379,
10380, 10856, 10857, 11038, 11111, 11137, 11182, 11183, 11184, 11185, 11186, 11187, 11188, 11189, 11218, 11278, 11287, 11536, 11555, 11703, 11874, 12019, 12021, 12022, 12023, 12024, 12026, 12027, 12028, 12029, 12031, 12033, 12043, 12045, 12096, 12097, 12245, 12246, 12384, 12776, 12784, 12785, 12794, 12795, 12807, 12941, 12942, 12943, 12944, 12956, 12957, 12958, 12959, 12960, 12962, 13018, 13216, 13418, 13420, 13429, 13430, 13431, 13432, 13433, 13434, 13435, 13436, 13476, 14301, 14337, 14371, 14480, 14481, 14624, 14637, 14737, 14738, 14739, 14844, 14845, 14846, 14847, 14860, 14921, 14963, 15011, 15012, 15124, 15125, 16376); 
-- Krixx, zeppelin guy in OG
UPDATE `creature_template` SET `minhealth` = '5800', `maxhealth` = '5800' WHERE `entry` =23635;
-- Blix Fixwidget, ticket redeemer
UPDATE `creature_template` SET `minhealth` = '7800',`maxhealth` = '7800' WHERE `entry` =24495;
-- Traveling Orphan, wrong level and health
UPDATE `creature_template` SET `minlevel` = '1',`minhealth` = '110', `maxhealth` = '200' WHERE `entry` =23971;
-- Putridius, rare mob in WPL wrong level and health
UPDATE `creature_template` SET `minlevel` = '58', `maxlevel` = '58', `minhealth` = '3400', `maxhealth` = '3400' WHERE `entry` =1850;
-- Terrokk, elite mob in terrokkar
UPDATE `creature_template` SET `minlevel` = '72', `maxlevel` = '72', `minhealth` = '220000', `maxhealth` = '220000' WHERE `entry` =21838;
-- Exodar Firebreather, some mob in exodar wrong lvl, can't find any info on the health.
UPDATE `creature_template` SET `minlevel` = '23', `maxlevel` = '24' WHERE `entry` =22802;
-- Silvermoon Fireeater, wrong lvl, no info on health
UPDATE `creature_template` SET `minlevel` = '10', `maxlevel` = '33' WHERE `entry` =22804;
-- Rescued Cenarion Expedition Druid, wrong lvl, mana, hp
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '6300', `maxhealth` = '6300', `minmana` = '3231', `maxmana` = '3231' WHERE `entry` =22810;
-- Rescued Lover City Brute wrong lvl, hp
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '7100', `maxhealth` = '7100' WHERE `entry` =22811;
-- Rescued Sha'tar Vindicator wrong lvl, hp
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '8100', `maxhealth` = '8100' WHERE `entry` =22812;
-- Rescued Consortium Dealer wrong lvl and hp I suppose, can't find hp info
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71' WHERE `entry` =22813;
-- Rescued Sporeggar Scout, wrong lvl, hp
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '4900', `maxhealth` = '4900' WHERE `entry` =22814;
-- Rescued Keepers of Time Custodian, wrong lvl, hp, mana
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '6000', `maxhealth` = '6000', `minmana` = '3231', `maxmana` = '3231' WHERE `entry` =22815;
-- Hch'uu, wrong hp, mana
UPDATE `creature_template` SET `minhealth` = '5400', `maxhealth` = '5400', `minmana` = '60', `maxmana` = '60' WHERE `entry` =22823;
-- Matron Li-sahar, wrong hp, mana, lvl (also dmg, didn't fix it though : / )
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '67000', `maxhealth` = '67000', `minmana` = '34705', `maxmana` = '34705' WHERE `entry` =22825;
-- King Dorfbruiser, wrong hp, lvl (dmg, no fix)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '62000', `maxhealth` = '62000' WHERE `entry` =22826;
-- Gorgolon the All-seeing, wrong hp, lvl, mana (dmg, no fix)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '44000', `maxhealth` = '44000', `minmana` = '18930', `maxmana` = '18930' WHERE `entry` =22827;
-- Trelopades <Legion Commander>, wrong hp, lvl (dmg, no fix)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '83000', `maxhealth` = '83000' WHERE `entry` =22828;
-- Rage Winterchill
UPDATE creature_template SET minhealth='4200000',maxhealth='4200000', mindmg='3000', maxdmg='3500', attackpower=
ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE entry = '17767';
-- Anetheron
UPDATE creature_template SET minhealth='4200000',maxhealth='4200000', mindmg='3000', maxdmg='6000', attackpower=

ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE entry = '17808';

-- Kaz'rogal
UPDATE creature_template SET minhealth='4200000',maxhealth='4200000', mindmg='4000', maxdmg='5000', attackpower=

ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE entry = '17888';

-- Azgalor
UPDATE creature_template SET minhealth='4200000',maxhealth='4200000', mindmg='7000', maxdmg='8000', attackpower=

ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE entry = '17842';

-- Archimonde
UPDATE creature_template SET minhealth='4700000',maxhealth='4700000', mindmg='8000', maxdmg='9000', attackpower=

ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE entry = '17968'; 
delete from creature_addon where guid in (select guid from creature where id=17301);
DELETE FROM `creature` WHERE `id`=17301;
UPDATE `gameobject_template` SET `flags`='34',`size`='0.7' WHERE (`entry`='184320') ;
-- set faction to 1720 (Hyjal attaker)
update `creature_template` set faction_A=1720, Faction_H=1720 where entry in (17907,17905,17906,17908,17916);
-- quest Battle of Hillsbrad, missing RequestItemsText
update quest_template set RequestItemsText="As High Executor of Tarren Mill, under the direct command of Varimathras and the Dark Lady, you are subject to follow my command.$B$BPerhaps you take this war with the Alliance lightly? If such is the case I should behead you right here and now. Otherwise, travel west to the town of Hillsbrad and wage battle against the humans, as ordered.$B$BDismissed." where entry=527;
update quest_template set RequestItemsText="You have your orders, $c. Quit dawdling here in Tarren Mill when there is work to be done elsewhere." where entry=528;
update quest_template set RequestItemsText="You were given direct orders to attack the Azureload Mine. Your reasons for loafing about Tarren Mill better be good or I will behead you for treason." where entry=539;
INSERT IGNORE INTO `spell_script_target` VALUES
(32052,1,17968), -- Spell: Soul Charge (Red), Target: Archimonde
(32045,1,17968), -- Spell: Soul Charge (Yellow), Target: Archimonde
(32051,1,17968), -- Spell: Soul Charge (Green), Target: Archimonde
(39141,1,17968); -- Spell: Drain World Tree Visual 2, Target: Archimonde
DELETE FROM `creature_loot_template` WHERE (`entry`='13136') AND (`item`='24401');
DELETE FROM `creature_questrelation` where `quest`=10957;
INSERT IGNORE INTO `creature_questrelation`
(`id`, `quest`)
VALUES
(23158, 10957);
UPDATE `areatrigger_teleport` SET `name` = 'Stormwind Vault Instance' WHERE `id` = 109;
UPDATE `areatrigger_teleport` SET `name` = 'DeadMines Instance Start' WHERE `id` = 119;
UPDATE `areatrigger_teleport` SET `name` = 'Deadmines Instance End' WHERE `id` = 121;
UPDATE `areatrigger_teleport` SET `name` = 'Razorfen Kraul Instance Start' WHERE `id` = 242;
UPDATE `areatrigger_teleport` SET `name` = 'Blackphantom Deeps Instance Start' WHERE `id` = 259;
UPDATE `areatrigger_teleport` SET `name` = 'Uldaman Instance Start' WHERE `id` = 288;
UPDATE `areatrigger_teleport` SET `name` = 'Gnomeregan Instance Start' WHERE `id` = 322;
UPDATE `areatrigger_teleport` SET `name` = 'Razorfen Downs Instance Start' WHERE `id` = 444;
UPDATE `areatrigger_teleport` SET `name` = 'Altar Of Atal\'Hakkar Instance Start' WHERE `id` = 448;
UPDATE `areatrigger_teleport` SET `name` = 'Stockades Instance' WHERE `id` = 503;
UPDATE `areatrigger_teleport` SET `name` = 'Gnomeregan Train Depot Instance' WHERE `id` = 525;
UPDATE `areatrigger_teleport` SET `name` = 'Uldaman Instance End' WHERE `id` = 882;
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Farrak Instance Start' WHERE `id` = 922;
UPDATE `areatrigger_teleport` SET `name` = 'Onyxia\'s Lair - Dustwallow Instance' WHERE `id` = 1064;
UPDATE `areatrigger_teleport` SET `name` = 'Blackrock Mountain - Searing Gorge Instance?' WHERE `id` = 1466;
UPDATE `areatrigger_teleport` SET `name` = 'Blackrock Spire - Searing Gorge Instance (Inside)' WHERE `id` = 1468;
UPDATE `areatrigger_teleport` SET `name` = 'Blackrock Spire - Searing Gorge Instance' WHERE `id` = 1470;
UPDATE `areatrigger_teleport` SET `name` = 'Blackrock Dephts - Searing Gorge Instance' WHERE `id` = 1472;
UPDATE `areatrigger_teleport` SET `name` = 'Deeprun Tram - Ironforge Instance (Inside)' WHERE `id` = 2166;
UPDATE `areatrigger_teleport` SET `name` = 'Deeprun Tram - Stormwind Instance (Inside)' WHERE `id` = 2171;
UPDATE `areatrigger_teleport` SET `name` = 'Deeprun Tram - Stormwind Instance' WHERE `id` = 2173;
UPDATE `areatrigger_teleport` SET `name` = 'Deeprun Tram - Ironforge Instance' WHERE `id` = 2175;
UPDATE `areatrigger_teleport` SET `name` = 'Stratholme - Eastern Plaguelands Instance' WHERE `id` = 2214;
UPDATE `areatrigger_teleport` SET `name` = 'Stratholme - Eastern Plaguelands Instance' WHERE `id` = 2216;
UPDATE `areatrigger_teleport` SET `name` = 'Stratholme - Eastern Plaguelands Instance' WHERE `id` = 2217;
UPDATE `areatrigger_teleport` SET `name` = 'Stratholme - Eastern Plaguelands Instance (Inside)' WHERE `id` = 2221;
UPDATE `areatrigger_teleport` SET `name` = 'Ragefire Chasm - Ogrimmar Instance (Inside)' WHERE `id` = 2226;
UPDATE `areatrigger_teleport` SET `name` = 'Ragefire Chasm - Ogrimmar Instance' WHERE `id` = 2230;
UPDATE `areatrigger_teleport` SET `name` = 'Scholomance Instance' WHERE `id` = 2568;
UPDATE `areatrigger_teleport` SET `name` = 'Stormwind - Wizard Sanctum Room' WHERE `id` = 702;
UPDATE `areatrigger_teleport` SET `name` = 'Stormwind - Wizard Sanctum Tower Portal' WHERE `id` = 704;
UPDATE `areatrigger_teleport` SET `name` = 'Hall of Legends - Ogrimmar (Inside)' WHERE `id` = 2530;
UPDATE `areatrigger_teleport` SET `name` = 'Stormwind (Inside) - Champions Hall' WHERE `id` = 2534;
UPDATE `areatrigger_teleport` SET `name` = 'Scholomance Entrance' WHERE `id` = 2567;
UPDATE `areatrigger_teleport` SET `name` = 'Molten Core Entrance, Inside' WHERE `id` = 2890;
UPDATE `areatrigger_teleport` SET `name` = 'Barrens - Mor\'shan Base Camp (Warsong Gulch - Horde Entrance)' WHERE `id` = 3654;
UPDATE `areatrigger_teleport` SET `name` = 'Blackrock Spire, Unknown' WHERE `id` = 3728;
UPDATE `areatrigger_teleport` SET `name` = 'Karazhan, Main Entrance' WHERE `id` = 4131;
UPDATE `areatrigger_teleport` SET `name` = 'The Blood Furnace, Main Exit' WHERE `id` = 4147;
UPDATE `areatrigger_teleport` SET `name` = 'Magtheridon\'s Lair, Main Exit' WHERE `id` = 4149;
UPDATE `areatrigger_teleport` SET `name` = 'Hellfire Ramparts Entrance' WHERE `id` = 4150;
UPDATE `areatrigger_teleport` SET `name` = 'Hellfire Ramparts, Main Exit' WHERE `id` = 4297;
UPDATE `areatrigger_teleport` SET `name` = 'Caverns Of Time Battle Of Mount Hyjal' WHERE `id` = 4319;
UPDATE `areatrigger_teleport` SET `name` = 'The Black Morass - Exit' WHERE `id` = 4320;
UPDATE `areatrigger_teleport` SET `name` = 'Old Hillsbrad Foothills - Exit' WHERE `id` = 4321;
UPDATE `areatrigger_teleport` SET `name` = 'The Black Morass - Entrance' WHERE `id` = 4322;
UPDATE `areatrigger_teleport` SET `name` = 'Old Hillsbrad Foothills - Entrance' WHERE `id` = 4324;
UPDATE `areatrigger_teleport` SET `name` = 'Outland To Dark Portal' WHERE `id` = 4352;
UPDATE `areatrigger_teleport` SET `name` = 'Dark Portal To Outland' WHERE `id` = 4354;
UPDATE `areatrigger_teleport` SET `name` = 'The Steamvault' WHERE `id` = 4364;
UPDATE `areatrigger_teleport` SET `name` = 'The Steamvault, Main Exit' WHERE `id` = 4366;
UPDATE `areatrigger_teleport` SET `name` = 'The Underbog, Main Exit' WHERE `id` = 4367;
UPDATE `areatrigger_teleport` SET `name` = 'Zangarmarsh, Serpent Lake, Explore? Weird One' WHERE `id` = 4379;
UPDATE `areatrigger_teleport` SET `name` = 'Shadow Labyrinth, Main Exit' WHERE `id` = 4397;
UPDATE `areatrigger_teleport` SET `name` = 'Auchenai Crypts, Main Exit' WHERE `id` = 4399;
UPDATE `areatrigger_teleport` SET `name` = 'Mana Tombs, Main Exit' WHERE `id` = 4401;
UPDATE `areatrigger_teleport` SET `name` = 'Sethekk Halls, Main Exit' WHERE `id` = 4403;
UPDATE `areatrigger_teleport` SET `name` = 'Auchenain Crypts, Main Entrance' WHERE `id` = 4404;
UPDATE `areatrigger_teleport` SET `name` = 'Mana Tombs, Main Entrance' WHERE `id` = 4405;
UPDATE `areatrigger_teleport` SET `name` = 'Sethekk Halls, Main Entrance' WHERE `id` = 4406;
UPDATE `areatrigger_teleport` SET `name` = 'Shadow Labyrinth, Main Entrance' WHERE `id` = 4407;
UPDATE `areatrigger_teleport` SET `name` = 'Eastern Plaguelands To Sunstrider Isle' WHERE `id` = 4409;
UPDATE `areatrigger_teleport` SET `name` = 'Serpentshrine Cavern In' WHERE `id` = 4416;
UPDATE `areatrigger_teleport` SET `name` = 'Karazhan, Main Exit' WHERE `id` = 4436;
UPDATE `areatrigger_teleport` SET `name` = 'The Mechanar, Main Exit' WHERE `id` = 4455;
UPDATE `areatrigger_teleport` SET `name` = 'The Phoenix Hall, Main Exit' WHERE `id` = 4457;
UPDATE `areatrigger_teleport` SET `name` = 'The Botanica, Main Exit' WHERE `id` = 4459;
UPDATE `areatrigger_teleport` SET `name` = 'The Arcatraz, Main Exit' WHERE `id` = 4461;
UPDATE `areatrigger_teleport` SET `name` = 'The Botanica, Main Entrance' WHERE `id` = 4467;
UPDATE `areatrigger_teleport` SET `name` = 'The Arcatraz, Main Entrance' WHERE `id` = 4468;
UPDATE `areatrigger_teleport` SET `name` = 'The Mechanar, Main Entrance' WHERE `id` = 4469;
UPDATE `areatrigger_teleport` SET `name` = 'The Phoenix Hall, Main Entrance' WHERE `id` = 4470;
UPDATE `areatrigger_teleport` SET `name` = 'Gruul\'s Lair, Main Exit' WHERE `id` = 4534;
UPDATE `areatrigger_teleport` SET `name` = 'Gruul\'s Lair, Main Entrance' WHERE `id` = 4535;
UPDATE `areatrigger_teleport` SET `name` = 'Coilfang Reservoir Out' WHERE `id` = 4418;
UPDATE `areatrigger_teleport` SET `name` = 'Socrethar\'s Seat To Mainland' WHERE `id` = 4523;
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Aman, Main Entrance' WHERE `id` = 4738;
UPDATE `areatrigger_teleport` SET `name` = 'Zul\'Aman, Main Exit' WHERE `id` = 4739;
-- Trash mobs with 25 secs to 2h
update creature set spawntimesecs=7200 where map=548 and spawntimesecs=25;

-- Bosses spawntime set to 7 days
update creature set spawntimesecs=604800 where id in (21216, 21217, 21215, 21214, 21213, 21212);
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(20916, 31674, 1, 43200),
(20916, 31675, 1, 43200);
UPDATE `creature_loot_template` SET `entry` = '741' WHERE `entry` =4686 AND `item` =6082;
DELETE FROM `creature_loot_template` WHERE `entry` = 4687 AND `item` = 6082;
-- Remove loot tables from Maulgar's adds
DELETE FROM `creature_loot_template` WHERE `entry` IN (18835, 18836, 18834, 18832);
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (18835, 18836, 18834, 18832);

-- High King Maulgar
DELETE FROM `creature_loot_template` WHERE `entry`=18831;
REPLACE INTO `creature_loot_template` VALUES
(90050, 29763, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 4 Shoulder Token
(90050, 29764, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90050, 29762, 100/3, -1, 1, 1, 0, 0, 0, 0),
(18831, 0, -90050, -1, 1, 1, 0, 0, 0, 0), -- 2 Token Drops
(18831, 1, -90050, -1, 1, 1, 0, 0, 0, 0),
(18831, 28799, 100/6, -1, 1, 1, 0, 0, 0, 0), -- Maulgar Unique 1 drop
(18831, 28795, 100/6, -1, 1, 1, 0, 0, 0, 0),
(18831, 28797, 100/6, -1, 1, 1, 0, 0, 0, 0),
(18831, 28800, 100/6, -1, 1, 1, 0, 0, 0, 0),
(18831, 28796, 100/6, -1, 1, 1, 0, 0, 0, 0),
(18831, 28801, 100/6, -1, 1, 1, 0, 0, 0, 0);

-- Gold Update
UPDATE `creature_template` SET `mingold` = 255222, `maxgold` = 311938 WHERE `entry` = 18831;

-- Gruul the Dragonkiller
DELETE FROM `creature_loot_template` WHERE `entry`=19044;
REPLACE INTO `creature_loot_template` VALUES
(90051, 29766, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 4 Leg Token
(90051, 29767, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90051, 29765, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90051, 28825, 100/13, -2, 1, 1, 0, 0, 0, 0), -- Gruul Unique Loot
(90051, 28794, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28802, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28804, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28803, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28830, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28823, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28824, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28827, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28828, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28826, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28822, 100/13, -2, 1, 1, 0, 0, 0, 0),
(90051, 28810, 100/13, -2, 1, 1, 0, 0, 0, 0),
(19044, 0, -90051, 0, 1, 1, 0, 0, 0, 0), -- 1 Token 1 Drop
(19044, 1, -90051, 0, 1, 1, 0, 0, 0, 0), -- 1 Token 1 Drop
(19044, 31750, 0, 100, 1, 1, 1, 0, 0, 0); -- Earthen Signet(qid 10901)
-- Tempest Keep/SSC pattern drops (Chance off all mobs incl bosses per armory)
REPLACE INTO `creature_loot_template` VALUES
(90052, 30280, 10/8, -1, 1, 1, 0, 7, 197, 1), -- Bind on pickup patterns have loot condition and higher drop rate
(90052, 30302, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90052, 30301, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90052, 30281, 10/8, -1, 1, 1, 0, 7, 197, 1),
(90052, 30304, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90052, 30321, 10/8, -1, 1, 1, 0, 7, 164, 1),
(90052, 30322, 10/8, -1, 1, 1, 0, 7, 164, 1),
(90052, 30303, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90052, 30282, 2/8, -2, 1, 1, 0, 0, 0, 0), -- Non-binding patterns
(90052, 30305, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30306, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30307, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30283, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30308, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30323, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90052, 30324, 2/8, -2, 1, 1, 0, 0, 0, 0);

-- Al'ar
DELETE FROM `creature_loot_template` WHERE `entry`=19514;
REPLACE INTO `creature_loot_template` VALUES
(90053, 29949, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Al'ar Unique
(90053, 29922, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29948, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29921, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29947, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29918, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29924, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29920, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29925, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 29923, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 30448, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 32944, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90053, 30447, 100/13, -1, 1, 1, 0, 0, 0, 0),
(19514, 0, -90053, -1, 1, 1, 0, 0, 0, 0), -- 3 Drops
(19514, 1, -90053, -1, 1, 1, 0, 0, 0, 0),
(19514, 2, -90053, -1, 1, 1, 0, 0, 0, 0),
(19514, 3, -90052, 0, 1, 1, 0, 0, 0, 0); -- Chance to drop pattern

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1269650, `maxgold` = 1551795 WHERE `entry` = 19514;

-- Loot Reaver
DELETE FROM `creature_loot_template` WHERE `entry`=19516;
REPLACE INTO `creature_loot_template` VALUES
(90054, 30249, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 5 Shoulder
(90054, 30250, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90054, 30248, 100/3, -1, 1, 1, 0, 0, 0, 0),
(19516, 0, -90054, -1, 1, 1, 0, 0, 0, 0), -- 2 Token drops
(19516, 1, -90054, -1, 1, 1, 0, 0, 0, 0),
(19516, 2, -90052, 0, 1, 1, 0, 0, 0, 0), -- Chance to drop pattern
(19516, 29986, 100/7, -1, 1, 1, 0, 0, 0, 0), -- Void Reaver Unique
(19516, 30619, 100/7, -1, 1, 1, 0, 0, 0, 0),
(19516, 29985, 100/7, -1, 1, 1, 0, 0, 0, 0),
(19516, 29984, 100/7, -1, 1, 1, 0, 0, 0, 0),
(19516, 32515, 100/7, -1, 1, 1, 0, 0, 0, 0),
(19516, 29983, 100/7, -1, 1, 1, 0, 0, 0, 0),
(19516, 30450, 100/7, -1, 1, 1, 0, 0, 0, 0);

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1044266, `maxgold` = 1276325 WHERE `entry` = 19516;

-- High Astromancer Solarian
DELETE FROM `creature_loot_template` WHERE `entry`=18805;
REPLACE INTO `creature_loot_template` VALUES
(90055, 29951, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Solarian Unique
(90055, 29962, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29966, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29981, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29965, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29972, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29976, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29977, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 30446, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 30449, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29950, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 29982, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90055, 32267, 100/13, -1, 1, 1, 0, 0, 0, 0),
(18805, 0, -90055, -1, 1, 1, 0, 0, 0, 0), -- 3 Drops
(18805, 1, -90055, -1, 1, 1, 0, 0, 0, 0),
(18805, 2, -90055, -1, 1, 1, 0, 0, 0, 0),
(18805, 3, -90052, 0, 1, 1, 0, 0, 0, 0); -- Chance to drop pattern

-- Gold Update
UPDATE `creature_template` SET `mingold` = 873382, `maxgold` = 1067467 WHERE `entry` = 18805;

-- Kael'thas Sunstrider
DELETE FROM `creature_loot_template` WHERE `entry`=19622;
REPLACE INTO `creature_loot_template` VALUES
(90056, 30236, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 5 Chest
(90056, 30237, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90056, 30238, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90056, 29997, 100/12, -2, 1, 1, 0, 0, 0, 0), -- Kael'thas Unique
(90056, 29990, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29987, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29995, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29996, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29992, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29998, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29991, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29989, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29994, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29988, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90056, 29993, 100/12, -2, 1, 1, 0, 0, 0, 0),
(19622, 0, -90056, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(19622, 1, -90056, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(19622, 2, -90052, 0, 1, 1, 0, 0, 0, 0), -- Chance to drop pattern
(19622, 32458, 2, 0, 1, 1, 0, 0, 0, 0), -- Ashes of Al'ar(Mount)
(19622, 29905, 0, 100, 1, 1, 1, 0, 0, 0), -- Kael's Vial Remnant(qid 10445)
(19622, 30183, 100, 0, 2, 2, 0, 0, 0, 0), -- Nether Vortex(100% guaranteed per armory)
(19622, 32405, 100, 0, 1, 1, 0, 0, 0, 0); -- Verdant Sphere

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1075954, `maxgold` = 1315055 WHERE `entry` = 19622;
-- Hydross the Unstable
DELETE FROM `creature_loot_template` WHERE `entry`=21216;
REPLACE INTO `creature_loot_template` VALUES
(90057, 33055, 100/14, -1, 1, 1, 0, 0, 0, 0), -- Hydross Unique
(90057, 30047, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30050, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30048, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30049, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30051, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30664, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30053, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30054, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30052, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30056, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30629, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 30055, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90057, 32516, 100/14, -1, 1, 1, 0, 0, 0, 0),
(21216, 0, -90057, -1, 1, 1, 0, 0, 0, 0), -- 3 Drops
(21216, 1, -90057, -1, 1, 1, 0, 0, 0, 0),
(21216, 2, -90057, -1, 1, 1, 0, 0, 0, 0),
(21216, 3, -90052, 0, 1, 1, 0, 0, 0, 0); -- Chance to drop pattern

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1348394 WHERE `entry` = 21216;

-- Lurker Below
DELETE FROM `creature_loot_template` WHERE `entry`=21217;
REPLACE INTO `creature_loot_template` VALUES
(90058, 30062, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Lurker Unique
(90058, 30061, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30060, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30665, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30066, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30063, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30059, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30064, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30065, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30058, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30057, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30067, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90058, 30054, 100/13, -1, 1, 1, 0, 0, 0, 0),
(21217, 0, -90058, -1, 1, 1, 0, 0, 0, 0), -- 3 Drops
(21217, 1, -90058, -1, 1, 1, 0, 0, 0, 0),
(21217, 2, -90058, -1, 1, 1, 0, 0, 0, 0),
(21217, 3, -90052, 0, 1, 1, 0, 0, 0, 0); -- Chance to drop pattern

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1340096 WHERE `entry` = 21217;

-- Leothera s
DELETE FROM `creature_loot_template` WHERE `entry`=21215;
REPLACE INTO `creature_loot_template` VALUES
(90059, 30240, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 5 Gloves
(90059, 30239, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90059, 30241, 100/3, -1, 1, 1, 0, 0, 0, 0),
(21215, 0, -90059, -1, 1, 1, 0, 0, 0, 0), -- 2 Token drops
(21215, 1, -90059, -1, 1, 1, 0, 0, 0, 0),
(21215, 2, -90052, 0, 1, 1, 0, 0, 0, 0), -- Chance to drop pattern
(21215, 30627, 100/6, -1, 1, 1, 0, 0, 0, 0), -- Leothera s Unique
(21215, 30091, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21215, 30097, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21215, 30096, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21215, 30095, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21215, 30092, 100/6, -1, 1, 1, 0, 0, 0, 0);

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1293164 WHERE `entry` = 21215;

-- Karathress
DELETE FROM `creature_loot_template` WHERE `entry`=21214;
REPLACE INTO `creature_loot_template` VALUES
(90060, 30245, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 5 Legs
(90060, 30247, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90060, 30246, 100/3, -1, 1, 1, 0, 0, 0, 0),
(21214, 0, -90060, -1, 1, 1, 0, 0, 0, 0), -- 2 Token drops
(21214, 1, -90060, -1, 1, 1, 0, 0, 0, 0),
(21214, 2, -90052, 0, 1, 1, 0, 0, 0, 0), -- Chance to drop pattern
(21214, 30100, 100/6, -1, 1, 1, 0, 0, 0, 0), -- Karathress Unique
(21214, 30090, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21214, 30663, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21214, 30101, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21214, 30099, 100/6, -1, 1, 1, 0, 0, 0, 0),
(21214, 30626, 100/6, -1, 1, 1, 0, 0, 0, 0);

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1311403 WHERE `entry` = 21214;

-- Morogrim
DELETE FROM `creature_loot_template` WHERE `entry`=21213;
REPLACE INTO `creature_loot_template` VALUES
(90061, 30098, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Morogrim Unique
(90061, 30084, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30720, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30082, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30085, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30075, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30083, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30081, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30068, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30008, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30058, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30080, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90061, 30079, 100/13, -1, 1, 1, 0, 0, 0, 0),
(21213, 0, -90061, -1, 1, 1, 0, 0, 0, 0), -- 3 Drops
(21213, 1, -90061, -1, 1, 1, 0, 0, 0, 0),
(21213, 2, -90061, -1, 1, 1, 0, 0, 0, 0),
(21213, 3, -90052, 0, 1, 1, 0, 0, 0, 0); -- Chance to drop pattern

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1344276 WHERE `entry` = 21213;

-- Lady Vashj
DELETE FROM `creature_loot_template` WHERE `entry`=21212;
REPLACE INTO `creature_loot_template` VALUES
(90062, 30236, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 5 Chest
(90062, 30237, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90062, 30238, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90062, 30106, 100/12, -2, 1, 1, 0, 0, 0, 0), -- Vashj Unique
(90062, 30104, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30110, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30103, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30112, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30102, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30108, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30621, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30109, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30111, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30105, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90062, 30107, 100/12, -2, 1, 1, 0, 0, 0, 0),
(21212, 0, -90062, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(21212, 1, -90062, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(21212, 2, -90052, 0, 1, 1, 0, 0, 0, 0), -- Chance to drop pattern
(21212, 29906, 0, 100, 1, 1, 1, 0, 0, 0), -- Vashj's Vial Remnant(qid 10445)
(21212, 30183, 100, 0, 2, 2, 0, 0, 0, 0); -- Nether Vortex(100% guaranteed per armory)

-- Gold Update
UPDATE `creature_template` SET `mingold` = 1384586, `maxgold` = 1692271 WHERE `entry` = 21212;
-- Hyjal Gem pattern drops (Small chance off bosses but Archimonde per armory, Archimonde is higher and will put in his table)
REPLACE INTO `creature_loot_template` VALUES
(90063, 32285, 10/8, -1, 1, 1, 0, 7, 755, 1), -- Gem Patterns(BOP)
(90063, 32289, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32295, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32296, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32297, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32298, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32303, 10/8, -1, 1, 1, 0, 7, 755, 1),
(90063, 32307, 10/8, -1, 1, 1, 0, 7, 755, 1);

-- Rage Winterchill
DELETE FROM `creature_loot_template` WHERE `entry`=17767;
REPLACE INTO `creature_loot_template` VALUES
(90064, 30872, 100/12, -1, 1, 1, 0, 0, 0, 0), -- Rage Winterchill Unique
(90064, 30871, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30868, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30870, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30862, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30863, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30864, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30861, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30869, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30865, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30866, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90064, 30873, 100/12, -1, 1, 1, 0, 0, 0, 0),
(17767, 0, -90064, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(17767, 1, -90064, -1, 1, 1, 0, 0, 0, 0),
(17767, 2, -90063, -1, 1, 1, 0, 0, 0, 0), -- Chance to drop gem pattern
(17767, 32459, 0, 100, 1, 1, 1, 0, 0, 0); -- Time Phased Phylactery(qid 10947)

-- Anetheron
DELETE FROM `creature_loot_template` WHERE `entry`=17808;
REPLACE INTO `creature_loot_template` VALUES
(90065, 30886, 100/12, -1, 1, 1, 0, 0, 0, 0), -- Anetheron Unique
(90065, 30883, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30884, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30879, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30878, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30880, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30888, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30874, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30881, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30885, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30887, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90065, 30882, 100/12, -1, 1, 1, 0, 0, 0, 0),
(17808, 0, -90065, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(17808, 1, -90065, -1, 1, 1, 0, 0, 0, 0),
(17808, 2, -90063, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop gem pattern

-- Kaz'rogal
DELETE FROM `creature_loot_template` WHERE `entry`=17888;
REPLACE INTO `creature_loot_template` VALUES
(90066, 30916, 100/12, -1, 1, 1, 0, 0, 0, 0), -- Anetheron Unique
(90066, 30918, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30894, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30895, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30915, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30917, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30892, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30889, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30893, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30919, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30891, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90066, 30914, 100/12, -1, 1, 1, 0, 0, 0, 0),
(17888, 0, -90066, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(17888, 1, -90066, -1, 1, 1, 0, 0, 0, 0),
(17888, 2, -90063, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop gem pattern

-- Azgalor
DELETE FROM `creature_loot_template` WHERE `entry`=17842;
REPLACE INTO `creature_loot_template` VALUES
(90067, 31092, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 6 Gloves
(90067, 31093, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90067, 31094, 100/3, -1, 1, 1, 0, 0, 0, 0),
(17842, 0, -90067, -1, 1, 1, 0, 0, 0, 0), -- 2 Token drops
(17842, 1, -90067, -1, 1, 1, 0, 0, 0, 0),
(17842, 2, -90063, -1, 1, 1, 0, 0, 0, 0), -- Chance to drop gem pattern
(17842, 30901, 100/6, -1, 1, 1, 0, 0, 0, 0), -- Azgalor Unique
(17842, 30898, 100/6, -1, 1, 1, 0, 0, 0, 0),
(17842, 30896, 100/6, -1, 1, 1, 0, 0, 0, 0),
(17842, 30899, 100/6, -1, 1, 1, 0, 0, 0, 0),
(17842, 30897, 100/6, -1, 1, 1, 0, 0, 0, 0),
(17842, 30900, 100/6, -1, 1, 1, 0, 0, 0, 0);

-- Archimonde
DELETE FROM `creature_loot_template` WHERE `entry`=17968;
REPLACE INTO `creature_loot_template` VALUES
(90068, 31096, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 6 Helms
(90068, 31097, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90068, 31095, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90068, 30911, 100/12, -2, 1, 1, 0, 0, 0, 0), -- Archimonde Unique
(90068, 30902, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30908, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30913, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30912, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30906, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30905, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30907, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30909, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30903, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30904, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90068, 30910, 100/12, -2, 1, 1, 0, 0, 0, 0),
(17968, 0, -90068, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(17968, 1, -90068, 0, 1, 1, 0, 0, 0, 0), -- 1 token 1 drop
(17968, 32285, 15/8, -1, 1, 1, 0, 7, 755, 1), -- Gem Patterns(Higher drop than other bosses per armory)
(17968, 32289, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32295, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32296, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32297, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32298, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32303, 15/8, -1, 1, 1, 0, 7, 755, 1),
(17968, 32307, 15/8, -1, 1, 1, 0, 7, 755, 1);
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(18402, 23660, 0, 100, 1, 1, 0, 0, 0, 0),
(18403, 23658, 0, 100, 1, 1, 0, 0, 0, 0);
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 1448;
update creature_template set minhealth = '1220000', maxhealth = '1220000' where entry = '4949';
update creature_template set minhealth = '555000', maxhealth = '555000' where entry = '10540';
update creature_template set minhealth = '1100000', maxhealth = '1100000' where entry = '3057';
update creature_template set minhealth = '500000', maxhealth = '700000' where entry = '2425';
update creature_template set minhealth = '800000', maxhealth = '800000' where entry = '10181';
update creature_template set minhealth = '1500000', maxhealth = '1500000' where entry = '16802';
update creature_template set minhealth = '1000000', maxhealth = '1000000' where entry = '16800';
update creature_template set minhealth = '560000', maxhealth = '560000' where entry = '16801';
update creature_template set minhealth = '1000000', maxhealth = '1000000' where entry = '1748';
update creature_template set minhealth = '900000', maxhealth = '1000000' where entry = '2784';
update creature_template set minhealth = '900000', maxhealth = '1000000' where entry = '7999';
update creature_template set minhealth = '1400000', maxhealth = '1400000' where entry = '17468'; 
UPDATE `creature_template` SET `trainer_type` = '2' WHERE `entry` =11870;
INSERT IGNORE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(11870, 15983, 1000, 0, 0, 0),
(11870, 15991, 10000, 0, 0, 20);
-- Giant Kaliri Wing missing from loot table
INSERT IGNORE INTO `creature_loot_template` VALUES
(23051, 33838, 0, 33, 1, 1, 0, 0, 0, 0);
update quest_template set reqsourceid1=33838, reqsourcecount1=20, reqsourceref1=1 where entry=11377;
DELETE FROM `creature` WHERE `id` = 11836;
UPDATE `creature_addon` SET `emote` = 36 WHERE `guid` IN (38106, 31890, 38432);
UPDATE `quest_template` SET `MinLevel` = 45 WHERE `entry` = 3570;
delete from creature_loot_template where item=4484;
delete from creature_addon where guid=12859;
update creature set movementtype=0 where id in (19709, 21751);
update creature set movementtype=0 where guid=70615;
-- Random Nightsaber spawned in Blades Edge Evergrove keeps getting killed by NPCS
DELETE FROM `creature` WHERE `guid`=12859;
-- Chubis walking through buildings in Area 52
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 21751;
-- Chief Engineer Trep walking through buildings in Area 52
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 19709;
delete from npc_trainer where entry in ( 3182, 4014, 6251);
update quest_template set RequestItemsText="Don't tell anyone this but Niby is daft." where entry=7602;
update creature_loot_template set QuestChanceOrGroup=20 where item=9259;
UPDATE `mangos`.`quest_template` SET `RewRepFaction1` = '589',
`RewRepValue1` = '250' WHERE `entry` =5201;
-- GUID 147 (Rabbit) I fell through the ground when I teleported to this creature
UPDATE creature SET spawn_position_x = '-5184.312012', spawn_position_y = '-539.129883', spawn_position_z = '397.052673', spawn_orientation = '5.695500',position_x = '-5184.312012', position_y = '-539.129883', position_z = '397.052673', orientation = '5.695500' WHERE guid = '147';

-- GUID 250 (Thaurissan Firewalker) I fell through the ground when I teleported to this creature
UPDATE creature SET spawn_position_x = '-7829.939941', spawn_position_y = '-2138.955566', spawn_position_z = '134.546127', spawn_orientation = '3.854795', position_x = '-7829.939941', position_y = '-2138.955566', position_z = '134.546127', orientation = '3.854795' WHERE guid = '250';

-- GUID 756 (Ironjaw Basilisk) spawns below floor
UPDATE creature SET spawn_position_x = '-13269.099609', spawn_position_y = '-497.587006', spawn_position_z = '20.066999', spawn_orientation = '0.000000',position_x = '-13269.099609', position_y = '-497.587006', position_z = '20.066999', orientation = '0.000000' WHERE guid = '756';
update quest_template set PrevQuestId=2933 where entry=2934;
UPDATE `quest_template` SET `MinLevel` = 66 WHERE `entry` = 9999;
-- Making quests "Escape Through Stealth" & "Escape Through Force" exclusive each other.
update quest_template set exclusiveGroup=994, prevquestid=993 where entry in (994, 995); 
delete from creature_loot_template where entry=232 and item=8151;
delete from creature_addon where guid in (select guid FROM `creature` WHERE `id`=15358);
DELETE FROM `creature` WHERE `id`=15358;
update gameobject_template set name="Tome of Mel'Thandris" where entry=19027;
DELETE FROM `creature_loot_template` WHERE `entry`=20327 AND `item`=31495;
delete from `creature` where `id` in ( 10741);

-- updating drop chance ReqSourceId, now 100%
update creature_loot_template set `questchanceorgroup` = 10 where item = 12733 and entry in (7434, 7433);
update creature_loot_template set `questchanceorgroup` = 5 where item =12733 and entry in (7432, 7430, 7431);

-- update quest_template set specialflags=0 where entry = 5056;

-- Black Temple pattern drops (Chance off all mobs incl bosses per armory)
REPLACE INTO `creature_loot_template` VALUES
(90069, 32754, 10/8, -1, 1, 1, 0, 7, 197, 1), -- Bind on pickup patterns have loot condition and higher drop rate
(90069, 32752, 10/8, -1, 1, 1, 0, 7, 197, 1),
(90069, 32748, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90069, 32744, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90069, 32750, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90069, 32746, 10/8, -1, 1, 1, 0, 7, 165, 1),
(90069, 32738, 10/8, -1, 1, 1, 0, 7, 164, 1),
(90069, 32736, 10/8, -1, 1, 1, 0, 7, 164, 1),
(90069, 32751, 2/8, -2, 1, 1, 0, 0, 0, 0), -- Non-binding patterns
(90069, 32755, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32745, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32749, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32753, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32747, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32739, 2/8, -2, 1, 1, 0, 0, 0, 0),
(90069, 32737, 2/8, -2, 1, 1, 0, 0, 0, 0);

-- High Warlord Najentus
DELETE FROM `creature_loot_template` WHERE `entry`=22887;
REPLACE INTO `creature_loot_template` VALUES
(90070, 32239, 100/14, -1, 1, 1, 0, 0, 0, 0), -- Najentus Unique
(90070, 32237, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32234, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32240, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32247, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32377, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32236, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32248, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32232, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32238, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32243, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32241, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32245, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90070, 32242, 100/14, -1, 1, 1, 0, 0, 0, 0),
(22887, 0, -90070, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(22887, 1, -90070, -1, 1, 1, 0, 0, 0, 0),
(22887, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Supremus
DELETE FROM `creature_loot_template` WHERE `entry`=22898;
REPLACE INTO `creature_loot_template` VALUES
(90071, 32251, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Supremus Unique
(90071, 32256, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32255, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32262, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32250, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32253, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32260, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32261, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32252, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32257, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32254, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32258, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90071, 32259, 100/13, -1, 1, 1, 0, 0, 0, 0),
(22898, 0, -90071, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(22898, 1, -90071, -1, 1, 1, 0, 0, 0, 0),
(22898, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Shade of Akama
DELETE FROM `creature_loot_template` WHERE `entry`=22841;
REPLACE INTO `creature_loot_template` VALUES
(90072, 32264, 100/14, -1, 1, 1, 0, 0, 0, 0), -- Shade of Akama Unique
(90072, 32513, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32278, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32265, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32273, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32266, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32263, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32361, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32271, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32270, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32268, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32275, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32276, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90072, 32279, 100/14, -1, 1, 1, 0, 0, 0, 0),
(22841, 0, -90072, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(22841, 1, -90072, -1, 1, 1, 0, 0, 0, 0),
(22841, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Teron Gorefiend
DELETE FROM `creature_loot_template` WHERE `entry`=22871;
REPLACE INTO `creature_loot_template` VALUES
(90073, 32512, 100/12, -1, 1, 1, 0, 0, 0, 0), -- Teron Gorefiend Unique
(90073, 32348, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32328, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32324, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32325, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32280, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32323, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32329, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32327, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32510, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32330, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90073, 32326, 100/12, -1, 1, 1, 0, 0, 0, 0),
(22871, 0, -90073, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(22871, 1, -90073, -1, 1, 1, 0, 0, 0, 0),
(22871, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Gurtogg Bloodboil
DELETE FROM `creature_loot_template` WHERE `entry`=22948;
REPLACE INTO `creature_loot_template` VALUES
(90074, 32333, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Gurtogg Bloodboil Unique
(90074, 32340, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32339, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32501, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32269, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32343, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32341, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32337, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32344, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32334, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32338, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32335, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90074, 32342, 100/13, -1, 1, 1, 0, 0, 0, 0),
(22948, 0, -90074, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(22948, 1, -90074, -1, 1, 1, 0, 0, 0, 0),
(22948, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Reliquary(Essence of Anger is the loot mob)
DELETE FROM `creature_loot_template` WHERE `entry`=23420;
REPLACE INTO `creature_loot_template` VALUES
(90075, 32517, 100/13, -1, 1, 1, 0, 0, 0, 0), -- Reliquary of Souls Unique
(90075, 32332, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32347, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32353, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32350, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32346, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32349, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32354, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32345, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32362, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32363, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32352, 100/13, -1, 1, 1, 0, 0, 0, 0),
(90075, 32351, 100/13, -1, 1, 1, 0, 0, 0, 0),
(23420, 0, -90075, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(23420, 1, -90075, -1, 1, 1, 0, 0, 0, 0),
(23420, 2, -90069, -1, 1, 1, 0, 0, 0, 0); -- Chance to drop profession pattern

-- Mother Shahraz
DELETE FROM `creature_loot_template` WHERE `entry`=22947;
REPLACE INTO `creature_loot_template` VALUES
(90076, 31103, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 6 Shoulder
(90076, 31102, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90076, 31101, 100/3, -1, 1, 1, 0, 0, 0, 0),
(22947, 0, -90076, -1, 1, 1, 0, 0, 0, 0), -- 2 Token drops
(22947, 1, -90076, -1, 1, 1, 0, 0, 0, 0),
(22947, 2, -90069, -1, 1, 1, 0, 0, 0, 0), -- Chance to drop profession pattern
(22947, 32367, 100/6, -1, 1, 1, 0, 0, 0, 0), -- Mother Shahraz Unique
(22947, 32369, 100/6, -1, 1, 1, 0, 0, 0, 0),
(22947, 32368, 100/6, -1, 1, 1, 0, 0, 0, 0),
(22947, 32370, 100/6, -1, 1, 1, 0, 0, 0, 0),
(22947, 32366, 100/6, -1, 1, 1, 0, 0, 0, 0),
(22947, 32365, 100/6, -1, 1, 1, 0, 0, 0, 0);

-- Illidari Council
-- Gathios the Shatterer and Veras Darkshadow(1 Tier 6 Leg each)
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/3 WHERE `entry` IN (22949, 22952) AND `item` IN (31098, 31099, 31100);

-- Lady Malande(1 Epic Gem)
DELETE FROM `creature_loot_template` WHERE `entry`=22951 AND `item`=31098;
REPLACE INTO `creature_loot_template` VALUES (22951, 32230, 100/6, -1, 1, 1, 0, 0, 0, 0);
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/6 WHERE `entry`=22951 AND `item` IN (32228, 32227, 32229, 32231, 32249);

-- Zerevor
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/6 WHERE `entry`=22950 AND `item` IN (32331, 32373, 32376, 32505, 32518, 32519);

-- Illidan Stormrage
DELETE FROM `creature_loot_template` WHERE `entry`=22917;
REPLACE INTO `creature_loot_template` VALUES
(90077, 31090, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Tier 6 Chest
(90077, 31091, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90077, 31089, 100/3, -1, 1, 1, 0, 0, 0, 0),
(90077, 32336, 100/12, -2, 1, 1, 0, 0, 0, 0), -- Illidan Unique
(90077, 32500, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32483, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32524, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32497, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32471, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32496, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32375, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32374, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32525, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32235, 100/12, -2, 1, 1, 0, 0, 0, 0),
(90077, 32521, 100/12, -2, 1, 1, 0, 0, 0, 0),
(22917, 0, -90077, 0, 1, 1, 0, 0, 0, 0), -- 1 T6 Chest and 1 Drop
(22917, 1, -90077, 0, 1, 1, 0, 0, 0, 0), -- 1 T6 Chest and 1 Drop
(22917, 2, -90069, -1, 1, 1, 0, 0, 0, 0), -- Chance to drop profession pattern
(22917, 32837, 4, -1, 1, 1, 0, 0, 0, 0), -- Main Hand Warglaive of Azzinoth(8% chance for both to drop)
(22917, 32838, 4, -1, 1, 1, 0, 0, 0, 0); -- Off Hand Warglaive of Azzinoth
-- Doomwalker
DELETE FROM `creature_loot_template` WHERE `entry`=17711;
INSERT IGNORE INTO `creature_loot_template` VALUES
(90080, 30722, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30723, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30724, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30725, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30726, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30727, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30728, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30729, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30730, 10, -1, 1, 1, 0, 0, 0, 0),
(90080, 30731, 10, -1, 1, 1, 0, 0, 0, 0),
(17711, 0, -90080, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(17711, 1, -90080, -1, 1, 1, 0, 0, 0, 0);

-- Doom Lord Kazzak
DELETE FROM `creature_loot_template` WHERE `entry`=18728;
INSERT IGNORE INTO `creature_loot_template` VALUES
(90081, 30732, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30733, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30734, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30735, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30736, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30737, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30738, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30739, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30740, 10, -1, 1, 1, 0, 0, 0, 0),
(90081, 30741, 10, -1, 1, 1, 0, 0, 0, 0),
(18728, 0, -90081, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(18728, 1, -90081, -1, 1, 1, 0, 0, 0, 0);
-- Update Executioner enchant drop rate for the 4 aspect bosses
UPDATE `creature_loot_template` SET `ChanceOrRef`= 5 WHERE `entry` IN (23574, 23576, 23578, 23577) AND `item`=33307;

-- Akilzon
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/7 WHERE `entry`=23574 AND `item` IN (33214, 33283, 33215, 33281, 33216, 33286, 33293);
UPDATE `creature_template` SET `mingold`=345375, `maxgold`=422125 WHERE `entry` = 23574;

-- Nalorakk
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/7 WHERE `entry`=23576 AND `item` IN (33206, 33211, 33203, 33191, 33640, 33285, 33327);
UPDATE `creature_template` SET `mingold`=361813, `maxgold`=442216 WHERE `entry` = 23576;

-- JanAlai
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/7 WHERE `entry`=23578 AND `item` IN (33332, 33328, 33357, 33354, 33329, 33356, 33326);
UPDATE `creature_template` SET `mingold`=343737, `maxgold`=420123 WHERE `entry` = 23578;

-- Halazzi
UPDATE `creature_loot_template` SET `QuestChanceorGroup`=-1, `ChanceOrRef`= 100/7 WHERE `entry`=23577 AND `item` IN (33297, 33300, 33317, 33533, 33322, 33303, 33299);
UPDATE `creature_template` SET `mingold`=345432, `maxgold`=422195 WHERE `entry` = 23577;
-- Hex Lord Malacrass
DELETE FROM `creature_loot_template` WHERE `entry`=24239;
REPLACE INTO `creature_loot_template` VALUES
(90078, 34029, 100/14, -1, 1, 1, 0, 0, 0, 0), -- Malacrass Unique
(90078, 33432, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33421, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33298, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33388, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33389, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33446, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33453, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33828, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33592, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33465, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33464, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33463, 100/14, -1, 1, 1, 0, 0, 0, 0),
(90078, 33829, 100/14, -1, 1, 1, 0, 0, 0, 0),
(24239, 0, -90078, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(24239, 1, -90078, -1, 1, 1, 0, 0, 0, 0),
(24239, 29434, 100, 0, 3, 3, 1, 0, 0, 0), -- 3 Badges of Justice
(24239, 33307, 5, 0, 1, 1, 0, 7, 333, 1); -- Executioner Enchant
UPDATE `creature_template` SET `mingold`=419816, `maxgold`=513109 WHERE `entry` = 24239;
-- Zulji.n
DELETE FROM `creature_loot_template` WHERE `entry`=23863;
REPLACE INTO `creature_loot_template` VALUES
(90079, 33476, 100/12, -1, 1, 1, 0, 0, 0, 0), -- Zuljin Unique
(90079, 33469, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33474, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33473, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33471, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33467, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33830, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33466, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33831, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33468, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33479, 100/12, -1, 1, 1, 0, 0, 0, 0),
(90079, 33478, 100/12, -1, 1, 1, 0, 0, 0, 0),
(23863, 0, -90079, -1, 1, 1, 0, 0, 0, 0), -- 2 Drops
(23863, 1, -90079, -1, 1, 1, 0, 0, 0, 0),
(23863, 33102, 100, 0, 1, 1, 0, 0, 0, 0), -- Blood of ZulJin (Quest Starter)
(23863, 29434, 100, 0, 3, 3, 1, 0, 0, 0), -- 3 Badges of Justice
(23863, 33307, 5, 0, 1, 1, 0, 7, 333, 1); -- Executioner Enchant
UPDATE `creature_template` SET `mingold`=418035, `maxgold`=510932 WHERE `entry` = 23863;
-- Mana Wraith bestiary data (page 16)
UPDATE `creature_template` SET `mindmg` = '187', `maxdmg` = '256', `minlevel` = '67', `maxlevel` = '68', `minhealth` = '6326', `maxhealth` = '6542', `minmana` = '0', `maxmana` = '0', `armor` = '5892', `dmgschool` = '6', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18864';
DELETE FROM `creature_loot_template` WHERE `item` IN (20725, 11139, 11178, 14343, 10978, 11138, 11177, 11082, 16203, 10939, 11135, 11175, 10998, 16202, 10938, 11134, 11174, 22447, 22445, 11176, 16204, 11083, 10940, 11137);
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE (`entry`='10826');
-- Brackenwall Village Inn as a rest area
INSERT IGNORE INTO `areatrigger_tavern` (`id`, `name`) VALUES (4775, 'Brackenwall Village Inn');
UPDATE `creature_template` SET `modelid_A` = '21282' WHERE `entry` = '22181';
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry` = 12919;
INSERT IGNORE INTO `npc_vendor` (entry,item) VALUES (12919,19978);
-- UPDATE `creature_loot_template` SET `ChanceOrRef` = 100, `QuestChanceOrGroup` = 0, `lootcondition` = 8, `condition_value1` = 1030;
UPDATE `quest_template` SET `RequestItemsText` = "The Sentinels do what they can here in Ashenvale, but it's thanks to $rs like you that we have gained the ground we have." WHERE `entry` = 1046;
UPDATE `creature_template` SET `minlevel`='67', `maxlevel`='67', `minhealth`='7900', `maxhealth`='7900' WHERE `entry` = 24393;
-- Quest Fires Over Skettis start and end NPC fix
DELETE FROM `creature_questrelation` WHERE `id`=23048 AND `quest`=11008;
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES
('23048','11008');

DELETE FROM `creature_involvedrelation` WHERE `id`=23048 AND `quest`=11008;
INSERT IGNORE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('23048','11008');
-- Quest 'Water Sapta' should be repeatable
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|1 WHERE `entry` =972;
delete from creature_loot_template where item=5536;
UPDATE `creature` SET `MovementType`='0' WHERE (`id`='16591');
UPDATE `gameobject_template` SET `size` = 4 WHERE `entry` = 182054;
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12781, 28379),
(12781, 28380);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12793, 28378),
(12793, 28377);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 441 AND `item` = 5839;
-- Spitelash Siren - delete loot Rubbing: Rune of Markri
DELETE FROM `creature_loot_template` WHERE (`entry`=6195) AND (`item`=10565);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(12782, 33945),
(12782, 33942),
(12782, 28355),
(12782, 33936),
(12782, 28356),
(12782, 33948),
(12782, 33939),
(12782, 33951),
(12782, 28357);
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(14581, 33945),
(14581, 33942),
(14581, 28355),
(14581, 33936),
(14581, 28356),
(14581, 33948),
(14581, 33939),
(14581, 33951),
(14581, 28357);
-- Master Sergeant Biggins (missing items)
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('12781', '18455', '0', '0'), -- Sergeant Major's Dragonhide Armsplints
('12781', '28245', '0', '0'), -- Pendant of Dominance
('12781', '28244', '0', '0'), -- Pendant of Triumph
('12781', '28379', '0', '0'), -- Sergeant's Heavy Cape
('12781', '28380', '0', '0'), -- Sergeant's Heavy Cloak
('12781', '28247', '0', '0'), -- Band of Dominance
('12781', '28246', '0', '0'), -- Band of Triumph
('12781', '28238', '0', '0'); -- Medallion of the Alliance (mage)
-- Brave Stonehide (missing items)
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
('12793', '28245', '0', '0'), -- Pendant of Dominance
('12793', '28244', '0', '0'), -- Pendant of Triumph
('12793', '28379', '0', '0'), -- Sergeant's Heavy Cape
('12793', '28380', '0', '0'), -- Sergeant's Heavy Cloak
('12793', '28247', '0', '0'), -- Band of Dominance
('12793', '28246', '0', '0'), -- Band of Triumph
('12793', '32455', '0', '0'), -- Star's Lament
('12793', '32453', '0', '0'); -- Star's Tears
-- Insignia of the Horde (shaman)
UPDATE `npc_vendor` SET `item` = '18845' WHERE (`entry` = '12793') AND (`item` = '18445');
update `npc_trainer` set `spellcost` = '120000' where `spell` = 44154;
update `npc_trainer` set `spellcost` = '200000' where `spell` = 44158;
delete from creature where id = 18706;
-- Fix drop of Plans: Fel Edged Battleaxe
DELETE from `creature_loot_template` where `item`=23631;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrRef`, `QuestChanceOrGroup`, `mincount`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) values
('16489','23631','0.1','0','1','1','0','0','0','0'),
('20394','23631','0.1','0','1','1','0','0','0','0'),
('16459','23631','0.1','0','1','1','0','0','0','0'),
('16945','23631','0.1','0','1','1','0','0','0','0'),
('20866','23631','0.1','0','1','1','0','0','0','0'),
('18320','23631','0.1','0','1','1','0','0','0','0'),
('18636','23631','0.1','0','1','1','0','0','0','0'),
('18319','23631','0.1','0','1','1','0','0','0','0'),
('21763','23631','0.1','0','1','1','0','0','0','0'),
('17805','23631','0.1','0','1','1','0','0','0','0'),
('18708','23631','0.1','0','1','1','0','0','0','0'),
('18289','23631','0.1','0','1','1','0','0','0','0'),
('18314','23631','0.1','0','1','1','0','0','0','0'),
('18202','23631','0.1','0','1','1','0','0','0','0'),
('18632','23631','0.1','0','1','1','0','0','0','0'),
('18830','23631','0.1','0','1','1','0','0','0','0'),
('18311','23631','0.1','0','1','1','0','0','0','0'),
('21696','23631','0.1','0','1','1','0','0','0','0'),
('16593','23631','0.1','0','1','1','0','0','0','0'),
('16704','23631','0.1','0','1','1','0','0','0','0'),
('18064','23631','0.1','0','1','1','0','0','0','0'),
('17154','23631','0.1','0','1','1','0','0','0','0'),
('18794','23631','0.1','0','1','1','0','0','0','0'),
('17156','23631','0.1','0','1','1','0','0','0','0'),
('16948','23631','0.1','0','1','1','0','0','0','0'),
('17801','23631','0.1','0','1','1','0','0','0','0'),
('17819','23631','0.1','0','1','1','0','0','0','0'),
('21649','23631','0.1','0','1','1','0','0','0','0'),
('19168','23631','0.1','0','1','1','0','0','0','0'),
('17940','23631','0.1','0','1','1','0','0','0','0'),
('23169','23631','0.1','0','1','1','0','0','0','0'),
('17132','23631','0.1','0','1','1','0','0','0','0'),
('22310','23631','0.1','0','1','1','0','0','0','0'),
('16409','23631','0.1','0','1','1','0','0','0','0'),
('18866','23631','0.1','0','1','1','0','0','0','0'),
('22175','23631','0.1','0','1','1','0','0','0','0');
-- Ragefire Chasm
-- Taragaman the Hungerer
DELETE FROM `creature_loot_template` WHERE `entry`=11520;
REPLACE INTO `creature_loot_template` VALUES
(11520, 14148, 40, -1, 1, 1, 0, 0, 0, 0), -- Crystalline Cuffs
(11520, 14149, 40, -1, 1, 1, 0, 0, 0, 0), -- Subterranean Cape
(11520, 14145, 20, -1, 1, 1, 0, 0, 0, 0), -- Cursed Felblade
(11520, 2589, 25, 0, 1, 5, 0, 0, 0, 0), -- Cloth and food
(11520, 4605, 4, 0, 1, 1, 0, 0, 0, 0),
(11520, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(11520, 14540, 0, 100, 1, 1, 1, 0, 0, 0); -- Taragaman the Hungerer's Heart (qid 5761)

-- Jergosh the Invoker
DELETE FROM `creature_loot_template` WHERE `entry`=11518;
REPLACE INTO `creature_loot_template` VALUES
(11518, 14150, 40, -1, 1, 1, 0, 0, 0, 0), -- Robe of Evocation
(11518, 14147, 40, -1, 1, 1, 0, 0, 0, 0), -- Cavedweller Bracers
(11518, 14151, 20, -1, 1, 1, 0, 0, 0, 0), -- Chanting Blade
(11518, 2589, 25, 0, 1, 5, 0, 0, 0, 0), -- Cloth and food
(11518, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(11518, 1179, 4, 0, 1, 1, 0, 0, 0, 0);

-- Wailing Caverns
-- Lady Anacondra
DELETE FROM `creature_loot_template` WHERE `entry`=3671;
REPLACE INTO `creature_loot_template` VALUES
(3671, 5404, 80, -1, 1, 1, 0, 0, 0, 0), -- Serpent's Shoulders
(3671, 10412, 10, -1, 1, 1, 0, 0, 0, 0), -- Belt of the Fang
(3671, 6446, 10, -1, 1, 1, 0, 0, 0, 0), -- Snakeskin Bag
(3671, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(3671, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(3671, 4537, 4, 0, 1, 1, 0, 0, 0, 0),
(3671, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(3671, 9739, 0, 100, 1, 1, 1, 0, 0, 0); -- Gem of Anacondra (qid 914)
-- Lord Cobrahn
DELETE FROM `creature_loot_template` WHERE `entry`=3669;
REPLACE INTO `creature_loot_template` VALUES
(3669, 6465, 60, -1, 1, 1, 0, 0, 0, 0), -- Robe of the Moccasin.
(3669, 6460, 20, -1, 1, 1, 0, 0, 0, 0), -- Cobrahn's Grasp
(3669, 10410, 20, -1, 1, 1, 0, 0, 0, 0), -- Leggings of the Fang
(3669, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(3669, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(3669, 4537, 4, 0, 1, 1, 0, 0, 0, 0),
(3669, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(3669, 9738, 0, 100, 1, 1, 1, 0, 0, 0); -- Gem of Cobrahn (qid 914)
-- Kresh
DELETE FROM `creature_loot_template` WHERE `entry`=3653;
REPLACE INTO `creature_loot_template` VALUES
(3653, 6447, 90, -1, 1, 1, 0, 0, 0, 0), -- Worn Turtle Shell Shield
(3653, 13245, 10, -1, 1, 1, 0, 0, 0, 0), -- Kresh's Back
(3653, 6470, 6, 0, 1, 1, 0, 0, 0, 0), -- Deviate Scale
(3653, 6471, 2, 0, 1, 1, 0, 0, 0, 0), -- Perfect Deviate Scale
(3653, 4555, 30, 0, 1, 1, 0, 0, 0, 0), -- Turtle Loot
(3653, 5523, 30, 0, 1, 1, 0, 0, 0, 0),
(3653, 4556, 15, 0, 1, 1, 0, 0, 0, 0),
(3653, 6361, 8, 0, 1, 2, 0, 0, 0, 0),
(3653, 6443, 0, 80, 1, 1, 0, 0, 0, 0); -- Deviate Hide (qid 1486)
-- Lord Pytha.s
DELETE FROM `creature_loot_template` WHERE `entry`=3670;
REPLACE INTO `creature_loot_template` VALUES
(3670, 6473, 60, -1, 1, 1, 0, 0, 0, 0), -- Armor of the Fang
(3670, 6472, 40, -1, 1, 1, 0, 0, 0, 0), -- Stinging Viper
(3670, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(3670, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(3670, 4537, 4, 0, 1, 1, 0, 0, 0, 0),
(3670, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(3670, 9740, 0, 100, 1, 1, 1, 0, 0, 0); -- Gem of Pythas (qid 914)
-- Skum
DELETE FROM `creature_loot_template` WHERE `entry`=3674;
REPLACE INTO `creature_loot_template` VALUES
(3674, 6448, 50, -1, 1, 1, 0, 0, 0, 0), -- Tail Spike
(3674, 6449, 50, -1, 1, 1, 0, 0, 0, 0), -- Glowing Lizardscale Cloak
(3674, 5128, 50, 0, 1, 1, 0, 0, 0, 0), -- Lizard loot
(3674, 5470, 20, 0, 1, 1, 0, 0, 0, 0),
(3674, 5125, 20, 0, 1, 1, 0, 0, 0, 0),
(3674, 6470, 6, 0, 1, 1, 0, 0, 0, 0), -- Deviate Scale
(3674, 6471, 2, 0, 1, 1, 0, 0, 0, 0), -- Perfect Deviate Scale
(3674, 6443, 0, 80, 1, 1, 0, 0, 0, 0); -- Deviate Hide (qid 1486)
-- Lord Serpentis
DELETE FROM `creature_loot_template` WHERE `entry`=3673;
REPLACE INTO `creature_loot_template` VALUES
(3673, 10411, 25, -1, 1, 1, 0, 0, 0, 0), -- Footpads of the Fang
(3673, 6469, 25, -1, 1, 1, 0, 0, 0, 0), -- Venomstrike
(3673, 6459, 25, -1, 1, 1, 0, 0, 0, 0), -- Savage Trodders
(3673, 5970, 25, -1, 1, 1, 0, 0, 0, 0), -- Serpent Gloves
(3673, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(3673, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(3673, 4537, 4, 0, 1, 1, 0, 0, 0, 0),
(3673, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(3673, 9741, 0, 100, 1, 1, 1, 0, 0, 0); -- Gem of Serpentis (qid 914)
-- Deviate Faerie Dragon
DELETE FROM `creature_loot_template` WHERE `entry`=5912;
REPLACE INTO `creature_loot_template` VALUES
(5912, 5243, 50, -1, 1, 1, 0, 0, 0, 0), -- Firebelcher
(5912, 6632, 50, -1, 1, 1, 0, 0, 0, 0), -- Feyscale Cloak
(5912, 3177, 35, 0, 1, 1, 0, 0, 0, 0), -- Faerie Dragon loot
(5912, 3176, 25, 0, 1, 1, 0, 0, 0, 0),
(5912, 5635, 2, 0, 1, 1, 0, 0, 0, 0),
(5912, 6470, 6, 0, 1, 1, 0, 0, 0, 0), -- Deviate Scale
(5912, 6471, 2, 0, 1, 1, 0, 0, 0, 0), -- Perfect Deviate Scale
(5912, 6443, 0, 80, 1, 1, 0, 0, 0, 0); -- Deviate Hide (qid 1486)
-- Verdan the Everliving
DELETE FROM `creature_loot_template` WHERE `entry`=5775;
REPLACE INTO `creature_loot_template` VALUES
(5775, 6631, 40, -1, 1, 1, 0, 0, 0, 0), -- Living Root
(5775, 6630, 40, -1, 1, 1, 0, 0, 0, 0), -- Seedcloud Buckler
(5775, 6629, 20, -1, 1, 1, 0, 0, 0, 0), -- Sporid Cape
(5775, 2453, 2, -2, 1, 1, 0, 0, 0, 0), -- Drop an herb
(5775, 2447, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 2452, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 785, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 2449, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 2450, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 765, 2, -2, 1, 1, 0, 0, 0, 0),
(5775, 1179, 4, 0, 1, 1, 0, 0, 0, 0), -- Food/drink
(5775, 4605, 4, 0, 1, 1, 0, 0, 0, 0),
(5775, 6470, 6, 0, 1, 1, 0, 0, 0, 0), -- Deviate Scale
(5775, 6471, 2, 0, 1, 1, 0, 0, 0, 0), -- Perfect Deviate Scale
(5775, 6443, 0, 80, 1, 1, 0, 0, 0, 0); -- Deviate Hide (qid 1486)
-- Mutanus the Devourer
DELETE FROM `creature_loot_template` WHERE `entry`=3654;
REPLACE INTO `creature_loot_template` VALUES
(3654, 6461, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Slime-encrusted Pads
(3654, 6463, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Deep Fathom Ring
(3654, 6627, 100/3, -1, 1, 1, 0, 0, 0, 0), -- Mutant Scale Breastplate
(3654, 730, 30, 0, 1, 1, 0, 0, 0, 0), -- Murloc loot
(3654, 1468, 25, 0, 1, 1, 0, 0, 0, 0),
(3654, 5524, 20, 0, 1, 1, 0, 0, 0, 0),
(3654, 17057, 20, 0, 1, 1, 0, 0, 0, 0),
(3654, 5784, 15, 0, 1, 1, 0, 0, 0, 0),
(3654, 6289, 4, 0, 1, 3, 0, 0, 0, 0), -- Food/drink
(3654, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(3654, 6470, 6, 0, 1, 1, 0, 0, 0, 0), -- Deviate Scale
(3654, 6471, 2, 0, 1, 1, 0, 0, 0, 0), -- Perfect Deviate Scale
(3654, 6443, 0, 80, 1, 1, 0, 0, 0, 0), -- Deviate Hide (qid 1486)
(3654, 10441, 100, 0, 1, 1, 1, 0, 0, 0); -- Glowing Shard (starts qid 6981)
-- Deadmines
-- Rhahk'Zor
DELETE FROM `creature_loot_template` WHERE `entry`=644;
REPLACE INTO `creature_loot_template` VALUES
(644, 5187, 95, -1, 1, 1, 0, 0, 0, 0), -- Rhak'zor's Hammer
(644, 872, 5, -1, 1, 1, 0, 0, 0, 0), -- Rockslicer
(644, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(644, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(644, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(644, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- Miner Johnson
DELETE FROM `creature_loot_template` WHERE `entry`=3586;
REPLACE INTO `creature_loot_template` VALUES
(3586, 5444, 65, -1, 1, 1, 0, 0, 0, 0), -- Miner's Cape
(3586, 5443, 35, -1, 1, 1, 0, 0, 0, 0), -- Gold-plated Buckler
(3586, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(3586, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(3586, 414, 4, 0, 1, 1, 0, 0, 0, 0),
(3586, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- Sneeds Shredder
DELETE FROM `creature_loot_template` WHERE `entry`=642;
REPLACE INTO `creature_loot_template` VALUES
(642, 2169, 90, -1, 1, 1, 0, 0, 0, 0), -- Buzzer Blade
(642, 1937, 10, -1, 1, 1, 0, 0, 0, 0), -- Buzz Saw
(642, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(642, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(642, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(642, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(642, 4364, 4, 0, 1, 2, 0, 0, 0, 0), -- Coarse blasting powder
(642, 4359, 2, 0, 1, 2, 0, 0, 0, 0), -- Handful of Copper Bolts
(642, 7365, 0, 100, 1, 1, 1, 0, 0, 0); -- Gnoam Sprecklesprocket (qid 2040)
-- Sneed
DELETE FROM `creature_loot_template` WHERE `entry`=643;
REPLACE INTO `creature_loot_template` VALUES
(643, 5195, 65, -1, 1, 1, 0, 0, 0, 0), -- Gold-flecked Gloves
(643, 5194, 35, -1, 1, 1, 0, 0, 0, 0), -- Taskmaster's Axe
(643, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(643, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(643, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(643, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- Gilnid
DELETE FROM `creature_loot_template` WHERE `entry`=1763;
REPLACE INTO `creature_loot_template` VALUES
(1763, 5199, 55, -1, 1, 1, 0, 0, 0, 0), -- Smelting Pants
(1763, 1156, 45, -1, 1, 1, 0, 0, 0, 0), -- Lavishly Jeweled Ring
(1763, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- cloth and food
(1763, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(1763, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(1763, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- Mr. Smite
DELETE FROM `creature_loot_template` WHERE `entry`=646;
REPLACE INTO `creature_loot_template` VALUES
(646, 5192, 40, -1, 1, 1, 0, 0, 0, 0), -- Thief's Blade
(646, 5196, 40, -1, 1, 1, 0, 0, 0, 0), -- Smite's Reaver
(646, 7230, 20, -1, 1, 1, 0, 0, 0, 0), -- Smite's Mighty Hammer
(646, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(646, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(646, 4541, 4, 0, 1, 1, 0, 0, 0, 0),
(646, 1179, 4, 0, 1, 1, 0, 0, 0, 0);

-- Captain Greenski.n
DELETE FROM `creature_loot_template` WHERE `entry`=647;
REPLACE INTO `creature_loot_template` VALUES
(647, 5201, 40, -1, 1, 1, 0, 0, 0, 0), -- Emberstone Staff
(647, 5200, 30, -1, 1, 1, 0, 0, 0, 0), -- Impaling Harpoon
(647, 10403, 30, -1, 1, 1, 0, 0, 0, 0), -- Blackened Defias Belt
(647, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(647, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(647, 2287, 4, 0, 1, 1, 0, 0, 0, 0),
(647, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- Cookie
DELETE FROM `creature_loot_template` WHERE `entry`=645;
REPLACE INTO `creature_loot_template` VALUES
(645, 5197, 65, -1, 1, 1, 0, 0, 0, 0), -- Cookie's Tenderizer
(645, 5198, 35, -1, 1, 1, 0, 0, 0, 0), -- Cookie's Stirring Rod
(645, 730, 30, 0, 1, 1, 0, 0, 0, 0), -- Murloc loot
(645, 5523, 30, 0, 1, 1, 0, 0, 0, 0),
(645, 17057, 20, 0, 1, 1, 0, 0, 0, 0),
(645, 5784, 15, 0, 1, 1, 0, 0, 0, 0),
(645, 8490, 15, 0, 1, 1, 0, 0, 0, 0), -- Cat Carrier (Siamese)
(645, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(645, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(645, 6289, 4, 0, 1, 3, 0, 0, 0, 0),
(645, 1179, 4, 0, 1, 1, 0, 0, 0, 0);
-- VanCleef
DELETE FROM `creature_loot_template` WHERE `entry`=639;
REPLACE INTO `creature_loot_template` VALUES
(639, 5202, 30, -1, 1, 1, 0, 0, 0, 0), -- Corsair's Overshirt
(639, 5193, 30, -1, 1, 1, 0, 0, 0, 0), -- Cape of the Brotherhood
(639, 10399, 20, -1, 1, 1, 0, 0, 0, 0), -- Blackened Defias Armor
(639, 5191, 20, -1, 1, 1, 0, 0, 0, 0), -- Cruel Barb
(639, 2592, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth and food
(639, 2589, 13, 0, 1, 5, 0, 0, 0, 0),
(639, 414, 4, 0, 1, 1, 0, 0, 0, 0),
(639, 1179, 4, 0, 1, 1, 0, 0, 0, 0),
(639, 2874, 100, 0, 1, 1, 1, 6, 469, 0), -- An Unsent Letter (starts qid 373)
(639, 3637, 0, 100, 1, 1, 1, 0, 0, 0); -- Head of VanCleef (qid 166)
-- Caverndeep Looter
-- www.wowhead.com/?npc=6209
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59' WHERE `entry` = '6209';
update `creature_template` set `faction_a` = 834, `faction_h` =834 where entry = 22408;
delete from `creature` where `id`=3909;

-- forum stuff end

-- random
update pickpocketing_loot_template set chanceorref=100 where item=11602;
update gameobject_loot_template set chanceorref=100 where chanceorref>94 and chanceorref<100;
delete from creature_loot_template where entry=22019;
update creature_loot_template set chanceorref=100 where chanceorref>'100';
update gameobject_loot_template set chanceorref=100 where chanceorref>'100';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9861';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='67', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9862', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='69900', `RewSpell`='0', `SrcItemId`='24504', `QuestFlags`='128', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Howling Wind', `Objectives`='Find someone at the Throne of the Elements that knows how to speak Kalimag and show them the Howling Wind.', `Details`='This amorphous mass of elemental air is speaking to you in a language that you cannot understand. You believe the language to be the tongue of the elements: Kalimag. Perhaps someone at the Throne of the Elements could shed some insight on this unusual find.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24504', `ReqItemCount1`='1', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9861';
UPDATE `quest_template` SET `OfferRewardText`='This is a great victory for the people of Garadar! Well done, $N!', `OfferRewardEmote1` = '5', `OfferRewardEmote2` = '4', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9939';
UPDATE `quest_template` SET `RequestItemsText`='You have something to show me, $N?', `CompleteEmote`='0' WHERE `entry`='10479';
UPDATE `quest_template` SET `OfferRewardText`='You are a strong ally indeed, $N.  Going head to head against the ogres of Outland is not something that just anyone can do.', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='10479';
UPDATE `quest_template` SET `RequestItemsText`='Are you here to collect a reward?', `IncompleteEmote`='6' WHERE `entry`='9935';
UPDATE `quest_template` SET `RequestItemsText`='Have you obtained more warbeads, $N?', `CompleteEmote`='0' WHERE `entry`='10478';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='9868';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='67', `Type`='1', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='87600', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='130', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Totem of Kar\'dash', `Objectives`='Escort the Mag\'har Captive out of Sunspring Post. Speak to Garrosh at Garadar if you succeed.', `Details`='Thank you, stranger. They would have surely killed me had it not been for you.$B$BI was kidnapped by these Murkbloods 3 nights ago during a nighttime raid on Garadar. What I have since uncovered may very well shake the foundation of the Outland: these savages seek to recover the totem of Kar\'dash! We cannot allow the totem to fall into the hands of the Murkbloods!$B$BYou must help me escape. And stranger, if I do not make it back to Garadar, you must tell Garrosh what happened here... ', `EndText`='Free the Mag\'har Captive', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='2', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9868';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='1' WHERE `entry`='9868';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='10074';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='67', `Type`='41', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='37000', `RewMoneyMaxLevel`='69900', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='136', `RewItemId1`='26044', `RewItemCount1`='1', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Oshu\'gun Crystal Powder', `Objectives`='Chief Researcher Amereldine at Halaa wants 20 Oshu\'gun Crystal Powder Samples.', `Details`='This base was the primary draenei research facility for the study of naaru crystals.$B$BWhat we have discovered is a veritable goldmine of research notes about the crystals from the "diamond" mountain, Oshu\'gun. It would seem that everything in this region carries with it some residual powder of the Oshu\'gun crystals. If you find any powder while adventuring in this region, return it to me and I shall reward you with a token of my appreciation which you may use to make purchases from the quartermaster.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='26042', `ReqItemCount1`='20', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='10074';
UPDATE `quest_template` SET `RequestItemsText`='The crystalline powder from the mountain is infused within the earthen core of this region.$B$B', `CompleteEmote`='1' WHERE `entry`='10074';
UPDATE `quest_template` SET `OfferRewardText`='Wonderful, $N. This will help us in our battle against the Alliance filth that have surfaced in the Outland.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='10074';
UPDATE `quest_template` SET `RequestItemsText`='This base was the primary draenei research facility for the study of naaru crystals.$B$BWhat we have discovered is a veritable goldmine of research notes about the crystals from the "diamond" mountain, Oshu\'gun. It would seem that everything in this region carries with it some residual powder of the Oshu\'gun crystals. If you find any powder while adventuring in this region, return it to me and I shall reward you with a token of my appreciation which you may use to make purchases from the quartermaster.', `CompleteEmote`='0' WHERE `entry`='10075';
UPDATE `quest_template` SET `RequestItemsText`='Give it here! Quickly!', `CompleteEmote`='5' WHERE `entry`='9861';
UPDATE `quest_template` SET `OfferRewardText`='It is a distress call, $r. An outside force is attempting to subvert the elements.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9861';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9862';
UPDATE `quest_template` SET `OfferRewardText`='Ah, thank you for the message. Perhaps you would not mind helping out the Earthen Ring? The elements are in flux. We can use all of the assistance that we can get.', `OfferRewardEmote1` = '1', `OfferRewardEmote2` = '1', `OfferRewardEmote3` = '1', `OfferRewardEmote4` = '0' WHERE `entry`='9870';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='15', `DetailsEmote4`='25' WHERE `entry`='9818';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9800';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='15', `DetailsEmote4`='25' WHERE `entry`='9818';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='65', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9819', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='0', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='The Underneath', `Objectives`='Communicate with Gordawg.', `Details`='Something rails the underneath. It beats the ground as if to punish.$B$B*Thud*$B$B<Untrag beats his chest with his fist.>$B$BIt makes this sound a hundred-thousand times. Endlessly it beats. The earth reels. It is calling out to us now.$B$BGordawg speaks to me. Gordawg knows that something forces the elements out. Something from the underneath.$B$BGo now and speak to Gordawg. No, listen to Gordawg, do not speak. Hear Gordawg...', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9818';
UPDATE `quest_template` SET `OfferRewardText`='<Gordawg appears to be nodding at you.>$B$BSit.$B$B', `OfferRewardEmote1` = '0', `OfferRewardEmote2` = '0', `OfferRewardEmote3` = '0', `OfferRewardEmote4` = '0' WHERE `entry`='9818';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9819';
UPDATE `quest_template` SET `RequestItemsText`='Do they sleep?', `IncompleteEmote`='0' WHERE `entry`='9819';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9815';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='66', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='67800', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25560', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25561', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25559', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Muck Diving', `Objectives`='Elementalist Lo\'ap at the Throne of the Elements in Nagrand wants you to retrieve 5 Muck-ridden Cores.', `Details`='The most affected elements of water can be found in the Halaani Basin, southwest of here, beneath the abandoned city of Halaa. While some distressed elements can be destroyed without any impact upon the environment, spawns of muck must be physically removed from the world once destroyed.$B$BYou see, muck spawns leave behind globules of tainted debris that if left untouched will spread and further contaminate the environment.$B$BDestroy these muck spawns and bring back their muck-ridden cores.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24469', `ReqItemCount1`='5', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9815';
UPDATE `quest_template` SET `RequestItemsText`='Do not leave any tainted muck behind!', `CompleteEmote`='1' WHERE `entry`='9815';
UPDATE `quest_template` SET `DetailsEmote1`='0', `DetailsEmote2`='0', `DetailsEmote3`='0', `DetailsEmote4`='0' WHERE `entry`='9800';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='65', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='9804', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='66000', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='136', `RewItemId1`='24421', `RewItemCount1`='20', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='0', `RewChoiceItemCount1`='0', `RewChoiceItemId2`='0', `RewChoiceItemCount2`='0', `RewChoiceItemId3`='0', `RewChoiceItemCount3`='0', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='A Rare Bean', `Objectives`='Elementalist Lo\'ap at the Throne of the Elements in Nagrand wants you to bring him 15 Digested Caracoli.', `Details`='You are ill-equipped to face the restless elements of Nagrand. Before you can help the Earthen Ring, you must help yourself.$B$BTo the west you will find dung heaps left behind by the wildlife of Nagrand. You must search the dung for the digested remnants of the Nagrand caracoli. From this bean I am able to make a tablet that will aid you in your battle against the restless forces of nature.$B$BReturn to me when you have collected no less than two fists worth of caracoli... Ogre sized fists.', `EndText`='', `ReqCreatureOrGOId1`='0', `ReqCreatureOrGOCount1`='0', `ReqItemId1`='24419', `ReqItemCount1`='15', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9800';
UPDATE `quest_template` SET `RequestItemsText`='Do not leave any tainted muck behind!', `CompleteEmote`='1' WHERE `entry`='9815';
UPDATE `quest_template` SET `RequestItemsText`='<Elementalist Lo\'ap makes two fists and shakes his head in disapproval.>$B$BOgre sized...', `CompleteEmote`='1' WHERE `entry`='9800';
UPDATE `quest_template` SET `DetailsEmote1`='1', `DetailsEmote2`='1', `DetailsEmote3`='1', `DetailsEmote4`='0' WHERE `entry`='9862';
-- UPDATE `quest_template` SET `ZoneOrSort`='3518', `QuestLevel`='67', `Type`='0', `RequiredMinRepFaction`='0', `RequiredMinRepValue`='0', `NextQuestInChain`='0', `RewOrReqMoney`='0', `RewMoneyMaxLevel`='69900', `RewSpell`='0', `SrcItemId`='0', `QuestFlags`='136', `RewItemId1`='0', `RewItemCount1`='0', `RewItemId2`='0', `RewItemCount2`='0', `RewItemId3`='0', `RewItemCount3`='0', `RewItemId4`='0', `RewItemCount4`='0', `RewChoiceItemId1`='25566', `RewChoiceItemCount1`='1', `RewChoiceItemId2`='25565', `RewChoiceItemCount2`='1', `RewChoiceItemId3`='25567', `RewChoiceItemCount3`='1', `RewChoiceItemId4`='0', `RewChoiceItemCount4`='0', `RewChoiceItemId5`='0', `RewChoiceItemCount5`='0', `RewChoiceItemId6`='0', `RewChoiceItemCount6`='0', `PointMapId`='0', `PointX`='0.000000', `PointY`='0.000000', `PointOpt`='0', `Title`='Murkblood Corrupters', `Objectives`='Elementalist Morgh at the Throne of the Elements in Nagrand wants you to slay 8 Murkblood Putrifiers.', `Details`='Murkblood are capturing and torturing the spirits of air! Murkblood are my kin: A tribe of the Broken who serve the vile Musel\'ek, beast lord of Coilfang.$B$BThe air spirit states that the Murkblood putrifiers are capturing other spirits of air and using them to sow chaos into the ranks of the elements. It would seem that the Murkblood have recently sacked an orc village to the southwest known as Sunspring and are using powerful elemental magic to disturb the lake. Find the putrifiers and destroy them.', `EndText`='', `ReqCreatureOrGOId1`='18202', `ReqCreatureOrGOCount1`='8', `ReqItemId1`='0', `ReqItemCount1`='0', `ReqCreatureOrGOId2`='0', `ReqCreatureOrGOCount2`='0', `ReqItemId2`='0', `ReqItemCount2`='0', `ReqCreatureOrGOId3`='0', `ReqCreatureOrGOCount3`='0', `ReqItemId3`='0', `ReqItemCount3`='0', `ReqCreatureOrGOId4`='0', `ReqCreatureOrGOCount4`='0', `ReqItemId4`='0', `ReqItemCount4`='0', `ObjectiveText1`='', `ObjectiveText2`='', `ObjectiveText3`='', `ObjectiveText4`='', `Method`='2', `SuggestedPlayers`='0', `RequiredMaxRepFaction`='0', `RequiredMaxRepValue`='0' WHERE `entry`='9862';
UPDATE `quest_template` SET `RequestItemsText`='The air spirit claims that the Murkblood are searching for something at Sunspring...', `IncompleteEmote`='0' WHERE `entry`='9862';

-- 
update creature_template set subname='Master Jewelcrafting Trainer' where entry='19063';
update creature_template set subname='Alchemy Trainer' where entry='3184';
update creature_template set subname='Herbalism Trainer' where entry='3185';
update creature_template set subname='Riding Trainer' where entry='7953';
update creature_template set subname='Blacksmithing Trainer' where entry='15400';
update creature_template set subname='Alchemy Trainer' where entry='16161';
update creature_template set subname='Enchanting Trainer' where entry='16160';
update creature_template set subname='Herbalism Trainer & Supplies' where entry='16367';
update creature_template set subname='Tailoring Trainer' where entry='16366';
update creature_template set subname='Jewelcrafting Trainer' where entry='15501';
update creature_template set subname='Mining Trainer' where entry='3175';
update creature_template set subname='Engineering Trainer' where entry='11025';
update creature_template set subname='Blacksmithing Trainer' where entry='3174';
update gameobject_template set data1='0' where entry='180516';
update gameobject_template set data3='5' where entry='182958';
update gameobject_template set data3='5' where entry='182959';
update gameobject_template set data3='0' where entry='180516';
update gameobject_template set data2='3' where entry='182958';
update gameobject_template set data2='3' where entry='182959';
update npc_text set em0_1='1' where id='7787';
update npc_text set em0_1='6' where id='8413';
update npc_text set em0_1='1' where id='9598';
update npc_text set em0_1='25' where id='9595';
update npc_text set em0_1='1' where id='9181';
update npc_text set em0_1='6' where id='9182';
update npc_text set em0_1='1' where id='9180';
update npc_text set em0_1='1' where id='9183';
update npc_text set text0_0='These Runestones protect the lands in Eversong from becoming tainted by the Scourge.  The Western Runestone failed long ago, forcing us to burn the ground around it.$B$BAs long as I live I won\'t allow the remaining Runestones to fail us.  That is my oath.' where id='8504';
update npc_text set text0_0='What are you looking at, $glad : lass;?  Never seen a dwarf before, then?$B$BYou\'d best be on yer way if you don\'t want any trouble.' where id='8239';
update npc_text set em0_0='0' where id='7787';
update npc_text set em0_0='0' where id='8413';
update npc_text set em0_0='0' where id='9598';
update npc_text set em0_0='0' where id='9595';
update npc_text set em0_0='0' where id='9181';
update npc_text set em0_0='0' where id='9182';
update npc_text set em0_0='0' where id='9180';
update npc_text set em0_0='0' where id='9183';
update gameobject_template set data4='1628' where entry='182958';
update gameobject_template set data4='1628' where entry='182959';
update gameobject_template set data0='0' where entry='180516';
update gameobject_template set data6='588' where entry='176310';
update gameobject_template set data1='0' where entry='22794';
update npc_text set prob0='1' where id='8504';
update npc_text set prob0='1' where id='8239';
update npc_text set prob0='1' where id='8534';
update npc_text set prob0='1' where id='8403';
update npc_text set prob0='1' where id='8413';
update npc_text set text0_1='' where id='8504';
update npc_text set text0_1='It\'s been a long day of cutting down the mindless Scourge that endlessly parade down the Dead Scar.  I hope you\'re here to lend a hand and not to waste my time with idle chatter.' where id='8403';
update npc_text set text0_1='Krumn is the bull you are looking for. He can be found on the lower rise at Thunder Bluff Civic Information.' where id='1291';
update npc_text set text0_1='Huh?  You\'ll find the bank in Orgrimmar.  Head north up the road to get there and then talk to one of their grunts.' where id='4032';
update npc_text set text0_1='Look for Tarshaw Jaggedscar in the barracks on the east side of town.' where id='4019';
replace into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10196','1','Look no further than Saltheril\'s little celebration if you\'re after the enchanter Eredania. She received her invitation a few days ago.','Look no further than Saltheril\'s little celebration if you\'re after the enchanter Eredania. She received her invitation a few days ago.','1','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
replace into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10220','1','Go to the Hunter Rise. You will find the battlemasters there.','Go to the Hunter Rise. You will find the battlemasters there.','1','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');

-- Quest error
UPDATE `quest_template` SET `SrcItemCount`=1 WHERE `entry`=10909;
-- Wrong gameobject. New content guessed until we have the real content
DELETE FROM `gameobject_template` WHERE `entry`=19543;
INSERT IGNORE INTO `gameobject_template` VALUES (19543,6,0,'Deepmoss Eggs trap',14,0,1,0,0,0,6629,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `ExtendedCost`, `CondExtendedCost`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('33083','0','8','-1','Orcish Grog','46142','1','65600','1','10','0','0','-1','-1','5','0','0','0','0','0','0','0','0','1','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','42391','0','-1','0','10000','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','This doesn\'t do a body good....','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');

-- Added creatures
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(12859, 23386, 530, 0, 0, 2726.33, 7269.77, 368.585, 1.61556, 25, 0, 0, 2726.33, 7269.77, 368.585, 0, 6930, 0, 0, 0),
(28456, 23386, 530, 0, 0, 2712.59, 7283.42, 368.585, 6.2447, 25, 0, 0, 2712.59, 7283.42, 368.585, 0, 6930, 0, 0, 0),
(48038, 23386, 530, 0, 0, 2726.13, 7296.88, 368.585, 4.76658, 25, 0, 0, 2726.13, 7296.88, 368.585, 0, 6930, 0, 0, 0),
(51611, 23386, 530, 0, 0, 2739.87, 7283.23, 368.585, 3.12039, 25, 0, 0, 2739.87, 7283.23, 368.585, 0, 6930, 0, 0, 0),
(51612, 23386, 530, 0, 0, 2730.66, 7279.7, 368.832, 2.3829, 25, 0, 0, 2730.66, 7279.7, 368.832, 0, 6930, 0, 0, 0),
(51613, 23386, 530, 0, 0, 2722.64, 7287.3, 368.74, 5.49307, 25, 0, 0, 2722.64, 7287.3, 368.74, 0, 6930, 0, 0, 0),
(51614, 23386, 530, 0, 0, 2546.68, 7050.09, 367.955, 5.50093, 25, 0, 0, 2546.68, 7050.09, 367.955, 0, 6930, 0, 0, 0),
(51615, 23386, 530, 0, 0, 2546.97, 7019.78, 367.955, 5.41296, 25, 0, 0, 2546.97, 7019.78, 367.955, 0, 6930, 0, 0, 0),
(53046, 23386, 530, 0, 0, 2537.91, 7026.47, 367.955, 1.95878, 25, 0, 0, 2537.91, 7026.47, 367.955, 0, 6930, 0, 0, 0),
(53047, 23386, 530, 0, 0, 2525.75, 7039.37, 367.955, 5.11765, 25, 0, 0, 2525.75, 7039.37, 367.955, 0, 6930, 0, 0, 0),
(55133, 23386, 530, 0, 0, 2518.28, 7020.29, 367.955, 3.93876, 25, 0, 0, 2518.28, 7020.29, 367.955, 0, 6930, 0, 0, 0),
(82671, 23386, 530, 0, 0, 2513.04, 7044.2, 367.955, 0.601606, 25, 0, 0, 2513.04, 7044.2, 367.955, 0, 6930, 0, 0, 0),
(84226, 23386, 530, 0, 0, 2115.15, 7122.04, 364.771, 3.26332, 25, 0, 0, 2115.15, 7122.04, 364.771, 0, 6930, 0, 0, 0),
(84228, 23386, 530, 0, 0, 2101.02, 7108.28, 364.771, 1.2637, 25, 0, 0, 2101.02, 7108.28, 364.771, 0, 6930, 0, 0, 0),
(84232, 23386, 530, 0, 0, 2105.56, 7117.29, 364.771, 2.43787, 25, 0, 0, 2105.56, 7117.29, 364.771, 0, 6930, 0, 0, 0),
(84233, 23386, 530, 0, 0, 2094.53, 7129.54, 364.771, 5.45222, 25, 0, 0, 2094.53, 7129.54, 364.771, 0, 6930, 0, 0, 0),
(84236, 23386, 530, 0, 0, 2086.27, 7122.9, 364.771, 5.99729, 25, 0, 0, 2086.27, 7122.9, 364.771, 0, 6930, 0, 0, 0),
(84237, 23386, 530, 0, 0, 2101.22, 7137.61, 364.771, 4.56865, 25, 0, 0, 2101.22, 7137.61, 364.771, 0, 6930, 0, 0, 0),
(84238, 23386, 530, 0, 0, 1943.92, 7359.26, 364.47, 3.31594, 25, 0, 0, 1943.92, 7359.26, 364.47, 0, 6930, 0, 0, 0),
(84702, 23386, 530, 0, 0, 1934.86, 7354.13, 364.47, 2.62087, 25, 0, 0, 1934.86, 7354.13, 364.47, 0, 6930, 0, 0, 0),
(84703, 23386, 530, 0, 0, 1928.65, 7342.86, 364.47, 1.56136, 25, 0, 0, 1928.65, 7342.86, 364.47, 0, 6930, 0, 0, 0),
(84704, 23386, 530, 0, 0, 1913.64, 7359.83, 364.471, 0.0667496, 25, 0, 0, 1913.64, 7359.83, 364.471, 0, 6930, 0, 0, 0),
(84705, 23386, 530, 0, 0, 1922.89, 7365.65, 364.471, 5.51427, 25, 0, 0, 1922.89, 7365.65, 364.471, 0, 6930, 0, 0, 0),
(84706, 23386, 530, 0, 0, 1928.85, 7374.8, 364.471, 4.82312, 25, 0, 0, 1928.85, 7374.8, 364.471, 0, 6930, 0, 0, 0); 

-- spawn for Corrupt Minor Manifestation of Water
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `spawn_position_x`, `spawn_position_y`, `spawn_position_z`, `spawn_orientation`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(84707, 5894, 0, 0, 0, 427.39, 1821.41, 10.38, 2.11, 190, 0, 0, 427.39, 1821.41, 10.38, 2.11, 520, 545, 0, 0);
-- invisibility aura
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(84707, 0, 0, 0, 0, 0, '8203 0');

INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`spawn_position_x`,`spawn_position_y`,`spawn_position_z`,`spawn_orientation`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84708, 21976, 530, 0, 0, 3053.05, 3691.84, 156.225, 5.92452, 300, 0, 0, 3053.05, 3691.84, 156.225, 0, 11178, 3155, 0, 1),
(84709, 21976, 530, 0, 0, 2974.63, 3686.09, 157.646, 3.35234, 300, 0, 0, 2974.63, 3686.09, 157.646, 0, 11178, 3155, 0, 1),
(84710, 21976, 530, 0, 0, 3005.08, 3737.22, 155.901, 3.00284, 300, 0, 0, 3005.08, 3737.22, 155.901, 0, 11178, 3155, 0, 1),
(84711, 21976, 530, 0, 0, 3072.53, 3728.25, 154.773, 4.59327, 300, 0, 0, 3072.53, 3728.25, 154.773, 0, 11178, 3155, 0, 1),
(84712, 21976, 530, 0, 0, 3102.53, 3658.58, 154.721, 0.989135, 300, 0, 0, 3102.53, 3658.58, 154.721, 0, 11178, 3155, 0, 1);

-- Some Go added
DELETE FROM `gameobject` WHERE `id`='184320';
INSERT IGNORE INTO `gameobject` VALUES (21507, 184320, 530, 3310.41, 1335.71, 505.56, 3.53314, 0, 0, 0.980897, -0.194528, 10, 0, 1);
INSERT IGNORE INTO gameobject VALUES (21508, 179912, 0, 234.683, -2127.22, 119.316, 5.56797, 0, 0, 0.350036, -0.936736, 25, 0, 1);

-- spawn object and increase size to above link
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(21509, 182054, 546, -90.528, -401.925, 36.1527, 5.13311, 0, 0, 0.543868, -0.839171, 360, 100, 1);

-- bg from griffon
INSERT INTO `gameobject` (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
    (21510,'184876', '566', '2267.59', '1746.29', '1224.29', '0.855211', '0', '0', '0.414693', '0.909961', '180', '100', '1'),
    (21512,'184878', '566', '2298.64', '1747.62', '1224.29', '2.42601', '0', '0', '0.936672', '0.350208', '180', '100', '1'),
    (21513,'184899', '566', '2273.81', '1748.2', '1215.42', '1.09956', '0', '0', '0.522499', '0.85264', '180', '100', '1'),
    (21514,'184902', '566', '2291.23', '1748.2', '1215.42', '2.06821', '0', '0', '0.859406', '0.511293', '180', '100', '1'),
    (21515,'184873', '566', '2283.71', '1749.25', '1200.12', '1.74533', '0', '0', '0.766044', '0.642788', '180', '100', '1'),
    (21516,'184877', '566', '2268.95', '1745.03', '1224.29', '0.855211', '0', '0', '0.414693', '0.909961', '180', '100', '1'),
    (21517,'184879', '566', '2299.9', '1748.98', '1224.29', '2.42601', '0', '0', '0.936672', '0.350208', '180', '100', '1'),
    (21518,'184903', '566', '2296.72', '1753.84', '1215.42', '2.67035', '0', '0', '0.97237', '0.233445', '180', '100', '1'),
    (21519,'184898', '566', '2268.17', '1753.7', '1215.42', '0.49742', '0', '0', '0.246154', '0.969231', '180', '100', '1'),
    (21520,'184900', '566', '2278.57', '1746.17', '1215.42', '1.28282', '0', '0', '0.598325', '0.801253', '180', '100', '1'),
    (21521,'184901', '566', '2286.44', '1746.28', '1215.42', '1.88496', '0', '0', '0.809017', '0.587785', '180', '100', '1'),
    (21522,'184082', '566', '2282.12', '1760.01', '1189.71', '1.91986', '0', '0', '0.819152', '0.573576', '180', '100', '1'),
    (21523,'184881', '566', '2265', '1775.98', '1224.29', '-0.715584', '0', '0', '-0.350207', '0.936672', '180', '100', '1'),
    (21528,'184884', '566', '2264.05', '1760.16', '1224.24', '0.052359', '0', '0', '0.026176', '0.999657', '180', '100', '1'),
    (21529,'184897', '566', '2266.25', '1758.49', '1215.42', '0.31416', '0', '0', '0.156435', '0.987688', '180', '100', '1'),
    (21530,'184883', '566', '2264.01', '1762.01', '1224.24', '0.052359', '0', '0', '0.026176', '0.999657', '180', '100', '1'),
    (21531,'184880', '566', '2266.26', '1777.34', '1224.29', '-0.715584', '0', '0', '-0.350207', '0.936672', '180', '100', '1'),
    (21532,'184891', '566', '2298.65', '1766.46', '1215.42', '-2.82743', '0', '0', '0.987688', '-0.156434', '180', '100', '1'),
    (21533,'184886', '566', '2282.66', '1781.07', '1224.27', '-1.65806', '0', '0', '-0.737277', '0.67559', '180', '100', '1'),
    (21534,'184894', '566', '2286.33', '1778.78', '1215.42', '-1.85878', '0', '0', '-0.801253', '0.598325', '180', '100', '1'),
    (21535,'184885', '566', '2278.97', '1780.7', '1224.27', '-1.40499', '0', '0', '-0.646124', '0.763232', '180', '100', '1'),
    (21536,'184887', '566', '2279.09', '1754.72', '1224.17', '2.74017', '0', '0', '0.979925', '0.199368', '180', '100', '1'),
    (21537,'184888', '566', '2276.12', '1759.02', '1224.14', '-2.70526', '0', '0', '0.976296', '-0.216439', '180', '100', '1'),
    (21538,'184889', '566', '2278.66', '1770.81', '1224.17', '-2.70526', '0', '0', '0.976296', '-0.216439', '180', '100', '1'),
    (21539,'184890', '566', '2277.24', '1764.29', '1224.13', '2.94961', '0', '0', '0.995396', '0.095846', '180', '100', '1'),
    (21540,'184893', '566', '2291.09', '1776.75', '1215.42', '-2.04203', '0', '0', '-0.85264', '0.522499', '180', '100', '1'),
    (21541,'184874', '566', '2295.95', '1779.92', '1224.29', '-2.28638', '0', '0', '0.909961', '-0.414693', '180', '100', '1'),
    (21542,'184875', '566', '2297.31', '1778.67', '1224.29', '-2.28638', '0', '0', '0.909961', '-0.414693', '180', '100', '1'),
    (21543,'184904', '566', '2298.75', '1758.59', '1215.42', '2.85361', '0', '0', '0.989651', '0.143492', '180', '100', '1'),
    (21544,'184882', '566', '2300.44', '1765.92', '1224.24', '-2.28638', '0', '0', '0.909961', '-0.414693', '180', '100', '1'),
    (21545,'184895', '566', '2278.46', '1778.68', '1215.42', '-1.25664', '0', '0', '-0.587786', '0.809017', '180', '100', '1'),
    (21546,'184896', '566', '2273.67', '1776.75', '1215.42', '-1.07338', '0', '0', '-0.511293', '0.859407', '180', '100', '1'),
    (21547,'184892', '566', '2296.73', '1771.26', '1215.42', '-2.64417', '0', '0', '0.969231', '-0.246153', '180', '100', '1'),
    (21548,'184083', '566', '2301.01', '1386.93', '1197.18', '1.5708', '0', '0', '0.707107', '0.707107', '180', '100', '1'),
    (21549,'184080', '566', '2050.49', '1372.24', '1194.56', '1.71042', '0', '0', '0.75471', '0.656059', '180', '100', '1'),
    (21550,'184081', '566', '2024.600708','1742.819580','1195.157715','2.443461','0','0','0.939693','0.342020','180','100','1');

-- Pamela's Doll's Trap
INSERT IGNORE INTO `gameobject` VALUES (21551, 176117, 0, 1411.16, -3657.82, 77.694, -1.6057, 0, 0, 0.71934, -0.694658, 60, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21552, 176117, 0, 1476.28, -3722, 80.5144, 1.44862, 0, 0, 0.66262, 0.748956, 60, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21602, 176117, 0, 1405.48, -3716.77, 78.1764, 2.58309, 0, 0, 0.961262, 0.275637, 60, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21603, 176117, 0, 1423.47, -3663.76, 82.02, -1.55334, 0, 0, 0.700909, -0.71325, 60, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21604, 176117, 0, 1477.12, -3716.01, 80.5158, 2.46091, 0, 0, 0.942641, 0.333807, 60, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21605, 176117, 0, 1407.58, -3680.22, 77.2517, -0.890118, 0, 0, 0.430511, -0.902585, 60, 100, 1);

-- Case of Orcish Grog
INSERT IGNORE INTO `gameobject` VALUES (21606, 186302, 530, 6778.25, -7581.16, 128.062, 5.68206, 0, 0, 0.296057, -0.95517, 300, 0, 1);

-- Couronne (...? Possible french for Wreath)
INSERT IGNORE INTO `gameobject` VALUES (21607, 186315, 1, -3533.68, -4317.43, 7.03529, 6.02177, 0, 0, 0.130333, -0.99147, -180, 0, 1);
-- Q Peace at Last
DELETE FROM `event_scripts` WHERE `id`=15385;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(15385, 1, 9, 21607, 180, '', 0, 0, 0, 0),
(15385, 3, 10, 23768, 180000, '', -3532.56, -4316.76, 7.04, 2.98),
(15385, 3, 10, 23769, 180000, '', -3533.17, -4318.34, 7.05, 2.51);

INSERT IGNORE INTO `gameobject` VALUES (21608, 180327, 309, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21609, 180327, 309, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1);
INSERT IGNORE INTO `gameobject` VALUES (21610, 180327, 309, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1);
UPDATE `gameobject` SET `spawntimesecs`=7200 WHERE `id`=180327;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES 
(28704, 5, 10, 15082, 900000, '', '-11901.35', '-1906.52', '65.36', '0.87'),
(21608, 5, 10, 15083, 900000, '', '-11901.35', '-1906.52', '65.36', '0.87'),
(21609, 5, 10, 15084, 900000, '', '-11901.35', '-1906.52', '65.36', '0.87'),
(21610, 5, 10, 15085, 900000, '', '-11901.35', '-1906.52', '65.36', '0.87');
INSERT IGNORE INTO `game_event_gameobject` VALUES (28704,29);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21608,30);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21609,31);
INSERT IGNORE INTO `game_event_gameobject` VALUES (21610,32);

-- EAI 0.0.4 additions
-- Boss Ambassador Hellmaw (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 18731;
-- Boss Deadmines (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (645,1763,599);
-- Boss Ghazan (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 18105;
-- Boss Rokmar (Non-Heroic) (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 17991;
-- Boss Wailing Caverns (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` = 3654;
-- Blacktemple Mobs (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (22878,22881,22873,22875,22876,22877,22884,22853,22954,22855,23337,22869,23339,22846,22849,22845,22844,22883,22953,22880,22945,22882,23216,23523,23524,23318);
-- Blackwing Lair (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (12457,13996,12459,14263,12467,12463,12461,12464,12460,12465,14262,14264,12557);
UPDATE `creature_template` SET `resistance4`= '200', `resistance6` = '200' WHERE `entry` = 14261;
UPDATE `creature_template` SET `resistance3`='500' WHERE `entry` = 14262;
UPDATE `creature_template` SET `resistance2`='500' WHERE `entry` = 14264;
-- Boss Wailing Caverns (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (19389,21350);
-- Mob Serpent Shrine (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (21246,21339,21221,21224,21227,21228,21226,21225,21298,21299);
-- Mob The Eye (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (20043,20034,20033,20046,20032,20031,20039,20041,20052);
-- Mob Uldaman (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (7206,7291,6910,4854,7011,7012,7030,4847,4860,4853,4852);
-- Mobs Zulgrub (SimpleAI Conversion)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (11350,11830,11372,11351,11352,11340,14750);
-- Corrupt Earth Totem
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 21704;
--  Hatefury Satyr
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (4670,4671,4672,4673,4674,4675);
-- Eclipsion Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' where `entry` in (19796, 19806, 22018, 19792, 20502, 22016, 22017);
-- Earthen Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' where `entry` in (7396, 7397);
-- Underbog Thrash Mobs
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` IN (17723, 17735, 17727, 17726, 17728, 17871, 17725, 17734, 17724, 17729, 17771, 17730, 17731, 17732, 19632);
-- Eldreth Trash Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (11471, 14398, 11475, 11469, 11470, 11473, 11472, 11471, 14398, 11475, 11469, 11470, 11473, 11472);
-- Blood Furnance Trash Mobs
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (17397.17477,17399,17626,17624,17370,17416,17491,17414,17371,17395);
-- Kaz'rogal
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 17888;
-- Whitebark's Spirit
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 19456;
-- Hazzali Sillithid
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (5454,5450,5453,5441,5451);
UPDATE `creature_template` SET `faction_A` = '310', `faction_H` = '310' WHERE `entry` = '4196';
-- Shy-Rotam
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 10737;
-- Bayne
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 10356;
-- Expedition Researcher
UPDATE `creature_template` SET `scriptname`='mob_eventai' WHERE `entry` = 17681;
-- The Stockade Instance
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (1716,1707,1711,1708,1715,1706,1663,1717,1666,1696);
-- The Deadmines Instance
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (636,619,1729,594,122,590,1726,598,634,589,657,1732,4416,4417,1725,4418,1731,622,641,647,639,646);
-- Hellfire Citadel
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (17270, 17269, 17478, 17455, 17271, 17259, 17264, 17280, 17281, 17517, 17309);
-- Black Temple Trash (Non-SimpleAI)
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (23018, 23083, 22879, 23049, 23047, 23400, 23403, 23397, 23402, 22962, 22957,22959, 22955, 22939, 22964, 22956, 23237, 23235, 23236, 23196, 22874, 22885);
-- Hyjal Friendly NPC's
UPDATE `creature_template` SET ScriptName='mob_eventai' where entry in (17919, 17920, 17928, 17922, 17932, 17936, 17935, 17933);
-- Botanica Trash Mobs
UPDATE `creature_template` SET ScriptName='mob_eventai' where entry in (17993,19633,20083,18419,18405,18421,19486,18422,18404,17994,19511,19512,18420,19843,19508,19509,19505,19507,19513,19865);
-- Darkwater Crocolisk
UPDATE `creature_template` SET ScriptName='mob_eventai' where entry in (20075,17952);


-- EAI no more
-- SD2 stuff
-- 304
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (15440, 15612);
-- 307
UPDATE `creature_template` SET `ScriptName` = 'npcs_dithers_and_arbington' WHERE `entry` IN (11056, 11057);
UPDATE `creature_template` SET `ScriptName` = 'npc_witch_doctor_mauari' WHERE `entry` = 10307;
UPDATE `creature_template` SET `ScriptName` = 'npcs_riverbreeze_and_silversky' WHERE `entry` IN (9528, 9529);
UPDATE `creature_template` SET `ScriptName` = 'npc_sayge' WHERE `entry` = 14822;
-- 308
UPDATE `creature_template` SET `ScriptName` = 'npc_nat_pagle' WHERE `entry` = 12919;
-- 309
UPDATE `creature_template` SET `ScriptName` = 'mob_webbed_creature' WHERE `entry` = 17680;
-- 311
UPDATE `creature_template` SET `ScriptName` = 'npc_invis_legion_teleporter' WHERE `entry` = 21807;
-- 312
UPDATE `creature_template` SET `ScriptName` = 'npc_captured_sunhawk_agent' WHERE `entry` = 17824;
UPDATE `creature_template` SET `ScriptName` = 'npc_neltharaku' WHERE `entry` = 21657;
-- 318
UPDATE `creature_template` SET `ScriptName` = 'npcs_flanis_swiftwing_and_kagrosh' WHERE `entry` IN (21725, 21727);

-- SD2 stuff end

-- Cleanup
-- update `gameobject_template` SET `flags`=`flags`&~4 WHERE `type`=10;
-- update `gameobject_template` SET `flags`=`flags`|4 WHERE `type`=10 AND `data1`>0;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry`;
UPDATE `gameobject` SET `state`=0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type`=0 AND `data0`=1);
-- UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- And finally db_version UPDATE
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.9.3 (346) with SD2 calls rev.323');
-- END

