-- Start update pack 351 -- 2008-05-11

-- forum
-- Update Grunter faction
UPDATE `creature_template` SET `faction_A`= 14, `faction_H` = 14 WHERE `entry` = 8303;
-- Darkwater Crocolisk shouldn't give Keepers of Time rep like a Rift Lord
DELETE FROM `creature_onkill_reputation` WHERE (`creature_id` = '20075');
-- deleting lower guid of double spawns
DELETE FROM `creature` WHERE `guid`=94281;
DELETE FROM `creature_addon` WHERE `guid`=94281;
DELETE FROM `creature` WHERE `id` = '22419';
UPDATE `npc_vendor` SET `item` = '20824' WHERE `npc_vendor`.`entry` =19539 AND `npc_vendor`.`item` =20284;
-- Tyrith should look dead
DELETE FROM `creature_template_addon` WHERE (`entry` = '24822');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('24822', '0', '16777472', '0', '4097', '0', '29266 0 29266 1');
-- correct creature_involvedrelation (end quest)
UPDATE `creature_involvedrelation` SET `id` = '24822' WHERE `quest` = '11488';
update quest_template set prevquestid = 984 where entry = 4761;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=729;
UPDATE `quest_template` SET `MinLevel`=14 WHERE `entry` IN (729,730);
UPDATE `quest_template` SET `MinLevel`=15 WHERE `entry` IN (731,741,942,943);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=2038;
-- One Fel Iron Deposit is under the ground
UPDATE `gameobject` SET `position_z` = '-22.9565' WHERE (`guid` = '40106');
UPDATE `gameobject` SET `animprogress` = '100' WHERE (`id` = '181555');
-- Grishna Raven shouldn't have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '20327';
DELETE FROM `creature_loot_template` WHERE `entry` = '20327';
UPDATE `creature_template` SET `npcflag`=`npcflag`&~1 WHERE `npcflag`=`npcflag`|4194304;
update creature_template set npcflag=npcflag|1 where entry=16418;
-- deleting standing one´s guid of double spawns
DELETE FROM `creature` WHERE `guid` = '94049';
DELETE FROM `creature_addon` WHERE `guid`= '94049';
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(23437, 35765, 0, 0, 0),
(23437, 35763, 0, 0, 0),
(23437, 35762, 0, 0, 0),
(23437, 35764, 0, 0, 0),
(23437, 32292, 0, 0, 0);
INSERT IGNORE INTO `creature_loot_template` (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, freeforall) VALUES (15623, 21145, -100, 1, 1, 1);
-- correcting spawns z-coordinates of creatures Yrma, Shattered Sun Archmage, Theremis
UPDATE `creature` SET `position_z` = '18.958057' WHERE `guid` = '90942';
UPDATE `creature` SET `position_z` = '18.958059' WHERE `guid` = '93970';
UPDATE `creature` SET `position_z` = '18.988417' WHERE `guid` = '93971';
-- Supremus
UPDATE `creature_template` SET
`minlevel` = '73',
`maxlevel` = '73',
`mindmg` = '14936',
`maxdmg` = '21118',
`minhealth` = '4552800',
`maxhealth` = '4552800',
`minmana` = '0',
`maxmana` = '0',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
`armor` = '7684',
`resistance2` = '210',
`spell1` = '41581',
`spell2` = '41926',
`spell3` = '40126',
`spell4` = '40276'
WHERE `entry` = '22898';
update creature_template set flags=flags&~2056;
-- Teron Gorefiend
UPDATE `creature_template` SET
`minlevel` = '73',
`maxlevel` = '73',
`mindmg` = '19702',
`maxdmg` = '27828',
`minhealth` = '5007750',
`maxhealth` = '5007750',
`minmana` = '1693500',
`maxmana` = '1693500',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
`armor` = '6194'
WHERE `entry` = '22871';
UPDATE creature SET position_x='8069.974609',position_y='-2283.296143',position_z='496.970612'
,orientation='2.441151' WHERE guid='51869';
DELETE FROM `gameobject` WHERE `guid` = '24059';
UPDATE `quest_template` SET `PrevQuestId`=9469 WHERE `entry`=9476;
UPDATE `npc_trainer` SET `spell`=33943 WHERE `spell`=33950;
-- Splinterbone Skeleton shouldn't have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '7343';
DELETE FROM `creature_loot_template` WHERE `entry` = '7343';
-- Quest Fix Force Commander Danath
Update `quest_template` set `OfferRewardText`='Well met, my $gbrother:sister;. I''m glad you''ve come. I am Danath - leader of the Sons of Lothar, and force commander of this hold.' where `entry`='10254';
UPDATE `item_template` SET `Duration` = -900 WHERE `entry` = 30314;
INSERT IGNORE INTO `creature_loot_template` VALUES
(22241, 34248, -15, 0, 1, 1, 0, 0, 0, 0),
(22242, 34248, -15, 0, 1, 1, 0, 0, 0, 0),
(22243, 34248, -15, 0, 1, 1, 0, 0, 0, 0),
(22244, 34248, -15, 0, 1, 1, 0, 0, 0, 0);
-- Level 70 PvP Rare Set's 2
-- Alurmi <Keepers of Time Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(21643, 35402),
(21643, 35414),
(21643, 35356),
(21643, 35328),
(21643, 35346),
(21643, 35363),
(21643, 35334),
(21643, 35369),
(21643, 35338),
(21643, 35410),
(21643, 35384),
(21643, 35390),
(21643, 35393),
(21643, 35376),
(21643, 35372);

-- Quartermaster Urgronn <Thrallmar Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(17585, 35406),
(17585, 35413),
(17585, 35360),
(17585, 35332),
(17585, 35343),
(17585, 35364),
(17585, 35337),
(17585, 35366),
(17585, 35339),
(17585, 35409),
(17585, 35383),
(17585, 35386),
(17585, 35392),
(17585, 35377),
(17585, 35371);

-- Logistics Officer Ulrike <Honor Hold Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(17657, 35476),
(17657, 35477),
(17657, 35469),
(17657, 35464),
(17657, 35465),
(17657, 35470),
(17657, 35467),
(17657, 35468),
(17657, 35466),
(17657, 35478),
(17657, 35474),
(17657, 35472),
(17657, 35473),
(17657, 35475),
(17657, 35471);

-- Nakodu <Lower City Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(21655, 35405),
(21655, 35412),
(21655, 35357),
(21655, 35331),
(21655, 35344),
(21655, 35361),
(21655, 35335),
(21655, 35370),
(21655, 35340),
(21655, 35411),
(21655, 35382),
(21655, 35389),
(21655, 35391),
(21655, 35378),
(21655, 35373);

-- Almaador <Sha'tari Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(21432, 35404),
(21432, 35416),
(21432, 35359),
(21432, 35330),
(21432, 35345),
(21432, 35362),
(21432, 35333),
(21432, 35368),
(21432, 35341),
(21432, 35407),
(21432, 35381),
(21432, 35388),
(21432, 35395),
(21432, 35380),
(21432, 35375);

-- Fedryen Swiftspear <Cenarion Expedition Quartermaster>
INSERT IGNORE INTO `npc_vendor` (entry, item) VALUES
(17904, 35403),
(17904, 35415),
(17904, 35358),
(17904, 35329),
(17904, 35347),
(17904, 35365),
(17904, 35336),
(17904, 35367),
(17904, 35342),
(17904, 35408),
(17904, 35385),
(17904, 35387),
(17904, 35394),
(17904, 35379),
(17904, 35374);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item`=11127;
UPDATE `quest_start_scripts` SET `datalong2`='60000' WHERE `id`='4023';
-- Deleting creature_addon of duplicated creatures.
Delete from `creature_addon` where `guid` in ('71916', '71917', '71920', '71925', '71926', '71927', '71928');
-- Deleting creature_addon of duplicated creatures.
Delete from `creature` where `guid` in ('71916', '71917', '71920', '71925', '71926', '71927', '71928');
-- Maraudon Portal Effect
DELETE FROM `spell_teleport` WHERE `id` = '21128';
INSERT IGNORE INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('21128', '349', '419.84', '11.3365', '-131.079', '0');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=25 WHERE `item`=31707;
-- Quest You are Fired!, drop fix for Anger Camp Key
-- Update `quest_template` set `reqSourceId1`='31536', `reqSourceCount1`='5', `reqSourceRef1`='1' where `entry`='10821'; -- no reqitem or reqspellcast for 1
-- Rokaro goes to Shadowpray Village
UPDATE `creature` SET `position_x` = '-1646.76', `position_y` = '3074.41', `position_z` = '30.1385', `orientation` = '2.09125' WHERE `id`= '10182';
-- Misha rejoin Rexxar in Outlands
UPDATE `creature` SET `map` = '530', `position_x` = '2301.16', `position_y` = '6037', `position_z` = '142.485', `orientation` = '2.33031' WHERE `id` = '10204';
-- Infinite Assassin stats, using Infinite Slayer ones except hp
UPDATE `creature_template` SET `minhealth` = '6900', `maxhealth` = '6900', `armor` = '6192', `mindmg` = '922', `maxdmg` = '1299', `rangeattacktime` = '0', `rangedattackpower` = '0', `spell1` = '7159', `spell2` = '14873', `spell3` = '14874', `spell4` = '30832', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '21137';
-- UPDATE `gameobject_template` SET `data1`=8345 WHERE `entry`=180516;
DELETE FROM `creature_loot_template` WHERE `item` = 35231;
INSERT IGNORE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `freeforall`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(19643, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19635, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(18855, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(18853, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20134, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19779, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19453, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(18852, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(18857, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20135, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(18850, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19831, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19593, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(21089, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20416, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19707, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20207, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20139, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20221, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20248, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20136, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(20140, 35231, -5, 0, 1, 1, 1, 0, 0, 0),
(19926, 35231, -5, 0, 1, 1, 1, 0, 0, 0);
-- UPDATE `character_pet` SET `modelid`='4449' WHERE `modelid`='19595'; -- ?? as char db update or?
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `id` IN ('1721', '1722', '1723');
-- Quest Gorgrom the Dragon-Eater, fix for Grisly Totem drops
Update `quest_template` set `reqSourceId1`='31754', `reqSourceCount1`='5', `reqSourceRef1`='1', reqspellcast1=39161 where `entry`='10802';
-- NPC Gorgrom the Dragon-Eater, fix faction
Update `creature_template` set `faction_A`='16', `faction_H`='16' where `entry`='21514';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-8' WHERE `item` = '3708';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-33' WHERE `item` = '3601';
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'1' WHERE `entry` = '5981';
-- Traitor to the Bloodsail repeatable until neutral
UPDATE `quest_template` SET `RequiredMaxRepFaction` = '21', `SpecialFlags` = `SpecialFlags`|'1' WHERE `entry` = '9259';
UPDATE `creature_template` SET `npcflag`='128' WHERE (`entry`='8665');
DELETE FROM `creature_loot_template` WHERE `item`=28829 AND `entry`=19493;
-- Make Demon Fire unselectable (Illidan spell, after he says "Stare into the eyes of the betrayer"
UPDATE `creature_template` SET `flags` = `flags`|'33554432' WHERE `entry`='23069';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-33' WHERE `item` = '4016';
UPDATE `creature_template` SET `scale` = '0.75' WHERE `entry` = '6573';
delete from npc_trainer where entry in (4568, 3047, 17514, 2128, 5885, 7312, 16749, 5498, 5883, 16269, 17513, 16653, 5497, 5145, 4566, 331, 1228, 5146, 5882, 4567, 16652, 3049, 5880, 3048, 7311, 16651, 328);
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 4568, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 3047, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 17514, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 2128, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5885, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 7312, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 16749, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5498, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5883, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 16269, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 17513, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 16653, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5497, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5145, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 4566, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 331, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 1228, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5146, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5882, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 4567, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 16652, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 3049, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 5880, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 3048, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 7311, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 16651, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
insert ignore into npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel) select 328, spell, spellcost, reqskill, reqskillvalue, reqlevel from npc_trainer where entry=5144;
UPDATE `quest_template` SET `RequiredRaces`='2' WHERE `entry` IN ('2383', '3080', '3087', '3089', '3090');
-- Gornek given trolls race quests
UPDATE `quest_template` SET `RequiredRaces`='128' WHERE `entry` IN ('3065', '3082', '3083', '3084', '3085', '3086');
-- Gornek given horde races quests
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `entry` IN ('788', '789');
-- special
-- Alliance Battle Standard
UPDATE `creature_template` SET `spell1`=22033 where `entry`=14465;
-- Horde Battle Standard
UPDATE `creature_template` SET `spell1`=22033 where `entry`=14466;
-- Spirit Calling Totem
UPDATE `creature_template` SET `spell1`=38778 where `entry`=22318;
-- Ward of Zanzil
UPDATE `creature_template` SET `spell1`=8833 where `entry`=6386;
-- Ward of Zum'rah
UPDATE `creature_template` SET `spell1`=11087 where `entry`=7785;
-- Fire Elemental Totem
UPDATE `creature_template` SET `spell1`= 8985 where `entry`=15439;
-- Earth Elemental Totem
UPDATE `creature_template` SET `spell1`= 8270  where `entry`=15430;

DELETE FROM `gameobject` WHERE `id`=178826;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47486, 178826, 1, 1, -4427.49, 1413.53, 132.459, 3.93798, 0, 0, 0.921763, -0.387754, 25, 100, 1);

-- Containing the Threat, fixing missing crystals by MRbungle (was not included in 339) some of them need to have a slightly different model id, thats why 2 ids
DELETE FROM `gameobject` WHERE `id` IN ('181770', '181771');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47487, '181771', '530', '1', '-1550.77', '-11215.5', '67.5755', '4.09776', '0', '0', '0', '0', '240', '100', '1'),
(47488, '181771', '530', '1', '-1575.5', '-11215.4', '67.9508', '5.44079', '0', '0', '0', '0', '240', '100', '1'),
(47489, '181771', '530', '1', '-1563.69', '-11241.3', '68.3406', '1.77298', '0', '0', '0', '0', '240', '100', '1'),
(47490, '181771', '530', '1', '-1569.68', '-11291.7', '65.8338', '5.09757', '0', '0', '0', '0', '240', '100', '1'),
(47491, '181771', '530', '1', '-1585.52', '-11320.6', '63.3017', '0.696981', '0', '0', '0', '0', '240', '100', '1'),
(47492, '181771', '530', '1', '-1554.44', '-11320.3', '67.6148', '2.81363', '0', '0', '0', '0', '240', '100', '1'),
(47493, '181771', '530', '1', '-1471.59', '-11387.8', '67.9608', '4.44727', '0', '0', '0', '0', '240', '100', '1'),
(47494, '181770', '530', '1', '-1498.02', '-11357.7', '68.9774', '4.13705', '0', '0', '0', '0', '240', '100', '1'),
(47495, '181770', '530', '1', '-1540.15', '-11346.6', '67.9345', '5.68035', '0', '0', '0', '0', '240', '100', '1'),
(47496, '181770', '530', '1', '-1551.48', '-11400.5', '64.3662', '0.602752', '0', '0', '0', '0', '240', '100', '1'),
(47497, '181770', '530', '1', '-1489.04', '-11461.2', '67.2498', '1.80834', '0', '0', '0', '0', '240', '100', '1'),
(47498, '181770', '530', '1', '-1450.12', '-11461.4', '68.5324', '2.51913', '0', '0', '0', '0', '240', '100', '1'),
(47499, '181770', '530', '1', '-1398.42', '-11448', '73.8645', '2.6448', '0', '0', '0', '0', '240', '100', '1'),
(47500, '181770', '530', '1', '-1398.15', '-11435.7', '73.0078', '3.53231', '0', '0', '0', '0', '240', '100', '1');

-- Scout Bloodfist spawned
DELETE FROM `creature` WHERE `id`=17081;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40589, 17081, 1, 0, 0, -6825.3, 800.021, 51.4206, 1.03801, 25, 0, 0, 5000, 0, 0, 0);

-- Rifleman Torrig Spawned
DELETE FROM `creature` WHERE `id`=17082;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40590, 17082, 1, 0, 0, -6763.31, 766.95, 88.9364, 5.17941, 25, 0, 0, 5000, 0, 0, 0);

-- Mupsi Shacklefridd Spawned
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(41671, 16418, 1, 0, 547, -942.072, -3582.46, 26.8658, 3.81465, 300, 0, 0, 1500, 0, 0, 1);
INSERT IGNORE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('41671', 8537);

-- Add Twilight Geolord Spawns
DELETE FROM `creature` WHERE `id`=11881;
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(51681, 11881, 1, 0, 0, -7951, 1919.48, 1.95, 3.633, 390, 5, 0, 3985, 0, 0, 1),
(51682, 11881, 1, 0, 0, -7943, 1821.58, 4.003, 2.63, 390, 5, 0, 3985, 0, 0, 1),
(51683, 11881, 1, 0, 0, -7936, 1866.85, 5.807, 1.097, 360, 5, 0, 3985, 0, 0, 1),
(51684, 11881, 1, 0, 0, -7936, 1868.97, 5.889, 5.468, 390, 5, 0, 3985, 0, 0, 1),
(51685, 11881, 1, 0, 0, -7913, 1919.45, 3.312, 2.833, 360, 5, 0, 3985, 0, 0, 1),
(51686, 11881, 1, 0, 0, -7894, 1858.01, 2.847, 5.78, 360, 5, 0, 3985, 0, 0, 1),
(51687, 11881, 1, 0, 0, -7876, 1896.41, 4.885, 2.793, 390, 5, 0, 3985, 0, 0, 1),
(51688, 11881, 1, 0, 0, -7868, 1831.48, 3.863, 5.458, 390, 5, 0, 3985, 0, 0, 1),
(51689, 11881, 1, 0, 0, -7006, 1232.77, 5.473, 1.692, 360, 5, 0, 3985, 0, 0, 1),
(51690, 11881, 1, 0, 0, -6983, 1133.34, 8.91, 4.252, 360, 5, 0, 3985, 0, 0, 1),
(51691, 11881, 1, 0, 0, -6958, 1200.64, 9.131, 5.842, 390, 5, 0, 3985, 0, 0, 1),
(41731, 11881, 1, 0, 0, -6919.03, 1215.11, 1.50022, 1.82614, 390, 5, 0, 3985, 0, 0, 1),
(41735, 11881, 1, 0, 0, -6911.6, 1188.75, 3.11079, 4.57897, 360, 5, 0, 4113, 0, 0, 1),
(41740, 11881, 1, 0, 0, -7031.6, 1126.62, 0.411551, 4.30329, 360, 5, 0, 3985, 0, 0, 1),
(41751, 11881, 1, 0, 0, -7009.71, 1090.44, 2.22261, 5.68087, 390, 5, 0, 4113, 0, 0, 1),
(41755, 11881, 1, 0, 0, -7065.85, 1148.07, 1.31059, 0.0236479, 390, 5, 0, 4113, 0, 0, 1),
(41757, 11881, 1, 0, 0, -7044.12, 1209.41, 4.17323, 5.76019, 360, 5, 0, 3985, 0, 0, 1),
(41758, 11881, 1, 0, 0, -7005.95, 1119.99, 9.74967, 5.03371, 360, 5, 0, 3985, 0, 0, 1),
(41759, 11881, 1, 0, 0, -6819.94, 1610.06, 2.41148, 0.694374, 360, 5, 0, 4113, 0, 0, 1),
(41770, 11881, 1, 0, 0, -6841.32, 1664.13, 3.46256, 4.82949, 390, 5, 0, 3985, 0, 0, 1),
(41772, 11881, 1, 0, 0, -6982.24, 1239.61, 0.758312, 4.97165, 390, 5, 0, 4113, 0, 0, 1),
(41773, 11881, 1, 0, 0, -6803.51, 1648.38, 6.36964, 1.98007, 360, 5, 0, 4113, 0, 0, 1),
(41774, 11881, 1, 0, 0, -6807.88, 1651.4, 6.36964, 5.80496, 360, 5, 0, 4113, 0, 0, 1),
(41777, 11881, 1, 0, 0, -6755.39, 1675.55, 7.04304, 5.2866, 390, 5, 0, 4113, 0, 0, 1),
(41782, 11881, 1, 0, 0, -7918.7, 1783.02, 2.25574, 5.06431, 360, 5, 0, 4113, 0, 0, 1),
(41784, 11881, 1, 0, 0, -7954.49, 1768.05, 0.110777, 5.07451, 390, 5, 0, 4113, 0, 0, 1),
(41785, 11881, 1, 0, 0, -7055.67, 1176.93, 0.687893, 1.2779, 390, 5, 0, 4113, 0, 0, 1),
(41786, 11881, 1, 0, 0, -6743.37, 1569.98, 4.73405, 1.39334, 390, 5, 0, 4113, 0, 0, 1),
(41787, 11881, 1, 0, 0, -6764.25, 1536.84, 2.75546, 1.87792, 360, 5, 0, 4113, 0, 0, 1),
(41788, 11881, 1, 0, 0, -6939.4, 1241.67, 5.46757, 4.45716, 360, 5, 0, 3985, 0, 0, 1),
(41789, 11881, 1, 0, 0, -6768.29, 1596.21, 6.98245, 0.540377, 390, 5, 0, 3985, 0, 0, 1),
(41794, 11881, 1, 0, 0, -6751.72, 1624.1, 11.7915, 0.940931, 360, 5, 0, 3985, 0, 0, 1),
(41804, 11881, 1, 0, 0, -6771.36, 1721.51, 4.84273, 1.64779, 390, 5, 0, 3985, 0, 0, 1);

-- Rumsen Fizzlebrack
DELETE FROM `creature` WHERE `id`=16417;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(41730, 16417, 1, 0, 0, -7081.92, -3697.06, 9.47207, 0.105072, 25, 0, 0, 2800, 0, 0, 1);
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39885','23394','564','1','0','0','759.458','149.839','218.484','6.08674','25','0','0','66000','0','0','2');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39918','23402','564','1','21559','0','572.048','126.726','258.219','1.88261','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39919','23397','564','1','0','0','579.469','123.135','258.118','3.32774','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39920','23402','564','1','0','0','583.915','120.881','258.088','3.32774','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39886','23394','564','1','0','0','653.64','150.081','245.258','1.43325','25','0','0','66000','0','0','2');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39887','23394','564','1','0','0','638.88','127.345','245.073','3.35131','25','0','0','66000','0','0','2');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39921','23400','564','1','0','0','576.476','123.863','258.142','1.34618','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39922','23397','564','1','21562','0','569.511','126.583','258.335','2.92876','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39923','23403','564','1','0','0','566.233','127.024','258.456','5.91955','25','0','0','180000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39924','23394','564','1','0','0','548.023','221.635','272.004','4.63307','25','0','0','66000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39925','23403','564','1','0','0','528.538','243.109','271.782','2.19519','25','0','0','180000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39926','23400','564','1','0','0','525.704','245.449','271.748','6.09391','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39928','23397','564','1','21562','0','526.979','248.401','271.707','4.57652','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('39929','23402','564','1','21559','0','525.265','252.531','271.649','0.278818','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40069','23397','564','1','0','0','528.164','254.129','271.629','4.98885','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40228','23402','564','1','0','0','530.685','252.408','271.652','3.42591','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40229','23400','564','1','0','0','557.875','286.096','271.647','6.25491','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40233','23397','564','1','21562','0','560.001','281.546','271.716','1.00374','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40234','23403','564','1','0','0','561.265','291.531','271.796','4.0283','25','0','0','180000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40236','23403','564','1','21571','0','563.573','292.775','271.878','4.61735','25','0','0','180000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40243','23397','564','1','21563','0','566.824','288.546','271.932','3.45496','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40244','23402','564','1','21558','0','565.104','282.582','271.663','2.47479','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40340','23397','564','1','21562','0','556.393','309.574','271.618','2.37897','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40342','23400','564','1','21566','0','551.359','308.832','271.439','1.17652','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40406','23402','564','1','21559','0','548.558','312.491','271.384','0.499509','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40407','23397','564','1','0','0','549.847','315.576','271.384','5.66193','25','0','0','230000','49635','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40411','23402','564','1','0','0','554.067','317.313','271.534','4.48148','25','0','0','180000','33090','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40446','23403','564','1','21571','0','557.074','314.136','271.642','3.5013','25','0','0','180000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40526','23394','564','1','0','0','559.685','358.688','271.384','4.61735','25','0','0','66000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40527','23394','564','1','0','0','525.76','359.672','271.384','4.61735','25','0','0','66000','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40530','1','564','1','0','0','802.567','171.907','204.768','3.27117','25','0','0','8','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40531','1','564','1','0','0','772.171','172.413','218.486','3.27117','25','0','0','8','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40532','1','564','1','0','0','776.389','172.879','218.553','3.27815','25','0','0','8','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40534','1','564','1','0','0','799.471','173.665','204.768','3.27815','25','0','0','8','0','0','0');
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values('40588','1','564','1','0','0','818.321','149.985','204.768','3.27815','25','0','0','8','0','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','5','691.549','127.006','232.078','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.24909','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','6','668.785','126.145','245.933','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.19882','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','6','757.93','147.976','218.474','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.94533','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','1','776.389','172.879','218.553','0',NULL,NULL,NULL,NULL,NULL,'0','0','100804','0.092577','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','2','799.471','173.665','204.768','0',NULL,NULL,NULL,NULL,NULL,'0','0','100806','6.21554','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','3','818.321','149.985','204.768','0',NULL,NULL,NULL,NULL,NULL,'0','0','100808','3.27815','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','4','799.394','125.586','204.768','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.38811','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39885','5','774.644','126.812','218.555','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.0064','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','7','650.874','149.875','245.113','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.72227','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39887','5','642.314','154.157','245.052','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.75167','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39887','4','638.884','172.015','245.058','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.11512','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39887','3','605.53','175.606','258.768','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.09583','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39887','2','608.46','125.488','258.775','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.111538','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39887','1','638.544','127.274','245.079','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.15024','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','1','665.886','173.588','245.861','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.25245','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','2','692.543','172.768','232.064','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.25245','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','3','706.131','150.472','232.079','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.94555','0','0');
INSERT IGNORE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values('39886','4','706.131','150.472','232.079','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.84913','0','0');


-- forum ends!

-- seph:
-- Shattrath EotS battlemaster civilian
UPDATE `creature_template` SET `civilian` = '1' WHERE `entry` = '20381';
-- Mana Surges better spawn position (to make them look like they come from the Mana Rift)
DELETE FROM `quest_start_scripts` WHERE `id` = '1957' AND `command` = '10';
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
('1957', '5', '10', '6550', '600000', '', '-4019.99', '-3394.54', '38.5507', '1.8342'),
('1957', '5', '10', '6550', '600000', '', '-4019.22', '-3383.91', '38.2265', '2.7963'),
('1957', '20', '10', '6550', '600000', '', '-4019.22', '-3383.91', '38.2265', '2.7963'),
('1957', '20', '10', '6550', '600000', '', '-4013.29', '-3385.14', '38.4656', '2.3801'),
('1957', '35', '10', '6550', '600000', '', '-4019.99', '-3394.54', '38.5507', '1.8342'),
('1957', '35', '10', '6550', '600000', '', '-4013.29', '-3385.14', '38.4656', '2.3801'),
('1957', '70', '10', '6550', '600000', '', '-4019.22', '-3383.91', '38.2265', '2.7963'),
('1957', '70', '10', '6550', '600000', '', '-4019.99', '-3394.54', '38.5507', '1.8342'),
('1957', '70', '10', '6550', '600000', '', '-4013.29', '-3385.14', '38.4656', '2.3801'),
('1957', '120', '10', '6550', '600000', '', '-4013.29', '-3385.14', '38.4656', '2.3801'),
('1957', '120', '10', '6550', '600000', '', '-4019.99', '-3394.54', '38.5507', '1.8342'),
('1957', '120', '10', '6550', '600000', '', '-4019.22', '-3383.91', '38.2265', '2.7963');
-- Image of Commander Sarannis bestiary, its an image so shouldn't attack, but sendevent is doing nasty things
UPDATE `creature_template` SET `minlevel` = '73', `maxlevel` = '73', `minhealth` = '110700', `maxhealth` = '110700', `armor` = '0', `speed` = '0.0001', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `baseattacktime` = '0', `rangeattacktime` = '0', `rangedattackpower` = '0', `MovementType` = '0' WHERE `entry` = '19938';
-- Lord Torvos faction and misc
UPDATE `creature_template` SET `armor` = '6500', `faction_A` = '1956', `faction_H` = '1956', `mindmg` = '300', `maxdmg` = '500', `attackpower` = '1450', `baseattacktime` = '2000' WHERE `entry` = '25140';
-- Basic Campfire under a table
DELETE FROM `gameobject` WHERE `guid` = '28321';
-- Dreghood Slave bestiary
UPDATE `creature_template` SET `minhealth` = '20259', `maxhealth` = '20259', `armor` = '6792', `mindmg` = '706', `maxdmg` = '999', `rangeattacktime` = '0', `rangedattackpower` = '0' WHERE `entry` = '17799';
-- Dreghood Slave was dropping Pattern: Drums of Speed at 4.5%, should be added only in ref table
DELETE FROM `creature_loot_template` WHERE (`entry`='17799') AND (`item`='29718');
-- Guthrum Thunderfist was at mid-air
UPDATE `creature` SET `position_z` = '194.127' WHERE `id` = '8018';
-- some potions maxcount were 1
UPDATE `npc_vendor` SET `maxcount` = '3' WHERE (`entry` = '20989') AND `item` IN ('22829', '22832');
UPDATE `npc_vendor` SET `maxcount` = '2' WHERE (`entry` = '20989') AND `item` IN ('22845', '22846');
-- some Isle of Quel'danas mobs were dropping 2 boots of Blood Furnace, should be Sunspring Carp
UPDATE `creature_loot_template` SET `item` = '27858' WHERE `entry` IN ('25073', '25060', '24696') AND (`item` = '27848');
-- Primal Nether should drop at 5% in normal mode
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` = '23572';
-- Eldara Dawnrunner misc
UPDATE `creature_template` SET `minhealth` = '11000', `maxhealth` = '11000', `armor` = '7500', `mindmg` = '250', `maxdmg` = '320', `attackpower` = '3600' WHERE `entry` = '25032';
-- Nethermine Ravager bestiary
UPDATE `creature_template` SET `minhealth` = '5240', `maxhealth` = '5240', `armor` = '6792', `faction_A` = '14', `faction_H` = '14', `speed` = '1.2', `mindmg` = '328', `maxdmg` = '464', `spell1` = '13443', `spell2` = '33810', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23326';
-- Nethermine Ravager flay aura
DELETE FROM `creature_template_addon` WHERE (`entry` = '23326');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('23326', '32732 0');
-- Nethermine Flayer bestiary
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '71', `minhealth` = '6986', `maxhealth` = '7181', `armor` = '6952', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '363', `baseattacktime` = '2000', `spell1` = '13443', `spell2` = '40770', `mingold` = '1000', `maxgold` = '1500', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23169';
-- Overmine Flayer (copied Nethermine Flayer because really similar)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '71', `minhealth` = '6983', `maxhealth` = '7181', `armor` = '6892', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '363', `baseattacktime` = '2000', `spell1` = '13443', `spell2` = '33810', `mingold` = '1000', `maxgold` = '1500', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23264';
-- Crazed Murkblood Miner bestiary (same stats of Murkblood Miner)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6986', `maxhealth` = '6986', `armor` = '6792', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '357', `baseattacktime` = '2000', `mingold` = '1000', `maxgold` = '1500', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23324';
-- Murkblood Miner bestiary
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6986', `maxhealth` = '6986', `armor` = '6792', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '357', `baseattacktime` = '2000', `mingold` = '1000', `maxgold` = '1500', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23287';
-- Crazed Murkblood Foreman bestiary
UPDATE `creature_template` SET `minlevel` = '71', `maxlevel` = '71', `minhealth` = '43625', `maxhealth` = '43625', `armor` = '7089', `faction_A` = '14', `faction_H` = '14', `mindmg` = '1282', `maxdmg` = '1813', `baseattacktime` = '2000', `mingold` = '1000', `maxgold` = '1500', `spell1` = '43246', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23305';
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '71', `minhealth` = '6986', `maxhealth` = '7181', `armor` = '6992', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '363', `baseattacktime` = '2000', `spell1` = '31747', `MovementType` = '1', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23285';
-- Dragonmaw Ascendant bestiary
UPDATE `creature_template` SET `minhealth` = '110700', `maxhealth` = '110700', `armor` = '7387', `mindmg` = '2091', `maxdmg` = '2957', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `spell1` = '15496', `spell2` = '17547', `spell3` = '10966', `mingold` = '1066', `maxgold` = '1553', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22253';
-- 2 creatures of Isle of Quel'danas with mindmg negative, those skeletons fighting with demons
UPDATE `creature_template` SET `mindmg` = '32', `maxdmg` = '64', `attackpower` = '121' WHERE `entry` IN ('25028', '25027');
-- Imp Minion should not have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '12922';
DELETE FROM `creature_loot_template` WHERE `entry` = '12922';
-- 2.4 pvp mounts
INSERT IGNORE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('12783', '35906', '0', '0', '423'), -- Reins of the Black War Elekk
('12796', '34129', '0', '0', '423'); -- Swift Warstrider
-- Disgusting Oozeling should not drop from creatures .
DELETE FROM `creature_loot_template` WHERE `item` = '20769';
-- Essence of Hakkar
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `item` = '10663';
-- Silithid Swarm should not have loot
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '4196';
DELETE FROM `creature_loot_template` WHERE `entry` = '4196';
-- The Book of the Raven had stupid reqspellcast to avoid a startup error, fix core because quest works...
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` = '10980';
update `quest_template` SET ReqSourceRef1=0, reqsourceid1=0, reqsourcecount1=0  WHERE `entry` = '10980'; -- removes error -.-

-- Ravasaur Pheromone Gland should be granted quest loot and have 2 of them
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100', `mincountOrRef` = '2', `maxcount` = '2' WHERE `item` = '11509';
-- Imperfect Draenethyst Fragment
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '3' WHERE `item` = '10593';
-- Doomcryer was friendly
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE `entry` = '19963';
-- (NEEDS GRAPHICS)Steam Pump Controls ?
UPDATE `gameobject_template` SET `name` = 'Steam Pump Controls' WHERE `entry` = '182107';
-- Troll Roof Stalker stats (need spawns on the accessible roofs of orgrimmar)
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '11000', `maxhealth` = '11000', `armor` = '6800', `faction_A` = '1612', `faction_H` = '1612', `mindmg` = '230', `maxdmg` = '320', `attackpower` = '2120', `baseattacktime` = '2000', `rangeattacktime` = '2300', `minrangedmg` = '230', `maxrangedmg` = '320', `rangedattackpower` = '2120', `spell1` = '40124', `equipment_id` = '1907' WHERE `entry` = '23090';
-- Troll Roof Stalker stealth aura, and detections
DELETE FROM `creature_template_addon` WHERE (`entry` = '23090');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('23090', '32199 0 18950 0 18950 1');
-- Lieutenant General Andorov and his Kaldorei Elite should be Cenarion Circle npcs, not hostile, and should be possible to heal them as comments say
-- Lieutenant General Andorov
UPDATE `creature_template` SET `armor` = '3100', `faction_A` = '994', `faction_H` = '994', `flags` = `flags`|'4096' WHERE `entry` = '15471';
-- Kaldorei Elite
UPDATE `creature_template` SET `armor` = '2400', `faction_A` = '994', `faction_H` = '994', `flags` = `flags`|'4096' WHERE `entry` = '15473';
-- Evidence Marker Invisibility (need to be spawned for quest 1253)
DELETE FROM `creature_template_addon` WHERE (`entry` = '23583');
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('23583', '42175 0');
-- Some always-friendly Kara npcs should not be killable with AoE
UPDATE `creature_template` SET `flags` = `flags`|'2' WHERE `entry` IN ('16159', '16812', '16815', '16814', '16813', '16153');
-- Gradav, Wravien and Kamsis have a gossip
UPDATE `creature_template` SET `npcflag` = `npcflag`|'1' WHERE `entry` IN ('16814', '16813', '16815');
-- seph ends

-- rn has been busy
-- Repeatable Quest: Now That We Are Still Friends -- as of patch 2.4 only requires 6 Bloodscale Enchantresses instead of 12
UPDATE `quest_template` SET `ReqCreatureOrGOCount2`=6 WHERE `entry`=9727;
-- enclaw Hide should have 100% drop rate. Comments go from 2.0.12 to 2.3.0
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item`=24486;
-- Quest should have SF|2 since quest complete is sent by script
UPDATE `quest_template` SET `specialflags`=`specialflags`|2 WHERE `entry`=1639;
-- Note to self -- These need their spawn times fixed...
/*
select distinct(entry), name, spawntimesecs from creature_template left join creature on creature_template.entry = creature.id where entry=id and spawntimesecs < 60 order by name;
*/


-- L70ETC event and spawns
DELETE FROM `game_event` WHERE (`entry`=34);
INSERT IGNORE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `description`) VALUES (34,
'2008-05-15 12:00:00' -- INSERT START DATE AND TIME HERE - CONCERT STARTS 10 SECONDS LATER
, '2020-01-01 00:00:00',
10080 -- INSERT EVENT OCCURRENCE DURATION HERE (in minutes)
,
5 -- INSERT EVENT DURATION HERE (in minutes)
, 'L70ETC Concert');
DELETE FROM `game_event_creature` WHERE abs(`event`) = 34;
INSERT IGNORE INTO `game_event_creature` (`guid`, `event`) VALUES
(6090,34),
(7727,34),
(9411,34),
(26009,34),
(34055,34),
(38214,34),
(39821,34),
(39822,34),
(39883,34),
(39884,34);

DELETE FROM `game_event_gameobject` WHERE abs(`event`) = 34;
INSERT IGNORE INTO `game_event_gameobject` (`guid`, `event`) VALUES
(3110,34);

-- ### SPAWNS ###
DELETE FROM `gameobject` WHERE `guid`=3110;
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (3110, 186300, 530, 1, -2224.98, 5127.45, -19.7614, -0.174533, 0, 0, 0.087156, -0.996195, 180, 100, 1);
DELETE FROM `creature` WHERE `id` in (23721,23625,23619,23626,23624,23623,23830);
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- samuro spawn - Lead Vocals
(6090, 23625, 530, 0, 0, -2219.26, 5124.72, -16.5406, 6.08812, 25, 0, 0, 6100, 0, 0, 0),
-- Bergrisst spawn - Lead Guitar
(7727, 23619, 530, 0, 0, -2221.88, 5122.5, -16.52, 6.08419, 25, 0, 0, 5900, 7196, 0, 0),
-- Sig nicious spawn - Rhythm Guitar
(9411, 23626, 530, 0, 0, -2220.87, 5128.07, -16.5431, 6.07022, 25, 0, 0, 6400, 3155, 0, 0),
-- Mai'Kyl spawn - Bass Guitar
(26009, 23624, 530, 0, 0, -2220.98, 5130.86, -16.5221, 6.01916, 25, 0, 0, 7200, 3155, 0, 0),
-- Chief Thunder-Skins Spawn - Drummer
(34055, 23623, 530, 0, 0, -2226.86, 5127.81, -12.9949, 5.91769, 25, 0, 0, 11000, 3155, 0, 0),
-- L70ETC FX Controller spawn
(38214, 23830, 530, 0, 0, -2208.33, 5123.95, -20.1186, 2.94598, 25, 0, 0, 1, 0, 0, 0),
-- Concert Bruiser Spawns
(39821, 23721, 530, 0, 0, -2197.05, 5130.85, -20.4891, 3.4576, 25, 0, 0, 1, 0, 0, 0),
(39822, 23721, 530, 0, 0, -2200.36, 5113.89, -20.2293, 2.32662, 25, 0, 0, 1, 0, 0, 0),
(39883, 23721, 530, 0, 0, -2215.1, 5117.98, -20.106, 0.230397, 25, 0, 0, 1, 0, 0, 0),
(39884, 23721, 530, 0, 0, -2211.77, 5131.87, -20.1147, 5.22553, 25, 0, 0, 1, 0, 0, 0);

-- change L70ETC FX Controller model to invisible
DELETE FROM `creature_template_addon` WHERE `entry`=23830;
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('23830', '10032 0');

-- Set band invisible at start
DELETE FROM `creature_template_addon` WHERE `entry` in (23625,23619,23626,23624,23623);
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('23619', '10032 0'),
('23623', '10032 0'),
('23624', '10032 0'),
('23625', '10032 0'),
('23626', '10032 0');

-- L70ETC event / spawns end

-- gvcoman start

UPDATE `quest_template` SET `ReqSourceId1` = 34500, `ReqSourceCount1` = 5, `ReqSourceRef1` = 1 WHERE `entry` = 11544;
INSERT IGNORE INTO creature_loot_template (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(22082, 34500, -70),
(22081, 34500, -70),
(22084, 34500, -70);
INSERT IGNORE INTO gameobject_loot_template (`entry`, `item`, `ChanceOrQuestChance`) VALUES
(23009, 34479, -100),
(22992, 34246, -100);
INSERT IGNORE INTO spell_script_target VALUES
(45030, 2, 25003),
(46281, 1, 25882);

DELETE FROM `creature_template_addon` WHERE (`entry`=25882);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
(25882, 0, 0, 0, 0, 0, 0, '46804 0 46272 0');


UPDATE `quest_template` SET `ReqSpellCast1` = 46281 WHERE `entry` = 11880;


-- Quartermaster updates
DELETE FROM `npc_vendor` WHERE `entry` IN (21643, 17904, 21432, 21655, 17585);
INSERT IGNORE INTO `npc_vendor` VALUES
('21643', '29183', '0', '0', '0'),
('21643', '29182', '0', '0', '0'),
('21643', '29181', '0', '0', '0'),
('21643', '29185', '0', '0', '0'),
('21643', '35402', '0', '0', '0'),
('21643', '35414', '0', '0', '0'),
('21643', '24181', '0', '0', '0'),
('21643', '24174', '0', '0', '0'),
('21643', '35356', '0', '0', '0'),
('21643', '35328', '0', '0', '0'),
('21643', '35346', '0', '0', '0'),
('21643', '33152', '0', '0', '0'),
('21643', '35363', '0', '0', '0'),
('21643', '35334', '0', '0', '0'),
('21643', '35369', '0', '0', '0'),
('21643', '35338', '0', '0', '0'),
('21643', '35410', '0', '0', '0'),
('21643', '35384', '0', '0', '0'),
('21643', '35390', '0', '0', '0'),
('21643', '35393', '0', '0', '0'),
('21643', '35376', '0', '0', '0'),
('21643', '29184', '0', '0', '0'),
('21643', '35372', '0', '0', '0'),
('21643', '28272', '0', '0', '0'),
('21643', '29198', '0', '0', '0'),
('21643', '29186', '0', '0', '0'),
('21643', '31355', '0', '0', '0'),
('21643', '25910', '0', '0', '0'),
('21643', '33160', '0', '0', '0'),
('21643', '33158', '0', '0', '0'),
('21643', '22536', '0', '0', '0'),
('21643', '31777', '0', '0', '0'),
('21643', '30635', '0', '0', '0'),
('21643', '29713', '0', '0', '0'),
('21643', '31951', '0', '0', '0'),
('17904', '29172', '0', '0', '0'),
('17904', '33999', '0', '0', '0'),
('17904', '31402', '0', '0', '0'),
('17904', '29171', '0', '0', '0'),
('17904', '31390', '0', '0', '0'),
('17904', '31392', '0', '0', '0'),
('17904', '31391', '0', '0', '0'),
('17904', '29170', '0', '0', '0'),
('17904', '35403', '0', '0', '0'),
('17904', '35415', '0', '0', '0'),
('17904', '24183', '0', '0', '0'),
('17904', '35358', '0', '0', '0'),
('17904', '35329', '0', '0', '0'),
('17904', '35347', '0', '0', '0'),
('17904', '25835', '0', '0', '0'),
('17904', '33149', '0', '0', '0'),
('17904', '35365', '0', '0', '0'),
('17904', '35336', '0', '0', '0'),
('17904', '35367', '0', '0', '0'),
('17904', '25737', '0', '0', '0'),
('17904', '25736', '0', '0', '0'),
('17904', '25735', '0', '0', '0'),
('17904', '25836', '0', '0', '0'),
('17904', '35342', '0', '0', '0'),
('17904', '35408', '0', '0', '0'),
('17904', '35385', '0', '0', '0'),
('17904', '35387', '0', '0', '0'),
('17904', '35394', '0', '0', '0'),
('17904', '35379', '0', '0', '0'),
('17904', '29173', '0', '0', '0'),
('17904', '24412', '0', '0', '0'),
('17904', '31949', '0', '0', '0'),
('17904', '25838', '0', '0', '0'),
('17904', '29174', '0', '0', '0'),
('17904', '35374', '0', '0', '0'),
('17904', '28271', '0', '0', '0'),
('17904', '29192', '0', '0', '0'),
('17904', '29194', '0', '0', '0'),
('17904', '31356', '0', '0', '0'),
('17904', '22918', '0', '0', '0'),
('17904', '24417', '0', '0', '0'),
('17904', '31804', '0', '0', '0'),
('17904', '24429', '0', '0', '0'),
('17904', '29720', '0', '0', '0'),
('17904', '29721', '0', '0', '0'),
('17904', '23618', '0', '0', '0'),
('17904', '28632', '0', '0', '0'),
('17904', '25526', '0', '0', '0'),
('17904', '32070', '0', '0', '0'),
('17904', '22922', '0', '0', '0'),
('17904', '25869', '0', '0', '0'),
('17904', '30623', '0', '0', '0'),
('17904', '23814', '0', '0', '0'),
('21432', '29177', '0', '0', '0'),
('21432', '29176', '0', '0', '0'),
('21432', '29175', '0', '0', '0'),
('21432', '29180', '0', '0', '0'),
('21432', '35404', '0', '0', '0'),
('21432', '35416', '0', '0', '0'),
('21432', '30826', '0', '0', '0'),
('21432', '24182', '0', '0', '0'),
('21432', '35359', '0', '0', '0'),
('21432', '35330', '0', '0', '0'),
('21432', '35345', '0', '0', '0'),
('21432', '33153', '0', '0', '0'),
('21432', '35362', '0', '0', '0'),
('21432', '35333', '0', '0', '0'),
('21432', '35368', '0', '0', '0'),
('21432', '35341', '0', '0', '0'),
('21432', '35407', '0', '0', '0'),
('21432', '35381', '0', '0', '0'),
('21432', '35388', '0', '0', '0'),
('21432', '35395', '0', '0', '0'),
('21432', '35380', '0', '0', '0'),
('21432', '35375', '0', '0', '0'),
('21432', '29179', '0', '0', '0'),
('21432', '28273', '0', '0', '0'),
('21432', '28281', '0', '0', '0'),
('21432', '29195', '0', '0', '0'),
('21432', '29191', '0', '0', '0'),
('21432', '31354', '0', '0', '0'),
('21432', '22915', '0', '0', '0'),
('21432', '33159', '0', '0', '0'),
('21432', '25904', '0', '0', '0'),
('21432', '33155', '0', '0', '0'),
('21432', '22537', '0', '0', '0'),
('21432', '29717', '0', '0', '0'),
('21432', '13517', '0', '0', '0'),
('21432', '31781', '0', '0', '0'),
('21432', '30634', '0', '0', '0'),
('21655', '30832', '0', '0', '0'),
('21655', '30834', '0', '0', '0'),
('21655', '30830', '0', '0', '0'),
('21655', '35405', '0', '0', '0'),
('21655', '35412', '0', '0', '0'),
('21655', '24179', '0', '0', '0'),
('21655', '24175', '0', '0', '0'),
('21655', '35357', '0', '0', '0'),
('21655', '35331', '0', '0', '0'),
('21655', '35344', '0', '0', '0'),
('21655', '33148', '0', '0', '0'),
('21655', '35361', '0', '0', '0'),
('21655', '30836', '0', '0', '0'),
('21655', '30841', '0', '0', '0'),
('21655', '35335', '0', '0', '0'),
('21655', '35370', '0', '0', '0'),
('21655', '30835', '0', '0', '0'),
('21655', '35340', '0', '0', '0'),
('21655', '35411', '0', '0', '0'),
('21655', '35382', '0', '0', '0'),
('21655', '35389', '0', '0', '0'),
('21655', '35391', '0', '0', '0'),
('21655', '35378', '0', '0', '0'),
('21655', '35373', '0', '0', '0'),
('21655', '23138', '0', '0', '0'),
('21655', '29199', '0', '0', '0'),
('21655', '30846', '0', '0', '0'),
('21655', '22910', '0', '0', '0'),
('21655', '31357', '0', '0', '0'),
('21655', '30633', '0', '0', '0'),
('21655', '33157', '0', '0', '0'),
('21655', '22538', '0', '0', '0'),
('21655', '31778', '0', '0', '0'),
('21655', '30833', '0', '0', '0'),
('21655', '34200', '0', '0', '0'),
('17585', '29152', '0', '0', '0'),
('17585', '29155', '0', '0', '0'),
('17585', '29165', '0', '0', '0'),
('17585', '29168', '0', '0', '0'),
('17585', '29167', '0', '0', '0'),
('17585', '35406', '0', '0', '0'),
('17585', '35413', '0', '0', '0'),
('17585', '31358', '0', '0', '0'),
('17585', '35360', '0', '0', '0'),
('17585', '35332', '0', '0', '0'),
('17585', '35343', '0', '0', '0'),
('17585', '25824', '0', '0', '0'),
('17585', '33151', '0', '0', '0'),
('17585', '25823', '0', '0', '0'),
('17585', '32882', '0', '0', '0'),
('17585', '35364', '0', '0', '0'),
('17585', '35337', '0', '0', '0'),
('17585', '35366', '0', '0', '0'),
('17585', '25738', '0', '0', '0'),
('17585', '25739', '0', '0', '0'),
('17585', '25740', '0', '0', '0'),
('17585', '35339', '0', '0', '0'),
('17585', '35409', '0', '0', '0'),
('17585', '35383', '0', '0', '0'),
('17585', '35386', '0', '0', '0'),
('17585', '35392', '0', '0', '0'),
('17585', '35377', '0', '0', '0'),
('17585', '35371', '0', '0', '0'),
('17585', '31359', '0', '0', '0'),
('17585', '29197', '0', '0', '0'),
('17585', '29190', '0', '0', '0'),
('17585', '24009', '0', '0', '0'),
('17585', '30637', '0', '0', '0'),
('17585', '24000', '0', '0', '0'),
('17585', '24003', '0', '0', '0'),
('17585', '24006', '0', '0', '0'),
('17585', '31361', '0', '0', '0'),
('17585', '31362', '0', '0', '0'),
('17585', '34201', '0', '0', '0'),
('17585', '24002', '0', '0', '0'),
('17585', '24001', '0', '0', '0'),
('17585', '29232', '0', '0', '0'),
('17585', '24004', '0', '0', '0');

-- Removing old unused quests for warsong
DELETE FROM `creature_questrelation` WHERE `quest` IN (8368, 8389, 8426, 8431, 8427, 8432, 8428, 8433, 8429, 8434, 8430, 8435, 8372, 8386, 8399, 8400, 8401, 8402, 8407, 8403, 8404, 8405, 8406, 8408);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (8368, 8389, 8426, 8431, 8427, 8432, 8428, 8433, 8429, 8434, 8430, 8435, 8372, 8386, 8399, 8400, 8401, 8402, 8407, 8403, 8404, 8405, 8406, 8408);
UPDATE `quest_template` SET `Title` = CONCAT('OLD ', `Title`) WHERE `entry` IN (8368, 8389, 8426, 8431, 8427, 8432, 8428, 8433, 8429, 8434, 8430, 8435, 8372, 8386, 8399, 8400, 8401, 8402, 8407, 8403, 8404, 8405, 8406, 8408) AND `Title` NOT LIKE 'OLD%';

-- Removing old unused quests for arathi basin
DELETE FROM `creature_questrelation` WHERE `quest` IN (8370, 8390, 8436, 8437, 8438, 8439, 8440, 8441, 8442, 8443, 8374, 8384, 8391, 8392, 8393, 8394, 8395, 8396, 8397, 8398);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (8370, 8390, 8436, 8437, 8438, 8439, 8440, 8441, 8442, 8443, 8374, 8384, 8391, 8392, 8393, 8394, 8395, 8396, 8397, 8398);
UPDATE `quest_template` SET `Title` = CONCAT('OLD ', `Title`) WHERE `entry` IN (8370, 8390, 8436, 8437, 8438, 8439, 8440, 8441, 8442, 8443, 8374, 8384, 8391, 8392, 8393, 8394, 8395, 8396, 8397, 8398) AND `Title` NOT LIKE 'OLD%';

-- Missing spell focus GO and its spawn
INSERT IGNORE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (300154, 8, 0, 'TEMP Hauthaa\'s Anvil', '', 0, 0, 1, 1485, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT IGNORE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('49798','300154','530','1','12664.6','-6986.06','15.6079','4.85554','0','0','0.654728','-0.755865','25','0','1');

-- Black Temple Equip updates
INSERT IGNORE INTO `creature_equip_template` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES
('2136','43531','0','0','50267394','0','0','781','0','0'),
('2137','42189','42189','0','33490690','33490690','0','781','781','0'),
('2138','45509','0','0','33490434','0','0','3','0','0'),
('2139','39290','39290','0','33490434','33490434','0','781','781','0'),
('2140','43204','44026','0','33488898','33490436','0','781','1038','0'),
('2141','6568','0','0','33490434','0','0','3','0','0'),
('2142','1664','1664','0','33490690','33490690','0','781','781','0'),
('2143','5638','0','0','33490434','0','0','3','0','0'),
('2144','37937','0','0','33488898','0','0','3','0','0'),
('2145','40897','44869','0','33488898','33490436','0','781','1038','0'),
('2146','22653','0','0','33490434','0','0','3','0','0'),
('2147','1768','0','0','33490434','0','0','3','0','0'),
('2148','42087','0','0','33490690','0','0','781','0','0'),
('2149','45205','0','0','33490434','0','0','3','0','0'),
('2150','47743','0','0','33490434','0','0','3','0','0'),
('2151','40367','0','0','33490434','0','0','3','0','0'),
('2152','45318','0','0','33490434','0','0','3','0','0'),
('2153','42561','42561','0','33490690','33490690','0','781','0','0'),
('2154','45113','0','0','33490690','0','0','781','0','0'),
('2155','33882','0','0','33490690','0','0','781','0','0'),
('2156','45492','0','0','33488898','0','0','781','0','0'),
('2157','44153','0','0','33490946','0','0','781','0','0'),
('2158','43112','43112','0','33490690','33490690','0','781','781','0'),
('2159','45344','0','0','33490434','0','0','3','0','0'),
('2160','41618','41618','0','33490690','33490690','0','781','781','0'),
('2161','45393','0','0','251789826','0','0','1','0','0'),
('2162','40060','40060','0','218169346','218169346','0','781','781','0'),
('2163','43539','45653','0','33488898','33490436','0','781','1038','0'),
('2164','28349','0','0','33490178','0','0','781','0','0'),
('2165','39958','0','0','33490178','0','0','781','0','0'),
('2135','41636','47250','0','218169346','234948100','0','781','1038','0'),
-- Leotheras the Blind (SSC)
('2134','30935','30934','0','33490690','33490690','0','781','781','0');

-- Gathios the Shatterer
UPDATE `creature_template` SET `equipment_id` = 2136 WHERE `entry` = 22949;

-- Veras Darkshadow
UPDATE `creature_template` SET `equipment_id` = 2137 WHERE `entry` = 22952;

-- Teron Gorefiend
UPDATE `creature_template` SET `equipment_id` = 2138 WHERE `entry` = 22871;

-- Bonechewer Behemoth
UPDATE `creature_template` SET `equipment_id` = 2139 WHERE `entry` = 23196;

-- Bonechewer Taskmaster
UPDATE `creature_template` SET `equipment_id` = 2140 WHERE `entry` = 23028;

-- Bonechewer Worker
UPDATE `creature_template` SET `equipment_id` = 2141 WHERE `entry` = 22963;

-- Coilskar General
UPDATE `creature_template` SET `equipment_id` = 2142 WHERE `entry` = 22873;

-- Coilskar Harpooner
UPDATE `creature_template` SET `equipment_id` = 2143 WHERE `entry` = 22874;

-- Dragonmaw Wyrmcaller
UPDATE `creature_template` SET `equipment_id` = 2144 WHERE `entry` = 22960;

-- Illidari Blood Lord
UPDATE `creature_template` SET `equipment_id` = 2145 WHERE `entry` = 23397;

-- Illidari Fearbringer
UPDATE `creature_template` SET `equipment_id` = 2146 WHERE `entry` = 22954;

-- Akama (including Shade of Akama)
UPDATE `creature_template` SET `equipment_id` = 1679 WHERE `entry` IN (22990, 23089, 23191, 22841);

-- Aluyen
UPDATE `creature_template` SET `equipment_id` = 2147 WHERE `entry` = 23157;

-- Ashtongue Broken
UPDATE `creature_template` SET `equipment_id` = 2147 WHERE `entry` = 23319;

-- Ashtongue Stormcaller
UPDATE `creature_template` SET `equipment_id` = 2147 WHERE `entry` = 22846;

-- Okuno
UPDATE `creature_template` SET `equipment_id` = 2147 WHERE `entry` = 23159;

-- Seer Kanai
UPDATE `creature_template` SET `equipment_id` = 2147 WHERE `entry` = 23158;

-- Wrathbone Flayer
UPDATE `creature_template` SET `equipment_id` = 2148 WHERE `entry` = 22953;

-- Shadowmoon Deathshaper
UPDATE `creature_template` SET `equipment_id` = 2149 WHERE `entry` = 22882;

-- Shadowmoon Blood Mage
UPDATE `creature_template` SET `equipment_id` = 2150 WHERE `entry` = 22945;

-- Illidari Centurion
UPDATE `creature_template` SET `equipment_id` = 2151 WHERE `entry` = 23337;

-- Illidari Defiler
UPDATE `creature_template` SET `equipment_id` = 2152 WHERE `entry` = 22853;

-- Illidari Boneslicer
UPDATE `creature_template` SET `equipment_id` = 2153 WHERE `entry` = 22869;

-- Shadowmoon Weapon Master
UPDATE `creature_template` SET `equipment_id` = 2154 WHERE `entry` = 23049;

-- Bonechewer Brawler
UPDATE `creature_template` SET `equipment_id` = 2155 WHERE `entry` = 23222;

-- Bonechewer Combatant
UPDATE `creature_template` SET `equipment_id` = 2156 WHERE `entry` = 23239;

-- Shadowmoon Champion
UPDATE `creature_template` SET `equipment_id` = 2157 WHERE `entry` = 22880;

-- Illidari Assassin
UPDATE `creature_template` SET `equipment_id` = 2158 WHERE `entry` = 23403;

-- Illidari Archon
UPDATE `creature_template` SET `equipment_id` = 2159 WHERE `entry` = 23400;

-- Illidari Battle-Mage
UPDATE `creature_template` SET `equipment_id` = 2160 WHERE `entry` = 23402;

-- Illidari Heartseeker
UPDATE `creature_template` SET `equipment_id` = 2161 WHERE `entry` = 23339;

-- Bonechewer Bladefury
UPDATE `creature_template` SET `equipment_id` = 2162 WHERE `entry` = 23235;

-- Bonechewer Shield Deciple
UPDATE `creature_template` SET `equipment_id` = 2163 WHERE `entry` = 23236;

-- Hand of Gorefiend
UPDATE `creature_template` SET `equipment_id` = 2164 WHERE `entry` = 23172;

-- Shadowmoon Houndmaster
UPDATE `creature_template` SET `equipment_id` = 2165 WHERE `entry` = 23018;

-- Shadowmoon Reaver
UPDATE `creature_template` SET `equipment_id` = 2135 WHERE `entry` = 22879;

-- Leotheras the Blind (SSC)
UPDATE `creature_template` SET `equipment_id` = 2134 WHERE `entry` = 21215;

-- Vashj shield generator spawns
DELETE FROM gameobject WHERE id IN (185051, 185052, 185053, 185054);
INSERT IGNORE INTO gameobject (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47482, 185052, 548, 1, 49.6262, -902.181, 43.0975, 3.97284, 0, 0, 0.914865, -0.40376, 7200, 0, 1),
(47483, 185054, 548, 1, 49.3126, -943.398, 42.5501, 2.34235, 0, 0, 0.921208, 0.389071, 7200, 0, 1),
(47484, 185051, 548, 1, 10.3859, -944.036, 42.5446, 0.846163, 0, 0, 0.410572, 0.911828, 7200, 0, 1),
(47485, 185053, 548, 1, 10.988, -901.616, 42.5371, 5.42582, 0, 0, 0.415671, -0.909515, 7200, 0, 1);
-- gvcoman end

-- random nf!
-- 
-- mangos 5831
-- 

INSERT IGNORE INTO `skill_fishing_base_level` VALUES (1,-70),(12,-70),(14,-70),(85,-70),(141,-70),(215,-70),(3524,-70),(3430,-70),(17,-20),(38,-20),(40,-20),(130,-20),(148,-20),(718,-20),(719,-20),(1519,-20),(1537,-20),(1581,-20),(1637,-20),(1638,-20),(1657,-20),(3525,-20),(3433,-20),(10,55),(11,55),(44,55),(267,55),(331,55),(406,55),(8,130),(15,130),(33,130),(36,130),(45,130),(400,130),(405,130),(796,130),(16,205),(28,205),(47,205),(357,205),(361,205),(440,205),(490,205),(493,205),(1417,205),(2100,205),(3483,280),(3520,280),(3521,305),(41,330),(46,330),(139,330),(618,330),(1377,330),(1977,330),(2017,330),(2057,330),(3805,330),(3519,355),(4080,355),(3518,380),(3523,380),(297,205),(3625,280),(1112,330),(1222,330),(1227,330),(3140,330),(3653,355),(3656,355),(3658,355),(3614,395),(3621,395),(3690,405),(3691,405),(3692,405),(3859,405);

-- 
-- gatherable and minable creatures
-- 

UPDATE `creature_template` SET `skinloot`=80000 WHERE flag1=flag1|256 AND `rank`=0 AND `MinLevel` BETWEEN 61 AND 65;
DELETE FROM `skinning_loot_template` WHERE `entry`=80000;
INSERT IGNORE INTO `skinning_loot_template` VALUES 
(80000, 24401, 0, 1, 1, 1, 0, 0, 0, 0), -- Unidentified Plant Parts
(80000, 27859, 20, 1, 1, 1, 0, 0, 0, 0), -- Zangar Caps
(80000, 25813, 20, 1, 1, 1, 0, 0, 0, 0), -- Small Mushroom
(80000, 22575, 9, 1, 1, 2, 0, 0, 0, 0), -- Mote of Life
(80000, 22785, 5, 1, 1, 1, 0, 0, 0, 0), -- Felweed
(80000, 22787, 5, 1, 1, 1, 0, 0, 0, 0), -- Ragveil
(80000, 22789, 5, 1, 1, 1, 0, 0, 0, 0), -- Terocone
(80000, 22786, 5, 1, 1, 1, 0, 0, 0, 0), -- Dreaming Glory
(80000, 22790, 2, 1, 1, 1, 0, 0, 0, 0), -- Ancient Lichen
(80000, 22794, 0.5, 1, 1, 1, 0, 0, 0, 0); -- Fel Lotus
UPDATE `creature_template` SET `skinloot`=80001 WHERE flag1=flag1|256 AND `rank`=1 AND `MinLevel` BETWEEN 61 AND 70;
UPDATE `creature_template` SET `skinloot`=80001 WHERE flag1=flag1|256 AND `rank`=0 AND `MinLevel` BETWEEN 66 AND 70;
DELETE FROM `skinning_loot_template` WHERE `entry`=80001;
INSERT IGNORE INTO `skinning_loot_template` VALUES 
(80001, 24401, 0, 1, 1, 1, 0, 0, 0, 0), -- Unidentified Plant Parts
(80001, 29453, 20, 1, 1, 1, 0, 0, 0, 0), -- Sporeggar Mushroom
(80001, 25813, 20, 1, 1, 1, 0, 0, 0, 0), -- Small Mushroom
(80001, 22575, 10, 1, 1, 2, 0, 0, 0, 0), -- Mote of Life
(80001, 22785, 5, 1, 1, 1, 0, 0, 0, 0), -- Felweed
(80001, 22787, 5, 1, 1, 1, 0, 0, 0, 0), -- Ragveil
(80001, 22789, 5, 1, 1, 1, 0, 0, 0, 0), -- Terocone
(80001, 22786, 5, 1, 1, 1, 0, 0, 0, 0), -- Dreaming Glory
(80001, 22790, 2, 1, 1, 1, 0, 0, 0, 0), -- Ancient Lichen
(80001, 22794, 0.8, 1, 1, 1, 0, 0, 0, 0); -- Fel Lotus
UPDATE `creature_template` SET `skinloot`=80002 WHERE flag1=flag1|256 AND `rank`=1 AND `MinLevel`>70;
DELETE FROM `skinning_loot_template` WHERE `entry`=80002;
INSERT IGNORE INTO `skinning_loot_template` VALUES 
(80002, 22575, 99, 1, 2, 5, 0, 0, 0, 0), -- Mote of Life
(80002, 22794, 1, 1, 1, 1, 0, 0, 0, 0), -- Fel Lotus
(80002, 22785, 0, 2, 2, 8, 0, 0, 0, 0), -- Felweed
(80002, 22786, 0, 2, 2, 8, 0, 0, 0, 0), -- Dreaming Glory
(80002, 22789, 0, 2, 2, 8, 0, 0, 0, 0), -- Terocone
(80002, 22787, 0, 3, 2, 8, 0, 0, 0, 0), -- Ragveil
(80002, 22790, 0, 3, 2, 8, 0, 0, 0, 0), -- Ancient Lichen
(80002, 22793, 0, 3, 2, 8, 0, 0, 0, 0); -- Mana Thistle
UPDATE `creature_template` SET `skinloot`=80003 WHERE flag1=flag1|512 AND `rank`=0;
DELETE FROM `skinning_loot_template` WHERE `entry`=80003;
INSERT IGNORE INTO `skinning_loot_template` VALUES 
(80003, 24189, 100, 0, 1, 1, 0, 0, 0, 0), -- Crystalline Fragments
(80003, 22573, 20, 1, 1, 3, 0, 0, 0, 0), -- Mote of Earth
(80003, 23077, 0.6, 1, 1, 1, 0, 0, 0, 0), -- Blood Garnet
(80003, 21929, 0.6, 1, 1, 1, 0, 0, 0, 0), -- Flame Spessarite
(80003, 23112, 0.6, 1, 1, 1, 0, 0, 0, 0), -- Golden Draenite
(80003, 23079, 0.6, 1, 1, 1, 0, 0, 0, 0), -- Deep Peridot
(80003, 23117, 0.6, 1, 1, 1, 0, 0, 0, 0), -- Azure Moonstone
(80003, 23107, 0.6, 1, 1, 1, 0, 0, 0, 0); -- Shadow Draenite
UPDATE `creature_template` SET `skinloot`=80004 WHERE flag1=flag1|512 AND `rank`>0;
DELETE FROM `skinning_loot_template` WHERE `entry`=80004;
INSERT IGNORE INTO `skinning_loot_template` VALUES 
(80004, 24189, 100, 0, 1, 1, 0, 0, 0, 0), -- Crystalline Fragments
(80004, 22573, 20, 1, 1, 3, 0, 0, 0, 0), -- Mote of Earth
(80004, 23077, 0.9, 1, 1, 1, 0, 0, 0, 0), -- Blood Garnet
(80004, 21929, 0.9, 1, 1, 1, 0, 0, 0, 0), -- Flame Spessarite
(80004, 23112, 0.9, 1, 1, 1, 0, 0, 0, 0), -- Golden Draenite
(80004, 23079, 0.9, 1, 1, 1, 0, 0, 0, 0), -- Deep Peridot
(80004, 23117, 0.9, 1, 1, 1, 0, 0, 0, 0), -- Azure Moonstone
(80004, 23107, 0.9, 1, 1, 1, 0, 0, 0, 0); -- Shadow Draenite


-- 
-- quest
-- 

-- misc
UPDATE `quest_template` SET `PrevQuestId`=9469 WHERE `entry`=9476;
UPDATE `quest_template` SET `PrevQuestId`=9476 WHERE `entry`=9475;
UPDATE `quest_template` SET `MinLevel`=42 WHERE `entry` IN (9469,9476);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=9476;
UPDATE `quest_template` SET `ReqSourceId1`=34500, `ReqSourceCount1`=5, `ReqSourceRef1`=1 WHERE `entry`=11544;
UPDATE `quest_template` SET `ReqSpellCast1`=45030 WHERE `entry` IN (11537,11538);
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry` IN (302,273,454);
UPDATE `quest_template` SET `MinLevel`=7 WHERE `entry`=256;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry` IN (2038,307,1338,297);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=10645;

UPDATE `quest_template` SET `RewSpellCast`=28285 WHERE `entry`=9364;
UPDATE `quest_template` SET `RewSpellCast`=10143 WHERE `entry`=7463;

UPDATE `quest_template` SET `SkillOrClass`=762, `RequiredSkillValue`=225 WHERE `entry` IN (11096,11098,11021,11024,11028,11056,11029,11885,11074,11085,11093,11004,11006,11008);
UPDATE `quest_template` SET `SkillOrClass`=762, `RequiredSkillValue`=300 WHERE `entry` IN (10955,10961,10964,10965,10978,10979,10980,10986,10987,10988,10990,10991,10992,10993,10994,11001,11011);
UPDATE `quest_template` SET `SkillOrClass`=186, `RequiredSkillValue`=1 WHERE `entry` IN (4104,4109,5883,5888);
UPDATE `quest_template` SET `SkillOrClass`=182, `RequiredSkillValue`=1 WHERE `entry` IN (4105,4110,5884,5889);
UPDATE `quest_template` SET `SkillOrClass`=393, `RequiredSkillValue`=1 WHERE `entry` IN (4106,4111,5885,5890);
UPDATE `quest_template` SET `SkillOrClass`=333, `RequiredSkillValue`=1 WHERE `entry` IN (4107,4112,5886,5891);
UPDATE `quest_template` SET `SkillOrClass`=762, `RequiredSkillValue`=300 WHERE `entry`=11012;
UPDATE `quest_template` SET `SkillOrClass`=393, `RequiredSkillValue`=350 WHERE `entry`=11016;
UPDATE `quest_template` SET `SkillOrClass`=182, `RequiredSkillValue`=350 WHERE `entry`=11017;
UPDATE `quest_template` SET `SkillOrClass`=186, `RequiredSkillValue`=350 WHERE `entry`=11018;
UPDATE `quest_template` SET `SkillOrClass`=171, `RequiredSkillValue`=210 WHERE `entry`=2501;

-- QuestFlags|512

UPDATE `quest_template` SET 
`RewChoiceItemId1`=31104, `RewChoiceItemId2`=31105, `RewChoiceItemId3`=31106, 
`RewChoiceItemId4`=31107, `RewChoiceItemId5`=31109, `RewChoiceItemId6`=31110, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1, `RewChoiceItemCount6`=1 
WHERE `entry` IN (10639,10645);
UPDATE `quest_template` SET 
`RewChoiceItemId1`=30015, `RewChoiceItemId2`=30007, `RewChoiceItemId3`=30018, 
`RewChoiceItemId4`=30017, `RewChoiceItemId5`=0, `RewChoiceItemId6`=0, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=0, `RewChoiceItemCount6`=0 
WHERE `entry`=11007;
UPDATE `quest_template` SET 
`RewItemId1`=23846, `RewItemCount1`=1 
WHERE `entry`=9561;
UPDATE `quest_template` SET 
`RewChoiceItemId1`=25574, `RewChoiceItemId2`=25576, `RewChoiceItemId3`=25575, 
`RewChoiceItemId4`=0, `RewChoiceItemId5`=0, `RewChoiceItemId6`=0, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=0, `RewChoiceItemCount5`=0, `RewChoiceItemCount6`=0 
WHERE `entry`=9866;
UPDATE `quest_template` SET 
`RewChoiceItemId1`=28173, `RewChoiceItemId2`=28169, `RewChoiceItemId3`=28172, 
`RewChoiceItemId4`=28175, `RewChoiceItemId5`=0, `RewChoiceItemId6`=0, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=0, `RewChoiceItemCount6`=0, 
`RewItemId1`=28168, `RewItemCount1`=1 
WHERE `entry`=10212;
UPDATE `quest_template` SET 
`RewChoiceItemId1`=31071, `RewChoiceItemId2`=31072, `RewChoiceItemId3`=31073, 
`RewChoiceItemId4`=31036, `RewChoiceItemId5`=31062, `RewChoiceItemId6`=31038, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1, `RewChoiceItemCount6`=1, 
`RewItemId1`=31074, `RewItemCount1`=1 
WHERE `entry`=10588;
UPDATE `quest_template` SET 
`RewChoiceItemId1`=31492, `RewChoiceItemId2`=31491, `RewChoiceItemId3`=31490, 
`RewChoiceItemId4`=31494, `RewChoiceItemId5`=31493, `RewChoiceItemId6`=0, 
`RewChoiceItemCount1`=1, `RewChoiceItemCount2`=1, `RewChoiceItemCount3`=1, `RewChoiceItemCount4`=1, `RewChoiceItemCount5`=1, `RewChoiceItemCount6`=0 
WHERE `entry`=10870;

-- 
-- creature
-- 

-- gossipflag
UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (17876,18887,18725,18723);
-- thrall(hillsbrad)
UPDATE `creature_template` SET `faction_A`=1747, `faction_H`=1747, `speed`='1' WHERE `entry`=17876;
-- misc old hillsbrad
UPDATE `creature_template` SET `faction_A`=1748, `faction_H`=1748 WHERE `entry` IN (17819,17820,17833,17840,17860,18764,18765,18934,17862,17848,22398);
UPDATE `creature_template` SET `faction_A`=1749, `faction_H`=1749 WHERE `entry` IN (17815,17814);
-- hellmaw,vorpil
DELETE FROM `creature_movement` WHERE `id` IN (66999,67000);
-- sentry totem w/wrong spell
UPDATE `creature_template` SET `spell1`=0 WHERE `entry`=3968;
-- Recipe: Charred Bear Kabobs, Recipe: Juicy Bear Burger
INSERT IGNORE INTO `npc_vendor` VALUES (2803,35564,0,0,0);
INSERT IGNORE INTO `npc_vendor` VALUES (2803,35566,0,0,0);
INSERT IGNORE INTO `npc_vendor` VALUES (2806,35564,0,0,0);
INSERT IGNORE INTO `npc_vendor` VALUES (2806,35566,0,0,0);

-- 
-- relation
-- 

INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (24967,11523);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (24967,11526);
INSERT IGNORE INTO `creature_questrelation` (`id`, `quest`) VALUES (24965,11525);

-- 
-- script,spells
-- 

INSERT IGNORE INTO `spell_script_target` VALUES (38112, 1, 21212);
INSERT IGNORE INTO `spell_script_target` VALUES (45030, 1, 25065);
INSERT IGNORE INTO `spell_teleport` VALUES (41234, 530, -3649.92, 317.469, 35.2827, 2.94285);

-- black morass
UPDATE `areatrigger_teleport` SET `required_quest_done`=10285 WHERE `id`=4320;
UPDATE `areatrigger_teleport` SET `required_failed_text`='You can\'t enter Black Morass until you rescue Thrall from Durnholde Keep.' WHERE `id`=4320;
UPDATE `areatrigger_teleport` SET `name`='Caverns of Time, Black Morass - Entrance' WHERE `id`=4320;
UPDATE `areatrigger_teleport` SET `name`='Caverns of Time, Black Morass - Exit' WHERE `id`=4322;
-- old hillsbrad foothills
UPDATE `areatrigger_teleport` SET `required_quest_done`=10277 WHERE `id`=4321;
UPDATE `areatrigger_teleport` SET `name`='Caverns of Time, Old Hillsbrad Foothills - Entrance' WHERE `id`=4321;
UPDATE `areatrigger_teleport` SET `name`='Caverns of Time, Old Hillsbrad Foothills - Exit' WHERE `id`=4324;

-- 
-- item loot
-- 

-- Brilliant Glass
DELETE FROM `item_loot_template` WHERE `entry`=35945;
INSERT IGNORE INTO `item_loot_template` VALUES 
(35945, 23436, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 23437, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 23438, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 23439, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 23440, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 23441, 0, 1, 1, 1, 0, 0, 0, 0),
(35945, 32227, 0.1, 1, 1, 1, 0, 0, 0, 0),
(35945, 32228, 0.1, 1, 1, 1, 0, 0, 0, 0),
(35945, 32229, 0.1, 1, 1, 1, 0, 0, 0, 0),
(35945, 32230, 0.1, 1, 1, 1, 0, 0, 0, 0),
(35945, 32231, 0.1, 1, 1, 1, 0, 0, 0, 0),
(35945, 32249, 0.1, 1, 1, 1, 0, 0, 0, 0);

-- 
-- fish'n-beer
-- 

-- 
-- Get rid of trash
-- 
DELETE FROM `fishing_loot_template` WHERE `entry` IN (124,968,1176,1477,2597,2631,3358,3557);
-- 
-- ZONE 1
-- 
-- dun morogh (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1,77,131,132,133,134,135,136,137,138,189,211,212,716,800,801,802,803,804,805,806,807,808,809,2102);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- elwynn (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (12,9,18,23,24,34,53,54,55,56,57,59,60,61,62,63,64,80,86,87,88,89,91,92,120,797,798);
INSERT IGNORE INTO `fishing_loot_template` VALUES (12, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- teldrassil (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (141,186,187,188,256,257,258,259,260,261,262,263,264,265,266,478,696,697,698,699,700,701,736);
INSERT IGNORE INTO `fishing_loot_template` VALUES (141, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- teldrassil (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (702,2322);
INSERT IGNORE INTO `fishing_loot_template` VALUES (702, 70002, 100, 1, -70002, 1, 0, 0, 0, 0),(2322, 70002, 100, 1, -70002, 1, 0, 0, 0, 0);
-- durotar (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (367,814,2979);
INSERT IGNORE INTO `fishing_loot_template` VALUES (367, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(814, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(2979, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- durotar (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (14,362,363,364,365,366,368,369,370,371,372,373,374,375,393,407,410,638,639,640,816,817,1296,1297,2320,2337);
INSERT IGNORE INTO `fishing_loot_template` VALUES (14, 70002, 100, 1, -70002, 1, 0, 0, 0, 0);
-- mulgore (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (215,220,221,222,223,224,225,358,360,396,397,398,399,404,470,471,472,473,474,475,476,637,818,819,820,821,2137);
INSERT IGNORE INTO `fishing_loot_template` VALUES (215, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- azuremyst isle (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3526,3527,3528);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3526, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(3527, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(3528, 70001, 100, 1, -70001, 1, 0, 0, 0, 0);
-- azuremyst isle (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3524,3529,3530,3559,3560,3561,3564,3566,3567,3568,3569,3570,3571,3572,3573,3574,3575,3576,3577,3578,3579,3580,3581,3639,3857,3915,3916);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3524, 70002, 100, 1, -70002, 1, 0, 0, 0, 0);
-- eversong woods (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3470,3473,3475,3482);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3470, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(3473, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(3475, 70001, 100, 1, -70001, 1, 0, 0, 0, 0),(3482, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- eversong woods (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3430,3431,3432,3460,3461,3462,3463,3464,3465,3466,3467,3468,3469,3471,3472,3474,3476,3480,3481,3484,3485,3531,3532,3533,3534,3558,3662,3663,3664,3665,3911,3912,3913,3914);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3430, 70002, 100, 1, -70002, 1, 0, 0, 0, 0);
-- tirisfal glades (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (85,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,173,459,810,811,812,2117,2118,2119);
INSERT IGNORE INTO `fishing_loot_template` VALUES (85, 70100, 100, 1, -70100, 1, 0, 0, 0, 0);
-- tirisfal glades (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (168,169,2399);
INSERT IGNORE INTO `fishing_loot_template` VALUES (168, 70002, 100, 1, -70002, 1, 0, 0, 0, 0),(169, 70002, 100, 1, -70002, 1, 0, 0, 0, 0),(2399, 70002, 100, 1, -70002, 1, 0, 0, 0, 0);
-- 
-- ZONE 2
-- 
-- loch modan (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (38,142,143,144,145,146,147,149,556,837,838,839,923,924,925,936,2101);
INSERT IGNORE INTO `fishing_loot_template` VALUES (38, 6317, 25, 0, 1, 1, 0, 0, 0, 0),(38, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- silverpine forest (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (130,172,204,213,227,228,229,230,231,232,233,235,236,237,238,239,240,926,927,928,1338);
INSERT IGNORE INTO `fishing_loot_template` VALUES (130, 70100, 100, 1, -70100, 1, 0, 0, 0, 0);
-- silverpine forest (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (226,305,306,2398);
INSERT IGNORE INTO `fishing_loot_template` VALUES (226, 70004, 100, 1, -70004, 1, 0, 0, 0, 0),(305, 70004, 100, 1, -70004, 1, 0, 0, 0, 0),(306, 70004, 100, 1, -70004, 1, 0, 0, 0, 0),(2398, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- westfall (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (40,20,26,107,108,109,111,113,219,916,917,918,919,920,921,922,1518,2364);
INSERT IGNORE INTO `fishing_loot_template` VALUES (40, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- westfall (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (2,115);
INSERT IGNORE INTO `fishing_loot_template` VALUES (2, 70004, 100, 1, -70004, 1, 0, 0, 0, 0),(115, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- ghostlands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3489,3496,3506,3515,3507,3508);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3489, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(3496, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(3506, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(3507, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(3508, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(3515, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- ghostlands (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3433,3488,3490,3491,3492,3493,3494,3495,3497,3498,3499,3500,3501,3502,3503,3504,3505,3509,3510,3511,3512,3513,3514,3516,3517,3823,3856,3861);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3433, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- bloodmyst isle (inland, one special pool)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3595);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3595, 70102, 100, 1, -70102, 1, 0, 0, 0, 0);
-- bloodmyst isle (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3525,3583,3584,3585,3586,3587,3588,3589,3590,3591,3592,3593,3594,3596,3597,3598,3599,3600,3601,3602,3603,3604,3608,3612,3846,3906,3907,3908,3909,3910);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3525, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- the barrens (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (17,359,378,379,380,381,383,385,390,391,392,401,458,720,877,1157,1316,1597,1598,1599,1600,1601,1602,1603,1697,1698,1699,1700,1702,1703,1704,1717,1718,2138,2157,2319,2757);
INSERT IGNORE INTO `fishing_loot_template` VALUES (17, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- the barrens (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (384,815,1156,1701);
INSERT IGNORE INTO `fishing_loot_template` VALUES (384, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(815, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(1156, 70003, 100, 1, -70003, 1, 0, 0, 0, 0),(1701, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- the barrens (inland, special pool)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (382);
INSERT IGNORE INTO `fishing_loot_template` VALUES (382, 6651, 0.1, 0, 1, 1, 0, 0, 0, 0),(382, 70102, 100, 1, -70102, 1, 0, 0, 0, 0);
-- the barrens (inland, oasis deviate fish + WC)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (386,387,388,718);
INSERT IGNORE INTO `fishing_loot_template` VALUES (386, 70103, 100, 1, -70103, 1, 0, 0, 0, 0),(387, 70103, 100, 1, -70103, 1, 0, 0, 0, 0),(388, 70103, 100, 1, -70103, 1, 0, 0, 0, 0),(718, 70103, 100, 1, -70103, 1, 0, 0, 0, 0);
-- stonetalon mountains (inland) (bit special, since one are is zone 3 fish)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (406,460,461,464,465,466,467,468,469,1076,1277,2160,2537,2538,2539,2540,2541,3157);
INSERT IGNORE INTO `fishing_loot_template` VALUES (406, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- stonetalon mountains (inland, special pool)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (636,463);
INSERT IGNORE INTO `fishing_loot_template` VALUES (463, 70102, 100, 1, -70102, 1, 0, 0, 0, 0),(636, 70102, 100, 1, -70102, 1, 0, 0, 0, 0);
-- the deadmines (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1581,1582);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1581, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- blackfathom deeps (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (719);
INSERT IGNORE INTO `fishing_loot_template` VALUES (719, 70100, 100, 1, -70100, 1, 0, 0, 0, 0);
-- darkshore (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (443,445,448,454,456,2077);
INSERT IGNORE INTO `fishing_loot_template` VALUES (443, 70104, 100, 1, -70104, 1, 0, 0, 0, 0),(445, 70104, 100, 1, -70104, 1, 0, 0, 0, 0),(448, 70104, 100, 1, -70104, 1, 0, 0, 0, 0),(454, 70104, 100, 1, -70104, 1, 0, 0, 0, 0),(456, 70104, 100, 1, -70104, 1, 0, 0, 0, 0),(2077, 70104, 100, 1, -70104, 1, 0, 0, 0, 0);
-- darkshore (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (148,442,444,446,447,449,450,452,453,455,2078,2326);
INSERT IGNORE INTO `fishing_loot_template` VALUES (148, 70105, 100, 1, -70105, 1, 0, 0, 0, 0);
-- The Veiled Sea (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (457);
INSERT IGNORE INTO `fishing_loot_template` VALUES (457, 70004, 100, 1, -70004, 1, 0, 0, 0, 0);
-- 
-- CITIES (all zone 2 fish)
-- 
-- darnassus
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1657,1658,1659,1660,1661,1662);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1657, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- ironforge
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1537);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1537, 34484, 0.1, 0, 1, 1, 0, 0, 0, 0),(1537, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- orgrimmar
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1637);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1637, 34864, -20, 0, 1, 1, 0, 0, 0, 0),(1637, 34486, 0.1, 0, 1, 1, 0, 0, 0, 0),(1637, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- stormwind city
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1519,1617);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1519, 34864, -20, 0, 1, 1, 0, 0, 0, 0),(1519, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- thunder bluff
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1638,1639,1640,1641,2197);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1638, 70003, 100, 1, -70003, 1, 0, 0, 0, 0);
-- undercity
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1497);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1497, 70101, 100, 1, -70101, 1, 0, 0, 0, 0);
-- 
-- ZONE 3
-- 
-- redridge (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (44,68,69,70,71,95,96,97,98,996,997,998,999,1000,1001,1002,2099);
INSERT IGNORE INTO `fishing_loot_template` VALUES (44, 1467, -100, 0, 1, 1, 0, 0, 0, 0),(44, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- duskwood (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (10,13,32,42,93,94,121,241,242,243,244,245,492,536,576,799,856,1097,1098,2098,2161);
INSERT IGNORE INTO `fishing_loot_template` VALUES (10, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- ashenvale (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (331,411,412,413,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,441,879,1276,2301,2357,2358,2359,2360,2457,2637,2797,2897,3177,3319);
INSERT IGNORE INTO `fishing_loot_template` VALUES (331, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- ashenvale (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (414,2325);
INSERT IGNORE INTO `fishing_loot_template` VALUES (414, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(2325, 70006, 100, 1, -70006, 1, 0, 0, 0, 0);
-- hillsbrad (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (267,271,272,275,285,286,287,288,289,290,294,295,896,1056,1057,2397,2777);
INSERT IGNORE INTO `fishing_loot_template` VALUES (267, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- hillsbrad (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (271,294,295,2397);
INSERT IGNORE INTO `fishing_loot_template` VALUES (271, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(294, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(295, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(2397, 70006, 100, 1, -70006, 1, 0, 0, 0, 0);
-- wetlands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (11,118,205,309,836,881,1016,1017,1018,1020,1021,1022,1023,1024,1025,1036,1037,1038,2103);
INSERT IGNORE INTO `fishing_loot_template` VALUES (11, 70005, 100, 1, -70005, 1, 0, 0, 0, 0);
-- wetlands (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (150,298,299,1039,2104,2365,2402);
INSERT IGNORE INTO `fishing_loot_template` VALUES (150, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(298, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(299, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(1039, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(2104, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(2365, 70006, 100, 1, -70006, 1, 0, 0, 0, 0),(2402, 70006, 100, 1, -70006, 1, 0, 0, 0, 0);
-- 
-- ZONE 4
-- 
-- Alterac Mountains (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (36,277,278,279,280,281,282,283,284,1339,1357,1677,1678,1679,1680,1681,1682,1683,1684,2839,3486);
INSERT IGNORE INTO `fishing_loot_template` VALUES (36, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Arathi Highlands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (45,313,314,315,316,317,318,320,321,322,323,324,325,326,333,334,335,336,880,1837,1857,1858,2401);
INSERT IGNORE INTO `fishing_loot_template` VALUES (45, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Arathi Highlands (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (327,328);
INSERT IGNORE INTO `fishing_loot_template` VALUES (327, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(328, 70008, 100, 1, -70008, 1, 0, 0, 0, 0);
-- Desolace (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (405,596,597,599,600,602,603,604,606,607,608,609,2198,2217,2404,2407,2617,2657);
INSERT IGNORE INTO `fishing_loot_template` VALUES (405, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Desolace (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (598,2324,2405,2406,2408);
INSERT IGNORE INTO `fishing_loot_template` VALUES (598, 16968, -20, 0, 1, 1, 0, 0, 0, 0),(598, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2324, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2405, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2406, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2408, 70008, 100, 1, -70008, 1, 0, 0, 0, 0);
-- Dustwallow Marsh (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (15,403,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,514,515,2158,2302,2318,4010,4046,4049);
INSERT IGNORE INTO `fishing_loot_template` VALUES (15, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Dustwallow Marsh (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (513,516,517,518,2079,4047);
INSERT IGNORE INTO `fishing_loot_template` VALUES (513, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(516, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(517, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(518, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2079, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(4047, 70008, 100, 1, -70008, 1, 0, 0, 0, 0);
-- Swamp of Sorrows (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (8,74,75,76,116,657,1777,1778,1779,1780,1798,1817,1978);
INSERT IGNORE INTO `fishing_loot_template` VALUES (8, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Swamp of Sorrows (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (300,1797,2403);
INSERT IGNORE INTO `fishing_loot_template` VALUES (300, 16970, -20, 0, 1, 1, 0, 0, 0, 0),(300, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(1797, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2403, 70008, 100, 1, -70008, 1, 0, 0, 0, 0);
-- Scarlet Monastery (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (796);
INSERT IGNORE INTO `fishing_loot_template` VALUES (796, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Thousand Needles (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (400,439,479,480,481,482,483,484,485,486,487,488,1557,2097,2237,2238,2239,2240,2303,3037,3038,3039);
INSERT IGNORE INTO `fishing_loot_template` VALUES (400, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Stranglethorn Vale (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (33,7,19,37,99,100,101,102,103,105,106,123,125,126,127,128,129,303,310,477,1737,1738,1740,1741,1742,1757,1758,1759,1760,2177,2338);
INSERT IGNORE INTO `fishing_loot_template` VALUES (33, 70007, 100, 1, -70007, 1, 0, 0, 0, 0);
-- Stranglethorn Vale (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (35,43,104,117,122,301,302,311,312,1577,1578,1739,2339,3357);
INSERT IGNORE INTO `fishing_loot_template` VALUES (35, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(43, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(104, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(117, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(122, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(301, 16969, -20, 0, 1, 1, 0, 0, 0, 0),(301, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(302, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(311, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(312, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(1577, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(1578, 16969, -20, 0, 1, 1, 0, 0, 0, 0),(1578, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(1739, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(2339, 70008, 100, 1, -70008, 1, 0, 0, 0, 0),(3357, 70008, 100, 1, -70008, 1, 0, 0, 0, 0);
-- Stranglethorn Vale (coastal, Jaguero Isle, zone 5)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (297);
INSERT IGNORE INTO `fishing_loot_template` VALUES (297, 70010, 100, 1, -70010, 1, 0, 0, 0, 0);
-- 
-- ZONE 5
-- 
-- Azshara (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (16,878,1216,1217,1218,1219,1220,1221,1223,1224,1225,1232,1233,1234,1235,1236,1237,2321,2497,3137,3138);
INSERT IGNORE INTO `fishing_loot_template` VALUES (16, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Azshara (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1226,1228,1229,1230,1231,1256);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1226, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(1228, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(1229, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(1230, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(1231, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(1256, 70010, 100, 1, -70010, 1, 0, 0, 0, 0);
-- Azshara (coastal, Bay of Storms, Hetaera's Clutch and Scalebeard's Cave only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1222,1227,3140);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1222, 70106, 100, 1, -70106, 1, 0, 0, 0, 0),(1227, 70106, 100, 1, -70106, 1, 0, 0, 0, 0),(3140, 70106, 100, 1, -70106, 1, 0, 0, 0, 0);
-- Felwood (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (361,1761,1762,1763,1764,1765,1766,1767,1768,1769,1770,1771,1997,1998,2478,2479,2480,2481,2618);
INSERT IGNORE INTO `fishing_loot_template` VALUES (361, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Feralas (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (357,489,1099,1100,1101,1102,1103,1104,1105,1106,1107,1109,1110,1111,1113,1114,1115,1118,1119,1136,1137,2323,2518,2519,2520,2521,2522,2577,3117);
INSERT IGNORE INTO `fishing_loot_template` VALUES (357, 70009, 100, 1, -70009, 1, 0, 0, 0, 0),(2521, 16967, -20, 0, 1, 1, 0, 0, 0, 0),(2521, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Feralas (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1108,1116,1117,1120,1121);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1108, 70010, 100, 1, -70010, 1, 0, 0, 0, 0);
-- Feralas (Jademir Lake using zone 6 inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1112);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1112, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- The Hinterlands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (47,348,349,350,351,352,353,354,355,356,1880,1881,1882,1883,1884,1885,1886,1887,1917,2400);
INSERT IGNORE INTO `fishing_loot_template` VALUES (47, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- The Hinterlands (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (307,3317);
INSERT IGNORE INTO `fishing_loot_template` VALUES (307, 70010, 100, 1, -70010, 1, 0, 0, 0, 0),(3317, 70010, 100, 1, -70010, 1, 0, 0, 0, 0);
-- Moonglade (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (493,656,2361,2362,2363);
INSERT IGNORE INTO `fishing_loot_template` VALUES (493, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Un'Goro Crater (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (490,538,539,540,541,542,543,1942,1943);
INSERT IGNORE INTO `fishing_loot_template` VALUES (490, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Un'Goro Crater (Fire Plume Ridge only)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (537);
INSERT IGNORE INTO `fishing_loot_template` VALUES (537, 70107, 100, 1, -70107, 1, 0, 0, 0, 0);
-- Western Plaguelands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (28,190,192,193,195,196,197,198,199,200,201,202,203,813,2297,2298,2620,3197);
INSERT IGNORE INTO `fishing_loot_template` VALUES (28, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Tanaris (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (440,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,1336,1937,1938,1939,1940,2300,2317,2857);
INSERT IGNORE INTO `fishing_loot_template` VALUES (440, 70010, 100, 1, -70010, 1, 0, 0, 0, 0);
-- Maraudon (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (2100);
INSERT IGNORE INTO `fishing_loot_template` VALUES (2100, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- Sunken Temple (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1417);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1417, 70009, 100, 1, -70009, 1, 0, 0, 0, 0);
-- 
-- ZONE 6
-- 
-- Burning Steppes (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (46,249,250,251,252,253,254,255,2417,2418,2419,2420,2421);
INSERT IGNORE INTO `fishing_loot_template` VALUES (46, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Eastern Plaguelands (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (139,1019,2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274,2275,2276,2277,2278,2279,2299,2619,2621,2622,2623,2624,2625,2626,2627,4067);
INSERT IGNORE INTO `fishing_loot_template` VALUES (139, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Scholomance (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (2057);
INSERT IGNORE INTO `fishing_loot_template` VALUES (2057, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Silithus (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1377,2477,2737,2738,2739,2740,2741,2742,2743,2744,3077,3097,3098,3099,3100,3257,3425,3426,3427,3446,3447,3454);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1377, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Stratholme (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (2017);
INSERT IGNORE INTO `fishing_loot_template` VALUES (2017, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Winterspring (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (618,2241,2242,2243,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,3139);
INSERT IGNORE INTO `fishing_loot_template` VALUES (618, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- Zul'Gurub (inland)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (1977,19,3377,3378,3379,3380,3381,3382,3383,3384,3397,3398,3419);
INSERT IGNORE INTO `fishing_loot_template` VALUES (1977, 70011, 100, 1, -70011, 1, 0, 0, 0, 0);
-- 
-- OUTLAND ZONES
-- 
-- hellfire peninsula
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3483,3536,3538,3539,3541,3542,3543,3544,3545,3546,3547,3548,3549,3550,3551,3552,3553,3554,3555,3556,3582,3669,3670,3671,3765,3793,3794,3795,3796,3797,3798,3799,3800,3801,3802,3803,3804,3806,3807,3808,3809,3810,3811,3812,3813,3814,3815,3816,3835,3838,3884,3920,3955);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3483, 34867, -20, 0, 1, 1, 0, 0, 0, 0),(3483, 70012, 100, 1, -70012, 1, 0, 0, 0, 0);
-- zangarmarsh
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3521,3565,3640,3641,3642,3643,3644,3645,3646,3647,3648,3649,3650,3651,3652,3653,3654,3655,3656,3657,3658,3659,3660,3661,3667,3668,3718,3720,3766,3818,3819,3841,3895,3905);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3521, 70013, 100, 1, -70013, 1, 0, 0, 0, 0);
-- the underbog
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3716);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3716, 70013, 100, 1, -70013, 1, 0, 0, 0, 0);
-- serpentshrine cavern
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3607);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3607, 70013, 100, 1, -70013, 1, 0, 0, 0, 0);
-- terokkar forest()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3519,3674,3675,3676,3677,3678,3679,3680,3681,3682,3683,3685,3686,3687,3688,3689,3692,3693,3694,3695,3696,3697,3719,3858,3860,3885,3886,3887,3888,3889,3890,3891,3892,3893,3894,3901,3902,3946,3956,3957,3958,3961,3973,3974,3975,3976,3977,3978,4078);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3519, 34865, -20, 0, 1, 1, 0, 0, 0, 0),(3519, 70014, 100, 1, -70014, 1, 0, 0, 0, 0);
-- terokkar forest(silmyr lake,blackwind lake,lake ere'noru)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3859,3690,3691,3684);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3859, 70014, 100, 1, -70014, 1, 0, 0, 0, 0),(3690, 70014, 100, 1, -70014, 1, 0, 0, 0, 0),(3691, 70014, 100, 1, -70014, 1, 0, 0, 0, 0),(3684, 70014, 100, 1, -70014, 1, 0, 0, 0, 0);
-- nagrand
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3518,3609,3610,3611,3613,3615,3616,3617,3618,3619,3620,3622,3623,3624,3626,3627,3628,3629,3630,3631,3632,3633,3634,3635,3636,3637,3638,3666,3672,3673,3699,3700,3701,3705,3760,3761,3762,3763,3764,3788,3839);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3518, 70015, 100, 1, -70015, 1, 0, 0, 0, 0);
-- nagrand(skysong lake, lake sunspring and forge camp: hate)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3614,3621,3625);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3614, 35313, -33, 0, 1, 1, 0, 0, 0, 0),(3614, 70015, 100, 1, -70015, 1, 0, 0, 0, 0),(3621, 35313, -33, 0, 1, 1, 0, 0, 0, 0),(3621, 70015, 100, 1, -70015, 1, 0, 0, 0, 0),(3625, 70012, 100, 1, -70012, 1, 0, 0, 0, 0);
-- netherstorm()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3523,3712,3721,3722,3723,3724,3725,3726,3727,3728,3729,3730,3731,3732,3733,3734,3735,3736,3737,3738,3739,3740,3741,3742,3837,3842,3850,3851,3852,3854,3868,3873,3874,3875,3876,3877,3878,3879,3880,3881,3882,3883,3900,3921,3934,3935);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3523, 70015, 100, 1, -70015, 1, 0, 0, 0, 0);
-- shadowmoon valley()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3520,3743,3744,3745,3746,3747,3748,3749,3750,3751,3752,3753,3754,3755,3756,3757,3758,3759,3821,3822,3840,3926,3927,3928,3929,3930,3932,3933,3936,3937,3938,3939,3940,3941,3943,3944,3945,3947,3949,3950,3965,3966,3967);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3520, 34867, -20, 0, 1, 1, 0, 0, 0, 0),(3520, 70016, 100, 1, -70016, 1, 0, 0, 0, 0);
-- isle of quel'danas()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (4080,4081,4082,4083,4084,4085,4086,4087,4088,4089,4090,4091,4092,4093,4094,4095);
INSERT IGNORE INTO `fishing_loot_template` VALUES (4080, 70017, 100, 1, -70017, 1, 0, 0, 0, 0);
-- deadwind pass()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (41,2558,2559,2560,2561,2562,2563,2697,2837,2937,2938);
INSERT IGNORE INTO `fishing_loot_template` VALUES (41, 70018, 100, 1, -70018, 1, 0, 0, 0, 0);
-- zul'aman()
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3805);
INSERT IGNORE INTO `fishing_loot_template` VALUES (3805, 70018, 100, 1, -70018, 1, 0, 0, 0, 0);
-- 
-- TEMPLATES, COMMON
-- 
-- zone 1 inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70001;
INSERT IGNORE INTO `fishing_loot_template` VALUES 
(70001, 6291, 0, 1, 1, 1, 0, 0, 0, 0),(70001, 6289, 40, 1, 1, 1, 0, 0, 0, 0),(70001, 118, 0.4, 1, 1, 1, 0, 0, 0, 0),(70001, 2455, 0.4, 1, 1, 1, 0, 0, 0, 0),(70001, 6643, 0.2, 1, 1, 1, 0, 0, 0, 0),(70001, 6292, 0.1, 1, 1, 1, 0, 0, 0, 0),(70001, 6294, 0.07, 1, 1, 1, 0, 0, 0, 0),(70001, 6295, 0.03, 1, 1, 1, 0, 0, 0, 0);
-- zone 1 coastal
DELETE FROM `fishing_loot_template` WHERE `entry`=70002;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70002, 6303, 0, 1, 1, 1, 0, 0, 0, 0),(70002, 6356, 2, 1, 1, 1, 0, 0, 0, 0);
-- zone 2 inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70003;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70003, 6289, 0, 1, 1, 1, 0, 0, 0, 0),(70003, 6308, 30, 1, 1, 1, 0, 0, 0, 0),(70003, 6291, 18, 1, 1, 1, 0, 0, 0, 0),(70003, 858, 0.5, 1, 1, 1, 0, 0, 0, 0),(70003, 3385, 0.5, 1, 1, 1, 0, 0, 0, 0),(70003, 6309, 0.4, 1, 1, 1, 0, 0, 0, 0),(70003, 6645, 0.3, 1, 1, 1, 0, 0, 0, 0),(70003, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70003, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70003, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70003, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0),(70003, 8350, 0.05, 1, 1, 1, 0, 0, 0, 0);
-- zone 2 coastal
DELETE FROM `fishing_loot_template` WHERE `entry`=70004;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70004, 6361, 0, 1, 1, 1, 0, 0, 0, 0),(70004, 6303, 33.5, 1, 1, 1, 0, 0, 0, 0),(70004, 6358, 15, 1, 1, 1, 0, 0, 0, 0),(70004, 6353, 0.5, 1, 1, 1, 0, 0, 0, 0),(70004, 6307, 0.5, 1, 1, 1, 0, 0, 0, 0),(70004, 6351, 0.5, 1, 1, 1, 0, 0, 0, 0);
-- zone 3, inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70005;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70005, 6308, 0, 1, 1, 1, 0, 0, 0, 0),(70005, 6289, 35, 1, 1, 1, 0, 0, 0, 0),(70005, 929, 0.5, 1, 1, 1, 0, 0, 0, 0),(70005, 3827, 0.5, 1, 1, 1, 0, 0, 0, 0),(70005, 6647, 0.3, 1, 1, 1, 0, 0, 0, 0),(70005, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70005, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70005, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70005, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0),(70005, 6366, 0.05, 1, 1, 1, 0, 0, 0, 0);
-- zone 3, coastal
DELETE FROM `fishing_loot_template` WHERE `entry`=70006;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70006, 6361, 0, 1, 1, 1, 0, 0, 0, 0),(70006, 6358, 25, 1, 1, 1, 0, 0, 0, 0),(70006, 6359, 15, 1, 1, 1, 0, 0, 0, 0),(70006, 6307, 0.4, 1, 1, 1, 0, 0, 0, 0),(70006, 6354, 0.4, 1, 1, 1, 0, 0, 0, 0),(70006, 6352, 0.4, 1, 1, 1, 0, 0, 0, 0),(70006, 6360, 0.05, 1, 1, 1, 0, 0, 0, 0);
-- zone 4, inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70007;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70007, 8365, 0, 1, 1, 1, 0, 0, 0, 0),(70007, 6308, 40, 1, 1, 1, 0, 0, 0, 0),(70007, 3827, 0.7, 1, 1, 1, 0, 0, 0, 0),(70007, 1710, 0.3, 1, 1, 1, 0, 0, 0, 0),(70007, 8366, 0.3, 1, 1, 1, 0, 0, 0, 0),(70007, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70007, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70007, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70007, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- zone 4, coastal
DELETE FROM `fishing_loot_template` WHERE `entry`=70008;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70008, 6362, 0, 1, 1, 1, 0, 0, 0, 0),(70008, 4603, 20, 1, 1, 1, 0, 0, 0, 0),(70008, 6358, 12, 1, 1, 1, 0, 0, 0, 0),(70008, 6359, 12, 1, 1, 1, 0, 0, 0, 0),(70008, 6357, 0.4, 1, 1, 1, 0, 0, 0, 0),(70008, 6355, 0.4, 1, 1, 1, 0, 0, 0, 0);
-- zone 5, inland 
DELETE FROM `fishing_loot_template` WHERE `entry`=70009;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70009, 13758, 0, 1, 1, 1, 0, 0, 0, 0),(70009, 13759, 18, 1, 1, 1, 0, 0, 0, 0),(70009, 13760, 18, 1, 1, 1, 0, 0, 0, 0),(70009, 6358, 10, 1, 1, 1, 0, 0, 0, 0),(70009, 8365, 10, 1, 1, 1, 0, 0, 0, 0),(70009, 13757, 7, 1, 1, 1, 0, 0, 0, 0),(70009, 6149, 0.3, 1, 1, 1, 0, 0, 0, 0),(70009, 3928, 0.3, 1, 1, 1, 0, 0, 0, 0),(70009, 13881, 0.3, 1, 1, 1, 0, 0, 0, 0),(70009, 13885, 0.3, 1, 1, 1, 0, 0, 0, 0),(70009, 13886, 0.2, 1, 1, 1, 0, 0, 0, 0),(70009, 13882, 0.1, 1, 1, 1, 0, 0, 0, 0),(70009, 13883, 0.06, 1, 1, 1, 0, 0, 0, 0),(70009, 13884, 0.03, 1, 1, 1, 0, 0, 0, 0),(70009, 13887, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- zone 5, coastal
DELETE FROM `fishing_loot_template` WHERE `entry`=70010;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70010, 4603, 0, 1, 1, 1, 0, 0, 0, 0),(70010, 13754, 15, 1, 1, 1, 0, 0, 0, 0),(70010, 13422, 15, 1, 1, 1, 0, 0, 0, 0),(70010, 13756, 15, 1, 1, 1, 0, 0, 0, 0),(70010, 6359, 10, 1, 1, 1, 0, 0, 0, 0),(70010, 6362, 10, 1, 1, 1, 0, 0, 0, 0),(70010, 7973, 8, 1, 1, 1, 0, 0, 0, 0),(70010, 13874, 0.5, 1, 1, 1, 0, 0, 0, 0),(70010, 13875, 0.5, 1, 1, 1, 0, 0, 0, 0),(70010, 13876, 0.4, 1, 1, 1, 0, 0, 0, 0),(70010, 13877, 0.2, 1, 1, 1, 0, 0, 0, 0), (70010, 13878, 0.06, 1, 1, 1, 0, 0, 0, 0),(70010, 13879, 0.03, 1, 1, 1, 0, 0, 0, 0),(70010, 13880, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- zone 6, inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70011;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70011, 13889, 0, 1, 1, 1, 0, 0, 0, 0),(70011, 13890, 17, 1, 1, 1, 0, 0, 0, 0),(70011, 13759, 17, 1, 1, 1, 0, 0, 0, 0),(70011, 13760, 17, 1, 1, 1, 0, 0, 0, 0),(70011, 13757, 12, 1, 1, 1, 0, 0, 0, 0),(70011, 13758, 5, 1, 1, 1, 0, 0, 0, 0),(70011, 13446, 0.4, 1, 1, 1, 0, 0, 0, 0),(70011, 13443, 0.3, 1, 1, 1, 0, 0, 0, 0),(70011, 13891, 0.4, 1, 1, 1, 0, 0, 0, 0),(70011, 13901, 0.2, 1, 1, 1, 0, 0, 0, 0),(70011, 13902, 0.1, 1, 1, 1, 0, 0, 0, 0),(70011, 13903, 0.06, 1, 1, 1, 0, 0, 0, 0),(70011, 13904, 0.03, 1, 1, 1, 0, 0, 0, 0),(70011, 13905, 0.01, 1, 1, 1, 0, 0, 0, 0);-- zone outland, sub 1 (hellfire,forge camp: hate)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (70012);
INSERT IGNORE INTO `fishing_loot_template` VALUES (70012, 27441, 0, 1, 1, 1, 0, 0, 0, 0),(70012, 27422, 25, 1, 1, 1, 0, 0, 0, 0);
-- zone outland, sub 2 (zangarmarsh, +instances)
DELETE FROM `fishing_loot_template` WHERE `entry`=70013;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70013, 35313, -100, 0, 1, 1, 0, 0, 0, 0),(70013, 27422, 0, 1, 1, 1, 0, 0, 0, 0),(70013, 27425, 15, 1, 1, 1, 0, 0, 0, 0),(70013, 27429, 15, 1, 1, 1, 0, 0, 0, 0),(70013, 22578, 0.8, 1, 1, 2, 0, 0, 0, 0),(70013, 27513, 0.6, 1, 1, 1, 0, 0, 0, 0),(70013, 27511, 0.6, 1, 1, 1, 0, 0, 0, 0),(70013, 27515, 0.6, 1, 1, 1, 0, 0, 0, 0),(70013, 27516, 0.3, 1, 1, 1, 0, 0, 0, 0),(70013, 27442, 0.3, 1, 1, 1, 0, 0, 0, 0);
-- zone outland, sub 3 (terokkar forest)
DELETE FROM `fishing_loot_template` WHERE `entry`=70014;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70014, 27422, 0, 1, 1, 1, 0, 0, 0, 0),(70014, 27438, 20, 1, 1, 1, 0, 0, 0, 0),(70014, 27425, 15, 1, 1, 1, 0, 0, 0, 0),(70014, 22578, 0.8, 1, 1, 2, 0, 0, 0, 0),(70014, 27513, 0.6, 1, 1, 1, 0, 0, 0, 0),(70014, 27511, 0.6, 1, 1, 1, 0, 0, 0, 0),(70014, 27515, 0.7, 1, 1, 1, 0, 0, 0, 0),(70014, 27516, 0.4, 1, 1, 1, 0, 0, 0, 0),(70014, 27442, 0.4, 1, 1, 1, 0, 0, 0, 0);
-- zone outland, sub 4 (nagrand + 2 lakes, netherstorm)
DELETE FROM `fishing_loot_template` WHERE `entry`=70015;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70015, 27422, 0, 1, 1, 1, 0, 0, 0, 0),(70015, 27437, 22, 1, 1, 1, 0, 0, 0, 0),(70015, 27435, 22, 1, 1, 1, 0, 0, 0, 0),(70015, 22578, 0.8, 1, 1, 2, 0, 0, 0, 0),(70015, 27513, 0.6, 1, 1, 1, 0, 0, 0, 0),(70015, 27511, 0.6, 1, 1, 1, 0, 0, 0, 0),(70015, 27515, 0.6, 1, 1, 1, 0, 0, 0, 0),(70015, 27516, 0.5, 1, 1, 1, 0, 0, 0, 0),(70015, 27442, 0.5, 1, 1, 1, 0, 0, 0, 0);
-- zone outland, sub 5 (shadowmoon valley)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (70016);
INSERT IGNORE INTO `fishing_loot_template` VALUES (70016, 27441, 100, 1, 1, 1, 0, 0, 0, 0);
-- zone (isle of quel'danas) (was changed in 2.4.2)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (70017);
INSERT IGNORE INTO `fishing_loot_template` VALUES (70017, 35285, 0, 1, 1, 1, 0, 0, 0, 0),(70017, 24476, 15, 1, 1, 1, 0, 0, 0, 0),(70017, 35286, 5, 1, 1, 1, 0, 0, 0, 0);
-- zone (deadwind pass, zul'aman)
DELETE FROM `fishing_loot_template` WHERE `entry` IN (70018);
INSERT IGNORE INTO `fishing_loot_template` VALUES (70018, 27422, 0, 1, 1, 1, 0, 0, 0, 0),(70018, 33823, 20, 1, 1, 1, 0, 0, 0, 0),(70018, 33824, 20, 1, 1, 1, 0, 0, 0, 0),(70018, 13757, 7, 1, 1, 1, 0, 0, 0, 0);
-- 
-- TEMPLATES, SPECIAL
-- 
-- custom for tirisfal glades (inland only)
DELETE FROM `fishing_loot_template` WHERE `entry`=70100;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70100, 6291, 0, 1, 1, 1, 0, 0, 0, 0),(70100, 6289, 30, 1, 1, 1, 0, 0, 0, 0),(70100, 6299, 15, 1, 1, 1, 0, 0, 0, 0),(70100, 6297, 7, 1, 1, 1, 0, 0, 0, 0),(70100, 6301, 1.8, 1, 1, 1, 0, 0, 0, 0),(70100, 118, 0.4, 1, 1, 1, 0, 0, 0, 0),(70100, 2455, 0.4, 1, 1, 1, 0, 0, 0, 0),(70100, 6643, 0.2, 1, 1, 1, 0, 0, 0, 0),(70100, 6292, 0.1, 1, 1, 1, 0, 0, 0, 0),(70100, 6294, 0.07, 1, 1, 1, 0, 0, 0, 0),(70100, 6295, 0.03, 1, 1, 1, 0, 0, 0, 0);
-- custom for silverpine forest,undercity,blackfathom deeps only, inland
DELETE FROM `fishing_loot_template` WHERE `entry`=70101;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70101, 6289, 0, 1, 1, 1, 0, 0, 0, 0),(70101, 6308, 15, 1, 1, 1, 0, 0, 0, 0),(70101, 6297, 15, 1, 1, 1, 0, 0, 0, 0),(70101, 6299, 15, 1, 1, 1, 0, 0, 0, 0),(70101, 6291, 12.5, 1, 1, 1, 0, 0, 0, 0),(70101, 858, 0.5, 1, 1, 1, 0, 0, 0, 0),(70101, 3385, 0.5, 1, 1, 1, 0, 0, 0, 0),(70101, 6301, 0.5, 1, 1, 1, 0, 0, 0, 0),(70101, 6309, 0.4, 1, 1, 1, 0, 0, 0, 0),(70101, 6645, 0.3, 1, 1, 1, 0, 0, 0, 0),(70101, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70101, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70101, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70101, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0),(70101, 8350, 0.05, 1, 1, 1, 0, 0, 0, 0);
-- custom for a few areas only, inland (3595,636,463,382)
DELETE FROM `fishing_loot_template` WHERE `entry`=70102;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70102, 6289, 0, 1, 1, 1, 0, 0, 0, 0),(70102, 6308, 15, 1, 1, 1, 0, 0, 0, 0),(70102, 6291, 7, 1, 1, 1, 0, 0, 0, 0),(70102, 6458, 10, 1, 1, 1, 0, 0, 0, 0),(70102, 6455, 10, 1, 1, 1, 0, 0, 0, 0),(70102, 6456, 10, 1, 1, 1, 0, 0, 0, 0),(70102, 6457, 10, 1, 1, 1, 0, 0, 0, 0),(70102, 858, 0.5, 1, 1, 1, 0, 0, 0, 0),(70102, 3385, 0.5, 1, 1, 1, 0, 0, 0, 0),(70102, 6309, 0.4, 1, 1, 1, 0, 0, 0, 0),(70102, 6645, 0.3, 1, 1, 1, 0, 0, 0, 0),(70102, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70102, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70102, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70102, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- custom for deviate fish (barrens oasis, WC)
DELETE FROM `fishing_loot_template` WHERE `entry`=70103;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70103, 6289, 0, 1, 1, 1, 0, 0, 0, 0),(70103, 6522, 30, 1, 1, 1, 0, 0, 0, 0),(70103, 6308, 15, 1, 1, 1, 0, 0, 0, 0),(70103, 6291, 13, 1, 1, 1, 0, 0, 0, 0),(70103, 858, 0.5, 1, 1, 1, 0, 0, 0, 0),(70103, 3385, 0.5, 1, 1, 1, 0, 0, 0, 0),(70103, 6309, 0.4, 1, 1, 1, 0, 0, 0, 0),(70103, 6645, 0.3, 1, 1, 1, 0, 0, 0, 0),(70103, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70103, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70103, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70103, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- custom for darkshore only (inland)
DELETE FROM `fishing_loot_template` WHERE `entry`=70104;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70104, 6718, -25, 0, 1, 1, 0, 0, 0, 0),(70104, 6289, 0, 1, 1, 1, 0, 0, 0, 0),(70104, 12238, 30, 1, 1, 1, 0, 0, 0, 0),(70104, 6308, 15, 1, 1, 1, 0, 0, 0, 0),(70104, 6291, 18, 1, 1, 1, 0, 0, 0, 0),(70104, 858, 0.5, 1, 1, 1, 0, 0, 0, 0),(70104, 3385, 0.5, 1, 1, 1, 0, 0, 0, 0),(70104, 6309, 0.4, 1, 1, 1, 0, 0, 0, 0),(70104, 6645, 0.3, 1, 1, 1, 0, 0, 0, 0),(70104, 6310, 0.2, 1, 1, 1, 0, 0, 0, 0),(70104, 6311, 0.06, 1, 1, 1, 0, 0, 0, 0),(70104, 6363, 0.03, 1, 1, 1, 0, 0, 0, 0),(70104, 6364, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- custom for darkshore only (coastal)
DELETE FROM `fishing_loot_template` WHERE `entry`=70105;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70105, 6717, -25, 0, 1, 1, 0, 0, 0, 0),(70105, 6361, 0, 1, 1, 1, 0, 0, 0, 0),(70105, 12238, 30, 1, 1, 1, 0, 0, 0, 0),(70105, 6303, 18.5, 1, 1, 1, 0, 0, 0, 0),(70105, 6358, 10, 1, 1, 1, 0, 0, 0, 0),(70105, 6353, 0.5, 1, 1, 1, 0, 0, 0, 0),(70105, 6307, 0.5, 1, 1, 1, 0, 0, 0, 0),(70105, 6351, 0.5, 1, 1, 1, 0, 0, 0, 0);
-- custom areas, coastal (Bay of Storms, Hetaera's Clutch and Scalebeard's Cave)
DELETE FROM `fishing_loot_template` WHERE `entry`=70106;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70106, 13888, 0, 1, 1, 2, 0, 0, 0, 0),(70106, 13756, 20, 1, 1, 1, 0, 0, 0, 0),(70106, 13422, 18, 1, 1, 1, 0, 0, 0, 0),(70106, 7973, 10, 1, 1, 1, 0, 0, 0, 0),(70106, 13893, 5, 1, 1, 1, 0, 0, 0, 0),(70106, 4603, 5, 1, 1, 1, 0, 0, 0, 0),(70106, 13874, 0.6, 1, 1, 1, 0, 0, 0, 0),(70106, 13918, 0.4, 1, 1, 1, 0, 0, 0, 0),(70106, 13907, 0.3, 1, 1, 1, 0, 0, 0, 0),(70106, 13908, 0.2, 1, 1, 1, 0, 0, 0, 0),(70106, 13909, 0.15, 1, 1, 1, 0, 0, 0, 0),(70106, 13910, 0.08, 1, 1, 1, 0, 0, 0, 0),(70106, 13911, 0.06, 1, 1, 1, 0, 0, 0, 0),(70106, 13912, 0.03, 1, 1, 1, 0, 0, 0, 0),(70106, 13913, 0.01, 1, 1, 1, 0, 0, 0, 0),(70106, 13914, 0.2, 1, 1, 1, 0, 0, 0, 0),(70106, 13915, 0.06, 1, 1, 1, 0, 0, 0, 0),(70106, 13916, 0.03, 1, 1, 1, 0, 0, 0, 0),(70106, 13917, 0.01, 1, 1, 1, 0, 0, 0, 0);
-- custom area (Fire Plume Ridge)
DELETE FROM `fishing_loot_template` WHERE `entry`=70107;
INSERT IGNORE INTO `fishing_loot_template` VALUES (70107, 6297, 0, 1, 1, 1, 0, 0, 0, 0),(70107, 3857, 20, 1, 1, 1, 0, 0, 0, 0);
-- nf ends

-- Neo2003 begin
-- 175 fishing holes added, set respawn time to 3600 as base
INSERT IGNORE INTO `gameobject` VALUES ('20850','180750','1','1','-4210.63','2542.91','0.0','-1.55334','0.0','0.0','0.700909','-0.71325','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('20851','180750','1','1','-4001.04','3001.31','0.0','-0.767945','0.0','0.0','0.374607','-0.927184','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('20852','180750','1','1','-4230.19','2460.48','0.0','-0.314159','0.0','0.0','0.156434','-0.987688','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('20853','180750','1','1','-3950.56','3053.76','0.0','-0.680679','0.0','0.0','0.333807','-0.942641','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('27561','180751','1','1','-4223.67','2385.48','0.0','-2.30383','0.0','0.0','0.913545','-0.406737','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('27562','180751','1','1','-4236.73','2361.38','0.0','2.67035','0.0','0.0','0.97237','0.233445','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('27587','180751','1','1','-4153.15','2618.2','0.0','2.74017','0.0','0.0','0.979925','0.199368','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('27589','180582','0','1','-9808.47','1813.63','0.0','1.53589','0.0','0.0','0.694658','0.71934','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47247','180582','0','1','-9882.07','1833.48','0.0','1.11701','0.0','0.0','0.529919','0.848048','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47283','180582','0','1','-9574.33','1392.54','0.0','-0.122173','0.0','0.0','0.061049','-0.998135','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47316','180582','1','1','6756.7','515.737','-0.700236','2.80998','0.0','0.0','0.986286','0.165048','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47317','180582','1','1','6845.35','479.494','0.0','1.71042','0.0','0.0','0.75471','0.656059','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47318','180900','0','1','-13646.9','547.157','0.0','1.95477','0.0','0.0','0.829038','0.559193','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47319','180900','0','1','-13853.3','707.847','0.0','0.436332','0.0','0.0','0.21644','0.976296','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47320','180900','0','1','-13244.0','775.253','0.0','0.767945','0.0','0.0','0.374607','0.927184','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47321','180900','0','1','-13341.5','808.699','0.0','-0.541052','0.0','0.0','0.267238','-0.96363','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47322','180900','0','1','-13290.2','651.097','0.0','-2.74017','0.0','0.0','0.979925','-0.199368','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47323','180900','0','1','-13952.5','695.664','0.0','-1.0821','0.0','0.0','0.515038','-0.857167','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47324','180900','0','1','-12909.3','506.528','0.0','-1.6057','0.0','0.0','0.71934','-0.694658','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47325','180900','0','1','-13150.0','482.661','0.0','-1.98968','0.0','0.0','0.838671','-0.544639','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47326','180900','0','1','-14320.4','529.485','0.0','-2.67035','0.0','0.0','0.97237','-0.233445','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47327','180900','0','1','-14659.1','196.393','0.0','-0.907571','0.0','0.0','0.438371','-0.898794','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47328','180900','0','1','-14345.0','481.232','0.0','-0.191986','0.0','0.0','0.095846','-0.995396','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47329','180901','0','1','-12968.7','489.778','0.0','-1.13446','0.0','0.0','0.5373','-0.843391','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47330','180901','0','1','-13693.8','670.814','0.0','0.139626','0.0','0.0','0.069756','0.997564','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47331','180901','0','1','-13952.5','695.664','0.0','-1.0821','0.0','0.0','0.515038','-0.857167','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47332','180901','0','1','-13059.8','506.689','0.0','1.67552','0.0','0.0','0.743145','0.669131','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47333','180901','0','1','-12771.4','378.642','0.0','-0.523599','0.0','0.0','0.258819','-0.965926','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47334','180901','0','1','-12727.5','39.1558','0.0','-0.331612','0.0','0.0','0.165048','-0.986286','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47335','180901','0','1','-14424.6','465.557','0.0','3.12414','0.0','0.0','0.999962','0.008727','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47336','180901','0','1','-12829.6','440.834','0.0','2.75762','0.0','0.0','0.981627','0.190809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47337','180901','0','1','-13779.9','703.536','0.0','2.40855','0.0','0.0','0.93358','0.358368','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47338','180902','0','1','-13059.8','506.689','0.0','1.67552','0.0','0.0','0.743145','0.669131','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47339','180902','0','1','-13150.0','482.661','0.0','-1.98968','0.0','0.0','0.838671','-0.544639','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47340','180902','0','1','-12701.7','-21.263','0.0','-2.11185','0.0','0.0','0.870356','-0.492423','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47341','180902','0','1','-14012.5','599.186','0.0','3.07178','0.0','0.0','0.999391','0.034899','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47342','180902','0','1','-13952.5','695.664','0.0','-1.0821','0.0','0.0','0.515038','-0.857167','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47343','180902','0','1','-13779.9','703.536','0.0','2.40855','0.0','0.0','0.93358','0.358368','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47344','180902','0','1','-13568.4','766.911','0.0','-0.401426','0.0','0.0','0.199368','-0.979925','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47345','180902','0','1','-12771.4','378.642','0.0','-0.523599','0.0','0.0','0.258819','-0.965926','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47346','180902','0','1','-13414.4','783.912','0.0','2.04204','0.0','0.0','0.85264','0.522499','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47348','180902','0','1','-13235.1','558.615','0.0','-3.00197','0.0','0.0','0.997564','-0.069756','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47349','180902','0','1','-14720.0','448.409','0.0','1.69297','0.0','0.0','0.748956','0.66262','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47350','180902','0','1','-12701.7','-21.263','0.0','-2.11185','0.0','0.0','0.870356','-0.492423','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47351','180655','0','1','-4746.4','-3163.21','297.605','2.86234','0.0','0.0','0.990268','0.139173','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47352','180656','0','1','-5730.29','-3414.34','297.605','-2.80998','0.0','0.0','0.986286','-0.165048','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47353','180656','0','1','-5127.44','-3148.62','297.605','-2.98451','0.0','0.0','0.996917','-0.078459','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47354','180656','0','1','-4912.3','-3581.94','297.605','-0.663225','0.0','0.0','0.325568','-0.945519','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47355','180656','0','1','-5642.59','-3291.67','297.605','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47356','180656','0','1','-5347.89','-3706.57','297.605','-1.8326','0.0','0.0','0.793353','-0.608761','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47357','180656','0','1','-4912.3','-3581.94','297.605','-0.663225','0.0','0.0','0.325568','-0.945519','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47358','180656','0','1','-4982.37','-3543.38','297.605','1.50098','0.0','0.0','0.681998','0.731354','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47359','180656','0','1','-4773.38','-3163.92','297.605','-2.18166','0.0','0.0','0.887011','-0.461749','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47360','180656','0','1','-5202.45','-3145.92','297.605','2.25148','0.0','0.0','0.902585','0.430511','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47361','180656','0','1','-5167.09','-3142.34','297.605','-0.034907','0.0','0.0','0.017452','-0.999848','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47362','180656','0','1','-5127.44','-3148.62','297.605','-2.98451','0.0','0.0','0.996917','-0.078459','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47363','180656','0','1','-5032.86','-3580.12','297.605','-1.93731','0.0','0.0','0.824126','-0.566406','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47364','180656','0','1','-4912.3','-3581.94','297.605','-0.663225','0.0','0.0','0.325568','-0.945519','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47365','180656','0','1','-5167.09','-3142.34','297.605','-0.034907','0.0','0.0','0.017452','-0.999848','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47366','180657','0','1','-1088.09','-773.98','0.0','2.37365','0.0','0.0','0.927184','0.374607','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47367','180657','0','1','-991.793','-708.385','0.0','-2.75762','0.0','0.0','0.981627','-0.190809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47368','180657','0','1','-933.148','-568.908','0.0','-0.05236','0.0','0.0','0.026177','-0.999657','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47369','180657','0','1','-3707.95','-631.876','0.0','-0.925024','0.0','0.0','0.446198','-0.894934','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47370','180657','0','1','-933.148','-568.908','0.0','-0.05236','0.0','0.0','0.026177','-0.999657','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47371','180657','0','1','-931.71','-554.852','0.0','2.84489','0.0','0.0','0.989016','0.147809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47372','180657','0','1','-3353.9','-975.253','0.0','-0.349066','0.0','0.0','0.173648','-0.984808','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47373','180657','0','1','-3843.22','-918.727','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47374','180657','0','1','-933.148','-568.908','0.0','-0.05236','0.0','0.0','0.026177','-0.999657','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47375','180657','0','1','-1108.14','-216.96','0.0','2.07694','0.0','0.0','0.861629','0.507538','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47376','180657','0','1','-931.71','-554.852','0.0','2.84489','0.0','0.0','0.989016','0.147809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47377','180657','0','1','-3843.22','-918.727','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47378','180657','0','1','-1088.09','-773.98','0.0','2.37365','0.0','0.0','0.927184','0.374607','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47379','180662','0','1','-1169.1','-796.219','0.0','4.71239','0.0','0.0','0.707107','-0.707107','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47380','180662','0','1','-1474.17','-1098.55','0.0','2.93215','0.0','0.0','0.994522','0.104528','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47381','180662','0','1','-1428.6','-1035.49','0.0','-1.09956','0.0','0.0','0.522499','-0.85264','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47382','180662','0','1','-3353.9','-975.253','0.0','-0.349066','0.0','0.0','0.173648','-0.984808','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47383','180662','0','1','-948.823','-523.381','0.0','-1.62316','0.0','0.0','0.725374','-0.688354','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47384','180662','0','1','-991.793','-708.385','0.0','-2.75762','0.0','0.0','0.981627','-0.190809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47385','180662','0','1','-896.287','-696.348','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47386','180662','0','1','-948.823','-523.381','0.0','-1.62316','0.0','0.0','0.725374','-0.688354','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47387','180662','0','1','-931.71','-554.852','0.0','2.84489','0.0','0.0','0.989016','0.147809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47388','180662','0','1','-991.793','-708.385','0.0','-2.75762','0.0','0.0','0.981627','-0.190809','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47389','180663','1','1','2047.33','-1119.42','89.6561','0.034907','0.0','0.0','0.017452','0.999848','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47390','180664','0','1','-1263.25','-908.322','0.0','1.5708','0.0','0.0','0.707107','0.707107','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47391','180664','0','1','-3262.99','-889.309','0.0','-0.610865','0.0','0.0','0.300706','-0.953717','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47392','180664','0','1','-1376.06','-1012.95','0.0','0.122173','0.0','0.0','0.061049','0.998135','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47393','180664','0','1','-2755.3','-1128.21','0.0','2.56563','0.0','0.0','0.95882','0.284015','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47394','180664','0','1','-2904.7','-1007.43','0.0','-0.418879','0.0','0.0','0.207912','-0.978148','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47395','180664','0','1','-3843.22','-918.727','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47396','180664','0','1','-3018.44','-941.133','0.0','2.51327','0.0','0.0','0.951057','0.309017','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47397','180664','0','1','-1199.8','-833.747','0.0','2.46091','0.0','0.0','0.942641','0.333807','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47398','180664','0','1','-2869.85','-1038.07','0.0','1.62316','0.0','0.0','0.725374','0.688355','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47399','180664','0','1','-1263.25','-908.322','0.0','1.5708','0.0','0.0','0.707107','0.707107','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47400','180664','0','1','-1304.26','-991.073','0.0','0.558505','0.0','0.0','0.275637','0.961262','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47401','180664','0','1','-1428.6','-1035.49','0.0','-1.09956','0.0','0.0','0.522499','-0.85264','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47402','180664','0','1','-1376.06','-1012.95','0.0','0.122173','0.0','0.0','0.061049','0.998135','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47403','180664','0','1','-3710.44','-673.205','0.0','2.51327','0.0','0.0','0.951057','0.309017','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47404','180664','0','1','-3873.45','-634.351','0.0','-0.837758','0.0','0.0','0.406737','-0.913545','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47405','180664','0','1','-1068.16','-336.681','0.0','1.90241','0.0','0.0','0.814116','0.580703','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47406','180664','0','1','-933.148','-568.908','0.0','-0.05236','0.0','0.0','0.026177','-0.999657','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47407','180682','0','1','-12015.2','532.893','-0.255422','3.03687','0.0','0.0','0.99863','0.052336','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47408','180682','0','1','-12080.1','459.363','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47409','180682','0','1','-12011.6','759.599','0.0','0.855211','0.0','0.0','0.414693','0.909961','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47410','180682','0','1','-12202.2','351.023','0.0','-1.67552','0.0','0.0','0.743145','-0.669131','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47411','180682','0','1','-12080.1','459.363','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47412','180682','0','1','-12259.6','344.519','0.0','1.90241','0.0','0.0','0.814116','0.580703','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47413','180682','0','1','-12080.1','459.363','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47414','180682','0','1','-12031.4','593.977','0.0','-0.680679','0.0','0.0','0.333807','-0.942641','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47415','180682','0','1','-12001.6','651.077','0.0','-2.16421','0.0','0.0','0.882948','-0.469472','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47416','180682','0','1','-12080.1','459.363','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47417','180682','1','1','-2591.33','-4100.78','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47418','180682','1','1','-2693.47','-4182.76','0.0','-2.79253','0.0','0.0','0.984808','-0.173648','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47419','180683','0','1','-12202.2','351.023','0.0','-1.67552','0.0','0.0','0.743145','-0.669131','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47420','180683','0','1','-11993.8','649.109','-0.949605','-2.16421','0.0','0.0','0.882948','-0.469472','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47421','180683','0','1','-12043.2','541.762','0.0','3.03687','0.0','0.0','0.99863','0.052336','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47422','180683','0','1','-12080.1','459.363','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47423','180683','1','1','-2636.08','-4058.32','0.0','0.593412','0.0','0.0','0.292372','0.956305','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47424','180683','1','1','-2937.83','-4248.67','0.0','-0.977384','0.0','0.0','0.469472','-0.882948','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47425','180684','0','1','1188.74','-247.037','32.9309','-3.12414','0.0','0.0','0.999962','-0.008727','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47426','180684','0','1','667.415','130.111','32.934','2.49582','0.0','0.0','0.948324','0.317305','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47427','180684','0','1','1210.71','-235.344','32.9309','-2.94961','0.0','0.0','0.995396','-0.095846','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47428','180684','0','1','-12036.6','-500.827','10.0699','1.15192','0.0','0.0','0.544639','0.838671','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47429','180684','0','1','-11856.7','-427.904','10.0699','0.977384','0.0','0.0','0.469472','0.882948','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47430','180684','0','1','-11447.1','254.103','10.0699','-0.890118','0.0','0.0','0.430511','-0.902585','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47431','180684','0','1','843.119','-66.724','32.9309','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47432','180684','0','1','994.35','-169.237','32.9309','-2.94961','0.0','0.0','0.995396','-0.095846','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47433','180684','0','1','-11576.1','-28.4349','10.0699','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47434','180684','0','1','-12472.4','-289.304','10.1106','-2.6529','0.0','0.0','0.970296','-0.241922','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47435','180684','0','1','-11596.9','-3.87077','10.0699','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47436','180684','0','1','-11538.7','-52.8923','10.0699','-1.74533','0.0','0.0','0.766044','-0.642788','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47437','180684','0','1','-11542.9','43.4788','10.0699','1.72788','0.0','0.0','0.760406','0.649448','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47438','180684','0','1','-11576.1','-28.4349','10.0699','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47439','180684','0','1','-11701.4','-331.587','10.0699','-2.87979','0.0','0.0','0.991445','-0.130526','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47440','180684','0','1','-11596.9','-3.87077','10.0699','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47441','180684','0','1','-11568.2','-64.7165','10.0699','-0.191986','0.0','0.0','0.095846','-0.995396','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47442','180684','0','1','-11498.4','91.6261','10.0699','2.05949','0.0','0.0','0.857167','0.515038','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47443','180684','0','1','-11614.3','-192.641','10.0699','-2.16421','0.0','0.0','0.882948','-0.469472','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47444','180684','0','1','-11568.2','-64.7165','10.0699','-0.191986','0.0','0.0','0.095846','-0.995396','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47445','180684','0','1','-11542.9','43.4788','10.0699','1.72788','0.0','0.0','0.760406','0.649448','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47446','180684','0','1','-11594.2','-161.316','10.0699','-0.558505','0.0','0.0','0.275637','-0.961262','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47447','180684','0','1','-11596.9','-3.87077','10.0699','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47448','180684','0','1','-11668.9','-262.907','10.0699','2.77507','0.0','0.0','0.983255','0.182236','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47449','180684','0','1','-11701.4','-331.587','10.0699','-2.87979','0.0','0.0','0.991445','-0.130526','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47450','180684','0','1','-11498.4','91.6261','10.0699','2.05949','0.0','0.0','0.857167','0.515038','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47451','180684','0','1','-11596.9','-3.87077','10.0699','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47452','180684','0','1','-11701.4','-331.587','10.0699','-2.87979','0.0','0.0','0.991445','-0.130526','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47453','180684','0','1','-12120.5','-352.027','10.0699','1.5708','0.0','0.0','0.707107','0.707107','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47454','180684','0','1','-11447.1','254.103','10.0699','-0.890118','0.0','0.0','0.430511','-0.902585','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47455','180684','0','1','-11701.4','-331.587','10.0699','-2.87979','0.0','0.0','0.991445','-0.130526','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47456','180684','0','1','-11447.1','254.103','10.0699','-0.890118','0.0','0.0','0.430511','-0.902585','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47457','180684','0','1','-11596.9','-3.87077','10.0699','1.48353','0.0','0.0','0.67559','0.737277','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47458','180684','0','1','-11538.7','-52.8923','10.0699','-1.74533','0.0','0.0','0.766044','-0.642788','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47459','180684','0','1','-11498.4','91.6261','10.0699','2.05949','0.0','0.0','0.857167','0.515038','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47460','180684','0','1','-11594.2','-161.316','10.0699','-0.558505','0.0','0.0','0.275637','-0.961262','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47461','180685','0','1','794.327','-35.3443','32.4959','-1.46608','0.0','0.0','0.669131','-0.743145','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47462','180685','0','1','1245.56','-204.805','32.2924','0.733038','0.0','0.0','0.358368','0.93358','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47463','180685','0','1','-11668.9','-262.907','10.0699','2.77507','0.0','0.0','0.983255','0.182236','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47464','180685','0','1','-11447.1','254.103','10.0699','-0.890118','0.0','0.0','0.430511','-0.902585','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47465','180685','0','1','-11668.9','-262.907','10.0699','2.77507','0.0','0.0','0.983255','0.182236','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47466','180685','0','1','-11538.7','-52.8923','10.0699','-1.74533','0.0','0.0','0.766044','-0.642788','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47467','180685','0','1','-11595.8','-30.9914','10.0699','2.70526','0.0','0.0','0.976296','0.21644','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47468','180685','0','1','-11538.7','-52.8923','10.0699','-1.74533','0.0','0.0','0.766044','-0.642788','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47469','180685','0','1','-11568.2','-64.7165','10.0699','-0.191986','0.0','0.0','0.095846','-0.995396','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47470','180685','0','1','-11925.3','-322.532','10.085','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47471','180685','0','1','-12239.5','-335.31','10.0699','0.698132','0.0','0.0','0.34202','0.939693','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47472','180685','0','1','-12131.3','369.493','0.0','-0.942478','0.0','0.0','0.453991','-0.891006','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47473','180685','1','1','-3548.39','-4378.76','0.0','1.65806','0.0','0.0','0.737277','0.67559','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47474','180712','0','1','-13853.3','707.847','0.0','0.436332','0.0','0.0','0.21644','0.976296','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47475','180712','0','1','-14597.8','143.019','0.0','1.46608','0.0','0.0','0.669131','0.743145','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47476','180712','0','1','-13693.8','670.814','0.0','0.139626','0.0','0.0','0.069756','0.997564','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47477','180712','0','1','-13235.1','558.615','0.0','-3.00197','0.0','0.0','0.997564','-0.069756','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47478','180712','0','1','-14720.0','448.409','0.0','1.69297','0.0','0.0','0.748956','0.66262','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47479','180712','0','1','-14424.6','465.557','0.0','3.12414','0.0','0.0','0.999962','0.008727','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47480','180712','1','1','-4379.91','2368.7','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','3600','100','1');
INSERT IGNORE INTO `gameobject` VALUES ('47481','180712','1','1','-4295.15','2371.78','0.0','-2.53073','0.0','0.0','0.953717','-0.300706','3600','100','1');
-- Work in progress regarding fishing holes loots

DELETE FROM `gameobject_loot_template` WHERE `entry`=17441;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Floating Debris (180655)
    (17441,20708,60,1,1,1,0,0,0,0), -- Tightly Sealed Trunk
    (17441,20709,0,1,1,3,0,0,0,0), -- Rumsey Rum Light 1-3
    (17441,3820,0,1,1,3,0,0,0,0); -- Stranglekelp 1-3

DELETE FROM `gameobject_loot_template` WHERE `entry`=17498;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Floating Wreckage (180662)
    (17498,21113,60,1,1,1,0,0,0,0), -- Watertight Trunk
    (17498,21114,0,1,1,3,0,0,0,0), -- Rumsey Rum Dark 1-3
    (17498,3820,0,1,1,3,0,0,0,0); -- Stranglekelp 1-3

DELETE FROM `gameobject_loot_template` WHERE `entry`=17518;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Floating Wreckage (180685)
    (17518,21150,60,1,1,1,0,0,0,0), -- Iron Bound Trunk
    (17518,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17518,3820,0,1,1,3,0,0,0,0); -- Stranglekelp 1-3

DELETE FROM `gameobject_loot_template` WHERE `entry`=17534;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Floating Wreckage (180751 and 180901)
    (17534,21228,60,1,1,1,0,0,0,0), -- Mithril Bound Trunk
    (17534,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17534,3820,0,1,1,3,0,0,0,0); -- Stranglekelp 1-3

-- Now update their spawntime, still need the pool system anyway
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180655,180662,180685,180751,180901);

DELETE FROM `gameobject_loot_template` WHERE `entry`=17440;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Oily Blackmouth School (180582)
    (17440,6358,85,1,1,1,0,0,0,0), -- Oily Blackmouth
    (17440,20709,0,1,1,3,0,0,0,0), -- Rumsey Rum Light 1-3
    (17440,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17440,20708,0,1,1,1,0,0,0,0); -- Tightly Sealed Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17497;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Oily Blackmouth School (180664)
    (17497,6358,85,1,1,1,0,0,0,0), -- Oily Blackmouth
    (17497,21114,0,1,1,3,0,0,0,0), -- Rumsey Rum Dark 1-3
    (17497,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17497,21113,0,1,1,1,0,0,0,0); -- Watertight Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17520;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Oily Blackmouth School (180682) stv north
    (17520,6358,85,1,1,1,0,0,0,0), -- Oily Blackmouth
    (17520,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17520,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17520,21150,0,1,1,1,0,0,0,0); -- Iron Bound Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17537;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Oily Blackmouth School (180750 and 180900) stv south
    (17537,6358,85,1,1,1,0,0,0,0), -- Oily Blackmouth
    (17537,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17537,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17537,21228,0,1,1,1,0,0,0,0); -- Mithril Bound Trunk

-- Now update their spawntime
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180582,180664,180682,180750,180900);

DELETE FROM `gameobject_loot_template` WHERE `entry`=17494;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Sagefish School (180656)
    (17494,21071,85,1,1,1,0,0,0,0), -- Raw Sagefish
    (17494,20709,0,1,1,3,0,0,0,0), -- Rumsey Rum Light 1-3
    (17494,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17494,20708,0,1,1,1,0,0,0,0); -- Tightly Sealed Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17502;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Sagefish School (180663)
    (17502,21071,85,1,1,1,0,0,0,0), -- Raw Sagefish
    (17502,21114,0,1,1,3,0,0,0,0), -- Rumsey Rum Dark 1-3
    (17502,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17502,21113,0,1,1,1,0,0,0,0); -- Watertight Trunk

-- Now update their spawntime
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180656,180663);

DELETE FROM `gameobject_loot_template` WHERE `entry`=17519;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Greater Sagefish School (180684)
    (17519,21153,85,1,1,1,0,0,0,0), -- Raw Greater Sagefish
    (17519,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17519,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17519,21150,0,1,1,1,0,0,0,0); -- Iron Bound Trunk

-- Now update their spawntime
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180684);

DELETE FROM `gameobject_loot_template` WHERE `entry`=17500;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Firefin Snapper School (180657)
    (17500,6359,85,1,1,1,0,0,0,0), -- Firefin Snapper
    (17500,21114,0,1,1,3,0,0,0,0), -- Rumsey Rum Dark 1-3
    (17500,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17500,21113,0,1,1,1,0,0,0,0); -- Watertight Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17521;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Firefin Snapper School (180683) stv north
    (17521,6359,85,1,1,1,0,0,0,0), -- Firefin Snapper
    (17521,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17521,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17521,21150,0,1,1,1,0,0,0,0); -- Iron Bound Trunk

DELETE FROM `gameobject_loot_template` WHERE `entry`=17538;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Firefin Snapper School (180752 and 180902) stv south
    (17538,6359,85,1,1,1,0,0,0,0), -- Firefin Snapper
    (17538,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17538,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17538,21228,0,1,1,1,0,0,0,0); -- Mithril Bound Trunk

-- Now update their spawntime
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180657,180683,180752,180902);

DELETE FROM `gameobject_loot_template` WHERE `entry`=17539;
INSERT IGNORE INTO `gameobject_loot_template` VALUES -- Stonescale Eel Swarm (180712)
    (17539,13422,85,1,1,1,0,0,0,0), -- Stonescale Eel
    (17539,21151,0,1,1,3,0,0,0,0), -- Rumsey Rum Black Label 1-3
    (17539,3820,0,1,1,3,0,0,0,0), -- Stranglekelp 1-3
    (17539,21228,0,1,1,1,0,0,0,0); -- Mithril Bound Trunk

-- Now update their spawntime
UPDATE `gameobject` SET `spawntimesecs`=3600 WHERE `id` IN (180712);
-- Neo2003 end

-- triddy + loots
-- CLT STARTING 501503
DROP TABLE IF EXISTS `loot`;
DROP TABLE IF EXISTS `lootcreatures`;
CREATE TABLE loot ( lootid int(10) unsigned not null default 0 );
CREATE TABLE lootcreatures ( entry int(10) unsigned not null default 0 );
ALTER TABLE `loot` ADD INDEX `loot_idx` ( lootid );
ALTER TABLE `lootcreatures` ADD INDEX `lootcreatures_idx` ( entry );
ALTER TABLE `creature_template` ADD INDEX `lootid_idx` ( lootid );
ALTER TABLE `creature_loot_template` ADD INDEX `entry_idx` ( entry );

-- 27-36 Grays
INSERT IGNORE INTO loot VALUES
(3781),(3808),(3809),(3810),(3812),(3813),(3814),(3815),(3811),(3803),(3800),(3801),(3802),(3804),(8747),(3805),(3806),(3807),(3779),(3792),(3793),(3794),(3795),(8746),(3796),(3797),(3798),(3799),(3785),(3782),(3783),(3780),(3784),(6196),(3816),(3817),(3786),(3787);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80047 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80047 As `item`, 1 AS `ChanceOrQuestChance`,1 AS `group`,-80047 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 25/26 Greens
INSERT IGNORE INTO loot VALUES
(3041),(5007),(9837),(9839),(9840),(4463),(3210),(4462),(5003),(15136),(15135),(2084),(6607),(6603),(14579),(14608),(10404),(9820),(9821),(9823),(7355),(7356),(7370),(4051),(4064),(4048),(4050),(6399),(4071),(6389),(4072),(4073),(6386),(6388),(6400),(5002),(15351),(15242),(4724),(7410),(7411),(6198),(914),(865),(2234),(15341),(15343),(15342),(15344),(15345),(7416),(7419),(15559),(14191),(14193),(14192),(15975),(14190),(14399),(14406),(14403),(3392),(1297),(15129),(15127),(15128),(5753),(10288),(6617),(9827),(9828),(9832),(15533),(15530),(15531),(15524),(7110),(4037),(4035),(15928),(14758),(12047),(15518),(15231),(15549),(15545),(14197),(14198),(3186),(14178),(14180),(14183),(14184),(15973),(15534),(15538),(15539),(5754);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80048 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80048 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80048 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 25/26 Blue
INSERT IGNORE INTO loot VALUES 
(2878),(13049),(1717),(2278),(13106),(791),(13048),(13079),(12974),(13094),(13114);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80049 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80049 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80049 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 27/28 Greens
INSERT IGNORE INTO loot VALUES
(15285),(9836),(10409),(10408),(9841),(9842),(9843),(12028),(3042),(1998),(4465),(12019),(4716),(9847),(15131),(15133),(15137),(15139),(14581),(14583),(14585),(14587),(10289),(9825),(9824),(7354),(7366),(7367),(6396),(14763),(3341),(15143),(15147),(15250),(15232),(15349),(15354),(7409),(7330),(7413),(7406),(7412),(7408),(6410),(4722),(6403),(15568),(4719),(4720),(6407),(15346),(7421),(7422),(7420),(7424),(15555),(15556),(15554),(14189),(4474),(9867),(14401),(14404),(14397),(14405),(14398),(6609),(6616),(6610),(15934),(15962),(10406),(9833),(9834),(9835),(9830),(15225),(14757),(15892),(14753),(14751),(14409),(15548),(15544),(14205),(14199),(14196),(6204),(4464),(12039),(12009),(5181),(14206),(14210),(14209),(5214),(15541),(15542);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80050 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80050 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80050 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 27/28 Blue
INSERT IGNORE INTO loot VALUES
(2299),(2912),(2877),(13037),(3020),(13127),(9405),(13019),(2721),(13087);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80051 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80051 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80051 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 29/30 Greens
INSERT IGNORE INTO loot VALUES
(3185),(9855),(9857),(9860),(9861),(11996),(4476),(11985),(9846),(9853),(9845),(15140),(15130),(14584),(9826),(15935),(9819),(7609),(7357),(7353),(7368),(7369),(14761),(14759),(14764),(14221),(14219),(15148),(15142),(1991),(12029),(14590),(14593),(15352),(15355),(15350),(15357),(15358),(2080),(7407),(7414),(6409),(4055),(4066),(4052),(6408),(4054),(4721),(7460),(5256),(15286),(4717),(4076),(4075),(4077),(6404),(15571),(15566),(5180),(4477),(6406),(4039),(4040),(4718),(5755),(15339),(7417),(7418),(7423),(7331),(15560),(1997),(9869),(9865),(9868),(5213),(15579),(11970),(14414),(14416),(14408),(14411),(3197),(5245),(15550),(15551),(15553),(14200),(14201),(14203),(7436),(14214),(14211),(14212),(3037),(15536),(15540),(15543);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80052 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80052 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80052 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 29/30 Blue
INSERT IGNORE INTO loot VALUES
(9395),(13137),(13084),(2277),(13124),(2565),(13063),(13108),(13045),(13033);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80053 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80053 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80053 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 31/32 Greens
INSERT IGNORE INTO loot VALUES
(11971),(9856),(9858),(9859),(9863),(9862),(6417),(6418),(1990),(4810),(6413),(4726),(4065),(9851),(9848),(9849),(9850),(2621),(15134),(15243),(14226),(14229),(14235),(14762),(14766),(8188),(3011),(12010),(14218),(14217),(14222),(15145),(15149),(15151),(15150),(15144),(15226),(863),(4059),(4732),(14607),(14588),(14594),(14589),(15356),(1522),(1523),(4057),(7458),(7461),(7457),(7462),(1679),(4074),(6402),(15570),(15213),(5009),(7111),(15929),(4038),(6405),(2622),(15153),(1993),(15557),(15558),(15561),(15562),(15563),(9864),(9870),(9871),(9872),(9873),(10329),(10333),(7444),(7447),(7446),(7448),(7443),(8224),(3345),(15575),(15577),(15590),(15594),(14415),(14412),(12020),(15546),(15552),(15976),(14202),(14204),(15364),(15361),(7438),(7434),(7437),(7433),(14208),(14207),(15977),(14213),(14215),(1996);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80054 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80054 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80054 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 31/32 Blue
INSERT IGNORE INTO loot VALUES
(9385),(13093),(13025),(1726),(9435),(2951),(934),(13105),(2276),(13110);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80055 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80055 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80055 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 33/34 Greens
INSERT IGNORE INTO loot VALUES
(9854),(2620),(6416),(4043),(4041),(4042),(4729),(7492),(6412),(4078),(1988),(4727),(5624),(1280),(9852),(15918),(9844),(14239),(14236),(14232),(14231),(14760),(14765),(14767),(15990),(12040),(14223),(14224),(15146),(6421),(6420),(4067),(4731),(6422),(6419),(11997),(14595),(14596),(15353),(9886),(9891),(9890),(9896),(9898),(12030),(7454),(7465),(7456),(7455),(7459),(864),(15565),(15572),(15573),(1207),(15155),(15154),(15160),(14771),(14773),(9866),(15233),(10331),(7463),(7441),(7445),(7440),(14418),(14419),(14420),(14426),(15322),(9879),(9877),(9875),(15581),(15576),(15598),(15595),(15260),(15963),(14410),(14413),(14407),(11986),(1465),(15360),(15362),(15365),(15368),(15367),(9382),(7432),(7435),(7431),(14602);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80056 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80056 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80056 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 33/34 Blue
INSERT IGNORE INTO loot VALUES
(937),(13119),(13129),(936),(13103),(1265),(13081),(13020),(8006),(13121);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80057 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80057 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80057 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 21-26 Grays
INSERT IGNORE INTO loot VALUES
(1825),(3380),(3381),(1782),(1783),(1784),(1780),(1785),(1786),(2766),(8748),(11411),(1830),(1827),(1831),(2786),(1754),(1755),(1756),(1757),(1758),(1759),(1760),(1761),(1826),(1829),(2785),(1828),(2221),(3778),(1806),(1810),(1803),(1804),(1805),(1807),(1808),(1809),(2222);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80058 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80058 As `item`, 1 AS `ChanceOrQuestChance`,1 AS `group`,-80058 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 16-20 Grays
INSERT IGNORE INTO loot VALUES
(1823),(2220),(3378),(3379),(1774),(1775),(1776),(1772),(1777),(1778),(1822),(1819),(2765),(1746),(1747),(1748),(1749),(1750),(1751),(1752),(1753),(2782),(1485),(1795),(1796),(1797),(1798),(1799),(1800),(1801),(1802),(1824),(2783),(2219),(1818),(1821),(1820);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80059 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80059 As `item`, 1 AS `ChanceOrQuestChance`,1 AS `group`,-80059 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 15/16 Greens
INSERT IGNORE INTO loot VALUES
(14120),(15971),(14121),(4788),(9776),(9778),(9780),(1448),(1296),(15488),(1560),(5422),(14571),(14173),(14168),(2991),(4697),(2992),(2990),(3655),(2989),(4437),(6575),(2241),(15312),(2168),(2167),(2166),(1314),(15248),(2021),(9768),(9770),(4568),(15506),(15510),(15509),(1218),(3184),(14745),(2985),(2986),(4436),(11981),(1300),(4576),(1220),(15018),(3193),(5207),(4949),(15502),(15498),(1189),(14164),(15893),(14565),(11965),(9783),(15110),(15112),(15111),(12052),(14124),(14125),(14129),(4434),(6581),(6583),(6585),(3563),(7608),(6561),(2982),(2981),(1460),(6562),(6563),(6564),(5182),(1934),(3571),(12053),(14729);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80060 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80060 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80060 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 15/16 Blue
INSERT IGNORE INTO loot VALUES
(12979),(12976),(13136),(12977),(935),(12975),(12983),(12982),(12984),(12978);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80061 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80061 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80061 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 17/18 Greens
INSERT IGNORE INTO loot VALUES
(9782),(9781),(3198),(3199),(1938),(3022),(3065),(3647),(6381),(14567),(14569),(14568),(4439),(15912),(14171),(14172),(14175),(11993),(6573),(6574),(6577),(6576),(6578),(6572),(6580),(15311),(4445),(4710),(6382),(790),(9812),(892),(9767),(9766),(3018),(14743),(14746),(14747),(1299),(6197),(12006),(15211),(14371),(15946),(14369),(3227),(15503),(15504),(14162),(14159),(14562),(6628),(5969),(15113),(15115),(5975),(14376),(6582),(6571),(6586),(5749),(2175),(1457),(1458),(6565),(6570),(3039),(3076),(15519),(6333),(880),(789),(1215),(3229),(11982),(14730),(5750),(15333),(15331),(11967);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80062 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80062 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80062 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 17/18 Blue
INSERT IGNORE INTO loot VALUES
(2879),(12996),(12987),(2911),(12990),(12985),(12992),(12988),(12994);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80063 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80063 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80063 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 19/20 Greens
INSERT IGNORE INTO loot VALUES
(15224),(4444),(885),(6199),(1455),(4998),(2046),(4708),(3066),(4785),(15894),(14572),(11994),(3231),(2232),(3740),(1076),(12054),(6383),(3057),(3202),(3058),(4709),(9814),(9810),(9811),(9818),(9813),(9815),(9816),(9771),(15511),(15513),(15512),(3429),(15259),(14742),(14748),(911),(9792),(9793),(9794),(15223),(4706),(15269),(15500),(14165),(1406),(12007),(14566),(15230),(15117),(1462),(14127),(15972),(14133),(15122),(15124),(14373),(14375),(14374),(2034),(6587),(6584),(15526),(1459),(6567),(6569),(7558),(6568),(1461),(3074),(15515),(15517),(9801),(9805),(2035),(14179),(5751),(920),(15329),(15330);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80064 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80064 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80064 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 19/20 Blue
INSERT IGNORE INTO loot VALUES
(2236),(2194),(12999),(1121),(12989),(12998),(3021),(12997),(2059),(2256),(890);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80065 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80065 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80065 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 21/22 Greens
INSERT IGNORE INTO loot VALUES
(11968),(4999),(15241),(6593),(6591),(886),(6608),(4661),(3067),(3069),(15927),(14573),(14574),(11983),(4447),(2013),(3204),(1077),(6600),(6602),(6604),(8186),(14580),(1955),(2072),(4715),(5971),(15212),(3055),(3056),(9817),(9769),(9772),(10287),(9773),(9774),(15514),(5001),(2227),(15891),(14749),(4448),(9795),(9796),(9799),(2058),(3045),(3212),(3049),(4707),(3047),(3048),(4705),(3656),(4449),(2226),(15974),(14158),(14163),(15348),(15340),(15249),(8183),(14188),(15116),(15118),(15120),(2566),(14377),(14378),(15532),(15527),(15528),(2233),(6394),(4713),(4036),(4714),(2018),(14752),(3073),(3072),(15520),(15521),(15523),(15516),(6315),(9802),(9803),(9804),(9806),(9807),(3569),(14176),(14185),(14177),(15332),(15334),(15336),(5752);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80066 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80066 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80066 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 21/22 Blue
INSERT IGNORE INTO loot VALUES
(2800),(2098),(13010),(13041),(13016),(13011),(13032),(13062),(2011),(13012);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80067 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80067 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80067 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 23/24 Greens
INSERT IGNORE INTO loot VALUES
(9838),(3201),(6592),(6590),(6595),(6594),(6596),(6599),(6597),(2014),(2015),(14570),(3206),(11984),(2819),(15132),(6601),(6598),(6605),(7415),(14582),(14578),(753),(9822),(6398),(4049),(6397),(1351),(8184),(3336),(6200),(4711),(6387),(4712),(2017),(14744),(3053),(4723),(11995),(9800),(9797),(9798),(9791),(11969),(15284),(897),(2077),(15347),(14195),(14194),(14187),(14186),(14402),(14400),(15121),(15123),(15125),(15126),(6612),(6613),(6614),(6615),(6611),(14372),(14380),(15947),(14379),(12008),(9831),(9829),(15529),(15525),(6395),(6393),(14750),(14754),(14755),(14756),(15522),(9808),(9809),(15547),(756),(14181),(14182),(15535),(15537),(15338),(15337);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80068 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80068 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80068 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- Req 23/24 Blue
INSERT IGNORE INTO loot VALUES
(13005),(13024),(13057),(720),(3203),(13099),(13031),(13131),(13097);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80069 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80069 As `item`, .05 AS `ChanceOrQuestChance`,1 AS `group`,-80069 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 11-15 Grays
INSERT IGNORE INTO loot VALUES
(1814),(1811),(3376),(3377),(1766),(1767),(1768),(1764),(1769),(1770),(1813),(2781),(1741),(1738),(1739),(1740),(1742),(1743),(1744),(1745),(2780),(1815),(1790),(1787),(1788),(1789),(1791),(1794),(1792),(1793),(2217),(1812),(2216),(2764),(1817),(5516),(1816);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80070 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80070 As `item`, 1 AS `ChanceOrQuestChance`,1 AS `group`,-80070 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 6-10 Grays
INSERT IGNORE INTO loot VALUES
(3374),(3375),(1497),(1498),(1499),(1495),(1501),(2778),(1511),(1512),(2777),(2763),(1510),(1513),(1515),(1514),(1505),(1502),(1503),(1504),(1506),(1507),(1509),(2214),(2215),(1733),(1516),(1730),(1731),(1732),(1734),(1735),(1737);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80071 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80071 As `item`, 1 AS `ChanceOrQuestChance`,1 AS `group`,-80071 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 0-5 Grays(Eversong Only)
INSERT IGNORE INTO loot VALUES
(21021),(21009),(21010),(21011),(21012),(21013),(21014),(21015),(21020),(21019),(21018),(21017),(21016),(21002),(21003),(21004),(21005),(21006),(21007),(21008),(21022);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80072 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80072 As `item`, 2 AS `ChanceOrQuestChance`,1 AS `group`,-80072 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 0-5 Grays(Remaining Areas)
INSERT IGNORE INTO loot VALUES
(2210),(1417),(2211),(5379),(1415),(2212),(2773),(1414),(1412),(1413),(2649),(2650),(2651),(2652),(2653),(2654),(2656),(3363),(3365),(1376),(1377),(1378),(1380),(1374),(2635),(2642),(2643),(2644),(2645),(2646),(2648),(1433),(3370),(3373),(1429),(1430),(1431),(1427),(1372),(1369),(1367),(1370),(1368),(1366),(1364),(2774),(1416),(2138),(10450),(1411),(1421),(2213),(1418),(1419),(1420),(1422),(1423),(1425);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80073 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80073 As `item`, 2 AS `ChanceOrQuestChance`,1 AS `group`,-80073 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 5/6 Greens
INSERT IGNORE INTO loot VALUES
(14090),(15969),(14091),(14094),(2962),(2961),(2140),(15479),(15477),(8180),(7108),(2958),(6511),(15925),(2957),(727),(15009),(15010),(4561),(4562),(8178),(2966),(2965);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80074 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80074 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80074 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 7/8 Greens
INSERT IGNORE INTO loot VALUES
(15944),(6527),(3292),(3291),(3282),(3283),(9764),(4577),(4303),(3330),(6267),(6512),(15932),(6266),(2300),(5069),(15298),(9753),(2087),(2254),(6337),(6336),(5744),(6269),(6268),(2075),(821),(3192),(4564),(2265),(2266),(4566),(3287),(3288),(15486);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80075 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80075 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80075 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 9/10 Greens
INSERT IGNORE INTO loot VALUES
(14113),(4768),(3307),(3308),(6558),(6556),(4570),(15491),(15492),(15495),(3302),(3654),(826),(1355),(6205),(9763),(9765),(3653),(3314),(4767),(3188),(2632),(1927),(1394),(2073),(15309),(1287),(1211),(15303),(9756),(9757),(4771),(3036),(3652),(2976),(2088),(15011),(14365),(15970),(14097),(2283),(2284),(5111),(5112),(5071),(832),(9749),(15933),(9747),(9748),(6180),(6550),(1933),(4569),(2267),(2980),(2978),(3651),(15485),(6195),(1926),(2899),(6537),(6543),(6542);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80076 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80076 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80076 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 11/12 Greens
INSERT IGNORE INTO loot VALUES
(14114),(14117),(14119),(3309),(6557),(6559),(6554),(5212),(15489),(3305),(2204),(3315),(1959),(1928),(1925),(15306),(15308),(1405),(1214),(15304),(2974),(2973),(4701),(6379),(3205),(15014),(15016),(15012),(4567),(14025),(14366),(14109),(14096),(15501),(1958),(14563),(14561),(15210),(9785),(9786),(1219),(14123),(7559),(2274),(2983),(6378),(3645),(2079),(4676),(820),(6551),(6547),(6548),(6546),(6560),(15926),(2970),(6528),(2969),(15268),(2977),(4571),(14722),(14723),(14724),(14725),(15487),(827),(6539),(6541);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80077 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80077 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80077 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 13/14 Greens
INSERT IGNORE INTO loot VALUES
(31268),(9777),(9775),(9779),(31270),(3195),(6531),(3310),(15222),(6553),(6552),(10402),(10401),(10400),(1446),(1951),(15493),(15494),(2235),(3306),(2203),(14174),(14166),(14167),(3211),(4695),(3313),(4290),(3196),(15307),(15310),(15305),(31269),(1387),(5967),(1539),(1440),(1943),(1936),(15507),(15508),(2020),(3040),(6380),(2987),(2988),(15017),(4575),(1944),(2823),(2821),(2822),(14367),(14364),(14370),(3019),(2078),(15497),(15499),(14160),(14161),(6179),(14560),(14564),(14559),(9788),(9784),(9787),(9789),(9790),(15114),(14122),(14131),(1391),(1473),(15945),(1469),(4699),(2984),(1929),(31256),(31264),(31263),(6545),(3902),(1930),(899),(4660),(14726),(14727),(7554),(6540),(6538),(6536),(1945);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80078 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80078 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80078 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- World Epics
-- 35/36
INSERT IGNORE INTO loot VALUES
(869),(870),(873),(1204);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80079 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80079 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80079 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 37/38
INSERT IGNORE INTO loot VALUES
(868),(2825),(867),(1980);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80080 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80080 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80080 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 39/40
INSERT IGNORE INTO loot VALUES
(14549),(2164),(1981),(1982);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80081 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80081 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80081 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 41/42
INSERT IGNORE INTO loot VALUES
(1169),(871),(1447),(940);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80082 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80082 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80082 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 43/44
INSERT IGNORE INTO loot VALUES
(14551),(2291),(2100),(943);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80083 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80083 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80083 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 45/46
INSERT IGNORE INTO loot VALUES
(809),(1315),(17007),(1979);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80084 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80084 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80084 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 47/48
INSERT IGNORE INTO loot VALUES
(942),(2824),(2163),(2915);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80085 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80085 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80085 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 49/50
INSERT IGNORE INTO loot VALUES
(3075),(812),(810),(14552);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80086 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80086 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80086 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 51/52
INSERT IGNORE INTO loot VALUES
(811),(647),(2244),(833);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80087 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80087 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80087 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 53/54
INSERT IGNORE INTO loot VALUES
(2099),(2245),(2246),(1168);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80088 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80088 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80088 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 55/56
INSERT IGNORE INTO loot VALUES
(1263),(944),(1443),(14553);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80089 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80089 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80089 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 57/58
INSERT IGNORE INTO loot VALUES
(14555),(14554),(20698),(2243);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80090 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80090 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80090 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 59/60
INSERT IGNORE INTO loot VALUES
(2801),(3475),(1728);

INSERT IGNORE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

INSERT IGNORE INTO `creature_loot_template` SELECT DISTINCT 80091 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

INSERT IGNORE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80091 As `item`, .1 AS `ChanceOrQuestChance`,1 AS `group`,-80091 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS `freeforall`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;
DROP TABLE `loot`;
DROP TABLE `lootcreatures`;
ALTER TABLE `creature_template` DROP INDEX `lootid_idx`;
ALTER TABLE `creature_loot_template` DROP INDEX `entry_idx`;


-- CLT ENDING 284594

-- Zul'Farrak
-- Antu'sul
DELETE FROM `creature_loot_template` WHERE `entry`=8127;
REPLACE INTO `creature_loot_template` VALUES
(8127, 9641, 0, 1, 1, 1, 0, 0, 0, 0), -- Lifeblood Amulet
(8127, 9640, 0, 1, 1, 1, 0, 0, 0, 0), -- Vice Grips
(8127, 9639, 20, 1, 1, 1, 0, 0, 0, 0), -- The Hand of Antu'sul
(8127, 9379, 10, 1, 1, 1, 0, 0, 0, 0), -- Sang'thraze the Deflector
(8127, 9243, 2, 0, 1, 1, 0, 0, 0, 0), -- Shriveled Heart
(8127, 4338, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth/troll loot
(8127, 1520, 19, 0, 1, 1, 0, 0, 0, 0),
(8127, 8151, 6, 0, 1, 1, 0, 0, 0, 0),
(8127, 9242, 3, 0, 1, 1, 0, 0, 0, 0),
(8127, 9523, -55, 0, 1, 1, 0, 0, 0, 0); -- Troll Temper (qid 3042)

-- Zum'rah
DELETE FROM `creature_loot_template` WHERE `entry`=7271;
REPLACE INTO `creature_loot_template` VALUES 
(7271, 18083, 30, 1, 1, 1, 0, 0, 0, 0), -- Jumanza Grips
(7271, 18082, 15, 1, 1, 1, 0, 0, 0, 0), -- Zum'rah's Vexing Cane
(7271, 9243, 2, 0, 1, 1, 0, 0, 0, 0), -- Shriveled Heart
(7271, 4338, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth/troll loot
(7271, 1520, 19, 0, 1, 1, 0, 0, 0, 0),
(7271, 8151, 6, 0, 1, 1, 0, 0, 0, 0),
(7271, 9242, 3, 0, 1, 1, 0, 0, 0, 0);

-- Sezz'ziz
DELETE FROM `creature_loot_template` WHERE `entry`=7275;
REPLACE INTO `creature_loot_template` VALUES 
(7275, 9475, 0, 1, 1, 1, 0, 0, 0, 0), -- Diabolic Skiver
(7275, 9473, 0, 1, 1, 1, 0, 0, 0, 0), -- Jinxed Hoodoo Skin
(7275, 9474, 0, 1, 1, 1, 0, 0, 0, 0), -- Jinxed Hoodoo Kilt
(7275, 9470, 0, 1, 1, 1, 0, 0, 0, 0), -- Bad Mojo Mask
(7275, 9243, 2, 0, 1, 1, 0, 0, 0, 0), -- Shriveled Heart
(7275, 4338, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth/troll loot
(7275, 1520, 19, 0, 1, 1, 0, 0, 0, 0),
(7275, 8151, 6, 0, 1, 1, 0, 0, 0, 0),
(7275, 9242, 3, 0, 1, 1, 0, 0, 0, 0);

-- Chief Ukorz Sandscalp
DELETE FROM `creature_loot_template` WHERE `entry`=7267;
REPLACE INTO `creature_loot_template` VALUES 
(7267, 9477, 0, 1, 1, 1, 0, 0, 0, 0), -- Chief's Enforcer
(7267, 9478, 0, 1, 1, 1, 0, 0, 0, 0), -- Ripsaw
(7267, 9476, 30, 1, 1, 1, 0, 0, 0, 0), -- Big Bad Pauldrons
(7267, 11086, 10, 1, 1, 1, 0, 0, 0, 0), -- Jang'thraze the Protector
(7267, 9479, 0, 1, 1, 1, 0, 0, 0, 0), -- Embrace of the Lycan 
(7267, 9243, 2, 0, 1, 1, 0, 0, 0, 0), -- Shriveled Heart
(7267, 4338, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth/troll loot
(7267, 1520, 19, 0, 1, 1, 0, 0, 0, 0),
(7267, 8151, 6, 0, 1, 1, 0, 0, 0, 0),
(7267, 9242, 3, 0, 1, 1, 0, 0, 0, 0),
(7267, 9523, -55, 0, 1, 1, 0, 0, 0, 0); -- Troll Temper (qid 3042)

-- Gahz'rilla
DELETE FROM `creature_loot_template` WHERE `entry`=7273;
REPLACE INTO `creature_loot_template` VALUES 
(7273, 9469, 0, 1, 1, 1, 0, 0, 0, 0), -- Gahz'rilla Scale Armor
(7273, 9467, 0, 1, 1, 1, 0, 0, 0, 0), -- Gahz'rilla Fang
(7273, 5516, 13, 0, 1, 1, 0, 0, 0, 0), -- Threshadon Loot
(7273, 7973, 18, 0, 1, 1, 0, 0, 0, 0),
(7273, 4603, 5, 0, 1, 2, 0, 0, 0, 0), 
(7273, 2608, 5, 0, 1, 1, 0, 0, 0, 0),
(7273, 8707, -100, 0, 1, 1, 1, 0, 0, 0); -- Gahz'rilla's Electrified Scale (qid 2770)

-- Maraudon
-- Lord Vyletongue
DELETE FROM `creature_loot_template` WHERE `entry`=12236;
REPLACE INTO `creature_loot_template` VALUES 
(12236, 17752, 0, 1, 1, 1, 0, 0, 0, 0), -- Satyr's Lash
(12236, 17754, 0, 1, 1, 1, 0, 0, 0, 0), -- Infernal Trickster Leggings
(12236, 17755, 0, 1, 1, 1, 0, 0, 0, 0), -- Saytrmane Sash
(12236, 4338, 14, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(12236, 17703, -100, 0, 1, 1, 1, 0, 0, 0), -- Celebrian Diamond (qid 7044)
(12236, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving (qid 7028)

-- Noxxion
DELETE FROM `creature_loot_template` WHERE `entry`=13282;
REPLACE INTO `creature_loot_template` VALUES 
(13282, 17746, 0, 1, 1, 1, 0, 0, 0, 0), -- Noxxion's Shackles
(13282, 17745, 20, 1, 1, 1, 0, 0, 0, 0), -- Noxious Shooter
(13282, 17744, 0, 1, 1, 1, 0, 0, 0, 0), -- Heart of Noxxion
(13282, 4791, 18, 0, 1, 5, 0, 0, 0, 0), -- Enchanted Water
(13282, 17702, -100, 0, 1, 1, 1, 0, 0, 0), -- Celebrian Rod (qid 7044)
(13282, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving (qid 7028)

-- Razorlash
DELETE FROM `creature_loot_template` WHERE `entry`=12258;
REPLACE INTO `creature_loot_template` VALUES 
(12258, 17749, 0, 1, 1, 1, 0, 0, 0, 0), -- Phytoskin Spaulders
(12258, 17751, 0, 1, 1, 1, 0, 0, 0, 0), -- Brusslehide Leggings
(12258, 17750, 0, 1, 1, 1, 0, 0, 0, 0), -- Chloromesh Girdle
(12258, 17748, 0, 1, 1, 1, 0, 0, 0, 0), -- Vinerot Sandals
(12258, 17747, 6, 0, 1, 2, 0, 0, 0, 0), -- Razorlash Root
(12258, 4606, 6, 0, 1, 1, 0, 0, 0, 0), -- Plant loot
(12258, 4607, 5, 0, 1, 1, 0, 0, 0, 0),
(12258, 4808, 5, 0, 1, 1, 0, 0, 0, 0),
(12258, 22529, 54, 0, 2, 4, 0, 0, 0, 0), -- Savage Frond
(12258, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Meshlok the Harvester (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=12237;
REPLACE INTO `creature_loot_template` VALUES 
(12237, 17741, 0, 1, 1, 1, 0, 0, 0, 0), -- Nature's Embrace
(12237, 17767, 0, 1, 1, 1, 0, 0, 0, 0), -- Bloomsprout Headpiece
(12237, 17742, 0, 1, 1, 1, 0, 0, 0, 0), -- Fungus Shroud Armor
(12237, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Celebras the Cursed
DELETE FROM `creature_loot_template` WHERE `entry`=12225;
REPLACE INTO `creature_loot_template` VALUES 
(12225, 17739, 0, 1, 1, 1, 0, 0, 0, 0), -- Grovekeeper's Drape
(12225, 17740, 0, 1, 1, 1, 0, 0, 0, 0), -- Soothsayer's Headdress
(12225, 17738, 0, 1, 1, 1, 0, 0, 0, 0), -- Claw of Celebras
(12225, 4338, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(12225, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Landslide
DELETE FROM `creature_loot_template` WHERE `entry`=12203;
REPLACE INTO `creature_loot_template` VALUES 
(12203, 17734, 0, 1, 1, 1, 0, 0, 0, 0), -- Helm of the Mountain
(12203, 17943, 0, 1, 1, 1, 0, 0, 0, 0), -- Fist of Stone
(12203, 17736, 0, 1, 1, 1, 0, 0, 0, 0), -- Rockgrip Gauntlets
(12203, 17737, 0, 1, 1, 1, 0, 0, 0, 0), -- Cloud Stone
(12203, 7912, 16, 0, 1, 2, 0, 0, 0, 0), -- Rock loot
(12203, 4552, 6, 0, 1, 1, 0, 0, 0, 0),
(12203, 8150, 10, 0, 1, 1, 0, 0, 0, 0),
(12203, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Tinkerer Gizlock
DELETE FROM `creature_loot_template` WHERE `entry`=13601;
REPLACE INTO `creature_loot_template` VALUES 
(13601, 17718, 0, 1, 1, 1, 0, 0, 0, 0), -- Gizlock's Hypertech Buckler
(13601, 17719, 0, 1, 1, 1, 0, 0, 0, 0), -- Inventor's Focal Sword
(13601, 17717, 0, 1, 1, 1, 0, 0, 0, 0), -- Megashot Rifle
(13601, 4338, 18, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(13601, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Rotgrip
DELETE FROM `creature_loot_template` WHERE `entry`=13596;
REPLACE INTO `creature_loot_template` VALUES 
(13596, 17730, 20, 1, 1, 1, 0, 0, 0, 0), -- Gatorbite Axe
(13596, 17732, 0, 1, 1, 1, 0, 0, 0, 0), -- Rotgrip Mantle
(13596, 17728, 0, 1, 1, 1, 0, 0, 0, 0), -- Albino Crocscale Boots
(13596, 770, 56, 0, 1, 1, 0, 0, 0, 0), -- Crockolisk Loot
(13596, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Princess Theradras
DELETE FROM `creature_loot_template` WHERE `entry`=12201;
REPLACE INTO `creature_loot_template` VALUES
(91009, 17713, 0, 1, 1, 1, 0, 0, 0, 0), -- Theradras loot
(91009, 17714, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17711, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17707, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17710, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17766, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17715, 0, 1, 1, 1, 0, 0, 0, 0),
(91009, 17780, 2, 1, 1, 1, 0, 0, 0, 0), -- Blade of Eternal Darkness
(12201, 91009, 100, 1, -91009, 2, 0, 0, 0, 0), -- 2 Drops
(12201, 7912, 18, 0, 1, 2, 0, 0, 0, 0), -- Rock loot
(12201, 8150, 13, 0, 1, 1, 0, 0, 0, 0),
(12201, 4552, 7, 0, 1, 1, 0, 0, 0, 0),
(12201, 17684, -80, 0, 1, 1, 0, 0, 0, 0); -- Theradric Crystal Carving(qid 7028)

-- Sunken Temple
-- Reference Tables
-- Troll Guardians(40% Ref Chance, 10783/4/5 have lower chance to drop than others)
REPLACE INTO `creature_loot_template` VALUES 
(91010, 10788, 0, 1, 1, 1, 1, 0, 0, 0),
(91010, 10786, 0, 1, 1, 1, 0, 0, 0, 0),
(91010, 10787, 0, 1, 1, 1, 1, 0, 0, 0),
(91010, 10784, 2, 1, 1, 1, 1, 0, 0, 0),
(91010, 10785, 2, 1, 1, 1, 1, 0, 0, 0),
(91010, 10783, 2, 1, 1, 1, 1, 0, 0, 0);

-- Smaller yet equally Angry Dragons(40% Ref Chance)
REPLACE INTO `creature_loot_template` VALUES 
(91011, 12466, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 12464, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 10795, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 12465, 0, 1, 1, 1, 0, 0, 0, 0),
(91011, 10796, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 10797, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 12463, 0, 1, 1, 1, 1, 0, 0, 0),
(91011, 12243, 0, 1, 1, 1, 1, 0, 0, 0);

-- Trolls
-- Gasher
DELETE FROM `creature_loot_template` WHERE `entry`=5713;
REPLACE INTO `creature_loot_template` VALUES 
(5713, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5713, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5713, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5713, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5713, 20606, -100, 0, 1, 1, 1, 0, 0, 0), -- Amber Voodoo Feather (qid 8413/8418/8422/8425)
(5713, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Hukku
DELETE FROM `creature_loot_template` WHERE `entry`=5715;
REPLACE INTO `creature_loot_template` VALUES 
(5715, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5715, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5715, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5715, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5715, 20607, -100, 0, 1, 1, 1, 0, 0, 0), -- Blue Voodoo Feather (qid 8413/8418/8422/8425)
(5715, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Loro
DELETE FROM `creature_loot_template` WHERE `entry`=5714;
REPLACE INTO `creature_loot_template` VALUES 
(5714, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5714, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5714, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5714, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5714, 20608, -100, 0, 1, 1, 1, 0, 0, 0), -- Green Voodoo Feather (qid 8413/8418/8422/8425)
(5714, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Mijan
DELETE FROM `creature_loot_template` WHERE `entry`=5717;
REPLACE INTO `creature_loot_template` VALUES 
(5717, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5717, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5717, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5717, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5717, 20607, -100, 0, 1, 1, 1, 0, 0, 0), -- Blue Voodoo Feather (qid 8413/8418/8422/8425)
(5717, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Zolo
DELETE FROM `creature_loot_template` WHERE `entry`=5712;
REPLACE INTO `creature_loot_template` VALUES 
(5712, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5712, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5712, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5712, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5712, 20608, -100, 0, 1, 1, 1, 0, 0, 0), -- Green Voodoo Feather (qid 8413/8418/8422/8425)
(5712, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Zul'Lor
DELETE FROM `creature_loot_template` WHERE `entry`=5716;
REPLACE INTO `creature_loot_template` VALUES 
(5716, 91010, 40, 1, -91010, 1, 0, 0, 0, 0), -- Chance to drop from Troll Guardians table
(5716, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5716, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5716, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5716, 20606, -100, 0, 1, 1, 1, 0, 0, 0), -- Amber Voodoo Feather (qid 8413/8418/8422/8425)
(5716, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Bosses
-- Atal'alarion
DELETE FROM `creature_loot_template` WHERE `entry`=8580;
REPLACE INTO `creature_loot_template` VALUES 
(8580, 10800, 0, 1, 1, 1, 0, 0, 0, 0), -- Darkwater Bracers
(8580, 10798, 0, 1, 1, 1, 0, 0, 0, 0), -- Atal'alarion's Tusk Ring
(8580, 10799, 20, 1, 1, 1, 0, 0, 0, 0), -- Headspike
(8580, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(8580, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(8580, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(8580, 22444, -100, 0, 1, 1, 1, 0, 0, 0), -- Putrid Vine (qid 9053/10593)
(8580, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Avatar of Hakkar
DELETE FROM `creature_loot_template` WHERE `entry`=8443;
REPLACE INTO `creature_loot_template` VALUES 
(91012, 10845, 0, 1, 1, 1, 0, 0, 0, 0), -- Warrior's Embrace
(91012, 10843, 0, 1, 1, 1, 0, 0, 0, 0), -- Featherskin Cape
(91012, 10838, 15, 1, 1, 1, 0, 0, 0, 0), -- Might of Hakkar
(91012, 10842, 0, 1, 1, 1, 0, 0, 0, 0), -- Windscale Sarong
(91012, 10846, 0, 1, 1, 1, 0, 0, 0, 0), -- Bloodshot Greaves
(91012, 10844, 15, 1, 1, 1, 0, 0, 0, 0), -- Spire of Hakkar
(91012, 12462, 1, 1, 1, 1, 0, 0, 0, 0), -- Embrace of the Wind Serpent
(8443, 91012, 100, 1, -91012, 2, 0, 0, 0, 0), -- 2 drops
(8443, 6444, 7, 0, 1, 1, 0, 0, 0, 0), -- Serpent Loot
(8443, 6826, 12, 0, 1, 1, 0, 0, 0, 0),
(8443, 10663, -100, 0, 1, 1, 1, 0, 0, 0); -- Essence of Hakkar(qid 3528)

-- Ogom the Wretched
DELETE FROM `creature_loot_template` WHERE `entry`=5711;
REPLACE INTO `creature_loot_template` VALUES 
(5711, 10804, 0, 1, 1, 1, 0, 0, 0, 0), -- Fist of the Damned
(5711, 10803, 0, 1, 1, 1, 0, 0, 0, 0), -- Blade of the Wretched
(5711, 10805, 0, 1, 1, 1, 0, 0, 0, 0), -- Eater of the Dead
(5711, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5711, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5711, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5711, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Jammal'an the Prophet
DELETE FROM `creature_loot_template` WHERE `entry`=5710;
REPLACE INTO `creature_loot_template` VALUES
(5710, 10808, 0, 1, 1, 1, 0, 0, 0, 0), -- Gloves of the Atal'ai Prophet
(5710, 10806, 0, 1, 1, 1, 0, 0, 0, 0), -- Vestments of the Atal'ai Prophet
(5710, 10807, 0, 1, 1, 1, 0, 0, 0, 0), -- Kilt of the Atal'ai Prophet
(5710, 8152, 7, 0, 1, 1, 0, 0, 0, 0), -- Troll loot
(5710, 1520, 23, 0, 1, 1, 0, 0, 0, 0),
(5710, 4338, 21, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(5710, 6212, -100, 0, 1, 1, 1, 0, 0, 0), -- Head of Jammal'an(qid 1446)
(5710, 6181, -80, 0, 1, 1, 0, 0, 0, 0); -- Fetish of Hakkar(qid 1445)

-- Shade of Eranikus
DELETE FROM `creature_loot_template` WHERE `entry`=5709;
REPLACE INTO `creature_loot_template` VALUES 
(91013, 10833, 0, 1, 1, 1, 0, 0, 0, 0), -- Horns of Eranikus
(91013, 10829, 0, 1, 1, 1, 0, 0, 0, 0), -- Dragon's Eye
(91013, 10837, 15, 1, 1, 1, 0, 0, 0, 0), -- Tooth of Eranikus
(91013, 10835, 0, 1, 1, 1, 0, 0, 0, 0), -- Crest of Supremacy
(91013, 10836, 0, 1, 1, 1, 0, 0, 0, 0), -- Rod of Corrosion
(91013, 10828, 15, 1, 1, 1, 0, 0, 0, 0), -- Dire Nail
(91013, 10847, 1, 1, 1, 1, 0, 0, 0, 0), -- Dragon's Call
(5709, 91013, 100, 1, -91013, 2, 0, 0, 0, 0), -- 2 drops
(5709, 10454, 100, 0, 1, 1, 1, 0, 0, 0), -- Essence of Eranikus
(5709, 4460, 11, 0, 1, 1, 0, 0, 0, 0); -- Dragon loot

-- Dragons
-- Dreamscythe
DELETE FROM `creature_loot_template` WHERE `entry`=5721;
REPLACE INTO `creature_loot_template` VALUES 
(5721, 91011, 40, 1, -91011, 1, 0, 0, 0, 0), -- Chance to drop from shared loot table
(5721, 4460, 11, 0, 1, 1, 0, 0, 0, 0); -- Dragon Loot

-- Weaver
DELETE FROM `creature_loot_template` WHERE `entry`=5720;
REPLACE INTO `creature_loot_template` VALUES 
(5720, 91011, 40, 1, -91011, 1, 0, 0, 0, 0), -- Chance to drop from shared loot table
(5720, 4460, 11, 0, 1, 1, 0, 0, 0, 0); -- Dragon Loot

-- Morphaz
DELETE FROM `creature_loot_template` WHERE `entry`=5719;
REPLACE INTO `creature_loot_template` VALUES 
(5719, 20019, -100, 0, 1, 1, 1, 0, 0, 0), -- Tooth of Morphaz(qid 8232)
(5719, 20022, -100, 0, 1, 1, 1, 0, 0, 0), -- Azure Key(qid 8236)
(5719, 20025, -100, 0, 1, 1, 1, 0, 0, 0), -- Blood of Morphaz(qid 8257)
(5719, 20085, -100, 0, 1, 1, 1, 0, 0, 0), -- Arcane Shard(qid 8253)
(5719, 91011, 40, 1, -91011, 1, 0, 0, 0, 0), -- Chance to drop from shared loot table
(5719, 4460, 11, 0, 1, 1, 0, 0, 0, 0); -- Dragon Loot

-- Hazzas
DELETE FROM `creature_loot_template` WHERE `entry`=5722;
REPLACE INTO `creature_loot_template` VALUES 
(5722, 91011, 40, 1, -91011, 1, 0, 0, 0, 0), -- Chance to drop from shared loot table
(5722, 4460, 11, 0, 1, 1, 0, 0, 0, 0); -- Dragon Loot

-- BRD
-- The following items should only drop from a Relic Coffer or a Dark Coffer(GOs)
DELETE FROM `creature_loot_template` WHERE `item` IN (11966, 11940, 11939, 11941, 11942, 11938, 11937, 11944, 11943, 11945, 11946);

-- Dark Coffer Key should be %100 drop from all Keepers
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `item`=11197;

-- Dark Iron Fanny Pack missing from a few mobs
REPLACE INTO `creature_loot_template` VALUES
(8889, 11468, -80, 0, 1, 1, 0, 0, 0, 0),
(9437, 11468, -80, 0, 1, 1, 0, 0, 0, 0);

-- Dark Iron Fanny Pack should not drop from Anvilrage Taskmasters, they are in the Slag Pit in Searing Gorge
DELETE FROM `creature_loot_template` WHERE `item`=11468 AND `entry`=24818;

-- High Interrogator Gerstahn
DELETE FROM `creature_loot_template` WHERE `entry`=9018;
REPLACE INTO `creature_loot_template` VALUES
(9018, 11624, 0, 1, 1, 1, 0, 0, 0, 0), -- Kentic Amice
(9018, 11625, 0, 1, 1, 1, 0, 0, 0, 0), -- Enthralled Sphere
(9018, 11626, 0, 1, 1, 1, 0, 0, 0, 0), -- Blackveil Cape
(9018, 22240, 0, 1, 1, 1, 0, 0, 0, 0), -- Greaves of Withering
(9018, 14047, 17, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(9018, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9018, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9018, 11140, 100, 0, 1, 1, 0, 0, 0, 0), -- Prison Cell Key
(9018, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Lord Roccor
DELETE FROM `creature_loot_template` WHERE `entry`=9025;
REPLACE INTO `creature_loot_template` VALUES
(9025, 22234, 0, 1, 1, 1, 0, 0, 0, 0), -- Mantle of Lost Hope
(9025, 11631, 0, 1, 1, 1, 0, 0, 0, 0), -- Stoneshell Guard
(9025, 22397, 0, 1, 1, 1, 0, 0, 0, 0), -- Idol of Ferocity
(9025, 11632, 0, 1, 1, 1, 0, 0, 0, 0), -- Earthslag Shoulders
(9025, 11813, 15, 0, 1, 1, 0, 0, 0, 0), -- Formula Smoking Heart of the Mountain
(9025, 11630, 16, 0, 200, 200, 0, 0, 0, 0), -- Rockshard Pellets
(9025, 8150, 12, 0, 1, 1, 0, 0, 0, 0), -- Deeprock Salt
(9025, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9025, 22528, 9, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9025, 22527, 55, 0, 2, 4, 0, 0, 0, 0), -- Core of Elements
(9025, 11129, -80, 0, 2, 3, 0, 0, 0, 0), -- Essence of the Elements(qid 7201)
(9025, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Houndmaster Grebmar
DELETE FROM `creature_loot_template` WHERE `entry`=9319;
REPLACE INTO `creature_loot_template` VALUES 
(9319, 11623, 0, 1, 1, 1, 0, 0, 0, 0), -- Spritecaster Cape
(9319, 11627, 0, 1, 1, 1, 0, 0, 0, 0), -- Fleetfoot Greaves
(9319, 11628, 15, 1, 1, 1, 0, 0, 0, 0), -- Houndmaster's Bow
(9319, 11629, 15, 1, 1, 1, 0, 0, 0, 0), -- Houndmaster's Rifel
(9319, 14047, 20, 0, 1, 4, 0, 0, 0, 0), -- Cloth
(9319, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9319, 18945, 13, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9319, 11078, 5, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9319, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Arena Event
-- Anub'shiah
DELETE FROM `creature_loot_template` WHERE `entry`=9031;
REPLACE INTO `creature_loot_template` VALUES 
(9031, 11677, 0, 1, 1, 1, 0, 0, 0, 0), -- Graverot Cape
(9031, 11678, 15, 2, 1, 1, 0, 0, 0, 0), -- Carapace of Anub'shiah
(9031, 11675, 0, 1, 1, 1, 0, 0, 0, 0), -- Shadefiend Boots
(9031, 11731, 15, 1, 1, 1, 0, 0, 0, 0), -- Savage Gladiator Greaves
(9031, 4585, 20, 0, 1, 1, 0, 0, 0, 0), -- Dripping Spider Mandible
(9031, 4337, 5, 0, 1, 1, 0, 0, 0, 0), -- Thick Spider's Silk
(9031, 1074, 7, 0, 1, 1, 0, 0, 0, 0), -- Hard Spider Leg Tip
(9031, 10285, 8, 0, 1, 1, 0, 0, 0, 0), -- Shadow Silk
(9031, 22525, 57, 0, 2, 4, 0, 0, 0, 0), -- Crypt Fiend Parts
(9031, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9031, 18945, 9, 0, 1, 9, 0, 0, 0, 0), -- Dark Iron Residue
(9031, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Eviscerator
DELETE FROM `creature_loot_template` WHERE `entry`=9029;
REPLACE INTO `creature_loot_template` VALUES 
(9029, 11685, 0, 1, 1, 1, 0, 0, 0, 0), -- Splinthide Shoulders
(9029, 11679, 0, 1, 1, 1, 0, 0, 0, 0), -- Rubicund Armguards
(9029, 11686, 15, 1, 1, 1, 0, 0, 0, 0), -- Girdle of Beastial Fury
(9029, 11730, 15, 1, 1, 1, 0, 0, 0, 0), -- Savage Gladiator Grips
(9029, 18945, 14, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9029, 14047, 12, 0, 1, 2, 0, 0, 0, 0), -- Runecloth
(9029, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9029, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Gorosh the Dervish
DELETE FROM `creature_loot_template` WHERE `entry`=9027;
REPLACE INTO `creature_loot_template` VALUES 
(9027, 11726, 15, 1, 1, 1, 0, 0, 0, 0), -- Savage Gladiator Chain
(9027, 22266, 15, 1, 1, 1, 0, 0, 0, 0), -- Flarethorn
(9027, 22257, 0, 1, 1, 1, 0, 0, 0, 0), -- Bloodclot Band
(9027, 22271, 0, 1, 1, 1, 0, 0, 0, 0), -- Leggings of Frenzied Magic
(9027, 14047, 23, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9027, 18945, 4, 0, 1, 6, 0, 0, 0, 0), -- Dark Iron Residue
(9027, 22528, 9, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9027, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Grizzle
DELETE FROM `creature_loot_template` WHERE `entry`=9028;
REPLACE INTO `creature_loot_template` VALUES 
(9028, 11703, 0, 1, 1, 1, 0, 0, 0, 0), -- Stonewall Girdle
(9028, 11702, 0, 1, 1, 1, 0, 0, 0, 0), -- Grizzle's Skinner
(9028, 11722, 15, 1, 1, 1, 0, 0, 0, 0), -- Dregmetal Spaulders
(9028, 22270, 15, 1, 1, 1, 0, 0, 0, 0), -- Entrenching Boots
(9028, 14047, 14, 0, 1, 2, 0, 0, 0, 0), -- Runecloth
(9028, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9028, 22528, 9, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9028, 11610, 100, 0, 1, 1, 0, 0, 0, 0), -- Plans Dark Iron Pulverizer
(9028, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Hedrum the Creeper
DELETE FROM `creature_loot_template` WHERE `entry`=9032;
REPLACE INTO `creature_loot_template` VALUES 
(9032, 11634, 0, 1, 1, 1, 0, 0, 0, 0), -- Silkweb Gloves
(9032, 11635, 15, 1, 1, 1, 0, 0, 0, 0), -- Hookfang Shanker
(9032, 11633, 0, 1, 1, 1, 0, 0, 0, 0), -- Spiderfang Carapace
(9032, 11729, 15, 1, 1, 1, 0, 0, 0, 0), -- Savage Gladiator Helm
(9032, 4585, 21, 0, 1, 1, 0, 0, 0, 0), -- Dripping Spider Mandible
(9032, 12205, 24, 0, 1, 1, 0, 0, 0, 0), -- White Spider Meat
(9032, 14227, 5, 0, 1, 1, 0, 0, 0, 0), -- Ironweb Spider Silk
(9032, 1074, 6, 0, 1, 1, 0, 0, 0, 0), -- Hard Spider Leg Tip
(9032, 10285, 9, 0, 1, 1, 0, 0, 0, 0), -- Shadow Silk
(9032, 4337, 6, 0, 1, 1, 0, 0, 0, 0), -- Thick Spider's Silk
(9032, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9032, 18945, 8, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9032, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Ok'thor the Breaker
DELETE FROM `creature_loot_template` WHERE `entry`=9030;
REPLACE INTO `creature_loot_template` VALUES 
(9030, 11662, 0, 1, 1, 1, 0, 0, 0, 0), -- Ban'thok Sash
(9030, 11665, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogreseer Fists
(9030, 11824, 15, 1, 1, 1, 0, 0, 0, 0), -- Cyclopean Band
(9030, 11728, 15, 1, 1, 1, 0, 0, 0, 0), -- Savage Gladiator Leggings
(9030, 14047, 21, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9030, 18945, 12, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9030, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9030, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Outer BRD
-- Pyromancer Loregrain
DELETE FROM `creature_loot_template` WHERE `entry`=9024;
REPLACE INTO `creature_loot_template` VALUES 
(9024, 11748, 0, 1, 1, 1, 0, 0, 0, 0), -- Pyric Caduceus
(9024, 11749, 0, 1, 1, 1, 0, 0, 0, 0), -- Searingscale Leggings
(9024, 11747, 0, 1, 1, 1, 0, 0, 0, 0), -- Flamestrider Robes
(9024, 11750, 20, 1, 1, 1, 0, 0, 0, 0), -- Kindling Stave
(9024, 11207, 16, 0, 1, 1, 0, 0, 0, 0), -- Enchant Weapon Fiery Weapon
(9024, 14047, 22, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9024, 18945, 13, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9024, 22528, 10, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9024, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Warder Stilgiss
DELETE FROM `creature_loot_template` WHERE `entry`=9041;
REPLACE INTO `creature_loot_template` VALUES 
(9041, 11784, 0, 1, 1, 1, 0, 0, 0, 0), -- Arbiter's Blade
(9041, 11783, 0, 1, 1, 1, 0, 0, 0, 0), -- Chillsteel Girdle
(9041, 11782, 0, 1, 1, 1, 0, 0, 0, 0), -- Boreal Mantle
(9041, 22241, 0, 1, 1, 1, 0, 0, 0, 0), -- Dark Warder's Pauldrons
(9041, 14047, 28, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9041, 18945, 11, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9041, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9041, 11078, 4, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9041, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Verek
DELETE FROM `creature_loot_template` WHERE `entry`=9042;
REPLACE INTO `creature_loot_template` VALUES
(9042, 22242, 13, 1, 1, 1, 0, 0, 0, 0), -- Verek's Leash
(9042, 11755, 12, 1, 1, 1, 0, 0, 0, 0), -- Verek's Collar
(9042, 12208, 40, 0, 1, 1, 0, 0, 0, 0), -- Tender Wolf Meat
(9042, 12203, 38, 0, 1, 1, 0, 0, 0, 0), -- Red Wolf Meat
(9042, 4583, 23, 0, 1, 1, 0, 0, 0, 0), -- Thick Furry Mane
(9042, 4584, 10, 0, 1, 1, 0, 0, 0, 0), -- Large Trophy Paw
(9042, 18945, 15, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9042, 22528, 10, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9042, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Fineous Darkvire
DELETE FROM `creature_loot_template` WHERE `entry`=9056;
REPLACE INTO `creature_loot_template` VALUES 
(9056, 11841, 0, 1, 1, 1, 0, 0, 0, 0), -- Senior Designer's Pantaloons
(9056, 11842, 0, 1, 1, 1, 0, 0, 0, 0), -- Lead Surveyor's Mantle
(9056, 11839, 0, 1, 1, 1, 0, 0, 0, 0), -- Chief Architect's Monocle
(9056, 22223, 0, 1, 1, 1, 0, 0, 0, 0), -- Foreman's Head Protector
(9056, 14047, 16, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9056, 18945, 9, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9056, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9056, 11840, 5, 0, 1, 1, 0, 0, 0, 0), -- Master Builder's Shirt
(9056, 11078, 5, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9056, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9056, 10999, -100, 0, 1, 1, 1, 0, 0, 0), -- Ironfel(qid 3802)
(9056, 11468, -80, 0, 3, 5, 0, 0, 0, 0); -- Dark Iron Fanny Pack(qid 4286)

-- Lord Incendius
DELETE FROM `creature_loot_template` WHERE `entry`=9017;
REPLACE INTO `creature_loot_template` VALUES
(9017, 11767, 0, 1, 1, 1, 0, 0, 0, 0), -- Emberplate Armguards
(9017, 11766, 0, 1, 1, 1, 0, 0, 0, 0), -- Flameweave Cuffs
(9017, 11764, 0, 1, 1, 1, 0, 0, 0, 0), -- Cinderhide Armsplints
(9017, 11765, 0, 1, 1, 1, 0, 0, 0, 0), -- Pyremail Wristguards
(9017, 19268, 2, 0, 1, 1, 0, 0, 0, 0), -- Ace of Elementals
(9017, 18945, 11, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9017, 22528, 9, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9017, 22527, 55, 0, 2, 4, 0, 0, 0, 0), -- Core of Elements
(9017, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9017, 11126, -100, 0, 1, 1, 1, 0, 0, 0), -- Tablet of Kurniya(qid 3907)
(9017, 21987, -100, 0, 1, 1, 1, 0, 0, 0), -- Incendicite of Incendius (qid 8961)
(9017, 11129, -80, 0, 1, 3, 0, 0, 0, 0); -- Essence of the Elements(qid 7201)

-- Bael'gar
DELETE FROM `creature_loot_template` WHERE `entry`=9016;
REPLACE INTO `creature_loot_template` VALUES 
(9016, 11803, 0, 1, 1, 1, 0, 0, 0, 0), -- Force of Magma
(9016, 11802, 0, 1, 1, 1, 0, 0, 0, 0), -- Lavacrest Leggings
(9016, 11807, 18, 1, 1, 1, 0, 0, 0, 0), -- Sash of the Burning Heart
(9016, 11805, 18, 1, 1, 1, 0, 0, 0, 0), -- Rubidium Hammer
(9016, 3857, 10, 0, 1, 1, 0, 0, 0, 0), -- Coal
(9016, 18945, 12, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9016, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9016, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- General Angerforge
DELETE FROM `creature_loot_template` WHERE `entry`=9033;
REPLACE INTO `creature_loot_template` VALUES
(9033, 11821, 0, 1, 1, 1, 0, 0, 0, 0), -- Warstrife Leggings
(9033, 11810, 0, 1, 1, 1, 0, 0, 0, 0), -- Force of Will
(9033, 11817, 0, 1, 1, 1, 0, 0, 0, 0), -- Lord General's Sword
(9033, 11820, 0, 1, 1, 1, 0, 0, 0, 0), -- Royal Decorated Armor
(9033, 11816, 0, 1, 1, 1, 0, 0, 0, 0), -- Angerforge's Battle Axe
(9033, 14047, 15, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9033, 18945, 9, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9033, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9033, 11078, 4, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9033, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9033, 11464, -100, 0, 1, 1, 1, 0, 0, 0), -- Marshal Windor's Lost Information(qid 4282)
(9033, 11468, -80, 0, 3, 10, 0, 0, 0, 0); -- Dark Iron Fanny Pack(qid 4286)

-- Golem Lord Argelmach
DELETE FROM `creature_loot_template` WHERE `entry`=8983;
REPLACE INTO `creature_loot_template` VALUES
(8983, 11822, 0, 1, 1, 1, 0, 0, 0, 0), -- Omnicast Boots
(8983, 11669, 0, 1, 1, 1, 0, 0, 0, 0), -- Naglering
(8983, 11823, 0, 1, 1, 1, 0, 0, 0, 0), -- Luminary Kilt
(8983, 11819, 8, 1, 1, 1, 0, 0, 0, 0), -- Second Wind
(8983, 14047, 15, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(8983, 18945, 9, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(8983, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(8983, 11078, 4, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(8983, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(8983, 21956, 60, 0, 1, 1, 0, 7, 755, 1), -- Design Dark Iron Scorpid(High chance to drop per Armory)
(8983, 11268, -100, 0, 1, 1, 1, 0, 0, 0), -- Head of Argelmach(qid 4063)
(8983, 11465, -100, 0, 1, 1, 1, 0, 0, 0), -- Marshal Windor's Lost Information(qid 4282)
(8983, 11468, -80, 0, 5, 8, 0, 0, 0, 0); -- Dark Iron Fanny Pack(qid 4286)

-- Grim Guzzler
-- Ribbly Screwspigot
DELETE FROM `creature_loot_template` WHERE `entry`=9543;
REPLACE INTO `creature_loot_template` VALUES 
(9543, 11612, 0, 1, 1, 1, 0, 0, 0, 0), -- Plans Dark Iron Plate
(9543, 11742, 0, 1, 1, 1, 0, 0, 0, 0), -- Wayfarer's Knapsack
(9543, 2662, 16, 1, 1, 1, 0, 0, 0, 0), -- Ribbly's Quiver
(9543, 2663, 16, 1, 1, 1, 0, 0, 0, 0), -- Ribbly's Bandolier
(9543, 14047, 9, 0, 1, 2, 0, 0, 0, 0), -- Runecloth
(9543, 18945, 9, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9543, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9543, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9543, 11313, -100, 0, 1, 1, 1, 0, 0, 0); -- Ribbly's Head (qid 4136)

-- Hurley Blackbreath
DELETE FROM `creature_loot_template` WHERE `entry`=9537;
REPLACE INTO `creature_loot_template` VALUES 
(9537, 18044, 0, 1, 1, 1, 0, 0, 0, 0), -- Hurley's Tankard
(9537, 22275, 0, 1, 1, 1, 0, 0, 0, 0), -- Firemoss Boots
(9537, 18043, 0, 1, 1, 1, 0, 0, 0, 0), -- Coal Miner Boots
(9537, 11735, 9, 1, 1, 1, 0, 0, 0, 0), -- Ragefury Eyepatch
(9537, 14047, 15, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9537, 18945, 9, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9537, 22528, 6, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9537, 11078, 4, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9537, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9537, 11312, -100, 0, 1, 1, 1, 0, 0, 0), -- Lost Thunderbrew Recipe(qid 4126/4134)
(9537, 11468, -80, 0, 1, 1, 0, 0, 0, 0); -- Dark Iron Fanny Pack(qid 4286)

-- Phalanx
DELETE FROM `creature_loot_template` WHERE `entry`=9502;
REPLACE INTO `creature_loot_template` VALUES 
(9502, 11745, 0, 1, 1, 1, 0, 0, 0, 0), -- Fists of Phalanx
(9502, 11744, 0, 1, 1, 1, 0, 0, 0, 0), -- Bloodfist
(9502, 22212, 0, 1, 1, 1, 0, 0, 0, 0), -- Golem Fitted Pauldrons
(9502, 4554, 6, 0, 1, 1, 0, 0, 0, 0), -- Shiny Polished Stone
(9502, 7912, 15, 0, 1, 2, 0, 0, 0, 0), -- Solid Stone
(9502, 4552, 14, 0, 1, 1, 0, 0, 0, 0), -- Smooth Stone Chip
(9502, 8150, 12, 0, 1, 1, 0, 0, 0, 0), -- Deeprock Salt
(9502, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9502, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9502, 11370, 6, 0, 1, 1, 0, 0, 0, 0), -- Dark Iron Ore
(9502, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Plugger Spazzring
DELETE FROM `creature_loot_template` WHERE `entry`=9499;
REPLACE INTO `creature_loot_template` VALUES
(9499, 12793, 30, 1, 1, 1, 0, 0, 0, 0), -- Mixologist's Tunic
(9499, 18653, 16, 1, 1, 1, 0, 0, 0, 0), -- Schematic Goblin Jumper Cables XL
(9499, 12791, 8, 1, 1, 1, 0, 0, 0, 0), -- Barman Shanker
(9499, 14047, 24, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9499, 18945, 14, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9499, 22528, 10, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9499, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Inner BRD
-- Ambassador Flamelash
DELETE FROM `creature_loot_template` WHERE `entry`=9156;
REPLACE INTO `creature_loot_template` VALUES
(9156, 11814, 0, 1, 1, 1, 0, 0, 0, 0), -- Molten Fists
(9156, 11812, 0, 1, 1, 1, 0, 0, 0, 0), -- Cape of the Fire Salamander
(9156, 11809, 20, 1, 1, 1, 0, 0, 0, 0), -- Flame Wrath
(9156, 11832, 17, 1, 1, 1, 0, 0, 0, 0), -- Burst of Knowledge
(9156, 11808, 1, 1, 1, 1, 0, 0, 0, 0), -- Circle of Flame
(9156, 18945, 11, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9156, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9156, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9156, 11129, -80, 0, 3, 5, 0, 0, 0, 0); -- Essence of the Elements(qid 7201)

-- Panzor the Invincible(RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=8923;
REPLACE INTO `creature_loot_template` VALUES 
(8923, 11786, 0, 1, 1, 1, 0, 0, 0, 0), -- Stone of the Earth
(8923, 11787, 0, 1, 1, 1, 0, 0, 0, 0), -- Shalehusk Boots
(8923, 22245, 0, 1, 1, 1, 0, 0, 0, 0), -- Soot Encrusted Footwear
(8923, 11785, 0, 1, 1, 1, 0, 0, 0, 0), -- Rock Golem Bulwark
(8923, 7912, 16, 0, 1, 2, 0, 0, 0, 0), -- Solid Stone
(8923, 4552, 15, 0, 1, 1, 0, 0, 0, 0), -- Smooth Stone Chip
(8923, 8150, 12, 0, 1, 1, 0, 0, 0, 0), -- Deeprock Salt
(8923, 18945, 11, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(8923, 11370, 6, 0, 1, 1, 0, 0, 0, 0), -- Dark Iron Ore
(8923, 22528, 5, 0, 3, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(8923, 4554, 5, 0, 1, 1, 0, 0, 0, 0), -- Shiny Polished Stone
(8923, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(8923, 11129, -80, 0, 3, 5, 0, 0, 0, 0); -- Essence of the Elements(qid 7201)

-- The Seven
-- Loot should not be on any of the dwarves, only in the chest 
UPDATE `creature_template` SET `lootid`=0 WHERE `entry` IN (9034, 9035, 9036, 9037, 9038, 9039, 9040);
DELETE FROM `creature_loot_template` WHERE `entry` IN (9034, 9035, 9036, 9037, 9038, 9039, 9040);

-- Chest of the Seven (GO 169243)
DELETE FROM `gameobject_loot_template` WHERE `entry`=12260;
REPLACE INTO `gameobject_loot_template` VALUES 
(95005, 11920, 0, 1, 1, 1, 0, 0, 0, 0), -- Wraith Scythe
(95005, 11921, 0, 1, 1, 1, 0, 0, 0, 0), -- Impervious Giant
(95005, 11922, 0, 1, 1, 1, 0, 0, 0, 0), -- Blood-etched Blade
(95005, 11923, 0, 1, 1, 1, 0, 0, 0, 0), -- The Hammer of Grace
(95005, 11925, 0, 1, 1, 1, 0, 0, 0, 0), -- Ghostshroud
(95005, 11926, 0, 1, 1, 1, 0, 0, 0, 0), -- Deathdealer Breastplate
(95005, 11927, 0, 1, 1, 1, 0, 0, 0, 0), -- Legplates of the Eternal Guardian
(95005, 11929, 0, 1, 1, 1, 0, 0, 0, 0), -- Haunting Specter Leggings
(12260, 95005, 100, 1, -95005, 2, 0, 0, 0, 0); -- 2 Drops

-- Magmus
DELETE FROM `creature_loot_template` WHERE `entry`=9938;
REPLACE INTO `creature_loot_template` VALUES 
(9938, 22208, 0, 1, 1, 1, 0, 0, 0, 0), -- Lavastone Hammer
(9938, 11746, 0, 1, 1, 1, 0, 0, 0, 0), -- Golem Skull Helm
(9938, 11935, 0, 1, 1, 1, 0, 0, 0, 0), -- Magmus Stone
(9938, 22400, 0, 1, 1, 1, 0, 0, 0, 0), -- Libram of Truth
(9938, 22395, 0, 1, 1, 1, 0, 0, 0, 0), -- Totem of Rage
(9938, 4787, 18, 0, 1, 1, 0, 0, 0, 0), -- Burning Pitch
(9938, 18945, 14, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9938, 3857, 10, 0, 1, 1, 0, 0, 0, 0), -- Coal
(9938, 22528, 9, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9938, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- Princess Moira Bronzebeard
DELETE FROM `creature_loot_template` WHERE `entry`=8929;
REPLACE INTO `creature_loot_template` VALUES 
(8929, 12557, 0, 1, 1, 1, 0, 0, 0, 0), -- Ebonsteel Spaulders
(8929, 12554, 0, 1, 1, 1, 0, 0, 0, 0), -- Hands of the Exalted Herald
(8929, 12553, 0, 1, 1, 1, 0, 0, 0, 0), -- Swiftwalker Boots
(8929, 12556, 0, 1, 1, 1, 0, 0, 0, 0), -- High Priestess Boots
(8929, 14047, 20, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(8929, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(8929, 22206, 100, 0, 1, 1, 0, 0, 0, 0), -- Bouquet of Red Roses
(8929, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(8929, 11078, 2, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(8929, 11468, -80, 0, 1, 1, 0, 0, 0, 0), -- Dark Iron Fanny Pack(qid 4286)
(8929, 11446, 25, 0, 1, 1, 1, 6, 469, 0); -- A Crumpled Up Note

-- High Priestess of Thaurissan (Replaces Moira Bronzebeard if all group members have completed Moira quests, same loot table)
UPDATE `creature_template` SET `lootid`=8929 WHERE `entry`=10076;
DELETE FROM `creature_loot_template` WHERE `entry`=10076;

-- Emperor Dagran Thaurissan
DELETE FROM `creature_loot_template` WHERE `entry`=9019;
REPLACE INTO `creature_loot_template` VALUES
(91014, 11932, 0, 1, 1, 1, 0, 0, 0, 0), -- Guiding Stave of Wisdom
(91014, 11928, 0, 1, 1, 1, 0, 0, 0, 0), -- Thaurissan's Royal Scepter
(91014, 11934, 0, 1, 1, 1, 0, 0, 0, 0), -- Emperor's Seal
(91014, 11931, 0, 1, 1, 1, 0, 0, 0, 0), -- Dreadforge Retaliator
(91014, 11930, 0, 1, 1, 1, 0, 0, 0, 0), -- The Emperor's New Cape
(91014, 11924, 0, 1, 1, 1, 0, 0, 0, 0), -- Robes of the Royal Crown
(91014, 11933, 0, 1, 1, 1, 0, 0, 0, 0), -- Imperial Jewel
(91014, 22204, 0, 1, 1, 1, 0, 0, 0, 0), -- Wristguards for the Renown
(91014, 22207, 0, 1, 1, 1, 0, 0, 0, 0), -- Sash of the Grand Hunt
(91014, 11815, 0, 1, 1, 1, 0, 0, 0, 0), -- Hand of Justice
(91014, 11684, 1, 1, 1, 1, 0, 0, 0, 0), -- Ironfoe
(9019, 91014, 100, 1, -91014, 2, 0, 0, 0, 0), -- 2 Drops
(9019, 14047, 17, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(9019, 12033, 2, 0, 1, 1, 0, 0, 0, 0), -- Thaurissan Family Jewels
(9019, 18945, 10, 0, 1, 10, 0, 0, 0, 0), -- Dark Iron Residue
(9019, 22528, 7, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9019, 11078, 4, 0, 1, 1, 0, 0, 0, 0), -- Relic Coffer Key
(9019, 11446, 25, 0, 1, 1, 1, 6, 469, 0), -- A Crumpled Up Note
(9019, 11468, -80, 0, 4, 9, 0, 0, 0, 0); -- Dark Iron Fanny Pack(qid 4286)

-- Update loot condition for A Crumpled Up Note (Should only drop upon completion of QID 4242)
UPDATE `creature_loot_template` SET `lootcondition`=8, `condition_value1`=4242, `condition_value2`=0 WHERE `item`=11446;

-- Update ref table rates
-- Greens
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1 WHERE `mincountorref` IN (-80003, -80005, -80007, -80009, -80011, -80013, -80016, -80018, -80020, -80022, -80023, -80025, -80027, -80029, -80031, -80033, -80037, -80039, -80041, -80043, -80045, -80048, -80050, -80052, -80054, -80056, -80060, -80062, -80064, -80066, -80068, -80074, -80075, -80076, -80077, -80078);
-- Blues
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=.5 WHERE `mincountorref` IN (-80004, -80006, -80008, -80010, -80012, -80014, -80017, -80019, -80021, -80026, -80028, -80030, -80032, -80034, -80038, -80040, -80042, -80044, -80046, -80049, -80051, -80053, -80055, -80057, -80061, -80063, -80066, -80067, -80069);
-- Epics
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=.1 WHERE `mincountorref`=-80015;
-- Grays
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=5 WHERE `mincountorref` IN (-80000, -80001, -80002, -80024, -80036, -80047, -80058, -80059, -80070, -80071, -80072, -80073);

-- Update Blue Reference Tables 51/52
REPLACE INTO `creature_loot_template` VALUES
(80032, 13118, 0, 1, 1, 1, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE `entry` < 80000 AND `item`=13118;

-- Delete Seasonal Items from loot tables (Winter Hats, Bouquets,  Love Arrows, Candies, Pumpkin Bags, Wands, Holly, Masks)
DELETE FROM `creature_loot_template` WHERE `item` IN (22206, 21524, 21525, 22200, 20400, 22237, 22236, 22238, 22239, 21830, 20413, 20397, 20398, 20399, 20409, 21254, 21213, 21325, 20388, 20389, 20390, 20516, 20563, 20569, 20571, 20574, 17344, 17404, 17406, 17407, 21215);

-- Delete Rogue Reagents from loot tables
DELETE FROM `creature_loot_template` WHERE `item` IN (5530, 8924, 2930, 8923);

-- Delete Ore Bars from loot tables
DELETE FROM `creature_loot_template` WHERE `item` IN (3575, 3577, 2842, 6037, 2840);

-- DM Arena Bosses
DELETE FROM `creature_loot_template` WHERE `entry` IN (11498, 11497, 11447);
REPLACE INTO `creature_loot_template` VALUES
(91015, 13036, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13044, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13077, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13091, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13118, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 24222, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13002, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 4696, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13135, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13007, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 1973, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13070, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13146, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13004, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13047, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13101, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13096, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13053, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 9402, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13001, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13072, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13060, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13028, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13133, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13015, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13116, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13075, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13123, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13023, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13113, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13083, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13107, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13006, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 5267, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 13000, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 6622, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 23197, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 23203, 0, 1, 1, 1, 0, 0, 0, 0),
(91015, 23199, 0, 1, 1, 1, 0, 0, 0, 0),
(11498, 91015, 100, 1, -91015, 2, 0, 0, 0, 0), -- 2 Drops for Skarr the Unbreakable
(11497, 91015, 100, 1, -91015, 2, 0, 0, 0, 0), -- 2 Drops for The Razza
(11444, 91015, 100, 1, -91015, 1, 0, 0, 0, 0); -- 1 Drop for Mushgog

-- DM Books (2% chance from bosses, set ref to group 2 for trash mobs)
REPLACE INTO `creature_loot_template` VALUES
(91016, 18332, 0, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(91016, 18333, 0, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(91016, 18401, 2, 1, 1, 1, 0, 0, 0, 0), -- DM Class books(18401 is Foror's)
(91016, 18358, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18361, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18363, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18360, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18356, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18357, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18362, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18364, 0, 1, 1, 1, 0, 0, 0, 0),
(91016, 18359, 0, 1, 1, 1, 0, 0, 0, 0);

-- DM EAST
-- Pusillin
DELETE FROM `creature_loot_template` WHERE `entry`=14354;
REPLACE INTO `creature_loot_template` VALUES 
(14354, 18267, 100, 0, 1, 1, 0, 0, 0, 0), -- Recipe Runn Tum Tuber Surprise
(14354, 18249, 100, 0, 1, 1, 1, 0, 0, 0), -- Crescent Key
(14354, 14047, 16, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14354, 18255, 9, 0, 1, 5, 0, 0, 0, 0), -- Runn Tum Tuber
(14354, 8948, 6, 0, 2, 4, 0, 0, 0, 0), -- Dried King Bolete
(14354, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop
(14354, 191016, 2, 2, -91016, 1, 0, 0, 0, 0), -- Chance for libram drop
(14354, 18261, -100, 0, 1, 1, 1, 0, 0, 0); -- Book of Incantations(qid 7441)

-- Lethtendris
DELETE FROM `creature_loot_template` WHERE `entry`=14327;
REPLACE INTO `creature_loot_template` VALUES
(14327, 18301, 0, 1, 1, 1, 0, 0, 0, 0), -- Lethtendris's Wand
(14327, 18302, 0, 1, 1, 1, 0, 0, 0, 0), -- Band of Vigor
(14327, 18325, 0, 1, 1, 1, 0, 0, 0, 0), -- Felhide Cap
(14327, 18311, 10, 1, 1, 1, 0, 0, 0, 0), -- Quel'dorai Channeling Rod 
(14327, 14047, 23, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14327, 8948, 8, 0, 2, 4, 0, 0, 0, 0), -- Dried King Bolete
(14327, 91016, 2, 2, -91016, 1, 0, 0, 0, 0), -- Chance for Libram drop(no other books per armory)
(14327, 18426, -100, 0, 1, 1, 1, 0, 0, 0); -- Lethtendris' Web (qid 7488/7489)

-- Pimgib
DELETE FROM `creature_loot_template` WHERE `entry`=14349;
REPLACE INTO `creature_loot_template` VALUES 
(14349, 18354, 14, 0, 1, 1, 0, 0, 0, 0), -- Pimgib's Collar
(14349, 14047, 31, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14349, 8948, 10, 0, 2, 4, 0, 0, 0, 0), -- Dried King Bolete
(14349, 91016, 2, 2, -91016, 1, 0, 0, 0, 0); -- Chance for Libram drop(no other books per armory)

-- Hydrospawn
DELETE FROM `creature_loot_template` WHERE `entry`=13280;
REPLACE INTO `creature_loot_template` VALUES
(13280, 18305, 0, 1, 1, 1, 0, 0, 0, 0), -- Breakwater Legguards
(13280, 18317, 20, 1, 1, 1, 0, 0, 0, 0), -- Tempest Talisman
(13280, 18307, 0, 1, 1, 1, 0, 0, 0, 0), -- Riptide Shoes
(13280, 18322, 20, 1, 1, 1, 0, 0, 0, 0), -- Waterspout Boots
(13280, 18324, 10, 1, 1, 1, 0, 0, 0, 0), -- Waveslicer
(13280, 7080, 11, 0, 1, 1, 0, 0, 0, 0), -- Essence of Water
(13280, 7079, 20, 0, 1, 1, 0, 0, 0, 0), -- Globe of Water
(13280, 7070, 26, 0, 1, 1, 0, 0, 0, 0), -- Elemental Water
(13280, 22527, 63, 0, 2, 4, 0, 0, 0, 0), -- Core of Elements
(13280, 19268, 2, 0, 1, 1, 0, 0, 0, 0), -- Ace of Elementals
(13280, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop
(13280, 191016, 2, 2, -91016, 1, 0, 0, 0, 0), -- Chance for libram drop
(13280, 18299, -100, 0, 1, 1, 1, 0, 0, 0); -- Hydrospawn Essence (qid 7463)

-- Zevrim Thornhoof
DELETE FROM `creature_loot_template` WHERE `entry`=11490;
REPLACE INTO `creature_loot_template` VALUES 
(11490, 18323, 20, 1, 1, 1, 0, 0, 0, 0), -- Satyr's Bow
(11490, 18308, 0, 1, 1, 1, 0, 0, 0, 0), -- Clever Hat
(11490, 18306, 0, 1, 1, 1, 0, 0, 0, 0), -- Gloves of Shadowy Mist
(11490, 18313, 20, 1, 1, 1, 0, 0, 0, 0), -- Helm of Awareness
(11490, 18319, 8, 1, 1, 1, 0, 0, 0, 0), -- Fervent Helm
(11490, 14047, 25, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(11490, 8948, 8, 0, 2, 4, 0, 0, 0, 0), -- Dried King Bolete
(11490, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop
(11490, 191016, 2, 2, -91016, 1, 0, 0, 0, 0); -- Chance for libram drop

-- Alzzin The Wildshaper
DELETE FROM `creature_loot_template` WHERE `entry`=11492;
REPLACE INTO `creature_loot_template` VALUES 
(91017, 18321, 0, 1, 1, 1, 0, 0, 0, 0), -- Energetic Rod
(91017, 18310, 0, 1, 1, 1, 0, 0, 0, 0), -- Fiendish Machete
(91017, 18327, 0, 1, 1, 1, 0, 0, 0, 0), -- Whipvine Cord
(91017, 18314, 0, 1, 1, 1, 0, 0, 0, 0), -- Ring of Demonic Guile
(91017, 18326, 0, 1, 1, 1, 0, 0, 0, 0), -- Razor Gauntlets
(91017, 18318, 0, 1, 1, 1, 0, 0, 0, 0), -- Merciful Greaves
(91017, 18315, 0, 1, 1, 1, 0, 0, 0, 0), -- Ring of Demonic Potency
(91017, 18312, 0, 1, 1, 1, 0, 0, 0, 0), -- Energized Chestplate
(91017, 18328, 0, 1, 1, 1, 0, 0, 0, 0), -- Shadewood Cloak
(91017, 18309, 0, 1, 1, 1, 0, 0, 0, 0), -- Gloves of Restoration
(11492, 91017, 100, 1, -91017, 2, 0, 0, 0, 0), -- 2 Drops
(11492, 14047, 16.7659, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(11492, 8948, 5.9524, 0, 2, 4, 0, 0, 0, 0), -- Dried King Bolete
(11492, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop
(11492, 191016, 2, 2, -91016, 1, 0, 0, 0, 0); -- Chance for libram drop

-- Isalien (Dungeon 2 Boss)
DELETE FROM `creature_loot_template` WHERE `entry`=16097;
REPLACE INTO `creature_loot_template` VALUES
(16097, 22345, 0, 1, 1, 1, 0, 0, 0, 0), -- Totem of Rebirth
(16097, 22401, 0, 1, 1, 1, 0, 0, 0, 0), -- Libram of Hope
(16097, 22315, 0, 1, 1, 1, 0, 0, 0, 0), -- Hammer of Revitalization
(16097, 22314, 0, 1, 1, 1, 0, 0, 0, 0), -- Hunstman's Harpoon
(16097, 22304, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironweave Gloves
(16097, 22472, 0, 1, 1, 1, 0, 0, 0, 0), -- Boots of Ferocity
(16097, 21984, -100, 0, 1, 1, 1, 0, 0, 0), -- Left Piece of Lord Valthalak's Amulet(qid 8967)
(16097, 22046, -100, 0, 1, 1, 1, 0, 0, 0); -- Right Piece of Lord Valthalak's Amulet(qid 8990)

-- DM NORTH
-- Guard Loot (Slip'kik/Mol'dar)
REPLACE INTO `creature_loot_template` VALUES 
(91018, 18498, 0, 1, 1, 1, 0, 0, 0, 0), -- Hedgecutter
(91018, 18497, 0, 1, 1, 1, 0, 0, 0, 0), -- Sublime Wristguards
(91018, 18496, 0, 1, 1, 1, 0, 0, 0, 0), --  Heliotrope Cloak
(91018, 18494, 0, 1, 1, 1, 0, 0, 0, 0), --  Denwatcher's Shoulders
(91018, 18493, 0, 1, 1, 1, 0, 0, 0, 0), --  Bulky Iron Spaulders
(91018, 18451, 0, 1, 1, 1, 0, 0, 0, 0), -- Hyena Hide Belt
(91018, 18458, 0, 1, 1, 1, 0, 0, 0, 0), -- Modest Armguards
(91018, 18459, 0, 1, 1, 1, 0, 0, 0, 0), -- Gallant's Wristguards
(91018, 18450, 0, 1, 1, 1, 0, 0, 0, 0), -- Robe of Combustion
(91018, 18462, 0, 1, 1, 1, 0, 0, 0, 0), -- Jagged Bone Fist
(91018, 18464, 0, 1, 1, 1, 0, 0, 0, 0), -- Gordok Nose Ring
(91018, 18463, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogre Pocket Knife
(91018, 18460, 0, 1, 1, 1, 0, 0, 0, 0); -- Unsophisticated Hand Cannon

-- Guard Mol'dar
DELETE FROM `creature_loot_template` WHERE `entry`=14326;
REPLACE INTO `creature_loot_template` VALUES
(14326, 91018, 100, 1, -91018, 1, 0, 0, 0, 0), -- 1 Drop
(14326, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14326, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14326, 18333, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14326, 18268, 100, 0, 1, 1, 0, 0, 0, 0), -- Gordok Inner Door Key
(14326, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14326, 18250, 13, 0, 1, 1, 0, 0, 0, 0), -- Gordok Shackle Key
(14326, 14047, 25, 0, 2, 4, 0, 0, 0, 0); -- Runecloth

-- Stomper Kreeg
DELETE FROM `creature_loot_template` WHERE `entry`=14322;
REPLACE INTO `creature_loot_template` VALUES 
(14322, 18425, 40, 0, 1, 1, 0, 0, 0, 0), -- Kreeg's Mug
(14322, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14322, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14322, 18333, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14322, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14322, 4595, 23, 0, 1, 6, 0, 0, 0, 0), -- Junglevine Wine
(14322, 14047, 25, 0, 2, 4, 0, 0, 0, 0); -- Runecloth

-- Guard Fengus
DELETE FROM `creature_loot_template` WHERE `entry`=14321;
REPLACE INTO `creature_loot_template` VALUES 
(14321, 18451, 0, 1, 1, 1, 0, 0, 0, 0), -- Hyena Hide Belt
(14321, 18458, 0, 1, 1, 1, 0, 0, 0, 0), -- Modest Armguards
(14321, 18459, 0, 1, 1, 1, 0, 0, 0, 0), -- Gallant's Wristguards
(14321, 18450, 0, 1, 1, 1, 0, 0, 0, 0), -- Robe of Combustion
(14321, 18462, 0, 1, 1, 1, 0, 0, 0, 0), -- Jagged Bone Fist
(14321, 18464, 0, 1, 1, 1, 0, 0, 0, 0), -- Gordok Nose Ring
(14321, 18463, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogre Pocket Knife
(14321, 18460, 0, 1, 1, 1, 0, 0, 0, 0), -- Unsophisticated Hand Cannon
(14321, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14321, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14321, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14321, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop
(14321, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14321, 18250, 13, 0, 1, 1, 0, 0, 0, 0), -- Gordok Shackle Key
(14321, 14047, 25, 0, 2, 4, 0, 0, 0, 0); -- Runecloth

-- Knot Thimblejack's Cache (GO 179501)
DELETE FROM `gameobject_loot_template` WHERE `entry`=16591;
REPLACE INTO `gameobject_loot_template` VALUES 
(95006, 8170, 0, 1, 5, 16, 0, 0, 0, 0), -- Rugged Leather
(95006, 14047, 0, 1, 5, 17, 0, 0, 0, 0), -- Runecloth
(95006, 8154, 0, 1, 1, 6, 0, 0, 0, 0), -- Scorpid Scale
(95006, 8165, 0, 1, 1, 5, 0, 0, 0, 0), -- Worn Dragonscale
(95006, 15408, 0, 1, 1, 4, 0, 0, 0, 0), -- Heavy Scorpid Scale
(95006, 8150, 0, 1, 2, 6, 0, 0, 0, 0), -- Deeprock Salt
(95006, 15412, 0, 1, 2, 4, 0, 0, 0, 0), -- Green Dragonscale
(95006, 4304, 0, 1, 5, 10, 0, 0, 0, 0), -- Thick Leather
(95006, 14256, 0, 1, 2, 4, 0, 0, 0, 0), -- Felcloth
(95006, 8153, 0, 1, 1, 4, 0, 0, 0, 0), -- Wildvine
(95006, 4338, 0, 1, 10, 15, 0, 0, 0, 0), -- Mageweave
(95006, 15414, 0, 1, 2, 8, 0, 0, 0, 0), -- Red Dragonscale
(95006, 15416, 0, 1, 2, 4, 0, 0, 0, 0), -- Black Dragonscale
(16591, 95006, 100, 1, -95006, 2, 0, 0, 0, 0), -- 2 reagent drops
(16591, 18240, 35, 0, 1, 2, 0, 0, 0, 0), -- Ogre Tannin
(16591, 18418, 0, 1, 1, 1, 0, 0, 0, 0), -- Patterns START - Cloak of Warding
(16591, 18415, 0, 1, 1, 1, 0, 0, 0, 0), -- Felcloth Gloves
(16591, 18516, 0, 1, 1, 1, 0, 0, 0, 0), -- Swift Flight Bracers
(16591, 18417, 0, 1, 1, 1, 0, 0, 0, 0), -- Mooncloth Gloves
(16591, 18515, 0, 1, 1, 1, 0, 0, 0, 0), -- Mongoose Boots
(16591, 18514, 0, 1, 1, 1, 0, 0, 0, 0), -- Girdle of Insight
(16591, 18416, 0, 1, 1, 1, 0, 0, 0, 0), -- Inferno Gloves
(16591, 18517, 2, 1, 1, 1, 0, 0, 0, 0), -- Chromatic Cloak
(16591, 18518, 2, 1, 1, 1, 0, 0, 0, 0), -- Hide of the Wild
(16591, 18414, 2, 1, 1, 1, 0, 0, 0, 0), -- Belt of the Archmage
(16591, 18519, 2, 1, 1, 1, 0, 0, 0, 0); -- Shifting Cloak

-- Guard Slip'kik
DELETE FROM `creature_loot_template` WHERE `entry`=14323;
REPLACE INTO `creature_loot_template` VALUES 
(14323, 91018, 100, 1, -91018, 1, 0, 0, 0, 0), -- 1 Drop
(14323, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14323, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14323, 18333, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14323, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14323, 18250, 13, 0, 1, 1, 0, 0, 0, 0), -- Gordok Shackle Key
(14323, 14047, 25, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14323, 91016, 100, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Captain Kromcrush
DELETE FROM `creature_loot_template` WHERE `entry`=14325;
REPLACE INTO `creature_loot_template` VALUES 
(14325, 18502, 0, 1, 1, 1, 0, 0, 0, 0), -- Monstrous Glaive
(14325, 18505, 0, 1, 1, 1, 0, 0, 0, 0), -- Mugger's Belt
(14325, 18503, 0, 1, 1, 1, 0, 0, 0, 0), -- Kromcrush's Chestplate
(14325, 18507, 0, 1, 1, 1, 0, 0, 0, 0), -- Boots of the Full Moon
(14325, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14325, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14325, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14325, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14325, 18250, 13, 0, 1, 1, 0, 0, 0, 0), -- Gordok Shackle Key
(14325, 14047, 25, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14325, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Cho'Rush the Observer
DELETE FROM `creature_loot_template` WHERE `entry`=14324;
REPLACE INTO `creature_loot_template` VALUES 
(14324, 18485, 0, 1, 1, 1, 0, 0, 0, 0), -- Observer's Shield
(14324, 18484, 0, 1, 1, 1, 0, 0, 0, 0), -- Cho'Rush's Blade
(14324, 18483, 0, 1, 1, 1, 0, 0, 0, 0), -- Mana Channeling Wand
(14324, 18490, 0, 1, 1, 1, 0, 0, 0, 0), -- Insightful Hood
(14324, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(14324, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(14324, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(14324, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(14324, 14047, 25, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(14324, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- King Gordok
DELETE FROM `creature_loot_template` WHERE `entry`=11501;
REPLACE INTO `creature_loot_template` VALUES
(91019, 18521, 0, 1, 1, 1, 0, 0, 0, 0), -- Grimy Metal Boots
(91019, 18520, 0, 1, 1, 1, 0, 0, 0, 0), -- Barbarous Blade
(91019, 18525, 0, 1, 1, 1, 0, 0, 0, 0), -- Bracers of Prosperity
(91019, 18526, 0, 1, 1, 1, 0, 0, 0, 0), -- Crown of the Ogre King
(91019, 18523, 0, 1, 1, 1, 0, 0, 0, 0), -- Brightly Glowing Stone
(91019, 18524, 0, 1, 1, 1, 0, 0, 0, 0), -- Leggings of Destruction
(91019, 18522, 0, 1, 1, 1, 0, 0, 0, 0), -- Band of the Ogre King
(91019, 18527, 0, 1, 1, 1, 0, 0, 0, 0), -- Harmonious Gauntlets
(11501, 91019, 100, 1, -91019, 2, 0, 0, 0, 0), -- 2 Drops
(11501, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11501, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11501, 18333, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(11501, 14047, 13, 0, 2, 5, 0, 0, 0, 0), -- Runecloth
(11501, 18640, 2, 0, 1, 1, 0, 0, 0, 0), -- Happy Fun Rock
(11501, 18780, 9, 0, 1, 1, 0, 0, 0, 0), -- Top Half of Advanced Armorsmithing
(11501, 19258, 7, 0, 1, 1, 0, 0, 0, 0), -- Ace of Warlords
(11501, 91016, 2, 1, -91016, 1, 0, 0, 0, 0), -- Chance for book drop 
(11501, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads(qid 8949)

-- Gordok Tribute (GO 179564)
DELETE FROM `gameobject_loot_template` WHERE `entry`=16577;
REPLACE INTO `gameobject_loot_template` VALUES
(95007, 18499, 0, 1, 1, 1, 0, 0, 0, 0), -- Barrier Shield
(95007, 18537, 0, 1, 1, 1, 0, 0, 0, 0), -- Counterattack Lodestone
(95007, 18528, 0, 1, 1, 1, 0, 0, 0, 0), -- Cyclone Spaulders
(95007, 18529, 0, 1, 1, 1, 0, 0, 0, 0), -- Elemental Plate Girdle
(95007, 18533, 0, 1, 1, 1, 0, 0, 0, 0), -- Gordok Bracers of Power
(95007, 18532, 0, 1, 1, 1, 0, 0, 0, 0), -- Mindsurge Robe
(95007, 18530, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogre Forged Hauberk
(95007, 18495, 0, 1, 1, 1, 0, 0, 0, 0), -- Redoubt Cloak
(95007, 18534, 0, 1, 1, 1, 0, 0, 0, 0), -- Rod of the Ogre Magi
(95007, 18500, 0, 1, 1, 1, 0, 0, 0, 0), -- Tarnished Elven Ring
(95007, 18531, 0, 1, 1, 1, 0, 0, 0, 0), -- Unyielding Maul
(16577, 95007, 100, 1, -95007, 2, 0, 0, 0, 0), -- 2 Blues
(16577, 18479, 0, 1, 1, 1, 0, 0, 0, 0), -- Carrion Scorpid Helm
(16577, 18478, 0, 1, 1, 1, 0, 0, 0, 0), -- Hyena Hide Jerkin
(16577, 18476, 0, 1, 1, 1, 0, 0, 0, 0), -- Mud Stained Boots
(16577, 18475, 0, 1, 1, 1, 0, 0, 0, 0), -- Oddly Magical Belt
(16577, 18482, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogre Toothpick Shooter
(16577, 18480, 0, 1, 1, 1, 0, 0, 0, 0), -- Scarab Plate Helm
(16577, 18655, 0, 1, 1, 1, 0, 0, 0, 0), -- Schematic Major Recombobulator
(16577, 18477, 0, 1, 1, 1, 0, 0, 0, 0), -- Shaggy Leggings
(16577, 18481, 0, 1, 1, 1, 0, 0, 0, 0), -- Skullcracking Mace
(16577, 8766, 100, 0, 15, 20, 0, 0, 0, 0), -- Food/drink
(16577, 8952, 100, 0, 15, 20, 0, 0, 0, 0),
(16577, 13444, 0, 1, 2, 5, 0, 0, 0, 0), -- Potions
(16577, 13446, 0, 1, 2, 5, 0, 0, 0, 0);

-- DM WEST
-- Tendris Warpwood
DELETE FROM `creature_loot_template` WHERE `entry`=11489;
REPLACE INTO `creature_loot_template` VALUES 
(11489, 18353, 0, 1, 1, 1, 0, 0, 0, 0), -- Stoneflower Staff
(11489, 18352, 0, 1, 1, 1, 0, 0, 0, 0), -- Petrified Bark Shield
(11489, 18390, 0, 1, 1, 1, 0, 0, 0, 0), -- Tanglemoss Leggings
(11489, 18393, 0, 1, 1, 1, 0, 0, 0, 0), -- Warpwood Binding
(11489, 22529, 43, 0, 2, 4, 0, 0, 0, 0), -- Savage Frond
(11489, 10286, 5, 0, 1, 1, 0, 0, 0, 0), -- Heart of the Wild
(11489, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11489, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11489, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(11489, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Magister Kalendris
DELETE FROM `creature_loot_template` WHERE `entry`=11487;
REPLACE INTO `creature_loot_template` VALUES 
(11487, 18351, 0, 1, 1, 1, 0, 0, 0, 0), -- Magically Sealed Bracers
(11487, 18350, 0, 1, 1, 1, 0, 0, 0, 0), -- Amplifying Cloak
(11487, 18374, 20, 1, 1, 1, 0, 0, 0, 0), -- Flamescarred Shoulders
(11487, 18397, 20, 1, 1, 1, 0, 0, 0, 0), -- Elder Magus Pendant
(11487, 18371, 9, 1, 1, 1, 0, 0, 0, 0), -- Mindtap Talisman
(11487, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(11487, 22309, 15, 0, 1, 1, 0, 0, 0, 0), -- Pattern Big Bag of Enchantment
(11487, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11487, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11487, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(11487, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Tsu'zee (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=11467;
REPLACE INTO `creature_loot_template` VALUES 
(11467, 18346, 0, 1, 1, 1, 0, 0, 0, 0), -- Threadbare Trousers
(11467, 18387, 0, 1, 1, 1, 0, 0, 0, 0), -- Brightspark Gloves
(11467, 18345, 0, 1, 1, 1, 0, 0, 0, 0), -- Murmuring Ring
(11467, 14047, 19, 0, 2, 4, 0, 0, 0, 0); -- Runecloth

-- Ferra
DELETE FROM `creature_loot_template` WHERE `entry`=14308;
REPLACE INTO `creature_loot_template` VALUES 
(14308, 11414, 65, 0, 1, 1, 0, 0, 0, 0), -- Grizzled Mane
(14308, 11415, 27, 0, 1, 1, 0, 0, 0, 0); -- Mixed Berries

-- Illyanna Ravenoak
DELETE FROM `creature_loot_template` WHERE `entry`=11488;
REPLACE INTO `creature_loot_template` VALUES 
(11488, 18347, 0, 1, 1, 1, 0, 0, 0, 0), -- Well Balanced Axe
(11488, 18383, 0, 1, 1, 1, 0, 0, 0, 0), -- Force Imbued Gauntlets
(11488, 18386, 0, 1, 1, 1, 0, 0, 0, 0), -- Padre's Trousers
(11488, 18349, 0, 1, 1, 1, 0, 0, 0, 0), -- Gauntlets of Accuracy
(11488, 14047, 16, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(11488, 18334, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11488, 18332, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11488, 18333, 2, 2, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(11488, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Revanchion (Scourge Invasion Mob)
DELETE FROM `creature_loot_template` WHERE `entry`=14690;
REPLACE INTO `creature_loot_template` VALUES 
(14690, 23129, 0, 1, 1, 1, 0, 0, 0, 0), -- Bracers of Mending
(14690, 23127, 0, 1, 1, 1, 0, 0, 0, 0), -- Cloak of Revanchion
(14690, 23128, 0, 1, 1, 1, 0, 0, 0, 0), -- The Shadow's Grasp
(14690, 12843, 100, 0, 1, 1, 0, 10, 0, 0); -- Corruptor's Scourgestone

-- Immol'thar
DELETE FROM `creature_loot_template` WHERE `entry`=11496;
REPLACE INTO `creature_loot_template` VALUES 
(91020, 18391, 0, 1, 1, 1, 0, 0, 0, 0), -- Eyestalk Cord
(91020, 18379, 0, 1, 1, 1, 0, 0, 0, 0), -- Odious Greaves
(91020, 18377, 0, 1, 1, 1, 0, 0, 0, 0), -- Quickdraw Gloves
(91020, 18381, 0, 1, 1, 1, 0, 0, 0, 0), -- Evil Eye Pendant
(91020, 18389, 0, 1, 1, 1, 0, 0, 0, 0), -- Cloak of the Cosmos
(91020, 18394, 0, 1, 1, 1, 0, 0, 0, 0), -- Demon Howl Wristguards
(91020, 18384, 0, 1, 1, 1, 0, 0, 0, 0), -- Bile-etched Spaulders
(91020, 18385, 0, 1, 1, 1, 0, 0, 0, 0), -- Robe of Everlasting Night
(91020, 18372, 0, 1, 1, 1, 0, 0, 0, 0), -- Blade of the New Moon
(91020, 18370, 0, 1, 1, 1, 0, 0, 0, 0), -- Vigilance Charm
(11496, 91020, 100, 1, -91020, 2, 0, 0, 0, 0), -- 2 Drops
(11496, 24345, 13, 0, 1, 1, 0, 0, 0, 0), -- Book of Cower IV
(11496, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11496, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11496, 18333, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Focus
(11496, 91016, 2, 1, -91016, 1, 0, 0, 0, 0); -- Chance for book drop 

-- Lord Hel'nurath (Summoned by Warlock Mount Quest)
DELETE FROM `creature_loot_template` WHERE `entry`=14506;
REPLACE INTO `creature_loot_template` VALUES 
(14506, 18755, 0, 1, 1, 1, 0, 0, 0, 0), -- Xorothian Firestick
(14506, 18756, 0, 1, 1, 1, 0, 0, 0, 0), -- Dreadguard's Protector
(14506, 18754, 0, 1, 1, 1, 0, 0, 0, 0), -- Fel Hardened Bracers
(14506, 18757, 0, 1, 1, 1, 0, 0, 0, 0), -- Diabolic Mantle
(14506, 14047, 15, 0, 2, 5, 0, 0, 0, 0), -- Runecloth
(14506, 12662, 6, 0, 1, 1, 0, 0, 0, 0); -- Demonic Rune

-- Prince Tortheldrin
DELETE FROM `creature_loot_template` WHERE `entry`=11486;
REPLACE INTO `creature_loot_template` VALUES 
(91021, 18392, 0, 1, 1, 1, 0, 0, 0, 0), -- Distracting Dagger
(91021, 18396, 0, 1, 1, 1, 0, 0, 0, 0), -- Mind Carver
(91021, 18376, 0, 1, 1, 1, 0, 0, 0, 0), -- Timeworn Mace
(91021, 18382, 0, 1, 1, 1, 0, 0, 0, 0), -- Fluctuating Cloak
(91021, 18378, 0, 1, 1, 1, 0, 0, 0, 0), -- Silvermoon Leggings
(91021, 18375, 0, 1, 1, 1, 0, 0, 0, 0), -- Bracers of the Eclipse
(91021, 18388, 0, 1, 1, 1, 0, 0, 0, 0), -- Stoneshatter
(91021, 18380, 0, 1, 1, 1, 0, 0, 0, 0), -- Eldritch Reinforced Legplates
(91021, 18395, 0, 1, 1, 1, 0, 0, 0, 0), -- Emerald Flame Ring
(91021, 18373, 0, 1, 1, 1, 0, 0, 0, 0), -- Chestplate of Tranquility
(11486, 91021, 100, 1, -91021, 2, 0, 0, 0, 0), -- 2 Drops
(11486, 14047, 11, 0, 2, 5, 0, 0, 0, 0), -- Runecloth
(11486, 18334, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Protection
(11486, 18332, 2, 1, 1, 1, 0, 0, 0, 0), -- Libram of Rapidity
(11486, 18333, 2, 1, 1, 1, 0, 0, 0, 0); -- Libram of Focus

-- LBRS
-- Burning Felguard (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=10263;
REPLACE INTO `creature_loot_template` VALUES 
(10263, 13181, 14, 1, 1, 1, 0, 0, 0, 0), -- Demonskin Gloves
(10263, 13182, 14, 1, 1, 1, 0, 0, 0, 0), -- Phase Blade
(10263, 12662, 10, 0, 1, 1, 0, 0, 0, 0), -- Demonic Rune
(10263, 14047, 13, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(10263, 8948, 4, 0, 1, 4, 0, 0, 0, 0); -- Dried King Bolete

-- Spirestone Butcher (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=9219;
REPLACE INTO `creature_loot_template` VALUES 
(9219, 12608, 60, 1, 1, 1, 0, 0, 0, 0), -- Butcher's Apron
(9219, 13286, 40, 1, 1, 1, 0, 0, 0, 0), -- Rivenspike
(9219, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9219, 22528, 11, 0, 2, 4, 0, 0, 0, 0),-- Dark Iron Scraps
(9219, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9219, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads (qid 8949)

-- Spirestone Battle Lord (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=9218;
REPLACE INTO `creature_loot_template` VALUES 
(9218, 13285, 60, 0, 1, 1, 0, 0, 0, 0), -- The Blackrock Slicer(formerly the Nicker)
(9218, 13284, 40, 0, 1, 1, 0, 0, 0, 0), -- Swiftdart Battleboots
(9218, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9218, 22528, 11, 0, 2, 4, 0, 0, 0, 0),-- Dark Iron Scraps
(9218, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9218, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads (qid 8949)

-- Spirestone Lord Magus (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=9217;
REPLACE INTO `creature_loot_template` VALUES 
(9217, 13261, 0, 1, 1, 1, 0, 0, 0, 0), -- Globe of D'sak
(9217, 13283, 50, 1, 1, 1, 0, 0, 0, 0), -- Magus Ring
(9217, 13282, 0, 1, 1, 1, 0, 0, 0, 0), -- Ogreseer Tower Boots
(9217, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9217, 22528, 11, 0, 2, 4, 0, 0, 0, 0),-- Dark Iron Scraps
(9217, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9217, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads (qid 8949)

-- Highlord Omokk
DELETE FROM `creature_loot_template` WHERE `entry`=9196;
REPLACE INTO `creature_loot_template` VALUES 
(9196, 13167, 0, 1, 1, 1, 0, 0, 0, 0), -- Fist of Omokk
(9196, 16670, 0, 1, 1, 1, 0, 0, 0, 0), -- Boots of the Elements
(9196, 13169, 0, 1, 1, 1, 0, 0, 0, 0), -- Tressermane Leggings
(9196, 13170, 0, 1, 1, 1, 0, 0, 0, 0), -- Skyshroud Leggings
(9196, 13168, 0, 1, 1, 1, 0, 0, 0, 0), -- Plate of the Shaman King
(9196, 13166, 0, 1, 1, 1, 0, 0, 0, 0), -- Slamshot Shoulders
(9196, 14047, 13, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9196, 22528, 11, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9196, 12336, 100, 0, 1, 1, 0, 0, 0, 0), -- Gemstone of Spirestone
(9196, 12534, 100, 0, 1, 1, 1, 0, 0, 0), -- Omokk's Head
(9196, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9196, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads (qid 8949)

-- Shadow Hunter Vosh'gajin
DELETE FROM `creature_loot_template` WHERE `entry`=9236;
REPLACE INTO `creature_loot_template` VALUES 
(9236, 16712, 0, 1, 1, 1, 0, 0, 0, 0), -- Shadowcraft Gloves
(9236, 12626, 0, 1, 1, 1, 0, 0, 0, 0), -- Funeral Cuffs
(9236, 13255, 0, 1, 1, 1, 0, 0, 0, 0), -- Trueaim Gauntlets
(9236, 13257, 0, 1, 1, 1, 0, 0, 0, 0), -- Demonic Runed Spaulders
(9236, 12653, 8, 1, 1, 1, 0, 0, 0, 0), -- Riphook
(9236, 12651, 8, 1, 1, 1, 0, 0, 0, 0), -- Blackcrow
(9236, 12654, 30, 0, 50, 50, 0, 0, 0, 0), -- Doomshot
(9236, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9236, 22528, 11, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9236, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9236, 13352, -100, 0, 1, 1, 1, 0, 0, 0); -- Vosh'gajin's Snakestone(qid 5306)

-- War Master Voone
DELETE FROM `creature_loot_template` WHERE `entry`=9237;
REPLACE INTO `creature_loot_template` VALUES 
(9237, 16676, 0, 1, 1, 1, 0, 0, 0, 0), -- Beaststalker's Gloves
(9237, 13177, 0, 1, 1, 1, 0, 0, 0, 0), -- Talisman of Evasion
(9237, 12582, 0, 1, 1, 1, 0, 0, 0, 0), -- Talisman of Evasion
(9237, 13179, 0, 1, 1, 1, 0, 0, 0, 0), -- Brazecore Armguards
(9237, 22231, 0, 1, 1, 1, 0, 0, 0, 0), -- Kayser's Boots of Precision
(9237, 28972, 100, 0, 1, 1, 0, 0, 0, 0), -- Fightblade Throwing Axe
(9237, 14047, 16, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9237, 22528, 10, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9237, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9237, 12335, 100, 0, 1, 1, 0, 0, 0, 0); -- Gemstone of Smolderthorn

-- Mor Grayhoof (Dungeon 2 Summonable)
DELETE FROM `creature_loot_template` WHERE `entry`=16080;
REPLACE INTO `creature_loot_template` VALUES 
(16080, 22319, 0, 1, 1, 1, 0, 0, 0, 0), -- Tome of Divine Right
(16080, 22398, 0, 1, 1, 1, 0, 0, 0, 0), -- Idol of Rejuvenation
(16080, 22322, 0, 1, 1, 1, 0, 0, 0, 0), -- The Jaw Breaker
(16080, 22306, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironweave Belt
(16080, 22325, 0, 1, 1, 1, 0, 0, 0, 0), -- Belt of the Trickster
(16080, 21984, -100, 0, 1, 1, 1, 0, 0, 0), -- Left Piece of Lord Valthalak's Amulet (qid 8966)
(16080, 22046, -100, 0, 1, 1, 1, 0, 0, 0); -- Right Piece of Lord Valthalak's Amulet (qid 8989)

-- Bannok Grimaxe (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=9596;
REPLACE INTO `creature_loot_template` VALUES
(9596, 12621, 0, 1, 1, 1, 0, 0, 0, 0), -- Demonfork
(9596, 12634, 0, 1, 1, 1, 0, 0, 0, 0), -- Chiselbrand Girdle
(9596, 12637, 0, 1, 1, 1, 0, 0, 0, 0), -- Backusarian Gauntlets
(9596, 12838, 5, 0, 1, 1, 0, 0, 0, 0), -- Plans Arcanite Reaper
(9596, 14047, 17, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9596, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9596, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9596, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- Mother Smolderweb
DELETE FROM `creature_loot_template` WHERE `entry`=10596;
REPLACE INTO `creature_loot_template` VALUES 
(10596, 13183, 15, 1, 1, 1, 0, 0, 0, 0), -- Venomspitter
(10596, 16715, 15, 1, 1, 1, 0, 0, 0, 0), -- Wildheart Boots
(10596, 13244, 0, 1, 1, 1, 0, 0, 0, 0), -- Gilded Gauntlets
(10596, 13213, 0, 1, 1, 1, 0, 0, 0, 0), -- Smolderweb's Eye
(10596, 12205, 23, 0, 1, 1, 0, 0, 0, 0), -- White Spider Meat
(10596, 4585, 21, 0, 1, 1, 0, 0, 0, 0), -- Dripping Spider Mandible
(10596, 14227, 50, 0, 1, 3, 0, 0, 0, 0), -- Ironweb Spider Silk
(10596, 10285, 7, 0, 1, 1, 0, 0, 0, 0), -- Shadow Silk
(10596, 1074, 6, 0, 1, 1, 0, 0, 0, 0), -- Hard Spider Leg Tip
(10596, 4337, 6, 0, 1, 1, 0, 0, 0, 0); -- Thick Spider's Silk

-- Crystal Fang (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=10376;
REPLACE INTO `creature_loot_template` VALUES 
(10376, 13184, 0, 1, 1, 1, 0, 0, 0, 0), -- Fallbrush Handgrips
(10376, 13185, 0, 1, 1, 1, 0, 0, 0, 0), -- Sunderseer Mantle
(10376, 13218, 14, 1, 1, 1, 0, 0, 0, 0), -- Fang of the Crystal Spider
(10376, 12205, 22, 0, 1, 1, 0, 0, 0, 0), -- White Spider Meat
(10376, 4585, 21, 0, 1, 1, 0, 0, 0, 0), -- Dripping Spider Mandible
(10376, 14227, 47, 0, 1, 3, 0, 0, 0, 0), -- Ironweb Spider Silk
(10376, 10285, 7, 0, 1, 1, 0, 0, 0, 0), -- Shadow Silk
(10376, 1074, 4, 0, 1, 1, 0, 0, 0, 0), -- Hard Spider Leg Tip
(10376, 4337, 5, 0, 1, 1, 0, 0, 0, 0); -- Thick Spider's Silk

-- Urok Doomhowl
DELETE FROM `creature_loot_template` WHERE `entry`=10584;
REPLACE INTO `creature_loot_template` VALUES 
(10584, 13258, 0, 1, 1, 1, 0, 0, 0, 0), -- Slaghide Gauntlets
(10584, 13259, 0, 1, 1, 1, 0, 0, 0, 0), -- Ribsteel Footguards
(10584, 22232, 0, 1, 1, 1, 0, 0, 0, 0), -- Marksman's Girdle
(10584, 13178, 0, 1, 1, 1, 0, 0, 0, 0), -- Rosewine Circle
(10584, 18784, 16, 0, 1, 1, 0, 0, 0, 0), -- Top Half of Advanced Armorsmithing Vol 3
(10584, 14047, 9, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(10584, 22528, 2, 0, 2, 4, 0, 0, 0, 0),-- Dark Iron Scraps
(10584, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(10584, 12712, -100, 0, 1, 1, 1, 0, 0, 0), -- Warosh's Mojo(qid 4867)
(10584, 21982, -80, 0, 1, 1, 0, 0, 0, 0); -- Ogre Warbeads (qid 8949)

-- Quartermaster Zigris
DELETE FROM `creature_loot_template` WHERE `entry`=9736;
REPLACE INTO `creature_loot_template` VALUES 
(9736, 13252, 16, 1, 1, 1, 0, 0, 0, 0), -- Cloudrunner Girdle
(9736, 13253, 14, 1, 1, 1, 0, 0, 0, 0), -- Hands of Power
(9736, 12835, 10, 0, 1, 1, 0, 0, 0, 0), --  Plans Annihilator
(9736, 13446, 100, 0, 5, 5, 0, 0, 0, 0), -- Always drops both potions
(9736, 13444, 100, 0, 5, 5, 0, 0, 0, 0),
(9736, 21955, 60, 0, 1, 1, 0, 7, 755, 1), -- Design Black Diamond Crab
(9736, 14047, 17, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9736, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9736, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9736, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- Halycon
DELETE FROM `creature_loot_template` WHERE `entry`=10220;
REPLACE INTO `creature_loot_template` VALUES 
(10220, 13212, 0, 1, 1, 1, 0, 0, 0, 0), -- Halycon's Spiked Collar
(10220, 22313, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironweave Bracers
(10220, 13210, 14, 1, 1, 1, 0, 0, 0, 0), -- Pads of the Dread Wolf
(10220, 13211, 0, 1, 1, 1, 0, 0, 0, 0), -- Slashclaw Bracers
(10220, 12208, 25, 0, 1, 1, 0, 0, 0, 0), -- Tender Wolf Meat
(10220, 12203, 24, 0, 1, 1, 0, 0, 0, 0), -- Red Wolf Meat
(10220, 4583, 15, 0, 1, 1, 0, 0, 0, 0), -- Thick Furry Mane
(10220, 4584, 6, 0, 1, 1, 0, 0, 0, 0); -- Large Trophy Paw

-- Gizrul The Slavener
DELETE FROM `creature_loot_template` WHERE `entry`=10268;
REPLACE INTO `creature_loot_template` VALUES 
(10268, 13205, 0, 1, 1, 1, 0, 0, 0, 0), -- Rhombeard Protector
(10268, 13208, 0, 1, 1, 1, 0, 0, 0, 0), -- Bleak Howler Armguards
(10268, 16718, 15, 1, 1, 1, 0, 0, 0, 0), -- Wildheart Spaulders
(10268, 13206, 0, 1, 1, 1, 0, 0, 0, 0), -- Wolfshear Leggings
(10268, 12208, 23, 0, 1, 1, 0, 0, 0, 0), -- Tender Wolf Meat
(10268, 12203, 24, 0, 1, 1, 0, 0, 0, 0), -- Red Wolf Meat
(10268, 4583, 12, 0, 1, 1, 0, 0, 0, 0), -- Thick Furry Mane
(10268, 4584, 7, 0, 1, 1, 0, 0, 0, 0); -- Large Trophy Paw

-- Ghok Bashguud(RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=9718;
REPLACE INTO `creature_loot_template` VALUES 
(9718, 13198, 0, 1, 1, 1, 0, 0, 0, 0), -- Hurd Smasher
(9718, 13203, 0, 1, 1, 1, 0, 0, 0, 0), -- Armswake Cloak
(9718, 13204, 0, 1, 1, 1, 0, 0, 0, 0), -- Bashguuder
(9718, 14047, 19, 0, 2, 4, 0, 0, 0, 0), -- Runecloth
(9718, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9718, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9718, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- Overlord Wyrmthalak
DELETE FROM `creature_loot_template` WHERE `entry`=9568;
REPLACE INTO `creature_loot_template` VALUES
(9568, 13143, 2, 0, 1, 1, 0, 0, 0, 0), -- Mark of the Dragon Lord
(9568, 13163, 0, 1, 1, 1, 0, 0, 0, 0), -- Relentless Scythe
(9568, 13162, 0, 1, 1, 1, 0, 0, 0, 0), -- Reiver Claws
(9568, 16679, 0, 1, 1, 1, 0, 0, 0, 0), -- Beaststalker's Mantle
(9568, 22321, 0, 1, 1, 1, 0, 0, 0, 0), -- Heart of Wyrmthalak
(9568, 13161, 0, 1, 1, 1, 0, 0, 0, 0), -- Trindlehaven Staff
(9568, 12780, 100, 0, 1, 1, 1, 6, 469, 0), -- General Drakkisath's Command (Starts qid 5089, alliance only)
(9568, 12337, 100, 0, 1, 1, 0, 0, 0, 0), -- Gemstone of Bloodaxe
(9568, 22528, 8, 0, 2, 4, 0, 0, 0, 0), -- Dark Iron Scraps
(9568, 12219, 10, 0, 1, 1, 0, 0, 0, 0), -- Unadorned Seal of Ascension
(9568, 16786, -80, 0, 2, 2, 0, 0, 0, 0); -- Black Dragonspawn Eye (qid 6569)

-- UBRS
-- Pyroguard Emberseer
DELETE FROM `creature_loot_template` WHERE `entry`=9816;
REPLACE INTO `creature_loot_template` VALUES 
(9816, 16672, 0, 1, 1, 1, 0, 0, 0, 0), -- Gauntlets of Elements
(9816, 12927, 0, 1, 1, 1, 0, 0, 0, 0), -- Truestrike Shoulders
(9816, 12926, 0, 1, 1, 1, 0, 0, 0, 0), -- Flaming Band
(9816, 12929, 0, 1, 1, 1, 0, 0, 0, 0), --  Emberfury Talisman
(9816, 12905, 0, 1, 1, 1, 0, 0, 0, 0), -- Wildfire Cape
(9816, 23320, 8, 0, 1, 1, 0, 0, 0, 0), -- Tablet of Flame Shock
(9816, 22527, 28, 0, 2, 4, 0, 0, 0, 0), -- Core of Elements
(9816, 4787, 10, 0, 1, 1, 0, 0, 0, 0), -- Burning Pitch
(9816, 3857, 5, 0, 1, 1, 0, 0, 0, 0), -- Coal
(9816, 17322, -100, 0, 1, 1, 1, 0, 0, 0), -- Eye of the Emberseer (qid 6821)
(9816, 21988, -100, 0, 1, 1, 1, 0, 0, 0); -- Ember of the Emberseer (qid 8961)

-- Solakar Flamewreath(Father Flame Event)
DELETE FROM `creature_loot_template` WHERE `entry`=10264;
REPLACE INTO `creature_loot_template` VALUES 
(10264, 16695, 0, 1, 1, 1, 0, 0, 0, 0), -- Devout Mantle
(10264, 12589, 0, 1, 1, 1, 0, 0, 0, 0), -- Dustfeather Sash
(10264, 12603, 0, 1, 1, 1, 0, 0, 0, 0), -- Nightbrace Tunic
(10264, 12606, 0, 1, 1, 1, 0, 0, 0, 0), -- Crystalized Girdle
(10264, 12609, 0, 1, 1, 1, 0, 0, 0, 0), -- Polychromatic Visionwrap
(10264, 18657, 6, 0, 1, 1, 0, 0, 0, 0), -- Schematic Hyper Radiant Flame Reflector
(10264, 16786, -80, 0, 2, 2, 0, 0, 0, 0); -- Black Dragonspawn Eye (qid 6569) 

-- Jed Runewatcher(RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=10509;
REPLACE INTO `creature_loot_template` VALUES 
(10509, 12605, 0, 1, 1, 1, 0, 0, 0, 0), -- Serpentine Skuller
(10509, 12604, 0, 1, 1, 1, 0, 0, 0, 0), -- Starfire Tiara
(10509, 12930, 0, 1, 1, 1, 0, 0, 0, 0), -- Briarwood Reed
(10509, 14047, 4, 0, 1, 4, 0, 0, 0, 0), -- Runecloth
(10509, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- Goraluk Anvilcrack
DELETE FROM `creature_loot_template` WHERE `entry`=10899;
REPLACE INTO `creature_loot_template` VALUES 
(10899, 18048, 0, 1, 1, 1, 0, 0, 0, 0), -- Mastersmith's Hammer
(10899, 18047, 0, 1, 1, 1, 0, 0, 0, 0), -- Flame Walkers
(10899, 13502, 0, 1, 1, 1, 0, 0, 0, 0), -- Handcrafted Mastersmith Girdle
(10899, 13498, 0, 1, 1, 1, 0, 0, 0, 0), -- Handcrafted Mastersmith Leggings
(10899, 12834, 5, 1, 1, 1, 0, 0, 0, 0), -- Plans Arcanite Champion
(10899, 12837, 5, 1, 1, 1, 0, 0, 0, 0), -- Plans Masterwork Stormhammer
(10899, 12728, 2, 1, 1, 1, 0, 0, 0, 0), -- Plans Invulnerable Mail
(10899, 18779, 15, 0, 1, 1, 0, 0, 0, 0), -- Bottom Half of Advanced Armorsmithing Volume 1
(10899, 14047, 10, 0, 2, 5, 0, 0, 0, 0), -- Runecloth
(10899, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- Gyth
DELETE FROM `creature_loot_template` WHERE `entry`=10339;
REPLACE INTO `creature_loot_template` VALUES 
(10339, 12952, 0, 1, 1, 1, 0, 0, 0, 0), -- Gyth's Skull
(10339, 16669, 0, 1, 1, 1, 0, 0, 0, 0), -- Pauldrons of Elements
(10339, 12953, 0, 1, 1, 1, 0, 0, 0, 0), -- Dragoneye Coif
(10339, 22225, 0, 1, 1, 1, 0, 0, 0, 0), -- Dragonskin Cowl
(10339, 12960, 0, 1, 1, 1, 0, 0, 0, 0), -- Tribal War Feathers
(10339, 13522, 3, 0, 1, 1, 0, 0, 0, 0), -- Recipe Flask of Chromatic Resistance
(10339, 12871, 4, 0, 1, 1, 0, 0, 0, 0), -- Chromatic Carapace
(10339, 4460, 4, 0, 1, 1, 0, 0, 0, 0); -- Ripped Wing Webbing

-- Rend Blackhand
DELETE FROM `creature_loot_template` WHERE `entry`=10429;
REPLACE INTO `creature_loot_template` VALUES 
(91022, 16733, 0, 1, 1, 1, 0, 0, 0, 0), -- Spaulders of Valor
(91022, 12935, 0, 1, 1, 1, 0, 0, 0, 0), -- Warmaster Leggings
(91022, 12936, 0, 1, 1, 1, 0, 0, 0, 0), -- Battleborn Armbraces
(91022, 18103, 0, 1, 1, 1, 0, 0, 0, 0), -- Band of Rumination
(91022, 18102, 0, 1, 1, 1, 0, 0, 0, 0), -- Dragonrider Boots
(91022, 12587, 0, 1, 1, 1, 0, 0, 0, 0), -- Eye of Rend
(91022, 18104, 0, 1, 1, 1, 0, 0, 0, 0), -- Feralsurge Girdle
(91022, 22247, 0, 1, 1, 1, 0, 0, 0, 0), -- Faith Healer's Boots
(91022, 12583, 8, 1, 1, 1, 0, 0, 0, 0), -- Blackhand Doomsaw
(91022, 12939, 8, 1, 1, 1, 0, 0, 0, 0), -- Dal'Rend's Tribal Guardian
(91022, 12940, 8, 1, 1, 1, 0, 0, 0, 0), -- Dal'Rend's Sacred Charge
(91022, 12590, 2, 1, 1, 1, 0, 0, 0, 0), -- Felstriker
(10429, 91022, 100, 1, -91022, 2, 0, 0, 0, 0), -- 2 Drops
(10429, 14047, 9, 0, 2, 5, 0, 0, 0, 0), -- Runecloth
(10429, 12630, -100, 0, 1, 1, 1, 0, 0, 0), -- Head of Rend Blackhand(qid 4974)
(10429, 22138, -80, 0, 1, 1, 0, 0, 0, 0); -- Blackrock Bracer(qid 8994)

-- The Beast
DELETE FROM `creature_loot_template` WHERE `entry`=10430;
REPLACE INTO `creature_loot_template` VALUES 
(91023, 16729, 0, 1, 1, 1, 0, 0, 0, 0), -- Lightforge Spaulders
(91023, 12969, 0, 1, 1, 1, 0, 0, 0, 0), -- Seeping Willow
(91023, 12967, 20, 1, 1, 1, 0, 0, 0, 0), -- Bloodmoon Cloak
(91023, 12965, 0, 1, 1, 1, 0, 0, 0, 0), -- Spiritshroud Leggings
(91023, 12964, 20, 1, 1, 1, 0, 0, 0, 0), -- Tristam Legguards
(91023, 12966, 0, 1, 1, 1, 0, 0, 0, 0), -- Blackmist Armguards
(91023, 12968, 0, 1, 1, 1, 0, 0, 0, 0), -- Frostweaver Cape
(91023, 12709, 0, 1, 1, 1, 0, 0, 0, 0), -- Finkle's Skinner
(91023, 12963, 0, 1, 1, 1, 0, 0, 0, 0), -- Blademaster Leggings
(91023, 22311, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironweave Boots
(10430, 91023, 100, 1, -91023, 2, 0, 0, 0, 0), -- 2 Drops
(10430, 24101, 13, 0, 1, 1, 0, 0, 0, 0), -- Book of Ferocious Bite V
(10430, 19227, 5, 0, 1, 1, 0, 0, 0, 0); -- Ace of Beasts

-- Lord Valthalak(Dungeon 2 Summon)
DELETE FROM `creature_loot_template` WHERE `entry`=16042;
REPLACE INTO `creature_loot_template` VALUES 
(91024, 22337, 0, 1, 1, 1, 0, 0, 0, 0), -- Shroud of Domination
(91024, 22302, 0, 1, 1, 1, 0, 0, 0, 0), -- Ironweave Cowl
(91024, 22340, 0, 1, 1, 1, 0, 0, 0, 0), -- Pendant of Celerity
(91024, 22343, 0, 1, 1, 1, 0, 0, 0, 0), -- Handguards of Savagery
(91024, 22339, 0, 1, 1, 1, 0, 0, 0, 0), -- Rune Band of Wizardry
(91024, 22342, 0, 1, 1, 1, 0, 0, 0, 0), -- Leggings of Torment
(91024, 22335, 0, 1, 1, 1, 0, 0, 0, 0), -- Lord Valthalak's Staff of Command
(91024, 22336, 0, 1, 1, 1, 0, 0, 0, 0), -- Draconian Aegis of the Legion
(16042, 91024, 100, 1, -91024, 2, 0, 0, 0, 0), -- 2 Drops
(16042, 14047, 10, 0, 2, 5, 0, 0, 0, 0); -- Runecloth

-- General Drakkisath
DELETE FROM `creature_loot_template` WHERE `entry`=10363;
REPLACE INTO `creature_loot_template` VALUES
(91025, 13141, 0, 1, 1, 1, 0, 0, 0, 0), -- Tooth of Gnarr
(91025, 22253, 0, 1, 1, 1, 0, 0, 0, 0), -- Tome of the Lost
(91025, 22267, 0, 1, 1, 1, 0, 0, 0, 0), -- Spellweaver's Turban
(91025, 13142, 18, 1, 1, 1, 0, 0, 0, 0), -- Brigam Girdle
(91025, 13098, 18, 1, 1, 1, 0, 0, 0, 0), -- Painweaver Band
(91025, 22269, 18, 1, 1, 1, 0, 0, 0, 0), -- Shadow Prowler's Cloak
(91025, 12602, 18, 1, 1, 1, 0, 0, 0, 0), -- Draconian Deflector
(91025, 22268, 8, 1, 1, 1, 0, 0, 0, 0), -- Draconic Infused Emblem
(91025, 12592, 2, 1, 1, 1, 0, 0, 0, 0), -- Blackblade of Shahram
(10363, 91025, 100, 1, -91025, 2, 0, 0, 0, 0), -- 2 Non set drops
(10363, 16666, 0, 1, 1, 1, 0, 0, 0, 0), -- Dungeon 1 Chests
(10363, 16674, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16688, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16690, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16700, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16706, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16721, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16726, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 16730, 0, 1, 1, 1, 0, 0, 0, 0),
(10363, 15730, 4, 0, 1, 1, 0, 7, 165, 1), -- Pattern Red Dragonscale Breastplate
(10363, 13519, 3, 0, 1, 1, 0, 0, 0, 0), -- Recipe Flask of the Titans
(10363, 16663, -100, 0, 1, 1, 1, 0, 0, 0); -- Blood of the Black Dragon Champion(qid 6502/6602)

-- Update Gold
UPDATE `creature_template` SET `mingold`=1771, `maxgold`=2164 WHERE `entry`=10363;

-- Scourgestones Update due to Mangos Rev 5938( Loot Condition 10)
-- Minion's Scourgestone
INSERT IGNORE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, freeforall, lootcondition, condition_value1, condition_value2) SELECT DISTINCT(entry), 12840, 50, 0, 1, 1, 0, 10, 0, 0 FROM creature_loot_template WHERE mincountorref IN (-79009, -79010, -79011, -79012);

DELETE FROM creature_loot_template WHERE mincountorref IN (-79009, -79010, -79011, -79012);

DELETE FROM creature_loot_template WHERE entry IN (79009, 79010, 79011, 79012);

-- Invaders Scourgestone
INSERT IGNORE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, freeforall, lootcondition, condition_value1, condition_value2) SELECT DISTINCT(entry), 12841, 35, 0, 1, 1, 0, 10, 0, 0 FROM creature_loot_template WHERE mincountorref IN (-79005, -79006, -79007, -79008);

DELETE FROM creature_loot_template WHERE mincountorref IN (-79005, -79006, -79007, -79008);

DELETE FROM creature_loot_template WHERE entry IN (79005, 79006, 79007, 79008);

-- Corruptors Scourgestone
INSERT IGNORE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, freeforall, lootcondition, condition_value1, condition_value2) SELECT DISTINCT(entry), 12843, 100, 0, 1, 1, 0, 10, 0, 0 FROM creature_loot_template WHERE mincountorref IN (-79001, -79002, -79003, -79004);

DELETE FROM creature_loot_template WHERE mincountorref IN (-79001, -79002, -79003, -79004);

DELETE FROM creature_loot_template WHERE entry IN (79001, 79002, 79003, 79004);
-- ends

-- some forgotten equipment stuffs for za mobs??
INSERT IGNORE INTO `creature_equip_template` VALUES (2166,47198,0,23723,4278190082,0,33492994,781,0,25);
INSERT IGNORE INTO `creature_equip_template` VALUES (2167,0,5122,0,0,33488898,0,0,13,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2168,47230,47230,0,4278650626,4278650626,0,781,781,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2169,47207,47207,0,4278190082,4278190082,0,269,269,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2170,45887,0,0,50268674,0,0,273,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2171,47192,47192,0,4278190082,4278190082,0,781,781,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2172,12236,0,6232,50267138,0,50266626,1805,0,15);
INSERT IGNORE INTO `creature_equip_template` VALUES (2173,5175,0,16751,33490946,0,33492994,273,0,25);
INSERT IGNORE INTO `creature_equip_template` VALUES (2174,47212,0,0,4278848002,0,0,529,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2175,47188,0,0,4278519042,0,0,785,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2176,7485,24695,0,33490690,33490436,0,781,1038,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2177,24479,0,0,33490690,0,0,781,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2178,47229,0,47228,4278650626,0,4278321666,781,0,282);
INSERT IGNORE INTO `creature_equip_template` VALUES (2179,46840,0,0,50267138,0,0,781,0,0);
INSERT IGNORE INTO `creature_equip_template` VALUES (2180,3879,0,26385,50267394,0,33489666,273,0,26);
UPDATE `creature_template` SET `equipment_id`=2166 WHERE `entry`=23542;
UPDATE `creature_template` SET `equipment_id`=1543 WHERE `entry`=23560;
UPDATE `creature_template` SET `equipment_id`=2167 WHERE `entry`=23576;
UPDATE `creature_template` SET `equipment_id`=2168 WHERE `entry`=23577;
UPDATE `creature_template` SET `equipment_id`=2169 WHERE `entry`=23580;
UPDATE `creature_template` SET `equipment_id`=2170 WHERE `entry`=23581;
UPDATE `creature_template` SET `equipment_id`=2171 WHERE `entry`=23582;
UPDATE `creature_template` SET `equipment_id`=2172 WHERE `entry`=23586;
UPDATE `creature_template` SET `equipment_id`=2173 WHERE `entry`=23587;
UPDATE `creature_template` SET `equipment_id`=2174 WHERE `entry`=23596;
UPDATE `creature_template` SET `equipment_id`=2175 WHERE `entry`=23597;
UPDATE `creature_template` SET `equipment_id`=358 WHERE `entry`=23705;
UPDATE `creature_template` SET `equipment_id`=1073 WHERE `entry`=23716;
UPDATE `creature_template` SET `equipment_id`=2176 WHERE `entry`=23724;
UPDATE `creature_template` SET `equipment_id`=619 WHERE `entry`=23745;
UPDATE `creature_template` SET `equipment_id`=1854 WHERE `entry`=23748;
UPDATE `creature_template` SET `equipment_id`=458 WHERE `entry`=23761;
UPDATE `creature_template` SET `equipment_id`=468 WHERE `entry`=23762;
UPDATE `creature_template` SET `equipment_id`=468 WHERE `entry`=23766;
UPDATE `creature_template` SET `equipment_id`=2177 WHERE `entry`=23774;
UPDATE `creature_template` SET `equipment_id`=458 WHERE `entry`=23858;
UPDATE `creature_template` SET `equipment_id`=955 WHERE `entry`=23889;
UPDATE `creature_template` SET `equipment_id`=1272 WHERE `entry`=24059;
UPDATE `creature_template` SET `equipment_id`=2178 WHERE `entry`=24065;
UPDATE `creature_template` SET `equipment_id`=2179 WHERE `entry`=24179;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=24358;
UPDATE `creature_template` SET `equipment_id`=2180 WHERE `entry`=25145;
UPDATE `creature_template` SET `equipment_id`=1731 WHERE `entry`=6224;

-- random wdb!
-- more hot item from swp! + 2.4.2 updates
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35316','3','5','-1','Reckless Noble Topaz','39931','3','0','1','120000','30000','0','-1','-1','70','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Matches a Red or Yellow Socket.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','512','0','0','0','0','0','0','0','0','902','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35315','3','2','-1','Quick Dawnstone','39925','3','0','1','120000','30000','0','-1','-1','70','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Matches a Yellow Socket.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','512','0','0','0','0','0','0','0','0','901','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35318','3','4','-1','Forceful Talasite','39930','3','0','1','120000','30000','0','-1','-1','70','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Matches a Yellow or Blue Socket.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','512','0','0','0','0','0','0','0','0','903','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('37865','4','0','-1','Medallion of the Horde','37841','4','32768','1','0','0','12','-1','690','128','70','0','0','0','0','0','0','0','1','1','0','35','45','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','42292','0','0','0','120000','1182','120000','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35212','9','1','-1','Pattern: Leather Gauntlets of the Sun','7085','4','64','1','80000','20000','0','-1','-1','75','0','165','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46132','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to craft Leather Gauntlets of the Sun.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34372','4','2','-1','Leather Gauntlets of the Sun','48917','4','0','1','195965','39193','10','32767','-1','159','70','0','0','0','0','0','0','0','0','1','0','7','25','5','26','6','30','30','38','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','312','0','0','0','0','0','0','0','0','0','17320','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','2','','0','0','0','0','0','8','0','0','0','0','0','40','0','0','0','0','8','0','2','0','0','0','2866','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35211','9','4','-1','Plans: Hard Khorium Battleplate','7085','4','64','1','80000','20000','0','-1','-1','70','0','164','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46144','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make a Hard Khorium Battleplate.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34427','4','0','-1','Blackened Naaru Sliver','48503','4','0','1','288156','72039','12','-1','32767','154','70','0','0','0','0','0','0','0','1','1','0','36','54','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','45355','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34374','4','3','-1','Fletcher\'s Gloves of the Phoenix','48914','4','0','1','236889','47377','10','-1','32767','159','70','0','0','0','0','0','0','0','0','1','0','3','30','7','33','5','25','36','34','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','694','0','0','0','0','0','0','0','0','0','15824','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','2','','0','0','0','0','0','5','0','0','0','0','0','50','0','0','0','0','4','0','4','0','0','0','2973','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34334','2','2','-1','Thori\'dal, the Stars\' Fury','48902','5','0','1','914654','182930','15','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','3','17','32','16','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','355.65','523.65','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2700','0','100','15806','1','0','0','-1','0','-1','43219','1','0','0','-1','0','-1','44972','1','0','0','-1','0','-1','46699','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','The energy of the Sunwell courses through Thori\'dal.','0','0','0','0','0','1','0','0','0','0','0','110','0','0','0','0','0','0','0','0','0','0','0','0','-1','59.5');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34247','2','8','-1','Apolyon, the Soul-Render','48023','4','0','1','1038554','207710','17','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','75','36','32','32','42','0','0','0','0','0','0','0','0','0','0','0','0','0','0','404','607','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3400','0','0','39885','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','1','1','0','0','0','0','120','0','0','0','0','2','0','2','0','2','0','2868','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34430','4','0','-1','Glimmering Naaru Sliver','48504','4','0','1','288156','72039','12','-1','32767','154','70','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','45052','0','0','0','300000','0','-1','42077','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34228','4','3','-1','Vicious Hawkstrider Hauberk','48014','4','0','1','486110','97222','5','32767','-1','159','70','0','0','0','0','0','0','0','0','1','0','3','47','7','64','5','30','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1110','0','0','0','0','0','0','0','0','0','36068','1','0','0','-1','0','-1','44810','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','5','0','0','0','0','0','140','0','0','0','0','2','0','4','0','8','0','2936','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34336','2','15','-1','Sunflare','48031','4','0','1','818965','163793','21','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','17','5','20','30','23','21','30','0','0','0','0','0','0','0','0','0','0','0','0','12.6','136.6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1800','0','0','44974','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','1','3','0','0','0','0','75','0','0','0','0','0','0','0','0','0','0','0','0','300','-73');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34329','2','15','-1','Crux of the Apocalypse','48026','4','0','1','776495','155299','13','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','15','3','18','36','27','0','0','0','0','0','0','0','0','0','0','0','0','0','0','164','247','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1800','0','0','15814','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','1','3','0','0','0','0','75','0','0','0','0','2','0','0','0','0','0','3114','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34337','2','10','-1','Golden Staff of the Sin\'dorei','48030','4','0','1','1027469','205493','17','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','60','5','54','6','57','30','32','0','0','0','0','0','0','0','0','0','0','0','0','146.4','337.4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','3200','0','0','44973','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','2','2','0','0','0','0','120','0','0','0','0','2','0','8','0','8','0','2890','0','300','-73');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34231','4','6','-1','Aegis of Angelic Fortune','48906','4','0','1','508718','101743','14','-1','-1','154','70','0','0','0','0','0','0','0','0','1','0','7','33','5','21','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','6459','0','0','0','0','0','0','0','0','0','18044','1','0','0','-1','0','-1','21638','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','6','4','0','0','178','0','120','0','0','0','0','0','0','0','0','0','0','0','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('37504','9','10','-1','Design: Purified Shadowsong Amethyst','1096','1','64','1','500000','125000','0','-1','-1','75','0','755','375','0','0','0','1077','7','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','48789','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to cut a Purified Shadowsong Amethyst.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('37503','3','3','-1','Purified Shadowsong Amethyst','44924','4','0','1','240000','60000','0','-1','-1','100','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Matches a Red or Blue Socket.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','512','0','0','0','0','0','0','0','0','1041','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35323','9','10','-1','Design: Reckless Noble Topaz','6270','3','64','1','120000','30000','0','-1','-1','70','0','755','350','0','0','0','1077','7','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46404','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to cut a Reckless Noble Topaz.','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35322','9','10','-1','Design: Quick Dawnstone','6270','3','64','1','120000','30000','0','-1','-1','70','0','755','350','0','0','0','1077','7','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46403','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to cut a Quick Dawnstone.','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35325','9','10','-1','Design: Forceful Talasite','6270','3','64','1','120000','30000','0','-1','-1','70','0','755','350','0','0','0','1077','7','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46405','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to cut a Forceful Talasite.','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34343','4','3','-1','Thalassian Ranger Gauntlets','48034','4','0','1','251962','50392','10','-1','32767','164','70','0','0','0','0','0','0','0','0','1','0','3','40','7','43','5','27','32','23','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','715','0','0','0','0','0','0','0','0','0','15826','1','0','0','-1','0','-1','44810','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','5','0','0','0','0','0','50','0','0','0','0','2','0','4','0','0','0','2893','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34333','4','3','-1','Coif of Alleria','48024','4','0','1','364507','72901','1','32767','-1','164','70','0','0','0','0','0','0','0','0','1','0','3','43','7','45','5','25','32','34','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','929','0','0','0','0','0','0','0','0','0','39885','1','0','0','-1','0','-1','44810','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','5','0','0','0','0','0','85','0','0','0','0','2','0','1','0','0','0','2877','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34340','4','1','-1','Dark Conjuror\'s Collar','50019','4','0','1','249277','49855','1','32767','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','51','5','42','21','38','30','30','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','222','0','0','0','0','0','0','0','0','0','44979','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','60','0','0','0','0','1','0','8','0','0','0','2889','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34344','4','1','-1','Handguards of Defiled Worlds','48306','4','0','1','168576','33715','10','-1','32767','164','70','0','0','0','0','0','0','0','0','1','0','7','33','5','32','18','27','30','36','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','171','0','0','0','0','0','0','0','0','0','24196','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','35','0','0','0','0','4','0','2','0','0','0','2900','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34341','4','4','-1','Borderland Paingrips','48032','4','0','1','220252','44050','10','-1','32767','164','70','0','0','0','0','0','0','0','0','1','0','4','47','32','39','7','48','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1277','0','0','0','0','0','0','0','0','0','40679','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','1','0','0','0','0','0','55','0','0','0','0','2','0','8','0','0','0','2879','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34242','4','1','-1','Tattered Cape of Antonidas','48871','4','0','1','244762','48952','16','32767','-1','164','70','0','0','0','0','0','0','0','0','1','0','7','25','5','26','30','32','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','137','0','0','0','0','0','0','0','0','0','18058','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','2','0','0','0','0','0','3153','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34241','4','1','-1','Cloak of Unforgivable Sin','48868','4','0','1','243858','48771','16','-1','-1','164','70','0','0','0','0','0','0','0','0','1','0','3','26','7','25','36','32','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','137','0','0','0','0','0','0','0','0','0','15821','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','4','0','0','0','0','0','3114','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34355','4','3','-1','Lightning Etched Specs','45778','4','0','1','356686','71337','1','-1','-1','159','70','202','350','0','0','0','0','0','0','1','0','7','47','18','25','21','53','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','902','0','0','0','0','0','0','0','0','0','23929','1','0','0','-1','0','-1','30645','1','0','0','0','0','-1','40273','1','0','0','0','0','-1','12883','0','0','0','3000','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','85','0','0','128','0','1','0','8','0','0','0','2889','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('34378','4','4','-1','Hard Khorium Battlefists','48926','4','0','1','220252','44050','10','-1','32767','159','70','0','0','0','0','0','0','0','0','1','0','4','45','7','45','36','36','31','23','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1239','0','0','0','0','0','0','0','0','0','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','2','','0','0','0','0','0','1','0','0','0','0','0','55','0','0','0','0','2','0','4','0','0','0','2879','0','300','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('37864','4','0','-1','Medallion of the Alliance','37840','4','32768','1','0','0','12','-1','1101','128','70','0','0','0','0','0','0','0','1','1','0','35','45','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','42292','0','0','0','120000','1182','120000','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35304','9','10','-1','Design: Solid Star of Elune','6270','3','64','1','120000','30000','0','-1','-1','70','0','755','350','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','31092','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to cut a Solid Star of Elune.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35582','9','3','-1','Schematic: Rocket Boots Xtreme Lite','6270','3','64','1','60000','15000','0','-1','-1','71','0','202','355','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46697','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to make Rocket Boots Xtreme Lite.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35191','9','3','-1','Schematic: Wonderheal XT68 Shades','7085','4','64','1','150000','37500','0','1024','-1','70','0','202','375','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46106','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make Wonderheal XT68 Shades.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35186','9','3','-1','Schematic: Annihilator Holo-Gogs','7085','4','64','1','80000','20000','0','400','-1','70','0','202','375','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46111','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make Annihilator Holo-gogs.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35203','9','10','-1','Design: Hard Khorium Choker','7085','4','64','1','140000','35000','0','-1','-1','70','0','755','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46127','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to craft a Hard Khorium Choker.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35194','9','3','-1','Schematic: Surestrike Goggles v3.0','7085','4','64','1','150000','37500','0','68','-1','70','0','202','375','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46113','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make Surestrike Goggles v3.0.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35197','9','3','-1','Schematic: Quad Deathblow X44 Goggles','7085','4','64','1','150000','37500','0','1032','-1','70','0','202','375','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46116','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make Quad Deathblow X44 Goggles.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35218','9','1','-1','Pattern: Carapace of Sun and Shadow','7085','4','64','1','80000','20000','0','-1','-1','75','0','165','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46138','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to craft Carapace of Sun and Shadow.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','-1','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`) values('35217','9','1','-1','Pattern: Embrace of the Phoenix','7085','4','64','1','80000','20000','0','-1','-1','75','0','165','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46137','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to craft Embrace of the Phoenix.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','-1','0');
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=809;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=810;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=811;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=827;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=868;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=869;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=1251;
UPDATE `item_template` SET `spellid_1`=49512 WHERE `entry`=1399;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=1482;
UPDATE `item_template` SET `displayid`=5166,`InventoryType`=13 WHERE `entry`=1727;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=1728;
UPDATE `item_template` SET `displayid`=5218,`InventoryType`=13 WHERE `entry`=1926;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=2011;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=2243;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=2244;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=2581;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=2807;
UPDATE `item_template` SET `displayid`=8465,`InventoryType`=13 WHERE `entry`=2815;
UPDATE `item_template` SET `displayid`=8469,`InventoryType`=13 WHERE `entry`=2878;
UPDATE `item_template` SET `name`='Potion of Curing' WHERE `entry`=3386;
UPDATE `item_template` SET `name`='Recipe: Potion of Curing' WHERE `entry`=3394;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=3400;
UPDATE `item_template` SET `displayid`=5198,`InventoryType`=13 WHERE `entry`=3414;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=3489;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=3491;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=3492;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=3530;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=3531;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=3849;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=5344;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=6041;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=6042;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=6043;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=6323;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=6450;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=6451;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=6504;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=6979;
UPDATE `item_template` SET `InventoryType`=0 WHERE `entry`=7148;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7326;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7752;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7761;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7941;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7943;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7944;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7945;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7946;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7954;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=7961;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=7967;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=7969;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=8226;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=8544;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=8545;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=8591;
UPDATE `item_template` SET `Quality`=2,`RequiredDisenchantSkill`=125 WHERE `entry`=9149;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=9446;
UPDATE `item_template` SET `TotemCategory`=11,`Description`='Also serves as a mining pick.' WHERE `entry`=9465;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=9478;
UPDATE `item_template` SET `displayid`=28194,`InventoryType`=13 WHERE `entry`=9639;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=10623;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=10803;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=10805;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=10837;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=10838;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11121;
UPDATE `item_template` SET `Flags`=524288,`spellid_1`=48777 WHERE `entry`=11122;
UPDATE `item_template` SET `name`='Bear Organ' WHERE `entry`=11409;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11684;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11702;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11805;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11817;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11920;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12527;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12531;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12621;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=12645;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12709;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12773;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12781;
UPDATE `item_template` SET `Flags`=0 WHERE `entry`=12783;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12791;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12792;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12794;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12797;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12798;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=12974;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13025;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13026;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=13086;
UPDATE `item_template` SET `name`='The Blackrock Slicer' WHERE `entry`=13285;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=13335;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13349;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13408;
UPDATE `item_template` SET `subclass`=9 WHERE `entry`=13468;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13952;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13953;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=14145;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=14529;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=14530;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=14576;
UPDATE `item_template` SET `name`='Slayer\'s Shoulderguards' WHERE `entry`=14758;
UPDATE `item_template` SET `name`='Warbringer\'s Sabatons ' WHERE `entry`=14940;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=16769;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17015;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17016;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17112;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17704;
UPDATE `item_template` SET `name`='Snowmaster 9000' WHERE `entry`=17716;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17719;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=18044;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=18245;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=18246;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=18247;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=18248;
UPDATE `item_template` SET `InventoryType`=13,`dmg_min1`=73,`dmg_max1`=137 WHERE `entry`=18348;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=18372;
UPDATE `item_template` SET `InventoryType`=13,`dmg_min1`=45,`dmg_max1`=84 WHERE `entry`=18462;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=18671;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=19029;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=19030;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=19066;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=19067;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=19068;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=19307;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=19335;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=19867;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=19872;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=19902;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20232;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20234;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20235;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20237;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20243;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=20244;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=20580;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=20648;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=21176;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=21218;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=21321;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=21323;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=21324;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=21395;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=21990;
UPDATE `item_template` SET `spellcategorycooldown_1`=1000 WHERE `entry`=21991;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=22266;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=22384;
UPDATE `item_template` SET `name`='Formula: Enchant Ring - Striking' WHERE `entry`=22535;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=22552;
UPDATE `item_template` SET `name`='Flask of Blinding Light' WHERE `entry`=22861;
UPDATE `item_template` SET `name`='Flask of Pure Death' WHERE `entry`=22866;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23134;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23145;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23146;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23149;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23150;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=23155;
UPDATE `item_template` SET `name`='Lieutenant Commander\'s Plate Helmet' WHERE `entry`=23314;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=23410;
UPDATE `item_template` SET `name`='Squire\'s Shirt' WHERE `entry`=23476;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=23530;
UPDATE `item_template` SET `class`=7,`subclass`=13 WHERE `entry`=23572; -- correct data not allowed -.-
UPDATE `item_template` SET `name`='Lesser Ward of Shielding' WHERE `entry`=23575;
UPDATE `item_template` SET `name`='Greater Ward of Shielding' WHERE `entry`=23576;
UPDATE `item_template` SET `name`='Plans: Lesser Ward of Shielding' WHERE `entry`=23638;
UPDATE `item_template` SET `name`='Tabard of Flame' WHERE `entry`=23705;
UPDATE `item_template` SET `name`='Schematic: Adamantite Shell Machine' WHERE `entry`=23815;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=24020;
UPDATE `item_template` SET `name`='Legion Blunderbuss' WHERE `entry`=24389;
UPDATE `item_template` SET `name`='Pauldrons of Brute Force' WHERE `entry`=24463;
UPDATE `item_template` SET `name`='Starfire Sash' WHERE `entry`=24597;
UPDATE `item_template` SET `name`='Starfire Circlet' WHERE `entry`=24601;
UPDATE `item_template` SET `name`='Slavehandler Pants' WHERE `entry`=24626;
UPDATE `item_template` SET `name`='Astralaan Boots' WHERE `entry`=24646;
UPDATE `item_template` SET `name`='Shadow Council Boots' WHERE `entry`=24662;
UPDATE `item_template` SET `name`='Blood Knight Boots' WHERE `entry`=24863;
UPDATE `item_template` SET `name`='Turquoise Brooch' WHERE `entry`=25065;
UPDATE `item_template` SET `name`='Dreamseeker Dandelion' WHERE `entry`=25086;
UPDATE `item_template` SET `name`='Supplicant\'s Rod' WHERE `entry`=25089;
UPDATE `item_template` SET `name`='Anvilmar Hammer' WHERE `entry`=25126;
UPDATE `item_template` SET `name`='The Stoppable Force' WHERE `entry`=25402;
UPDATE `item_template` SET `name`='Ripped Fin' WHERE `entry`=25431;
UPDATE `item_template` SET `spellid_1`=48776,`Material`=4 WHERE `entry`=25653;
UPDATE `item_template` SET `name`='Mask of the Howling Storm' WHERE `entry`=25955;
UPDATE `item_template` SET `name`='Nexus-Bracers of Vigor' WHERE `entry`=25956;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=25964;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=26053;
UPDATE `item_template` SET `name`='Slayer\'s Leggings' WHERE `entry`=27653;
UPDATE `item_template` SET `name`='Avenger\'s Legplates' WHERE `entry`=27654;
UPDATE `item_template` SET `name`='Keen Marshfang Slicer' WHERE `entry`=27754;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28234;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28235;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28236;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28237;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28238;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28239;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28240;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28241;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28242;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=28243;
UPDATE `item_template` SET `name`='Gladiator\'s Libram of Justice' WHERE `entry`=28356;
UPDATE `item_template` SET `name`='Gladiator\'s Totem of the Third Wind' WHERE `entry`=28357;
UPDATE `item_template` SET `maxcount`=0 WHERE `entry`=28425;
UPDATE `item_template` SET `maxcount`=0 WHERE `entry`=28426;
UPDATE `item_template` SET `maxcount`=0 WHERE `entry`=28427;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28431;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28432;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28433;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28437;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28438;
UPDATE `item_template` SET `InventoryType`=13,`maxcount`=0 WHERE `entry`=28439;
UPDATE `item_template` SET `name`='Pantaloons of Repentance' WHERE `entry`=28742;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=28915;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29102;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29103;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29104;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29105;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29227;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29228;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29229;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29230;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29231;
UPDATE `item_template` SET `name`='Zangar Trout' WHERE `entry`=29452;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=29456;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29465;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29466;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29467;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29468;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29469;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29470;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29471;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=29472;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=29787;
UPDATE `item_template` SET `name`='Gauntlets of the Sun King' WHERE `entry`=29987;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30058;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30071;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30072;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30073;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30087;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30089;
UPDATE `item_template` SET `subclass`=13 WHERE `entry`=30183;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30343;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30344;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30345;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30346;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30348;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30349;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30350;
UPDATE `item_template` SET `Material`=4 WHERE `entry`=30351;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=30480;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=30609;
UPDATE `item_template` SET `displayid`=49684 WHERE `entry`=30972;
UPDATE `item_template` SET `displayid`=49684 WHERE `entry`=30974;
UPDATE `item_template` SET `name`='Abyssal Leather Treads' WHERE `entry`=31215;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=31357;
UPDATE `item_template` SET `name`='Precise Gloves of Alacrity' WHERE `entry`=31439;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31829;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31830;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31831;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31832;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31833;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31834;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31835;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=31836;
UPDATE `item_template` SET `displayid`=46507 WHERE `entry`=32006;
UPDATE `item_template` SET `spellid_2`=47524 WHERE `entry`=32235;
UPDATE `item_template` SET `stat_value1`=29,`spellid_1`=17320 WHERE `entry`=32258;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32314;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32316;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32317;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32318;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32319;
UPDATE `item_template` SET `stat_value1`=22,`stat_value2`=21 WHERE `entry`=32328;
UPDATE `item_template` SET `name`='Redeemed Soul Moccasins' WHERE `entry`=32394;
UPDATE `item_template` SET `name`='Pattern: Redeemed Soul Moccasins' WHERE `entry`=32433;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32458;
UPDATE `item_template` SET `name`='Wristguards of Determination' WHERE `entry`=32515;
UPDATE `item_template` SET `name`='Heretic\'s Gauntlets' WHERE `entry`=32529;
UPDATE `item_template` SET `name`='Gyro-Balanced Khorium Destroyer' WHERE `entry`=32756;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32768;
UPDATE `item_template` SET `SellPrice`=90808,`InventoryType`=13,`BuyPrice`=454044 WHERE `entry`=32781;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32857;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32858;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32859;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32860;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32861;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=32862;
UPDATE `item_template` SET `spellid_1`=48776 WHERE `entry`=32863;
UPDATE `item_template` SET `Description`='INSERT IGNORE INTO nearest energy receptacle.' WHERE `entry`=32902;
UPDATE `item_template` SET `name`='Merciless Gladiator\'s Libram of Justice' WHERE `entry`=33077;
UPDATE `item_template` SET `name`='Merciless Gladiator\'s Totem of the Third Wind' WHERE `entry`=33078;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33176;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33182;
UPDATE `item_template` SET `subclass`=5,`name`='Old Magic Broom' WHERE `entry`=33183;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33184;
UPDATE `item_template` SET `RequiredSkill`=0,`RequiredSkillRank`=0 WHERE `entry`=33185;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33224;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33225;
UPDATE `item_template` SET `name`='Ancient Amani Longbow' WHERE `entry`=33474;
UPDATE `item_template` SET `name`='Gargon\'s Bracers of Peaceful Slumber' WHERE `entry`=33557;
UPDATE `item_template` SET `displayid`=46894 WHERE `entry`=33708;
UPDATE `item_template` SET `displayid`=49686 WHERE `entry`=33730;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33809;
UPDATE `item_template` SET `name`='Battlemaster\'s Determination' WHERE `entry`=33832;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33976;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33977;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=33999;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=34092;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=34129;
UPDATE `item_template` SET `name`='Battlemaster\'s Depravity' WHERE `entry`=34162;
UPDATE `item_template` SET `name`='Battlemaster\'s Cruelty' WHERE `entry`=34163;
UPDATE `item_template` SET `displayid`=49970 WHERE `entry`=34165;
UPDATE `item_template` SET `displayid`=50016 WHERE `entry`=34192;
UPDATE `item_template` SET `displayid`=50017 WHERE `entry`=34193;
UPDATE `item_template` SET `displayid`=49971 WHERE `entry`=34197;
UPDATE `item_template` SET `displayid`=50013 WHERE `entry`=34202;
UPDATE `item_template` SET `displayid`=50012 WHERE `entry`=34210;
UPDATE `item_template` SET `displayid`=50018 WHERE `entry`=34339;
UPDATE `item_template` SET `ItemLevel`=156,`stat_value1`=66,`stat_value2`=22,`stat_value3`=36,`stat_value4`=29,`armor`=1217 WHERE `entry`=34352;
UPDATE `item_template` SET `BuyPrice`=413808 WHERE `entry`=34354;
UPDATE `item_template` SET `name`='Surestrike Goggles v3.0' WHERE `entry`=34356;
UPDATE `item_template` SET `name`='Hard Khorium Goggles' WHERE `entry`=34357;
UPDATE `item_template` SET `name`='Hands of Eternal Light',`BuyPrice`=153863 WHERE `entry`=34367;
UPDATE `item_template` SET `name`='Embrace of the Phoenix' WHERE `entry`=34373;
UPDATE `item_template` SET `displayid`=50015 WHERE `entry`=34388;
UPDATE `item_template` SET `displayid`=50017 WHERE `entry`=34389;
UPDATE `item_template` SET `displayid`=50014 WHERE `entry`=34393;
UPDATE `item_template` SET `displayid`=50020 WHERE `entry`=34405;
UPDATE `item_template` SET `spellcooldown_1`=90000,`spellcategorycooldown_1`=15000 WHERE `entry`=34429;
UPDATE `item_template` SET `displayid`=48183 WHERE `entry`=34530;
UPDATE `item_template` SET `name`='Battlemaster\'s Cruelty' WHERE `entry`=34576;
UPDATE `item_template` SET `name`='Battlemaster\'s Depravity' WHERE `entry`=34577;
UPDATE `item_template` SET `name`='Battlemaster\'s Determination' WHERE `entry`=34578;
UPDATE `item_template` SET `SellPrice`=25300,`ItemLevel`=115,`RequiredLevel`=70,`BuyPrice`=126500 WHERE `entry`=34702;
UPDATE `item_template` SET `bonding`=1 WHERE `entry`=34780;
UPDATE `item_template` SET `RequiredSkillRank`=375,`Description`='Teaches you how to shatter a Void Crystal into two Large Prismatic Shards.' WHERE `entry`=34872;
UPDATE `item_template` SET `name`='Grovewalker\'s Leggings' WHERE `entry`=34901;
UPDATE `item_template` SET `name`='Oakleaf-Spun Handguards',`AllowableRace`=-1 WHERE `entry`=34902;
UPDATE `item_template` SET `name`='Embrace of Starlight' WHERE `entry`=34903;
UPDATE `item_template` SET `name`='Barbed Gloves of the Sage' WHERE `entry`=34904;
UPDATE `item_template` SET `name`='Crystalwind Leggings' WHERE `entry`=34905;
UPDATE `item_template` SET `name`='Embrace of Everlasting Prowess' WHERE `entry`=34906;
UPDATE `item_template` SET `name`='Wonderheal XT68 Shades' WHERE `entry`=35183;
UPDATE `item_template` SET `AllowableRace`=-1 WHERE `entry`=35193;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=35225;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=35226;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35238;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35239;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35240;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35241;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35242;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35243;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35244;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35246;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35247;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35248;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35249;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35250;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35251;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35252;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35253;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35254;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35255;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35256;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35257;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35258;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35259;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35260;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35261;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35262;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35263;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35264;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35265;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35266;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35267;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35268;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35269;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35270;
UPDATE `item_template` SET `Quality`=1 WHERE `entry`=35271;
UPDATE `item_template` SET `stat_value2`=22,`stat_type5`=5,`stat_value5`=12,`spellid_1`=0 WHERE `entry`=35381;
UPDATE `item_template` SET `spellid_1`=32973 WHERE `entry`=35382;
UPDATE `item_template` SET `stat_type5`=5,`stat_value5`=8,`spellid_1`=0 WHERE `entry`=35385;
UPDATE `item_template` SET `bonding`=1,`Material`=4 WHERE `entry`=35505;
UPDATE `item_template` SET `subclass`=5 WHERE `entry`=35513;
UPDATE `item_template` SET `BuyPrice`=240 WHERE `entry`=35563;
UPDATE `item_template` SET `BuyPrice`=240 WHERE `entry`=35565;
UPDATE `item_template` SET `subclass`=5,`spellid_1`=48027 WHERE `entry`=35906;
-- npc_Text
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12301','1','Last I heard from Hauthaa, she indicated that we are $3228w percent of the way there.$B$BI cannot express how vital it is to our efforts that we get them created. Our men and women are going to need better armor and weapons, and the anvil and forge are the key to that.$B$BYou will find the smith behind the Sun\'s Reach Armory, $N.','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12302','1','No, unfortunately we have not yet taken the harbor. However, reports indicate that we are $3238w percent of the way towards doing so.$B$B$N, if you want to help out, look for Magister Ilastar and Vindicator Kaalan at the Sun\'s Reach Armory on the Isle of Quel\'Danas.','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12305','1','Agamath, the First Gate is breached and two of Kil\'jaeden\'s lieutenants, Lady Sacrolash and Grand Warlock Alythess, must be destroyed.$B$BGather your friends, $c, and see to it! Rohendor, the Second Gate is our next target.','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10732','1','','Are we there yet?','0','0','1','0','0','0','0','1','','If the demons fell, where did they fall from?','0','0','1','0','0','0','0','1','','I think I need a bath.  *sniff*  I think you need one, too!','0','0','1','0','0','0','0','1','','Would a tauren paladin be a holy cow?','0','0','1','0','0','0','0','1','','Does this dress make me look fat?','0','0','1','0','0','0','0','1','','I bet Illidan is a nice guy underneath.  He just needs a mama, too.','0','0','1','0','0','0','0','1','','I bet ice cream would taste better if it were socketed!','0','0','1','0','0','0','0','1','','Boys have cooties and girls have beauty!','0','0','1','0','0','0','0');
UPDATE `npc_text` SET `text0_0`='You can find Aldwin Laughlin at the Stormwind Visitor\'s Center in the Trade District.',`text0_1`='You can find Aldwin Laughlin at the Stormwind Visitor\'s Center in the Trade District.',`text1_0`='Gonna make a guild, are ya? Good luck to ya then!$B$BTalk to Aldwin Laughlin in the Stormwind Vistor\'s Center. It\'s in the Trade District right as you come in from the Valley of Heroes.',`text1_1`='Gonna make a guild, are ya? Good luck to ya then!$B$BTalk to Aldwin Laughlin in the Stormwind Vistor\'s Center. It\'s in the Trade District right as you come in from the Valley of Heroes.' WHERE `ID`=882;
UPDATE `npc_text` SET `text0_0`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.',`text0_1`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.' WHERE `ID`=3813;
UPDATE `npc_text` SET `text0_0`='Greetings $c - welcome to the front lines in our conquest of Ashenvale!  If you are looking for something to do, then you\'ve come to the right place.  I\'m always looking for able-bodied individuals to help bring glory to the Horde!',`em0_0`=0,`em0_1`=66 WHERE `ID`=5613;
UPDATE `npc_text` SET `text0_0`='All of a sudden you\'re a \'Defender of the Alliance\' are you?! Well, I suppose you\'ll be wanting to head to the Champions\' Hall now. It\'s over in Old Town.',`text0_1`='All of a sudden you\'re a \'Defender of the Alliance\' are you?! Well, I suppose you\'ll be wanting to head to the Champions\' Hall now. It\'s over in Old Town.',`text1_0`='Well, well, moving up in the world are we? You\'re looking for the Champions\' Hall, and you\'ll find it on the southeast end of Old Town. Good luck!',`text1_1`='Well, well, moving up in the world are we? You\'re looking for the Champions\' Hall, and you\'ll find it on the southeast end of Old Town. Good luck!' WHERE `ID`=7047;
UPDATE `npc_text` SET `text1_0`='The Darkmoon Faire has come to town!  Be sure to experience the most thrilling show you\'ll ever see!',`em3_0`=0,`em3_1`=5 WHERE `ID`=7374;
UPDATE `npc_text` SET `em0_0`=1,`em0_1`=274 WHERE `ID`=7599;
UPDATE `npc_text` SET `em0_0`=1,`em0_1`=274 WHERE `ID`=7642;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of the Darkspear tribe.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from the Darkspear tribe for your duty and service.$B',`text0_1`='Greetings, $c - I\'m a Commendation Officer acting on behalf of the Darkspear tribe.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from the Darkspear tribe for your duty and service.$B' WHERE `ID`=8127;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Orgrimmar.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Orgrimmar for your duty and service.$B',`text0_1`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Orgrimmar.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Orgrimmar for your duty and service.$B$B' WHERE `ID`=8131;
UPDATE `npc_text` SET `text0_0`='Hello.  I trust that this day finds you well?',`text0_1`='' WHERE `ID`=8794;
UPDATE `npc_text` SET `text0_0`='They died. All of them...$B$BAs the Murkbloods cut through us, something took hold of me that I cannot understand. Tell me, have you ever felt a rage so great that the whole of your being burns? A heat that wilts the living? A heat that incinerates the blood in your veins? That is what I felt.$B$B<Saurfang\'s eyes glow red for a brief moment.>$B$BI was the last one left alive. 30 of them surrounded me... Murkbloods... I remember nothing beyond that vision. I blacked out and awoke some time later.',`em0_5`=1 WHERE `ID`=9275;
UPDATE `npc_text` SET `text0_1`='We wouldn\'t have crashed if Hemet could learn how to avoid shooting through the ailerons when he\'s trying to bag game on the ground!$B$BNo worries though, I\'ll have her fixed up quick enough.' WHERE `ID`=9290;
UPDATE `npc_text` SET `text0_0`='There is nothing to see here. Move along.',`text1_0`='This does not concern you. Be on your way.' WHERE `ID`=9577;
UPDATE `npc_text` SET `text0_0`='I sell wares that crafters need. Just the basics, nothing fancy.',`text0_1`='' WHERE `ID`=9650;
UPDATE `npc_text` SET `text0_0`='It\'s driving me crazy. I cannot reach those damned eggs!',`text0_1`='' WHERE `ID`=9654;
UPDATE `npc_text` SET `em0_5`=5 WHERE `ID`=9735;
UPDATE `npc_text` SET `text0_0`='That child gives me chills. He stands there all day long communing with his grandfather. He\'ll then turn to tell his mother what the grandfather told him and she - of course - just smiles and nods her head.$B$BLambs! Lemmings! All of them!$B',`em0_5`=5 WHERE `ID`=9914;
UPDATE `npc_text` SET `text0_0`='You don\'t have what it takes to fight in the Steamwheedle Fighting Circuit, $c. Stop wasting my time.',`text0_1`='You don\'t have what it takes to fight in the Steamwheedle Fighting Circuit, $c. Stop wasting my time.',`lang0`=0,`prob0`='1.0',`em0_0`=1,`em0_1`=274 WHERE `ID`=10214;
UPDATE `npc_text` SET `text0_0`='You\'ll find the battlemasters in the war room of Stormwind Keep.',`lang0`=7,`prob0`='1.0',`text1_0`='',`text2_0`='',`text3_0`='',`text4_0`='',`text5_0`='',`text6_0`='',`text7_0`='' WHERE `ID`=10218;
UPDATE `npc_text` SET `text0_0`='Shattrath\'s battlemasters often congregate on the stairwells between the upper and lower city. The Alliance battlemasters gather in one place, the Horde in another, with the arena battlemasters between and across from them.',`text0_1`='Shattrath\'s battlemasters often congregate on the stairwells between the upper and lower city. The Alliance battlemasters gather in one place, the Horde in another, with the arena battlemasters between and across from them.' WHERE `ID`=10388;
UPDATE `npc_text` SET `text0_0`='The Horde battlemasters can usually be found on a stairwell southeast of the city\'s center.',`text0_1`='The Horde battlemasters can usually be found on a stairwell southeast of the city\'s center.' WHERE `ID`=10390;
UPDATE `npc_text` SET `text0_0`='Should Kil\'jaeden rise up through the Sunwell our world will be thrown into a war the likes of which has not been seen for 10,000 years!$B' WHERE `ID`=12309;
-- random go
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187260','19','2690','Mailbox','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');

-- BT updates from Seline
INSERT IGNORE INTO `spell_script_target` VALUES
(40603, 1, 22948), -- Taunt Gurtogg spell on Gurtogg Bloodboil.
(39635, 1, 22996), -- Throw Glaive spell on Blade of Azzinoth.
(39849, 1, 22996), -- Throw Glaive spell on Blade of Azzinoth.
(39873, 1, 22917), -- Glaive Return spell on Illidan Stormrage.
(41268, 1, 23412), -- Spell Door Open (Akama) - target Illidan Door Trigger
(41269, 1, 23412), -- Spell Door Open (Deathsworn) - target Illidan Door Trigger
(41271, 1, 23412); -- Spell Door Fail (Akama) - target Illidan Door Trigger

/* Reliquary of the Lost (Reliquary Event Controller Mob) is friendly. Should be hostile and higher than level 1 */
UPDATE `creature_template` SET `minlevel` = 73, `maxlevel` = 73, `faction_a` = 14, `faction_h` = 14 WHERE `entry` = 22856;

/* Illidari Council Members have a total of 7 million health, 1.75 million each as they are health-linked*/
UPDATE `creature_template` SET `minhealth` = 1750000, `maxhealth` = 1750000 WHERE `entry` IN (22951, 22950, 22949, 22952);

-- Set proper size for Akama (22990)
UPDATE `creature_template` SET `scale` = 2 WHERE `entry` = 22990;

-- Set proper size for Flames of Azzinoth
UPDATE `creature_template` SET `scale` = 3 WHERE `entry` = 22997;

-- Speed for Shadow Demons and Supremus Punch Invis Stalker (Molten Flame)
UPDATE `creature_template` SET `speed` = 0.5 WHERE `entry` IN (23375, 23095);

-- Illidan should be a little faster
UPDATE `creature_template` SET `speed` = 2 WHERE `entry` = 22917;

-- Warglaives for Illidan
INSERT IGNORE INTO `creature_equip_template` VALUES (2181, 45479, 45481, 0, 33490690, 33490690, 0, 781, 781, 0);
UPDATE `creature_template` SET `equipment_id` = 2181 WHERE `entry` = 22917;
-- Weapons for Maiev
INSERT IGNORE INTO `creature_equip_template` VALUES (2182, 44850, 44850, 0, 33490690, 33490690, 0, 781, 781, 0);
UPDATE `creature_template` SET `equipment_id` = 2182 WHERE `entry` = 23197;

-- Shadowy Construct Aura
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES (23123, '40326 0');

-- Dark Aura for Shade of Akama
INSERT IGNORE INTO `creature_template_addon` (`entry`, `auras`) VALUES (22841, '39833 0');

-- Gate before Illidan should be untargetable (Event opens it)
UPDATE `gameobject_template` SET `faction` = 114 WHERE `entry` = 185905;

-- Unselectable flags for Flame Crash and Cage Trap Triggers
UPDATE `creature_template` SET `flags` = `flags`|33554432 WHERE `entry` IN (23336, 23292, 23293, 23294, 23295, 23296, 23297, 23298, 23299);

-- Make Naj\'entus Spine GameObject bigger
UPDATE `gameobject_template` SET `size` = 3 WHERE `entry` = 185584;

-- Level and faction for Supremus Punch Invis Stalker (Molten Flames) and Supremus Volcano
UPDATE `creature_template` SET `minlevel` = 73,`maxlevel` = 73,`faction_a` = 14, `faction_h` = 14 WHERE `entry` IN (23095, 23085); 

-- Gate before Illidan should be untargetable (Event opens it)
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` = '185905'; 

-- Unselectable flags for Flame Crash and Cage Trap Triggers
UPDATE `creature_template` SET `flags` = `flags`|33554432 WHERE `entry` IN (23336, 23292, 23293, 23294, 23295, 23296, 23297, 23298, 23299);

-- Make Naj\'entus Spine GameObject bigger
UPDATE `gameobject_template` SET `size` = 3 WHERE `entry` = 185584; 

-- Level and faction for Supremus Punch Invis Stalker (Molten Flames) and Supremus Volcano
UPDATE `creature_template` SET `minlevel` = 73,`maxlevel` = 73,`faction_a` = 14, `faction_h` = 14 WHERE `entry` IN (23095, 23085);

UPDATE `creature_template` SET `lootid`=8891 WHERE `entry` IN (8890, 8889);




-- SD2 Stuff start
-- nothing...
-- SD2 Stuff end

-- ACID Stuff start
-- up to rev10
-- Zeth'gor Mobs (Hellfire Peninsula)
UPDATE `creature_template` SET `scriptname` = "mob_eventai" WHERE `entry` IN (16871,16907,16964,19422,19424,19440,19442,19457,19458,19459);
-- Gnomeregan Bosses
UPDATE `creature_template` SET `scriptname` = "mob_eventai" WHERE `entry` IN (6229, 7915, 7800);

-- Deadmine Boss Conversion
UPDATE `creature_template` SET `scriptname` = "mob_eventai" WHERE `entry` IN (3586, 643);

-- Set Scriptnames
UPDATE `creature_template` SET `scriptname`='mob_eventai' where `entry` in (23625,23619,23830,23853,23626,23624,23623);

-- change L70ETC FX Controller model to invisible
UPDATE `creature_template` SET `modelid_A` = 11686, `modelid_H` = 11686 WHERE `entry` = 23830;

-- Set band invisible at start
DELETE FROM `creature_template_addon` WHERE `entry` in (23625,23619,23626,23624,23623);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
('23619', '10032 0'),
('23623', '10032 0'),
('23624', '10032 0'),
('23625', '10032 0'),
('23626', '10032 0');

UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (17536, 17537);

UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (17536, 17537);

UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (11256,3518,1402,1405,2015,2017);

-- ACID stuff end

-- Cleanup
UPDATE `creature_template` SET `flags`=`flags`&~2056 WHERE `flags`&2048=2048 OR `flags`&8=8;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` and `creature_template`.`RegenHealth` = '1';
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
-- UPDATE `creature_template` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- And finally db_version UPDATE
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.10.2 (351) for MaNGOS rev. 5949 with SD2 SQL for rev. 414');
-- END

